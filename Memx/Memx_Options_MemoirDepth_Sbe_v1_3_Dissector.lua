-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Options MemoirDepth Sbe 1.3 Protocol
local omi_memx_options_memoirdepth_sbe_v1_3 = Proto("Memx.Options.MemoirDepth.Sbe.v1.3.Lua", "Memx Options MemoirDepth Sbe 1.3")

-- Protocol table
local memx_options_memoirdepth_sbe_v1_3 = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Options MemoirDepth Sbe 1.3 Fields
omi_memx_options_memoirdepth_sbe_v1_3.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "memx.options.memoirdepth.sbe.v1.3.asofsequencenumber", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "memx.options.memoirdepth.sbe.v1.3.blocklength", ftypes.UINT16)
omi_memx_options_memoirdepth_sbe_v1_3.fields.closing_only = ProtoField.new("Closing Only", "memx.options.memoirdepth.sbe.v1.3.closingonly", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_3.fields.closing_time = ProtoField.new("Closing Time", "memx.options.memoirdepth.sbe.v1.3.closingtime", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_3.fields.common_header = ProtoField.new("Common Header", "memx.options.memoirdepth.sbe.v1.3.commonheader", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.corrected_price = ProtoField.new("Corrected Price", "memx.options.memoirdepth.sbe.v1.3.correctedprice", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_3.fields.corrected_quantity = ProtoField.new("Corrected Quantity", "memx.options.memoirdepth.sbe.v1.3.correctedquantity", ftypes.UINT32)
omi_memx_options_memoirdepth_sbe_v1_3.fields.header_length = ProtoField.new("Header Length", "memx.options.memoirdepth.sbe.v1.3.headerlength", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_3.fields.instrument_trading_status = ProtoField.new("Instrument Trading Status", "memx.options.memoirdepth.sbe.v1.3.instrumenttradingstatus", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.instrument_trading_status_reason = ProtoField.new("Instrument Trading Status Reason", "memx.options.memoirdepth.sbe.v1.3.instrumenttradingstatusreason", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "memx.options.memoirdepth.sbe.v1.3.intermarketsweep", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_memx_options_memoirdepth_sbe_v1_3.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "memx.options.memoirdepth.sbe.v1.3.istestsymbol", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_3.fields.maturity_date = ProtoField.new("Maturity Date", "memx.options.memoirdepth.sbe.v1.3.maturitydate", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.message = ProtoField.new("Message", "memx.options.memoirdepth.sbe.v1.3.message", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "memx.options.memoirdepth.sbe.v1.3.messagecount", ftypes.UINT16)
omi_memx_options_memoirdepth_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "memx.options.memoirdepth.sbe.v1.3.messagelength", ftypes.UINT16)
omi_memx_options_memoirdepth_sbe_v1_3.fields.message_type = ProtoField.new("Message Type", "memx.options.memoirdepth.sbe.v1.3.messagetype", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_3.fields.options_product_type = ProtoField.new("Options Product Type", "memx.options.memoirdepth.sbe.v1.3.optionsproducttype", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_3.fields.order_capacity = ProtoField.new("Order Capacity", "memx.options.memoirdepth.sbe.v1.3.ordercapacity", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.order_id = ProtoField.new("Order Id", "memx.options.memoirdepth.sbe.v1.3.orderid", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_3.fields.original_price = ProtoField.new("Original Price", "memx.options.memoirdepth.sbe.v1.3.originalprice", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_3.fields.original_quantity = ProtoField.new("Original Quantity", "memx.options.memoirdepth.sbe.v1.3.originalquantity", ftypes.UINT32)
omi_memx_options_memoirdepth_sbe_v1_3.fields.osi_root = ProtoField.new("Osi Root", "memx.options.memoirdepth.sbe.v1.3.osiroot", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.packet = ProtoField.new("Packet", "memx.options.memoirdepth.sbe.v1.3.packet", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.payload = ProtoField.new("Payload", "memx.options.memoirdepth.sbe.v1.3.payload", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.price = ProtoField.new("Price", "memx.options.memoirdepth.sbe.v1.3.price", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_3.fields.price_short = ProtoField.new("Price Short", "memx.options.memoirdepth.sbe.v1.3.priceshort", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_3.fields.quantity = ProtoField.new("Quantity", "memx.options.memoirdepth.sbe.v1.3.quantity", ftypes.UINT32)
omi_memx_options_memoirdepth_sbe_v1_3.fields.quantity_reduced = ProtoField.new("Quantity Reduced", "memx.options.memoirdepth.sbe.v1.3.quantityreduced", ftypes.UINT32)
omi_memx_options_memoirdepth_sbe_v1_3.fields.quantity_short = ProtoField.new("Quantity Short", "memx.options.memoirdepth.sbe.v1.3.quantityshort", ftypes.UINT16)
omi_memx_options_memoirdepth_sbe_v1_3.fields.reserved_7 = ProtoField.new("Reserved 7", "memx.options.memoirdepth.sbe.v1.3.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_memx_options_memoirdepth_sbe_v1_3.fields.sbe_header = ProtoField.new("Sbe Header", "memx.options.memoirdepth.sbe.v1.3.sbeheader", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "memx.options.memoirdepth.sbe.v1.3.sbemessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "memx.options.memoirdepth.sbe.v1.3.schemaid", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "memx.options.memoirdepth.sbe.v1.3.sequencenumber", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_3.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.options.memoirdepth.sbe.v1.3.sequencedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "memx.options.memoirdepth.sbe.v1.3.sequencedmessages", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.session_id = ProtoField.new("Session Id", "memx.options.memoirdepth.sbe.v1.3.sessionid", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_3.fields.side = ProtoField.new("Side", "memx.options.memoirdepth.sbe.v1.3.side", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.strike_price = ProtoField.new("Strike Price", "memx.options.memoirdepth.sbe.v1.3.strikeprice", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_3.fields.strike_put_or_call = ProtoField.new("Strike Put Or Call", "memx.options.memoirdepth.sbe.v1.3.strikeputorcall", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "memx.options.memoirdepth.sbe.v1.3.symbol", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "memx.options.memoirdepth.sbe.v1.3.templateid", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_3.fields.timestamp = ProtoField.new("Timestamp", "memx.options.memoirdepth.sbe.v1.3.timestamp", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_3.fields.trade_conditions = ProtoField.new("Trade Conditions", "memx.options.memoirdepth.sbe.v1.3.tradeconditions", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.trade_id = ProtoField.new("Trade Id", "memx.options.memoirdepth.sbe.v1.3.tradeid", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_3.fields.trading_session = ProtoField.new("Trading Session", "memx.options.memoirdepth.sbe.v1.3.tradingsession", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.underlier = ProtoField.new("Underlier", "memx.options.memoirdepth.sbe.v1.3.underlier", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.version = ProtoField.new("Version", "memx.options.memoirdepth.sbe.v1.3.version", ftypes.UINT16)

-- Memx Options MemoirDepth Sbe 1.3 messages
omi_memx_options_memoirdepth_sbe_v1_3.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "memx.options.memoirdepth.sbe.v1.3.brokentrademessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.clear_book_message = ProtoField.new("Clear Book Message", "memx.options.memoirdepth.sbe.v1.3.clearbookmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.corrected_trade_message = ProtoField.new("Corrected Trade Message", "memx.options.memoirdepth.sbe.v1.3.correctedtrademessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "memx.options.memoirdepth.sbe.v1.3.instrumentdirectorymessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.instrument_trading_status_message = ProtoField.new("Instrument Trading Status Message", "memx.options.memoirdepth.sbe.v1.3.instrumenttradingstatusmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.order_added_extended_message = ProtoField.new("Order Added Extended Message", "memx.options.memoirdepth.sbe.v1.3.orderaddedextendedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.order_added_long_message = ProtoField.new("Order Added Long Message", "memx.options.memoirdepth.sbe.v1.3.orderaddedlongmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.order_added_short_message = ProtoField.new("Order Added Short Message", "memx.options.memoirdepth.sbe.v1.3.orderaddedshortmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "memx.options.memoirdepth.sbe.v1.3.orderdeletedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.order_executed_message = ProtoField.new("Order Executed Message", "memx.options.memoirdepth.sbe.v1.3.orderexecutedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.order_reduced_message = ProtoField.new("Order Reduced Message", "memx.options.memoirdepth.sbe.v1.3.orderreducedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "memx.options.memoirdepth.sbe.v1.3.snapshotcompletemessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_3.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "memx.options.memoirdepth.sbe.v1.3.tradingsessionstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Memx Options MemoirDepth Sbe 1.3 Element Dissection Options
show.broken_trade_message = true
show.clear_book_message = true
show.common_header = true
show.corrected_trade_message = true
show.instrument_directory_message = true
show.instrument_trading_status_message = true
show.message = true
show.order_added_extended_message = true
show.order_added_long_message = true
show.order_added_short_message = true
show.order_deleted_message = true
show.order_executed_message = true
show.order_reduced_message = true
show.packet = true
show.sbe_header = true
show.sbe_message = true
show.sequenced_message = true
show.snapshot_complete_message = true
show.trade_conditions = true
show.trading_session_status_message = true
show.payload = false
show.sequenced_messages = false

-- Register Memx Options MemoirDepth Sbe 1.3 Show Options
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_corrected_trade_message = Pref.bool("Show Corrected Trade Message", show.corrected_trade_message, "Parse and add Corrected Trade Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_instrument_trading_status_message = Pref.bool("Show Instrument Trading Status Message", show.instrument_trading_status_message, "Parse and add Instrument Trading Status Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_added_extended_message = Pref.bool("Show Order Added Extended Message", show.order_added_extended_message, "Parse and add Order Added Extended Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_added_long_message = Pref.bool("Show Order Added Long Message", show.order_added_long_message, "Parse and add Order Added Long Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_added_short_message = Pref.bool("Show Order Added Short Message", show.order_added_short_message, "Parse and add Order Added Short Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_reduced_message = Pref.bool("Show Order Reduced Message", show.order_reduced_message, "Parse and add Order Reduced Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_snapshot_complete_message = Pref.bool("Show Snapshot Complete Message", show.snapshot_complete_message, "Parse and add Snapshot Complete Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_trade_conditions = Pref.bool("Show Trade Conditions", show.trade_conditions, "Parse and add Trade Conditions to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_memx_options_memoirdepth_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.broken_trade_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_broken_trade_message
    changed = true
  end
  if show.clear_book_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_clear_book_message then
    show.clear_book_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_clear_book_message
    changed = true
  end
  if show.common_header ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_common_header then
    show.common_header = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_common_header
    changed = true
  end
  if show.corrected_trade_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_corrected_trade_message then
    show.corrected_trade_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_corrected_trade_message
    changed = true
  end
  if show.instrument_directory_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_instrument_directory_message
    changed = true
  end
  if show.instrument_trading_status_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_instrument_trading_status_message then
    show.instrument_trading_status_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_instrument_trading_status_message
    changed = true
  end
  if show.message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_message then
    show.message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_message
    changed = true
  end
  if show.order_added_extended_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_added_extended_message then
    show.order_added_extended_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_added_extended_message
    changed = true
  end
  if show.order_added_long_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_added_long_message then
    show.order_added_long_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_added_long_message
    changed = true
  end
  if show.order_added_short_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_added_short_message then
    show.order_added_short_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_added_short_message
    changed = true
  end
  if show.order_deleted_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_deleted_message then
    show.order_deleted_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_executed_message then
    show.order_executed_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_executed_message
    changed = true
  end
  if show.order_reduced_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_reduced_message then
    show.order_reduced_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_order_reduced_message
    changed = true
  end
  if show.packet ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_packet then
    show.packet = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.sbe_header ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sbe_header then
    show.sbe_header = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sequenced_message
    changed = true
  end
  if show.snapshot_complete_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_snapshot_complete_message then
    show.snapshot_complete_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_snapshot_complete_message
    changed = true
  end
  if show.trade_conditions ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_trade_conditions then
    show.trade_conditions = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_trade_conditions
    changed = true
  end
  if show.trading_session_status_message ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_trading_session_status_message then
    show.trading_session_status_message = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_payload then
    show.payload = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_memx_options_memoirdepth_sbe_v1_3.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Options MemoirDepth Sbe 1.3
-----------------------------------------------------------------------

-- Symbol
memx_options_memoirdepth_sbe_v1_3.symbol = {}

-- Size: Symbol
memx_options_memoirdepth_sbe_v1_3.symbol.size = 8

-- Display: Symbol
memx_options_memoirdepth_sbe_v1_3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_options_memoirdepth_sbe_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.symbol.size
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

  local display = memx_options_memoirdepth_sbe_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
memx_options_memoirdepth_sbe_v1_3.timestamp = {}

-- Size: Timestamp
memx_options_memoirdepth_sbe_v1_3.timestamp.size = 8

-- Display: Timestamp
memx_options_memoirdepth_sbe_v1_3.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
memx_options_memoirdepth_sbe_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Clear Book Message
memx_options_memoirdepth_sbe_v1_3.clear_book_message = {}

-- Calculate size of: Clear Book Message
memx_options_memoirdepth_sbe_v1_3.clear_book_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  return index
end

-- Display: Clear Book Message
memx_options_memoirdepth_sbe_v1_3.clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
memx_options_memoirdepth_sbe_v1_3.clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
memx_options_memoirdepth_sbe_v1_3.clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.clear_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.clear_book_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
memx_options_memoirdepth_sbe_v1_3.price = {}

-- Size: Price
memx_options_memoirdepth_sbe_v1_3.price.size = 8

-- Display: Price
memx_options_memoirdepth_sbe_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
memx_options_memoirdepth_sbe_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.price(raw)
  local display = memx_options_memoirdepth_sbe_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
memx_options_memoirdepth_sbe_v1_3.quantity = {}

-- Size: Quantity
memx_options_memoirdepth_sbe_v1_3.quantity.size = 4

-- Display: Quantity
memx_options_memoirdepth_sbe_v1_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
memx_options_memoirdepth_sbe_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Trade Id
memx_options_memoirdepth_sbe_v1_3.trade_id = {}

-- Size: Trade Id
memx_options_memoirdepth_sbe_v1_3.trade_id.size = 8

-- Display: Trade Id
memx_options_memoirdepth_sbe_v1_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
memx_options_memoirdepth_sbe_v1_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Order Id
memx_options_memoirdepth_sbe_v1_3.order_id = {}

-- Size: Order Id
memx_options_memoirdepth_sbe_v1_3.order_id.size = 8

-- Display: Order Id
memx_options_memoirdepth_sbe_v1_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
memx_options_memoirdepth_sbe_v1_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Intermarket Sweep
memx_options_memoirdepth_sbe_v1_3.intermarket_sweep = {}

-- Reserved 7
memx_options_memoirdepth_sbe_v1_3.reserved_7 = {}

-- Trade Conditions
memx_options_memoirdepth_sbe_v1_3.trade_conditions = {}

-- Size: Trade Conditions
memx_options_memoirdepth_sbe_v1_3.trade_conditions.size = 1

-- Display: Trade Conditions
memx_options_memoirdepth_sbe_v1_3.trade_conditions.display = function(buffer, packet, parent)
  local display = ""

  -- Is Intermarket Sweep flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Intermarket Sweep|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Conditions
memx_options_memoirdepth_sbe_v1_3.trade_conditions.bits = function(buffer, offset, packet, parent)

  -- Reserved 7: 7 Bit
  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.reserved_7, buffer(offset, 1))

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.intermarket_sweep, buffer(offset, 1))
end

-- Dissect: Trade Conditions
memx_options_memoirdepth_sbe_v1_3.trade_conditions.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = memx_options_memoirdepth_sbe_v1_3.trade_conditions.display(range, packet, parent)
  local element = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.trade_conditions, range, display)

  if show.trade_conditions then
    memx_options_memoirdepth_sbe_v1_3.trade_conditions.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Order Capacity
memx_options_memoirdepth_sbe_v1_3.order_capacity = {}

-- Size: Order Capacity
memx_options_memoirdepth_sbe_v1_3.order_capacity.size = 1

-- Display: Order Capacity
memx_options_memoirdepth_sbe_v1_3.order_capacity.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Capacity: No Value"
  end

  if value == "C" then
    return "Order Capacity: Customer (C)"
  end
  if value == "N" then
    return "Order Capacity: Non Customer (N)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
memx_options_memoirdepth_sbe_v1_3.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.order_capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_3.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Executed Message
memx_options_memoirdepth_sbe_v1_3.order_executed_message = {}

-- Calculate size of: Order Executed Message
memx_options_memoirdepth_sbe_v1_3.order_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_capacity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.trade_conditions.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.trade_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.quantity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.price.size

  return index
end

-- Display: Order Executed Message
memx_options_memoirdepth_sbe_v1_3.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
memx_options_memoirdepth_sbe_v1_3.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 2 values
  index, order_capacity = memx_options_memoirdepth_sbe_v1_3.order_capacity.dissect(buffer, index, packet, parent)

  -- Trade Conditions: Struct of 2 fields
  index, trade_conditions = memx_options_memoirdepth_sbe_v1_3.trade_conditions.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memoirdepth_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_options_memoirdepth_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_options_memoirdepth_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = memx_options_memoirdepth_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
memx_options_memoirdepth_sbe_v1_3.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.order_executed_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Reduced
memx_options_memoirdepth_sbe_v1_3.quantity_reduced = {}

-- Size: Quantity Reduced
memx_options_memoirdepth_sbe_v1_3.quantity_reduced.size = 4

-- Display: Quantity Reduced
memx_options_memoirdepth_sbe_v1_3.quantity_reduced.display = function(value)
  return "Quantity Reduced: "..value
end

-- Dissect: Quantity Reduced
memx_options_memoirdepth_sbe_v1_3.quantity_reduced.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.quantity_reduced.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.quantity_reduced.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.quantity_reduced, range, value, display)

  return offset + length, value
end

-- Side
memx_options_memoirdepth_sbe_v1_3.side = {}

-- Size: Side
memx_options_memoirdepth_sbe_v1_3.side.size = 1

-- Display: Side
memx_options_memoirdepth_sbe_v1_3.side.display = function(value)
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
memx_options_memoirdepth_sbe_v1_3.side.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.side, range, value, display)

  return offset + length, value
end

-- Order Reduced Message
memx_options_memoirdepth_sbe_v1_3.order_reduced_message = {}

-- Calculate size of: Order Reduced Message
memx_options_memoirdepth_sbe_v1_3.order_reduced_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_capacity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.side.size

  index = index + memx_options_memoirdepth_sbe_v1_3.quantity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.price.size

  index = index + memx_options_memoirdepth_sbe_v1_3.quantity_reduced.size

  return index
end

-- Display: Order Reduced Message
memx_options_memoirdepth_sbe_v1_3.order_reduced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reduced Message
memx_options_memoirdepth_sbe_v1_3.order_reduced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 2 values
  index, order_capacity = memx_options_memoirdepth_sbe_v1_3.order_capacity.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memoirdepth_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = memx_options_memoirdepth_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_options_memoirdepth_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = memx_options_memoirdepth_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  -- Quantity Reduced: 4 Byte Unsigned Fixed Width Integer
  index, quantity_reduced = memx_options_memoirdepth_sbe_v1_3.quantity_reduced.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reduced Message
memx_options_memoirdepth_sbe_v1_3.order_reduced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_reduced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.order_reduced_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.order_reduced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.order_reduced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.order_reduced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
memx_options_memoirdepth_sbe_v1_3.order_deleted_message = {}

-- Calculate size of: Order Deleted Message
memx_options_memoirdepth_sbe_v1_3.order_deleted_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_capacity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_id.size

  return index
end

-- Display: Order Deleted Message
memx_options_memoirdepth_sbe_v1_3.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
memx_options_memoirdepth_sbe_v1_3.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 2 values
  index, order_capacity = memx_options_memoirdepth_sbe_v1_3.order_capacity.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memoirdepth_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
memx_options_memoirdepth_sbe_v1_3.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.order_deleted_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Extended Message
memx_options_memoirdepth_sbe_v1_3.order_added_extended_message = {}

-- Calculate size of: Order Added Extended Message
memx_options_memoirdepth_sbe_v1_3.order_added_extended_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_capacity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.side.size

  index = index + memx_options_memoirdepth_sbe_v1_3.quantity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.price.size

  return index
end

-- Display: Order Added Extended Message
memx_options_memoirdepth_sbe_v1_3.order_added_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Extended Message
memx_options_memoirdepth_sbe_v1_3.order_added_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Order Capacity: 1 Byte Ascii String Enum with 2 values
  index, order_capacity = memx_options_memoirdepth_sbe_v1_3.order_capacity.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memoirdepth_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = memx_options_memoirdepth_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_options_memoirdepth_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = memx_options_memoirdepth_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Extended Message
memx_options_memoirdepth_sbe_v1_3.order_added_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_extended_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.order_added_extended_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.order_added_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.order_added_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.order_added_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Long Message
memx_options_memoirdepth_sbe_v1_3.order_added_long_message = {}

-- Calculate size of: Order Added Long Message
memx_options_memoirdepth_sbe_v1_3.order_added_long_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.side.size

  index = index + memx_options_memoirdepth_sbe_v1_3.quantity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.price.size

  return index
end

-- Display: Order Added Long Message
memx_options_memoirdepth_sbe_v1_3.order_added_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Long Message
memx_options_memoirdepth_sbe_v1_3.order_added_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memoirdepth_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = memx_options_memoirdepth_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = memx_options_memoirdepth_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = memx_options_memoirdepth_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Long Message
memx_options_memoirdepth_sbe_v1_3.order_added_long_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.order_added_long_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.order_added_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.order_added_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.order_added_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Short
memx_options_memoirdepth_sbe_v1_3.price_short = {}

-- Size: Price Short
memx_options_memoirdepth_sbe_v1_3.price_short.size = 2

-- Display: Price Short
memx_options_memoirdepth_sbe_v1_3.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
translate.price_short = function(raw)
  return raw/100
end

-- Dissect: Price Short
memx_options_memoirdepth_sbe_v1_3.price_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.price_short(raw)
  local display = memx_options_memoirdepth_sbe_v1_3.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Short
memx_options_memoirdepth_sbe_v1_3.quantity_short = {}

-- Size: Quantity Short
memx_options_memoirdepth_sbe_v1_3.quantity_short.size = 2

-- Display: Quantity Short
memx_options_memoirdepth_sbe_v1_3.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
memx_options_memoirdepth_sbe_v1_3.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.quantity_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Order Added Short Message
memx_options_memoirdepth_sbe_v1_3.order_added_short_message = {}

-- Calculate size of: Order Added Short Message
memx_options_memoirdepth_sbe_v1_3.order_added_short_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.order_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.side.size

  index = index + memx_options_memoirdepth_sbe_v1_3.quantity_short.size

  index = index + memx_options_memoirdepth_sbe_v1_3.price_short.size

  return index
end

-- Display: Order Added Short Message
memx_options_memoirdepth_sbe_v1_3.order_added_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Short Message
memx_options_memoirdepth_sbe_v1_3.order_added_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = memx_options_memoirdepth_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = memx_options_memoirdepth_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = memx_options_memoirdepth_sbe_v1_3.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = memx_options_memoirdepth_sbe_v1_3.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Short Message
memx_options_memoirdepth_sbe_v1_3.order_added_short_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.order_added_short_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.order_added_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.order_added_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.order_added_short_message.fields(buffer, offset, packet, parent)
  end
end

-- As Of Sequence Number
memx_options_memoirdepth_sbe_v1_3.as_of_sequence_number = {}

-- Size: As Of Sequence Number
memx_options_memoirdepth_sbe_v1_3.as_of_sequence_number.size = 8

-- Display: As Of Sequence Number
memx_options_memoirdepth_sbe_v1_3.as_of_sequence_number.display = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
memx_options_memoirdepth_sbe_v1_3.as_of_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.as_of_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_3.as_of_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message = {}

-- Calculate size of: Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.as_of_sequence_number.size

  return index
end

-- Display: Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- As Of Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, as_of_sequence_number = memx_options_memoirdepth_sbe_v1_3.as_of_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.snapshot_complete_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Price
memx_options_memoirdepth_sbe_v1_3.corrected_price = {}

-- Size: Corrected Price
memx_options_memoirdepth_sbe_v1_3.corrected_price.size = 8

-- Display: Corrected Price
memx_options_memoirdepth_sbe_v1_3.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
translate.corrected_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Corrected Price
memx_options_memoirdepth_sbe_v1_3.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.corrected_price(raw)
  local display = memx_options_memoirdepth_sbe_v1_3.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Quantity
memx_options_memoirdepth_sbe_v1_3.corrected_quantity = {}

-- Size: Corrected Quantity
memx_options_memoirdepth_sbe_v1_3.corrected_quantity.size = 4

-- Display: Corrected Quantity
memx_options_memoirdepth_sbe_v1_3.corrected_quantity.display = function(value)
  return "Corrected Quantity: "..value
end

-- Dissect: Corrected Quantity
memx_options_memoirdepth_sbe_v1_3.corrected_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.corrected_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.corrected_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.corrected_quantity, range, value, display)

  return offset + length, value
end

-- Original Price
memx_options_memoirdepth_sbe_v1_3.original_price = {}

-- Size: Original Price
memx_options_memoirdepth_sbe_v1_3.original_price.size = 8

-- Display: Original Price
memx_options_memoirdepth_sbe_v1_3.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
translate.original_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Original Price
memx_options_memoirdepth_sbe_v1_3.original_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.original_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.original_price(raw)
  local display = memx_options_memoirdepth_sbe_v1_3.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Quantity
memx_options_memoirdepth_sbe_v1_3.original_quantity = {}

-- Size: Original Quantity
memx_options_memoirdepth_sbe_v1_3.original_quantity.size = 4

-- Display: Original Quantity
memx_options_memoirdepth_sbe_v1_3.original_quantity.display = function(value)
  return "Original Quantity: "..value
end

-- Dissect: Original Quantity
memx_options_memoirdepth_sbe_v1_3.original_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.original_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.original_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.original_quantity, range, value, display)

  return offset + length, value
end

-- Corrected Trade Message
memx_options_memoirdepth_sbe_v1_3.corrected_trade_message = {}

-- Calculate size of: Corrected Trade Message
memx_options_memoirdepth_sbe_v1_3.corrected_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.trade_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.original_quantity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.original_price.size

  index = index + memx_options_memoirdepth_sbe_v1_3.corrected_quantity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.corrected_price.size

  return index
end

-- Display: Corrected Trade Message
memx_options_memoirdepth_sbe_v1_3.corrected_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Message
memx_options_memoirdepth_sbe_v1_3.corrected_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_options_memoirdepth_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: 4 Byte Unsigned Fixed Width Integer
  index, original_quantity = memx_options_memoirdepth_sbe_v1_3.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: 8 Byte Unsigned Fixed Width Integer
  index, original_price = memx_options_memoirdepth_sbe_v1_3.original_price.dissect(buffer, index, packet, parent)

  -- Corrected Quantity: 4 Byte Unsigned Fixed Width Integer
  index, corrected_quantity = memx_options_memoirdepth_sbe_v1_3.corrected_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Price: 8 Byte Unsigned Fixed Width Integer
  index, corrected_price = memx_options_memoirdepth_sbe_v1_3.corrected_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade Message
memx_options_memoirdepth_sbe_v1_3.corrected_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.corrected_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.corrected_trade_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.corrected_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.corrected_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.corrected_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
memx_options_memoirdepth_sbe_v1_3.broken_trade_message = {}

-- Calculate size of: Broken Trade Message
memx_options_memoirdepth_sbe_v1_3.broken_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.trade_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.original_quantity.size

  index = index + memx_options_memoirdepth_sbe_v1_3.original_price.size

  return index
end

-- Display: Broken Trade Message
memx_options_memoirdepth_sbe_v1_3.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
memx_options_memoirdepth_sbe_v1_3.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = memx_options_memoirdepth_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: 4 Byte Unsigned Fixed Width Integer
  index, original_quantity = memx_options_memoirdepth_sbe_v1_3.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: 8 Byte Unsigned Fixed Width Integer
  index, original_price = memx_options_memoirdepth_sbe_v1_3.original_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
memx_options_memoirdepth_sbe_v1_3.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.broken_trade_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session
memx_options_memoirdepth_sbe_v1_3.trading_session = {}

-- Size: Trading Session
memx_options_memoirdepth_sbe_v1_3.trading_session.size = 1

-- Display: Trading Session
memx_options_memoirdepth_sbe_v1_3.trading_session.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trading Session: No Value"
  end

  if value == "1" then
    return "Trading Session: Trading (1)"
  end
  if value == "2" then
    return "Trading Session: Closed (2)"
  end

  return "Trading Session: Unknown("..value..")"
end

-- Dissect: Trading Session
memx_options_memoirdepth_sbe_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Trading Session Status Message
memx_options_memoirdepth_sbe_v1_3.trading_session_status_message = {}

-- Calculate size of: Trading Session Status Message
memx_options_memoirdepth_sbe_v1_3.trading_session_status_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.trading_session.size

  return index
end

-- Display: Trading Session Status Message
memx_options_memoirdepth_sbe_v1_3.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
memx_options_memoirdepth_sbe_v1_3.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Ascii String Enum with 2 values
  index, trading_session = memx_options_memoirdepth_sbe_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
memx_options_memoirdepth_sbe_v1_3.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_session_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.trading_session_status_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Trading Status Reason
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_reason = {}

-- Size: Instrument Trading Status Reason
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_reason.size = 1

-- Display: Instrument Trading Status Reason
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Instrument Trading Status Reason: No Value"
  end

  if value == "X" then
    return "Instrument Trading Status Reason: None (X)"
  end
  if value == "A" then
    return "Instrument Trading Status Reason: Administrative (A)"
  end

  return "Instrument Trading Status Reason: Unknown("..value..")"
end

-- Dissect: Instrument Trading Status Reason
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.instrument_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Instrument Trading Status
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status = {}

-- Size: Instrument Trading Status
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status.size = 1

-- Display: Instrument Trading Status
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Instrument Trading Status: No Value"
  end

  if value == "H" then
    return "Instrument Trading Status: Halted (H)"
  end
  if value == "T" then
    return "Instrument Trading Status: Trading (T)"
  end

  return "Instrument Trading Status: Unknown("..value..")"
end

-- Dissect: Instrument Trading Status
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.instrument_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_3.instrument_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.instrument_trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Trading Status Message
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message = {}

-- Calculate size of: Instrument Trading Status Message
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.instrument_trading_status.size

  index = index + memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_reason.size

  return index
end

-- Display: Instrument Trading Status Message
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Trading Status Message
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Trading Status: 1 Byte Ascii String Enum with 2 values
  index, instrument_trading_status = memx_options_memoirdepth_sbe_v1_3.instrument_trading_status.dissect(buffer, index, packet, parent)

  -- Instrument Trading Status Reason: 1 Byte Ascii String Enum with 2 values
  index, instrument_trading_status_reason = memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Trading Status Message
memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.instrument_trading_status_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Is Test Symbol
memx_options_memoirdepth_sbe_v1_3.is_test_symbol = {}

-- Size: Is Test Symbol
memx_options_memoirdepth_sbe_v1_3.is_test_symbol.size = 1

-- Display: Is Test Symbol
memx_options_memoirdepth_sbe_v1_3.is_test_symbol.display = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
memx_options_memoirdepth_sbe_v1_3.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Closing Time
memx_options_memoirdepth_sbe_v1_3.closing_time = {}

-- Size: Closing Time
memx_options_memoirdepth_sbe_v1_3.closing_time.size = 8

-- Display: Closing Time
memx_options_memoirdepth_sbe_v1_3.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
memx_options_memoirdepth_sbe_v1_3.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.closing_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_3.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Closing Only
memx_options_memoirdepth_sbe_v1_3.closing_only = {}

-- Size: Closing Only
memx_options_memoirdepth_sbe_v1_3.closing_only.size = 1

-- Display: Closing Only
memx_options_memoirdepth_sbe_v1_3.closing_only.display = function(value)
  if value == 0 then
    return "Closing Only: False (0)"
  end
  if value == 1 then
    return "Closing Only: True (1)"
  end

  return "Closing Only: Unknown("..value..")"
end

-- Dissect: Closing Only
memx_options_memoirdepth_sbe_v1_3.closing_only.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.closing_only.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.closing_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.closing_only, range, value, display)

  return offset + length, value
end

-- Strike Price
memx_options_memoirdepth_sbe_v1_3.strike_price = {}

-- Size: Strike Price
memx_options_memoirdepth_sbe_v1_3.strike_price.size = 8

-- Display: Strike Price
memx_options_memoirdepth_sbe_v1_3.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
memx_options_memoirdepth_sbe_v1_3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.strike_price(raw)
  local display = memx_options_memoirdepth_sbe_v1_3.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Put Or Call
memx_options_memoirdepth_sbe_v1_3.strike_put_or_call = {}

-- Size: Strike Put Or Call
memx_options_memoirdepth_sbe_v1_3.strike_put_or_call.size = 1

-- Display: Strike Put Or Call
memx_options_memoirdepth_sbe_v1_3.strike_put_or_call.display = function(value)
  if value == 0 then
    return "Strike Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Strike Put Or Call: Call (1)"
  end

  return "Strike Put Or Call: Unknown("..value..")"
end

-- Dissect: Strike Put Or Call
memx_options_memoirdepth_sbe_v1_3.strike_put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.strike_put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.strike_put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.strike_put_or_call, range, value, display)

  return offset + length, value
end

-- Maturity Date
memx_options_memoirdepth_sbe_v1_3.maturity_date = {}

-- Size: Maturity Date
memx_options_memoirdepth_sbe_v1_3.maturity_date.size = 8

-- Display: Maturity Date
memx_options_memoirdepth_sbe_v1_3.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
memx_options_memoirdepth_sbe_v1_3.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.maturity_date.size
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

  local display = memx_options_memoirdepth_sbe_v1_3.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Osi Root
memx_options_memoirdepth_sbe_v1_3.osi_root = {}

-- Size: Osi Root
memx_options_memoirdepth_sbe_v1_3.osi_root.size = 6

-- Display: Osi Root
memx_options_memoirdepth_sbe_v1_3.osi_root.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Osi Root: No Value"
  end

  return "Osi Root: "..value
end

-- Dissect: Osi Root
memx_options_memoirdepth_sbe_v1_3.osi_root.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.osi_root.size
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

  local display = memx_options_memoirdepth_sbe_v1_3.osi_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.osi_root, range, value, display)

  return offset + length, value
end

-- Underlier
memx_options_memoirdepth_sbe_v1_3.underlier = {}

-- Size: Underlier
memx_options_memoirdepth_sbe_v1_3.underlier.size = 6

-- Display: Underlier
memx_options_memoirdepth_sbe_v1_3.underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier: No Value"
  end

  return "Underlier: "..value
end

-- Dissect: Underlier
memx_options_memoirdepth_sbe_v1_3.underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.underlier.size
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

  local display = memx_options_memoirdepth_sbe_v1_3.underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.underlier, range, value, display)

  return offset + length, value
end

-- Options Product Type
memx_options_memoirdepth_sbe_v1_3.options_product_type = {}

-- Size: Options Product Type
memx_options_memoirdepth_sbe_v1_3.options_product_type.size = 1

-- Display: Options Product Type
memx_options_memoirdepth_sbe_v1_3.options_product_type.display = function(value)
  if value == 0 then
    return "Options Product Type: Equity Underlying (0)"
  end
  if value == 1 then
    return "Options Product Type: Index Underlying (1)"
  end

  return "Options Product Type: Unknown("..value..")"
end

-- Dissect: Options Product Type
memx_options_memoirdepth_sbe_v1_3.options_product_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.options_product_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.options_product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.options_product_type, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
memx_options_memoirdepth_sbe_v1_3.instrument_directory_message = {}

-- Calculate size of: Instrument Directory Message
memx_options_memoirdepth_sbe_v1_3.instrument_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.timestamp.size

  index = index + memx_options_memoirdepth_sbe_v1_3.symbol.size

  index = index + memx_options_memoirdepth_sbe_v1_3.options_product_type.size

  index = index + memx_options_memoirdepth_sbe_v1_3.underlier.size

  index = index + memx_options_memoirdepth_sbe_v1_3.osi_root.size

  index = index + memx_options_memoirdepth_sbe_v1_3.maturity_date.size

  index = index + memx_options_memoirdepth_sbe_v1_3.strike_put_or_call.size

  index = index + memx_options_memoirdepth_sbe_v1_3.strike_price.size

  index = index + memx_options_memoirdepth_sbe_v1_3.closing_only.size

  index = index + memx_options_memoirdepth_sbe_v1_3.closing_time.size

  index = index + memx_options_memoirdepth_sbe_v1_3.is_test_symbol.size

  return index
end

-- Display: Instrument Directory Message
memx_options_memoirdepth_sbe_v1_3.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
memx_options_memoirdepth_sbe_v1_3.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = memx_options_memoirdepth_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = memx_options_memoirdepth_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Options Product Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, options_product_type = memx_options_memoirdepth_sbe_v1_3.options_product_type.dissect(buffer, index, packet, parent)

  -- Underlier: 6 Byte Ascii String
  index, underlier = memx_options_memoirdepth_sbe_v1_3.underlier.dissect(buffer, index, packet, parent)

  -- Osi Root: 6 Byte Ascii String
  index, osi_root = memx_options_memoirdepth_sbe_v1_3.osi_root.dissect(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Ascii String
  index, maturity_date = memx_options_memoirdepth_sbe_v1_3.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, strike_put_or_call = memx_options_memoirdepth_sbe_v1_3.strike_put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Unsigned Fixed Width Integer
  index, strike_price = memx_options_memoirdepth_sbe_v1_3.strike_price.dissect(buffer, index, packet, parent)

  -- Closing Only: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, closing_only = memx_options_memoirdepth_sbe_v1_3.closing_only.dissect(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Unsigned Fixed Width Integer
  index, closing_time = memx_options_memoirdepth_sbe_v1_3.closing_time.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, is_test_symbol = memx_options_memoirdepth_sbe_v1_3.is_test_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
memx_options_memoirdepth_sbe_v1_3.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
memx_options_memoirdepth_sbe_v1_3.payload = {}

-- Calculate runtime size of: Payload
memx_options_memoirdepth_sbe_v1_3.payload.size = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return memx_options_memoirdepth_sbe_v1_3.instrument_directory_message.size(buffer, offset)
  end
  -- Size of Instrument Trading Status Message
  if template_id == 2 then
    return memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message.size(buffer, offset)
  end
  -- Size of Trading Session Status Message
  if template_id == 3 then
    return memx_options_memoirdepth_sbe_v1_3.trading_session_status_message.size(buffer, offset)
  end
  -- Size of Broken Trade Message
  if template_id == 5 then
    return memx_options_memoirdepth_sbe_v1_3.broken_trade_message.size(buffer, offset)
  end
  -- Size of Corrected Trade Message
  if template_id == 6 then
    return memx_options_memoirdepth_sbe_v1_3.corrected_trade_message.size(buffer, offset)
  end
  -- Size of Snapshot Complete Message
  if template_id == 7 then
    return memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message.size(buffer, offset)
  end
  -- Size of Order Added Short Message
  if template_id == 10 then
    return memx_options_memoirdepth_sbe_v1_3.order_added_short_message.size(buffer, offset)
  end
  -- Size of Order Added Long Message
  if template_id == 11 then
    return memx_options_memoirdepth_sbe_v1_3.order_added_long_message.size(buffer, offset)
  end
  -- Size of Order Added Extended Message
  if template_id == 12 then
    return memx_options_memoirdepth_sbe_v1_3.order_added_extended_message.size(buffer, offset)
  end
  -- Size of Order Deleted Message
  if template_id == 13 then
    return memx_options_memoirdepth_sbe_v1_3.order_deleted_message.size(buffer, offset)
  end
  -- Size of Order Reduced Message
  if template_id == 14 then
    return memx_options_memoirdepth_sbe_v1_3.order_reduced_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if template_id == 15 then
    return memx_options_memoirdepth_sbe_v1_3.order_executed_message.size(buffer, offset)
  end
  -- Size of Clear Book Message
  if template_id == 18 then
    return memx_options_memoirdepth_sbe_v1_3.clear_book_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
memx_options_memoirdepth_sbe_v1_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_options_memoirdepth_sbe_v1_3.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return memx_options_memoirdepth_sbe_v1_3.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Trading Status Message
  if template_id == 2 then
    return memx_options_memoirdepth_sbe_v1_3.instrument_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 3 then
    return memx_options_memoirdepth_sbe_v1_3.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if template_id == 5 then
    return memx_options_memoirdepth_sbe_v1_3.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corrected Trade Message
  if template_id == 6 then
    return memx_options_memoirdepth_sbe_v1_3.corrected_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if template_id == 7 then
    return memx_options_memoirdepth_sbe_v1_3.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Short Message
  if template_id == 10 then
    return memx_options_memoirdepth_sbe_v1_3.order_added_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Long Message
  if template_id == 11 then
    return memx_options_memoirdepth_sbe_v1_3.order_added_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Extended Message
  if template_id == 12 then
    return memx_options_memoirdepth_sbe_v1_3.order_added_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if template_id == 13 then
    return memx_options_memoirdepth_sbe_v1_3.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Reduced Message
  if template_id == 14 then
    return memx_options_memoirdepth_sbe_v1_3.order_reduced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if template_id == 15 then
    return memx_options_memoirdepth_sbe_v1_3.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if template_id == 18 then
    return memx_options_memoirdepth_sbe_v1_3.clear_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_options_memoirdepth_sbe_v1_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_options_memoirdepth_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memoirdepth_sbe_v1_3.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memoirdepth_sbe_v1_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.payload, range, display)

  return memx_options_memoirdepth_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_options_memoirdepth_sbe_v1_3.version = {}

-- Size: Version
memx_options_memoirdepth_sbe_v1_3.version.size = 2

-- Display: Version
memx_options_memoirdepth_sbe_v1_3.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
memx_options_memoirdepth_sbe_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_options_memoirdepth_sbe_v1_3.schema_id = {}

-- Size: Schema Id
memx_options_memoirdepth_sbe_v1_3.schema_id.size = 1

-- Display: Schema Id
memx_options_memoirdepth_sbe_v1_3.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
memx_options_memoirdepth_sbe_v1_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_options_memoirdepth_sbe_v1_3.template_id = {}

-- Size: Template Id
memx_options_memoirdepth_sbe_v1_3.template_id.size = 1

-- Display: Template Id
memx_options_memoirdepth_sbe_v1_3.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Instrument Directory Message (1)"
  end
  if value == 2 then
    return "Template Id: Instrument Trading Status Message (2)"
  end
  if value == 3 then
    return "Template Id: Trading Session Status Message (3)"
  end
  if value == 5 then
    return "Template Id: Broken Trade Message (5)"
  end
  if value == 6 then
    return "Template Id: Corrected Trade Message (6)"
  end
  if value == 7 then
    return "Template Id: Snapshot Complete Message (7)"
  end
  if value == 10 then
    return "Template Id: Order Added Short Message (10)"
  end
  if value == 11 then
    return "Template Id: Order Added Long Message (11)"
  end
  if value == 12 then
    return "Template Id: Order Added Extended Message (12)"
  end
  if value == 13 then
    return "Template Id: Order Deleted Message (13)"
  end
  if value == 14 then
    return "Template Id: Order Reduced Message (14)"
  end
  if value == 15 then
    return "Template Id: Order Executed Message (15)"
  end
  if value == 18 then
    return "Template Id: Clear Book Message (18)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
memx_options_memoirdepth_sbe_v1_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_options_memoirdepth_sbe_v1_3.block_length = {}

-- Size: Block Length
memx_options_memoirdepth_sbe_v1_3.block_length.size = 2

-- Display: Block Length
memx_options_memoirdepth_sbe_v1_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_options_memoirdepth_sbe_v1_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_options_memoirdepth_sbe_v1_3.sbe_header = {}

-- Calculate size of: Sbe Header
memx_options_memoirdepth_sbe_v1_3.sbe_header.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.block_length.size

  index = index + memx_options_memoirdepth_sbe_v1_3.template_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.schema_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.version.size

  return index
end

-- Display: Sbe Header
memx_options_memoirdepth_sbe_v1_3.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_options_memoirdepth_sbe_v1_3.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = memx_options_memoirdepth_sbe_v1_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, template_id = memx_options_memoirdepth_sbe_v1_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer Static
  index, schema_id = memx_options_memoirdepth_sbe_v1_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = memx_options_memoirdepth_sbe_v1_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_options_memoirdepth_sbe_v1_3.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.sbe_header, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_options_memoirdepth_sbe_v1_3.sbe_message = {}

-- Calculate size of: Sbe Message
memx_options_memoirdepth_sbe_v1_3.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.sbe_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_options_memoirdepth_sbe_v1_3.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_options_memoirdepth_sbe_v1_3.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_options_memoirdepth_sbe_v1_3.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_options_memoirdepth_sbe_v1_3.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 13 branches
  index = memx_options_memoirdepth_sbe_v1_3.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_options_memoirdepth_sbe_v1_3.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_options_memoirdepth_sbe_v1_3.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memoirdepth_sbe_v1_3.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.sbe_message, range, display)
  end

  return memx_options_memoirdepth_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent)
end

-- Message Length
memx_options_memoirdepth_sbe_v1_3.message_length = {}

-- Size: Message Length
memx_options_memoirdepth_sbe_v1_3.message_length.size = 2

-- Display: Message Length
memx_options_memoirdepth_sbe_v1_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_options_memoirdepth_sbe_v1_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message
memx_options_memoirdepth_sbe_v1_3.message = {}

-- Calculate size of: Message
memx_options_memoirdepth_sbe_v1_3.message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.message_length.size

  index = index + memx_options_memoirdepth_sbe_v1_3.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Message
memx_options_memoirdepth_sbe_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
memx_options_memoirdepth_sbe_v1_3.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_options_memoirdepth_sbe_v1_3.message_length.dissect(buffer, index, packet, parent)

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_memoirdepth_sbe_v1_3.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
memx_options_memoirdepth_sbe_v1_3.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = memx_options_memoirdepth_sbe_v1_3.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memoirdepth_sbe_v1_3.message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.message, range, display)
  end

  return memx_options_memoirdepth_sbe_v1_3.message.fields(buffer, offset, packet, parent)
end

-- Message Count
memx_options_memoirdepth_sbe_v1_3.message_count = {}

-- Size: Message Count
memx_options_memoirdepth_sbe_v1_3.message_count.size = 2

-- Display: Message Count
memx_options_memoirdepth_sbe_v1_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_options_memoirdepth_sbe_v1_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequenced Message
memx_options_memoirdepth_sbe_v1_3.sequenced_message = {}

-- Size Of: Sequenced Message
memx_options_memoirdepth_sbe_v1_3.sequenced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
memx_options_memoirdepth_sbe_v1_3.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_options_memoirdepth_sbe_v1_3.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = memx_options_memoirdepth_sbe_v1_3.message_count.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = memx_options_memoirdepth_sbe_v1_3.message.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sequenced Message
memx_options_memoirdepth_sbe_v1_3.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_options_memoirdepth_sbe_v1_3.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memoirdepth_sbe_v1_3.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.sequenced_message, range, display)
  end

  return memx_options_memoirdepth_sbe_v1_3.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Messages
memx_options_memoirdepth_sbe_v1_3.sequenced_messages = {}

-- Calculate runtime size of: Sequenced Messages
memx_options_memoirdepth_sbe_v1_3.sequenced_messages.size = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return memx_options_memoirdepth_sbe_v1_3.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
memx_options_memoirdepth_sbe_v1_3.sequenced_messages.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
memx_options_memoirdepth_sbe_v1_3.sequenced_messages.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return memx_options_memoirdepth_sbe_v1_3.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
memx_options_memoirdepth_sbe_v1_3.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return memx_options_memoirdepth_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memoirdepth_sbe_v1_3.sequenced_messages.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memoirdepth_sbe_v1_3.sequenced_messages.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.sequenced_messages, range, display)

  return memx_options_memoirdepth_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
end

-- Sequence Number
memx_options_memoirdepth_sbe_v1_3.sequence_number = {}

-- Size: Sequence Number
memx_options_memoirdepth_sbe_v1_3.sequence_number.size = 8

-- Display: Sequence Number
memx_options_memoirdepth_sbe_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
memx_options_memoirdepth_sbe_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
memx_options_memoirdepth_sbe_v1_3.session_id = {}

-- Size: Session Id
memx_options_memoirdepth_sbe_v1_3.session_id.size = 8

-- Display: Session Id
memx_options_memoirdepth_sbe_v1_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_options_memoirdepth_sbe_v1_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Header Length
memx_options_memoirdepth_sbe_v1_3.header_length = {}

-- Size: Header Length
memx_options_memoirdepth_sbe_v1_3.header_length.size = 1

-- Display: Header Length
memx_options_memoirdepth_sbe_v1_3.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
memx_options_memoirdepth_sbe_v1_3.header_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_options_memoirdepth_sbe_v1_3.message_type = {}

-- Size: Message Type
memx_options_memoirdepth_sbe_v1_3.message_type.size = 1

-- Display: Message Type
memx_options_memoirdepth_sbe_v1_3.message_type.display = function(value)
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
memx_options_memoirdepth_sbe_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_options_memoirdepth_sbe_v1_3.common_header = {}

-- Calculate size of: Common Header
memx_options_memoirdepth_sbe_v1_3.common_header.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_3.message_type.size

  index = index + memx_options_memoirdepth_sbe_v1_3.header_length.size

  index = index + memx_options_memoirdepth_sbe_v1_3.session_id.size

  index = index + memx_options_memoirdepth_sbe_v1_3.sequence_number.size

  return index
end

-- Display: Common Header
memx_options_memoirdepth_sbe_v1_3.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_options_memoirdepth_sbe_v1_3.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = memx_options_memoirdepth_sbe_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = memx_options_memoirdepth_sbe_v1_3.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memoirdepth_sbe_v1_3.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = memx_options_memoirdepth_sbe_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_options_memoirdepth_sbe_v1_3.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_3.fields.common_header, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_3.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_options_memoirdepth_sbe_v1_3.packet = {}

-- Dissect Packet
memx_options_memoirdepth_sbe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = memx_options_memoirdepth_sbe_v1_3.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = memx_options_memoirdepth_sbe_v1_3.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_options_memoirdepth_sbe_v1_3.init()
end

-- Dissector for Memx Options MemoirDepth Sbe 1.3
function omi_memx_options_memoirdepth_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_options_memoirdepth_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_options_memoirdepth_sbe_v1_3, buffer(), omi_memx_options_memoirdepth_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return memx_options_memoirdepth_sbe_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_memx_options_memoirdepth_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_memx_options_memoirdepth_sbe_v1_3_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(25, 1):uint()

  if value == 10 then
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

-- Dissector Heuristic for Memx Options MemoirDepth Sbe 1.3
local function omi_memx_options_memoirdepth_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_memx_options_memoirdepth_sbe_v1_3_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_options_memoirdepth_sbe_v1_3
  omi_memx_options_memoirdepth_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Options MemoirDepth Sbe 1.3
omi_memx_options_memoirdepth_sbe_v1_3:register_heuristic("udp", omi_memx_options_memoirdepth_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.3
--   Date: Thursday, June 29, 2023
--   Specification: MEMOIR Depth for US Options-v1_3.pdf
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
