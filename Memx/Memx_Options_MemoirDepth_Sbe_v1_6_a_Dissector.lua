-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Options MemoirDepth Sbe 1.6.a Protocol
local omi_memx_options_memoirdepth_sbe_v1_6_a = Proto("Memx.Options.MemoirDepth.Sbe.v1.6.a.Lua", "Memx Options MemoirDepth Sbe 1.6.a")

-- Protocol table
local memx_options_memoirdepth_sbe_v1_6_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Options MemoirDepth Sbe 1.6.a Fields
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "memx.options.memoirdepth.sbe.v1.6.a.asofsequencenumber", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.block_length = ProtoField.new("Block Length", "memx.options.memoirdepth.sbe.v1.6.a.blocklength", ftypes.UINT16)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.closing_only = ProtoField.new("Closing Only", "memx.options.memoirdepth.sbe.v1.6.a.closingonly", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.closing_time = ProtoField.new("Closing Time", "memx.options.memoirdepth.sbe.v1.6.a.closingtime", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.common_header = ProtoField.new("Common Header", "memx.options.memoirdepth.sbe.v1.6.a.commonheader", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.corrected_price = ProtoField.new("Corrected Price", "memx.options.memoirdepth.sbe.v1.6.a.correctedprice", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.corrected_quantity = ProtoField.new("Corrected Quantity", "memx.options.memoirdepth.sbe.v1.6.a.correctedquantity", ftypes.UINT32)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.header_length = ProtoField.new("Header Length", "memx.options.memoirdepth.sbe.v1.6.a.headerlength", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.instrument_trading_status = ProtoField.new("Instrument Trading Status", "memx.options.memoirdepth.sbe.v1.6.a.instrumenttradingstatus", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.instrument_trading_status_reason = ProtoField.new("Instrument Trading Status Reason", "memx.options.memoirdepth.sbe.v1.6.a.instrumenttradingstatusreason", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "memx.options.memoirdepth.sbe.v1.6.a.intermarketsweep", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "memx.options.memoirdepth.sbe.v1.6.a.istestsymbol", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.maturity_date = ProtoField.new("Maturity Date", "memx.options.memoirdepth.sbe.v1.6.a.maturitydate", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.message = ProtoField.new("Message", "memx.options.memoirdepth.sbe.v1.6.a.message", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.message_count = ProtoField.new("Message Count", "memx.options.memoirdepth.sbe.v1.6.a.messagecount", ftypes.UINT16)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.message_length = ProtoField.new("Message Length", "memx.options.memoirdepth.sbe.v1.6.a.messagelength", ftypes.UINT16)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.message_type = ProtoField.new("Message Type", "memx.options.memoirdepth.sbe.v1.6.a.messagetype", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.options_product_type = ProtoField.new("Options Product Type", "memx.options.memoirdepth.sbe.v1.6.a.optionsproducttype", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_capacity = ProtoField.new("Order Capacity", "memx.options.memoirdepth.sbe.v1.6.a.ordercapacity", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_id = ProtoField.new("Order Id", "memx.options.memoirdepth.sbe.v1.6.a.orderid", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.original_price = ProtoField.new("Original Price", "memx.options.memoirdepth.sbe.v1.6.a.originalprice", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.original_quantity = ProtoField.new("Original Quantity", "memx.options.memoirdepth.sbe.v1.6.a.originalquantity", ftypes.UINT32)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.osi_root = ProtoField.new("Osi Root", "memx.options.memoirdepth.sbe.v1.6.a.osiroot", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.packet = ProtoField.new("Packet", "memx.options.memoirdepth.sbe.v1.6.a.packet", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.payload = ProtoField.new("Payload", "memx.options.memoirdepth.sbe.v1.6.a.payload", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.price = ProtoField.new("Price", "memx.options.memoirdepth.sbe.v1.6.a.price", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.price_short = ProtoField.new("Price Short", "memx.options.memoirdepth.sbe.v1.6.a.priceshort", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.quantity = ProtoField.new("Quantity", "memx.options.memoirdepth.sbe.v1.6.a.quantity", ftypes.UINT32)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.quantity_reduced = ProtoField.new("Quantity Reduced", "memx.options.memoirdepth.sbe.v1.6.a.quantityreduced", ftypes.UINT32)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.quantity_short = ProtoField.new("Quantity Short", "memx.options.memoirdepth.sbe.v1.6.a.quantityshort", ftypes.UINT16)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.reserved_7 = ProtoField.new("Reserved 7", "memx.options.memoirdepth.sbe.v1.6.a.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sbe_header = ProtoField.new("Sbe Header", "memx.options.memoirdepth.sbe.v1.6.a.sbeheader", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sbe_message = ProtoField.new("Sbe Message", "memx.options.memoirdepth.sbe.v1.6.a.sbemessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.schema_id = ProtoField.new("Schema Id", "memx.options.memoirdepth.sbe.v1.6.a.schemaid", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sequence_number = ProtoField.new("Sequence Number", "memx.options.memoirdepth.sbe.v1.6.a.sequencenumber", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.options.memoirdepth.sbe.v1.6.a.sequencedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "memx.options.memoirdepth.sbe.v1.6.a.sequencedmessages", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.session_id = ProtoField.new("Session Id", "memx.options.memoirdepth.sbe.v1.6.a.sessionid", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.side = ProtoField.new("Side", "memx.options.memoirdepth.sbe.v1.6.a.side", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.strike_price = ProtoField.new("Strike Price", "memx.options.memoirdepth.sbe.v1.6.a.strikeprice", ftypes.DOUBLE)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.strike_put_or_call = ProtoField.new("Strike Put Or Call", "memx.options.memoirdepth.sbe.v1.6.a.strikeputorcall", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.symbol = ProtoField.new("Symbol", "memx.options.memoirdepth.sbe.v1.6.a.symbol", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.template_id = ProtoField.new("Template Id", "memx.options.memoirdepth.sbe.v1.6.a.templateid", ftypes.UINT8)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.timestamp = ProtoField.new("Timestamp", "memx.options.memoirdepth.sbe.v1.6.a.timestamp", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.trade_conditions = ProtoField.new("Trade Conditions", "memx.options.memoirdepth.sbe.v1.6.a.tradeconditions", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.trade_id = ProtoField.new("Trade Id", "memx.options.memoirdepth.sbe.v1.6.a.tradeid", ftypes.UINT64)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.trading_session = ProtoField.new("Trading Session", "memx.options.memoirdepth.sbe.v1.6.a.tradingsession", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.underlier = ProtoField.new("Underlier", "memx.options.memoirdepth.sbe.v1.6.a.underlier", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.version = ProtoField.new("Version", "memx.options.memoirdepth.sbe.v1.6.a.version", ftypes.UINT16)

-- Memx Options Sbe MemoirDepth 1.6.a Application Messages
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "memx.options.memoirdepth.sbe.v1.6.a.brokentrademessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.clear_book_message = ProtoField.new("Clear Book Message", "memx.options.memoirdepth.sbe.v1.6.a.clearbookmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.corrected_trade_message = ProtoField.new("Corrected Trade Message", "memx.options.memoirdepth.sbe.v1.6.a.correctedtrademessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "memx.options.memoirdepth.sbe.v1.6.a.instrumentdirectorymessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.options_instrument_status_message = ProtoField.new("Options Instrument Status Message", "memx.options.memoirdepth.sbe.v1.6.a.optionsinstrumentstatusmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_added_extended_message = ProtoField.new("Order Added Extended Message", "memx.options.memoirdepth.sbe.v1.6.a.orderaddedextendedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_added_long_message = ProtoField.new("Order Added Long Message", "memx.options.memoirdepth.sbe.v1.6.a.orderaddedlongmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_added_short_message = ProtoField.new("Order Added Short Message", "memx.options.memoirdepth.sbe.v1.6.a.orderaddedshortmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "memx.options.memoirdepth.sbe.v1.6.a.orderdeletedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_executed_message = ProtoField.new("Order Executed Message", "memx.options.memoirdepth.sbe.v1.6.a.orderexecutedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_reduced_message = ProtoField.new("Order Reduced Message", "memx.options.memoirdepth.sbe.v1.6.a.orderreducedmessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "memx.options.memoirdepth.sbe.v1.6.a.snapshotcompletemessage", ftypes.STRING)
omi_memx_options_memoirdepth_sbe_v1_6_a.fields.underlier_instrument_status_message = ProtoField.new("Underlier Instrument Status Message", "memx.options.memoirdepth.sbe.v1.6.a.underlierinstrumentstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx Options MemoirDepth Sbe 1.6.a Element Dissection Options
show.broken_trade_message = true
show.clear_book_message = true
show.common_header = true
show.corrected_trade_message = true
show.instrument_directory_message = true
show.message = true
show.options_instrument_status_message = true
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
show.underlier_instrument_status_message = true
show.payload = false
show.sequenced_messages = false

-- Register Memx Options MemoirDepth Sbe 1.6.a Show Options
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_corrected_trade_message = Pref.bool("Show Corrected Trade Message", show.corrected_trade_message, "Parse and add Corrected Trade Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_options_instrument_status_message = Pref.bool("Show Options Instrument Status Message", show.options_instrument_status_message, "Parse and add Options Instrument Status Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_added_extended_message = Pref.bool("Show Order Added Extended Message", show.order_added_extended_message, "Parse and add Order Added Extended Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_added_long_message = Pref.bool("Show Order Added Long Message", show.order_added_long_message, "Parse and add Order Added Long Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_added_short_message = Pref.bool("Show Order Added Short Message", show.order_added_short_message, "Parse and add Order Added Short Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_reduced_message = Pref.bool("Show Order Reduced Message", show.order_reduced_message, "Parse and add Order Reduced Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_snapshot_complete_message = Pref.bool("Show Snapshot Complete Message", show.snapshot_complete_message, "Parse and add Snapshot Complete Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_trade_conditions = Pref.bool("Show Trade Conditions", show.trade_conditions, "Parse and add Trade Conditions to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_underlier_instrument_status_message = Pref.bool("Show Underlier Instrument Status Message", show.underlier_instrument_status_message, "Parse and add Underlier Instrument Status Message to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_memx_options_memoirdepth_sbe_v1_6_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.broken_trade_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_broken_trade_message
    changed = true
  end
  if show.clear_book_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_clear_book_message then
    show.clear_book_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_clear_book_message
    changed = true
  end
  if show.common_header ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_common_header then
    show.common_header = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_common_header
    changed = true
  end
  if show.corrected_trade_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_corrected_trade_message then
    show.corrected_trade_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_corrected_trade_message
    changed = true
  end
  if show.instrument_directory_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_instrument_directory_message
    changed = true
  end
  if show.message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_message then
    show.message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_message
    changed = true
  end
  if show.options_instrument_status_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_options_instrument_status_message then
    show.options_instrument_status_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_options_instrument_status_message
    changed = true
  end
  if show.order_added_extended_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_added_extended_message then
    show.order_added_extended_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_added_extended_message
    changed = true
  end
  if show.order_added_long_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_added_long_message then
    show.order_added_long_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_added_long_message
    changed = true
  end
  if show.order_added_short_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_added_short_message then
    show.order_added_short_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_added_short_message
    changed = true
  end
  if show.order_deleted_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_deleted_message then
    show.order_deleted_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_executed_message then
    show.order_executed_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_executed_message
    changed = true
  end
  if show.order_reduced_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_reduced_message then
    show.order_reduced_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_order_reduced_message
    changed = true
  end
  if show.packet ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_packet then
    show.packet = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_packet
    changed = true
  end
  if show.sbe_header ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sbe_header then
    show.sbe_header = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sbe_message then
    show.sbe_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sequenced_message
    changed = true
  end
  if show.snapshot_complete_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_snapshot_complete_message then
    show.snapshot_complete_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_snapshot_complete_message
    changed = true
  end
  if show.trade_conditions ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_trade_conditions then
    show.trade_conditions = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_trade_conditions
    changed = true
  end
  if show.underlier_instrument_status_message ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_underlier_instrument_status_message then
    show.underlier_instrument_status_message = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_underlier_instrument_status_message
    changed = true
  end
  if show.payload ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_payload then
    show.payload = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_memx_options_memoirdepth_sbe_v1_6_a.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Options MemoirDepth Sbe 1.6.a
-----------------------------------------------------------------------

-- Symbol
memx_options_memoirdepth_sbe_v1_6_a.symbol = {}

-- Size: Symbol
memx_options_memoirdepth_sbe_v1_6_a.symbol.size = 8

-- Display: Symbol
memx_options_memoirdepth_sbe_v1_6_a.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.symbol.size
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

  local display = memx_options_memoirdepth_sbe_v1_6_a.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
memx_options_memoirdepth_sbe_v1_6_a.timestamp = {}

-- Size: Timestamp
memx_options_memoirdepth_sbe_v1_6_a.timestamp.size = 8

-- Display: Timestamp
memx_options_memoirdepth_sbe_v1_6_a.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_6_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Clear Book Message
memx_options_memoirdepth_sbe_v1_6_a.clear_book_message = {}

-- Size: Clear Book Message
memx_options_memoirdepth_sbe_v1_6_a.clear_book_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size

-- Display: Clear Book Message
memx_options_memoirdepth_sbe_v1_6_a.clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
memx_options_memoirdepth_sbe_v1_6_a.clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
memx_options_memoirdepth_sbe_v1_6_a.clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.clear_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.clear_book_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
memx_options_memoirdepth_sbe_v1_6_a.price = {}

-- Size: Price
memx_options_memoirdepth_sbe_v1_6_a.price.size = 8

-- Display: Price
memx_options_memoirdepth_sbe_v1_6_a.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
memx_options_memoirdepth_sbe_v1_6_a.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
memx_options_memoirdepth_sbe_v1_6_a.price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirdepth_sbe_v1_6_a.price.translate(raw)
  local display = memx_options_memoirdepth_sbe_v1_6_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
memx_options_memoirdepth_sbe_v1_6_a.quantity = {}

-- Size: Quantity
memx_options_memoirdepth_sbe_v1_6_a.quantity.size = 4

-- Display: Quantity
memx_options_memoirdepth_sbe_v1_6_a.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
memx_options_memoirdepth_sbe_v1_6_a.quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.quantity, range, value, display)

  return offset + length, value
end

-- Trade Id
memx_options_memoirdepth_sbe_v1_6_a.trade_id = {}

-- Size: Trade Id
memx_options_memoirdepth_sbe_v1_6_a.trade_id.size = 8

-- Display: Trade Id
memx_options_memoirdepth_sbe_v1_6_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
memx_options_memoirdepth_sbe_v1_6_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_6_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Order Id
memx_options_memoirdepth_sbe_v1_6_a.order_id = {}

-- Size: Order Id
memx_options_memoirdepth_sbe_v1_6_a.order_id.size = 8

-- Display: Order Id
memx_options_memoirdepth_sbe_v1_6_a.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
memx_options_memoirdepth_sbe_v1_6_a.order_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_6_a.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Conditions
memx_options_memoirdepth_sbe_v1_6_a.trade_conditions = {}

-- Size: Trade Conditions
memx_options_memoirdepth_sbe_v1_6_a.trade_conditions.size = 1

-- Display: Trade Conditions
memx_options_memoirdepth_sbe_v1_6_a.trade_conditions.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Intermarket Sweep flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Intermarket Sweep"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Conditions
memx_options_memoirdepth_sbe_v1_6_a.trade_conditions.bits = function(range, value, packet, parent)

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.intermarket_sweep, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.reserved_7, range, value)
end

-- Dissect: Trade Conditions
memx_options_memoirdepth_sbe_v1_6_a.trade_conditions.dissect = function(buffer, offset, packet, parent)
  local size = memx_options_memoirdepth_sbe_v1_6_a.trade_conditions.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.trade_conditions.display(range, value, packet, parent)
  local element = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.trade_conditions, range, display)

  if show.trade_conditions then
    memx_options_memoirdepth_sbe_v1_6_a.trade_conditions.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Capacity
memx_options_memoirdepth_sbe_v1_6_a.order_capacity = {}

-- Size: Order Capacity
memx_options_memoirdepth_sbe_v1_6_a.order_capacity.size = 1

-- Display: Order Capacity
memx_options_memoirdepth_sbe_v1_6_a.order_capacity.display = function(value)
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
memx_options_memoirdepth_sbe_v1_6_a.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.order_capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_6_a.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Executed Message
memx_options_memoirdepth_sbe_v1_6_a.order_executed_message = {}

-- Size: Order Executed Message
memx_options_memoirdepth_sbe_v1_6_a.order_executed_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_capacity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.trade_conditions.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.trade_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.quantity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.price.size

-- Display: Order Executed Message
memx_options_memoirdepth_sbe_v1_6_a.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
memx_options_memoirdepth_sbe_v1_6_a.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Order Capacity: OrderCapacityType
  index, order_capacity = memx_options_memoirdepth_sbe_v1_6_a.order_capacity.dissect(buffer, index, packet, parent)

  -- Trade Conditions: Struct of 2 fields
  index, trade_conditions = memx_options_memoirdepth_sbe_v1_6_a.trade_conditions.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_options_memoirdepth_sbe_v1_6_a.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = memx_options_memoirdepth_sbe_v1_6_a.trade_id.dissect(buffer, index, packet, parent)

  -- Quantity: uint32
  index, quantity = memx_options_memoirdepth_sbe_v1_6_a.quantity.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_options_memoirdepth_sbe_v1_6_a.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
memx_options_memoirdepth_sbe_v1_6_a.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_executed_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Reduced
memx_options_memoirdepth_sbe_v1_6_a.quantity_reduced = {}

-- Size: Quantity Reduced
memx_options_memoirdepth_sbe_v1_6_a.quantity_reduced.size = 4

-- Display: Quantity Reduced
memx_options_memoirdepth_sbe_v1_6_a.quantity_reduced.display = function(value)
  return "Quantity Reduced: "..value
end

-- Dissect: Quantity Reduced
memx_options_memoirdepth_sbe_v1_6_a.quantity_reduced.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.quantity_reduced.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.quantity_reduced.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.quantity_reduced, range, value, display)

  return offset + length, value
end

-- Side
memx_options_memoirdepth_sbe_v1_6_a.side = {}

-- Size: Side
memx_options_memoirdepth_sbe_v1_6_a.side.size = 1

-- Display: Side
memx_options_memoirdepth_sbe_v1_6_a.side.display = function(value)
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
memx_options_memoirdepth_sbe_v1_6_a.side.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_6_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.side, range, value, display)

  return offset + length, value
end

-- Order Reduced Message
memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message = {}

-- Size: Order Reduced Message
memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_capacity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.side.size + 
  memx_options_memoirdepth_sbe_v1_6_a.quantity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.price.size + 
  memx_options_memoirdepth_sbe_v1_6_a.quantity_reduced.size

-- Display: Order Reduced Message
memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Reduced Message
memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Order Capacity: OrderCapacityType
  index, order_capacity = memx_options_memoirdepth_sbe_v1_6_a.order_capacity.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_options_memoirdepth_sbe_v1_6_a.order_id.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_options_memoirdepth_sbe_v1_6_a.side.dissect(buffer, index, packet, parent)

  -- Quantity: uint32
  index, quantity = memx_options_memoirdepth_sbe_v1_6_a.quantity.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_options_memoirdepth_sbe_v1_6_a.price.dissect(buffer, index, packet, parent)

  -- Quantity Reduced: uint32
  index, quantity_reduced = memx_options_memoirdepth_sbe_v1_6_a.quantity_reduced.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Reduced Message
memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message.dissect = function(buffer, offset, packet, parent)
  if show.order_reduced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_reduced_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message = {}

-- Size: Order Deleted Message
memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_capacity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_id.size

-- Display: Order Deleted Message
memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Order Capacity: OrderCapacityType
  index, order_capacity = memx_options_memoirdepth_sbe_v1_6_a.order_capacity.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_options_memoirdepth_sbe_v1_6_a.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_deleted_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Extended Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message = {}

-- Size: Order Added Extended Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_capacity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.side.size + 
  memx_options_memoirdepth_sbe_v1_6_a.quantity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.price.size

-- Display: Order Added Extended Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Extended Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Order Capacity: OrderCapacityType
  index, order_capacity = memx_options_memoirdepth_sbe_v1_6_a.order_capacity.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_options_memoirdepth_sbe_v1_6_a.order_id.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_options_memoirdepth_sbe_v1_6_a.side.dissect(buffer, index, packet, parent)

  -- Quantity: uint32
  index, quantity = memx_options_memoirdepth_sbe_v1_6_a.quantity.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_options_memoirdepth_sbe_v1_6_a.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Extended Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_extended_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_added_extended_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Added Long Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message = {}

-- Size: Order Added Long Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.side.size + 
  memx_options_memoirdepth_sbe_v1_6_a.quantity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.price.size

-- Display: Order Added Long Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Long Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_options_memoirdepth_sbe_v1_6_a.order_id.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_options_memoirdepth_sbe_v1_6_a.side.dissect(buffer, index, packet, parent)

  -- Quantity: uint32
  index, quantity = memx_options_memoirdepth_sbe_v1_6_a.quantity.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_options_memoirdepth_sbe_v1_6_a.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Long Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_added_long_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Short
memx_options_memoirdepth_sbe_v1_6_a.price_short = {}

-- Size: Price Short
memx_options_memoirdepth_sbe_v1_6_a.price_short.size = 2

-- Display: Price Short
memx_options_memoirdepth_sbe_v1_6_a.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
memx_options_memoirdepth_sbe_v1_6_a.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
memx_options_memoirdepth_sbe_v1_6_a.price_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = memx_options_memoirdepth_sbe_v1_6_a.price_short.translate(raw)
  local display = memx_options_memoirdepth_sbe_v1_6_a.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Short
memx_options_memoirdepth_sbe_v1_6_a.quantity_short = {}

-- Size: Quantity Short
memx_options_memoirdepth_sbe_v1_6_a.quantity_short.size = 2

-- Display: Quantity Short
memx_options_memoirdepth_sbe_v1_6_a.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
memx_options_memoirdepth_sbe_v1_6_a.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.quantity_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Order Added Short Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message = {}

-- Size: Order Added Short Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.order_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.side.size + 
  memx_options_memoirdepth_sbe_v1_6_a.quantity_short.size + 
  memx_options_memoirdepth_sbe_v1_6_a.price_short.size

-- Display: Order Added Short Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Added Short Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Order Id: uint64
  index, order_id = memx_options_memoirdepth_sbe_v1_6_a.order_id.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_options_memoirdepth_sbe_v1_6_a.side.dissect(buffer, index, packet, parent)

  -- Quantity Short: uint16
  index, quantity_short = memx_options_memoirdepth_sbe_v1_6_a.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: ShortPriceType
  index, price_short = memx_options_memoirdepth_sbe_v1_6_a.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Added Short Message
memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message.dissect = function(buffer, offset, packet, parent)
  if show.order_added_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.order_added_short_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message.fields(buffer, offset, packet, parent)
  end
end

-- As Of Sequence Number
memx_options_memoirdepth_sbe_v1_6_a.as_of_sequence_number = {}

-- Size: As Of Sequence Number
memx_options_memoirdepth_sbe_v1_6_a.as_of_sequence_number.size = 8

-- Display: As Of Sequence Number
memx_options_memoirdepth_sbe_v1_6_a.as_of_sequence_number.display = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
memx_options_memoirdepth_sbe_v1_6_a.as_of_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.as_of_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_6_a.as_of_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message = {}

-- Size: Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.as_of_sequence_number.size

-- Display: Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- As Of Sequence Number: uint64
  index, as_of_sequence_number = memx_options_memoirdepth_sbe_v1_6_a.as_of_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.snapshot_complete_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Price
memx_options_memoirdepth_sbe_v1_6_a.corrected_price = {}

-- Size: Corrected Price
memx_options_memoirdepth_sbe_v1_6_a.corrected_price.size = 8

-- Display: Corrected Price
memx_options_memoirdepth_sbe_v1_6_a.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
memx_options_memoirdepth_sbe_v1_6_a.corrected_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Corrected Price
memx_options_memoirdepth_sbe_v1_6_a.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirdepth_sbe_v1_6_a.corrected_price.translate(raw)
  local display = memx_options_memoirdepth_sbe_v1_6_a.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Quantity
memx_options_memoirdepth_sbe_v1_6_a.corrected_quantity = {}

-- Size: Corrected Quantity
memx_options_memoirdepth_sbe_v1_6_a.corrected_quantity.size = 4

-- Display: Corrected Quantity
memx_options_memoirdepth_sbe_v1_6_a.corrected_quantity.display = function(value)
  return "Corrected Quantity: "..value
end

-- Dissect: Corrected Quantity
memx_options_memoirdepth_sbe_v1_6_a.corrected_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.corrected_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.corrected_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.corrected_quantity, range, value, display)

  return offset + length, value
end

-- Original Price
memx_options_memoirdepth_sbe_v1_6_a.original_price = {}

-- Size: Original Price
memx_options_memoirdepth_sbe_v1_6_a.original_price.size = 8

-- Display: Original Price
memx_options_memoirdepth_sbe_v1_6_a.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
memx_options_memoirdepth_sbe_v1_6_a.original_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Original Price
memx_options_memoirdepth_sbe_v1_6_a.original_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.original_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirdepth_sbe_v1_6_a.original_price.translate(raw)
  local display = memx_options_memoirdepth_sbe_v1_6_a.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Quantity
memx_options_memoirdepth_sbe_v1_6_a.original_quantity = {}

-- Size: Original Quantity
memx_options_memoirdepth_sbe_v1_6_a.original_quantity.size = 4

-- Display: Original Quantity
memx_options_memoirdepth_sbe_v1_6_a.original_quantity.display = function(value)
  return "Original Quantity: "..value
end

-- Dissect: Original Quantity
memx_options_memoirdepth_sbe_v1_6_a.original_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.original_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.original_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.original_quantity, range, value, display)

  return offset + length, value
end

-- Corrected Trade Message
memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message = {}

-- Size: Corrected Trade Message
memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.trade_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.original_quantity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.original_price.size + 
  memx_options_memoirdepth_sbe_v1_6_a.corrected_quantity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.corrected_price.size

-- Display: Corrected Trade Message
memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Message
memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = memx_options_memoirdepth_sbe_v1_6_a.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: uint32
  index, original_quantity = memx_options_memoirdepth_sbe_v1_6_a.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: PriceType
  index, original_price = memx_options_memoirdepth_sbe_v1_6_a.original_price.dissect(buffer, index, packet, parent)

  -- Corrected Quantity: uint32
  index, corrected_quantity = memx_options_memoirdepth_sbe_v1_6_a.corrected_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Price: PriceType
  index, corrected_price = memx_options_memoirdepth_sbe_v1_6_a.corrected_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade Message
memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.corrected_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.corrected_trade_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message = {}

-- Size: Broken Trade Message
memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.trade_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.original_quantity.size + 
  memx_options_memoirdepth_sbe_v1_6_a.original_price.size

-- Display: Broken Trade Message
memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = memx_options_memoirdepth_sbe_v1_6_a.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: uint32
  index, original_quantity = memx_options_memoirdepth_sbe_v1_6_a.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: PriceType
  index, original_price = memx_options_memoirdepth_sbe_v1_6_a.original_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.broken_trade_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlier
memx_options_memoirdepth_sbe_v1_6_a.underlier = {}

-- Size: Underlier
memx_options_memoirdepth_sbe_v1_6_a.underlier.size = 6

-- Display: Underlier
memx_options_memoirdepth_sbe_v1_6_a.underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier: No Value"
  end

  return "Underlier: "..value
end

-- Dissect: Underlier
memx_options_memoirdepth_sbe_v1_6_a.underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.underlier.size
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

  local display = memx_options_memoirdepth_sbe_v1_6_a.underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.underlier, range, value, display)

  return offset + length, value
end

-- Trading Session
memx_options_memoirdepth_sbe_v1_6_a.trading_session = {}

-- Size: Trading Session
memx_options_memoirdepth_sbe_v1_6_a.trading_session.size = 1

-- Display: Trading Session
memx_options_memoirdepth_sbe_v1_6_a.trading_session.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trading Session: No Value"
  end

  if value == "1" then
    return "Trading Session: Open (1)"
  end
  if value == "2" then
    return "Trading Session: Closed (2)"
  end

  return "Trading Session: Unknown("..value..")"
end

-- Dissect: Trading Session
memx_options_memoirdepth_sbe_v1_6_a.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_6_a.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Underlier Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message = {}

-- Size: Underlier Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.trading_session.size + 
  memx_options_memoirdepth_sbe_v1_6_a.underlier.size

-- Display: Underlier Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlier Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: TradingSessionType
  index, trading_session = memx_options_memoirdepth_sbe_v1_6_a.trading_session.dissect(buffer, index, packet, parent)

  -- Underlier: InstrumentDirectoryUnderlier
  index, underlier = memx_options_memoirdepth_sbe_v1_6_a.underlier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlier Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.underlier_instrument_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.underlier_instrument_status_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Trading Status Reason
memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status_reason = {}

-- Size: Instrument Trading Status Reason
memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status_reason.size = 1

-- Display: Instrument Trading Status Reason
memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status_reason.display = function(value)
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
memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.instrument_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Instrument Trading Status
memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status = {}

-- Size: Instrument Trading Status
memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status.size = 1

-- Display: Instrument Trading Status
memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status.display = function(value)
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
memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.instrument_trading_status, range, value, display)

  return offset + length, value
end

-- Options Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message = {}

-- Size: Options Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status.size + 
  memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status_reason.size + 
  memx_options_memoirdepth_sbe_v1_6_a.trading_session.size

-- Display: Options Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Trading Status: InstrumentTradingStatusType
  index, instrument_trading_status = memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status.dissect(buffer, index, packet, parent)

  -- Instrument Trading Status Reason: InstrumentTradingStatusReasonType
  index, instrument_trading_status_reason = memx_options_memoirdepth_sbe_v1_6_a.instrument_trading_status_reason.dissect(buffer, index, packet, parent)

  -- Trading Session: TradingSessionType
  index, trading_session = memx_options_memoirdepth_sbe_v1_6_a.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Instrument Status Message
memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.options_instrument_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.options_instrument_status_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Is Test Symbol
memx_options_memoirdepth_sbe_v1_6_a.is_test_symbol = {}

-- Size: Is Test Symbol
memx_options_memoirdepth_sbe_v1_6_a.is_test_symbol.size = 1

-- Display: Is Test Symbol
memx_options_memoirdepth_sbe_v1_6_a.is_test_symbol.display = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
memx_options_memoirdepth_sbe_v1_6_a.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Closing Time
memx_options_memoirdepth_sbe_v1_6_a.closing_time = {}

-- Size: Closing Time
memx_options_memoirdepth_sbe_v1_6_a.closing_time.size = 8

-- Display: Closing Time
memx_options_memoirdepth_sbe_v1_6_a.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
memx_options_memoirdepth_sbe_v1_6_a.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.closing_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_6_a.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Closing Only
memx_options_memoirdepth_sbe_v1_6_a.closing_only = {}

-- Size: Closing Only
memx_options_memoirdepth_sbe_v1_6_a.closing_only.size = 1

-- Display: Closing Only
memx_options_memoirdepth_sbe_v1_6_a.closing_only.display = function(value)
  if value == 0 then
    return "Closing Only: False (0)"
  end
  if value == 1 then
    return "Closing Only: True (1)"
  end

  return "Closing Only: Unknown("..value..")"
end

-- Dissect: Closing Only
memx_options_memoirdepth_sbe_v1_6_a.closing_only.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.closing_only.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.closing_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.closing_only, range, value, display)

  return offset + length, value
end

-- Strike Price
memx_options_memoirdepth_sbe_v1_6_a.strike_price = {}

-- Size: Strike Price
memx_options_memoirdepth_sbe_v1_6_a.strike_price.size = 8

-- Display: Strike Price
memx_options_memoirdepth_sbe_v1_6_a.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
memx_options_memoirdepth_sbe_v1_6_a.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
memx_options_memoirdepth_sbe_v1_6_a.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirdepth_sbe_v1_6_a.strike_price.translate(raw)
  local display = memx_options_memoirdepth_sbe_v1_6_a.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Put Or Call
memx_options_memoirdepth_sbe_v1_6_a.strike_put_or_call = {}

-- Size: Strike Put Or Call
memx_options_memoirdepth_sbe_v1_6_a.strike_put_or_call.size = 1

-- Display: Strike Put Or Call
memx_options_memoirdepth_sbe_v1_6_a.strike_put_or_call.display = function(value)
  if value == 0 then
    return "Strike Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Strike Put Or Call: Call (1)"
  end

  return "Strike Put Or Call: Unknown("..value..")"
end

-- Dissect: Strike Put Or Call
memx_options_memoirdepth_sbe_v1_6_a.strike_put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.strike_put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.strike_put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.strike_put_or_call, range, value, display)

  return offset + length, value
end

-- Maturity Date
memx_options_memoirdepth_sbe_v1_6_a.maturity_date = {}

-- Size: Maturity Date
memx_options_memoirdepth_sbe_v1_6_a.maturity_date.size = 8

-- Display: Maturity Date
memx_options_memoirdepth_sbe_v1_6_a.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
memx_options_memoirdepth_sbe_v1_6_a.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.maturity_date.size
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

  local display = memx_options_memoirdepth_sbe_v1_6_a.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Osi Root
memx_options_memoirdepth_sbe_v1_6_a.osi_root = {}

-- Size: Osi Root
memx_options_memoirdepth_sbe_v1_6_a.osi_root.size = 6

-- Display: Osi Root
memx_options_memoirdepth_sbe_v1_6_a.osi_root.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Osi Root: No Value"
  end

  return "Osi Root: "..value
end

-- Dissect: Osi Root
memx_options_memoirdepth_sbe_v1_6_a.osi_root.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.osi_root.size
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

  local display = memx_options_memoirdepth_sbe_v1_6_a.osi_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.osi_root, range, value, display)

  return offset + length, value
end

-- Options Product Type
memx_options_memoirdepth_sbe_v1_6_a.options_product_type = {}

-- Size: Options Product Type
memx_options_memoirdepth_sbe_v1_6_a.options_product_type.size = 1

-- Display: Options Product Type
memx_options_memoirdepth_sbe_v1_6_a.options_product_type.display = function(value)
  if value == 0 then
    return "Options Product Type: Equity Underlying (0)"
  end
  if value == 1 then
    return "Options Product Type: Index Underlying (1)"
  end

  return "Options Product Type: Unknown("..value..")"
end

-- Dissect: Options Product Type
memx_options_memoirdepth_sbe_v1_6_a.options_product_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.options_product_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.options_product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.options_product_type, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message = {}

-- Size: Instrument Directory Message
memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message.size =
  memx_options_memoirdepth_sbe_v1_6_a.timestamp.size + 
  memx_options_memoirdepth_sbe_v1_6_a.symbol.size + 
  memx_options_memoirdepth_sbe_v1_6_a.options_product_type.size + 
  memx_options_memoirdepth_sbe_v1_6_a.underlier.size + 
  memx_options_memoirdepth_sbe_v1_6_a.osi_root.size + 
  memx_options_memoirdepth_sbe_v1_6_a.maturity_date.size + 
  memx_options_memoirdepth_sbe_v1_6_a.strike_put_or_call.size + 
  memx_options_memoirdepth_sbe_v1_6_a.strike_price.size + 
  memx_options_memoirdepth_sbe_v1_6_a.closing_only.size + 
  memx_options_memoirdepth_sbe_v1_6_a.closing_time.size + 
  memx_options_memoirdepth_sbe_v1_6_a.is_test_symbol.size

-- Display: Instrument Directory Message
memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirdepth_sbe_v1_6_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BrokenTradeSymbol
  index, symbol = memx_options_memoirdepth_sbe_v1_6_a.symbol.dissect(buffer, index, packet, parent)

  -- Options Product Type: OptionsProductType
  index, options_product_type = memx_options_memoirdepth_sbe_v1_6_a.options_product_type.dissect(buffer, index, packet, parent)

  -- Underlier: InstrumentDirectoryUnderlier
  index, underlier = memx_options_memoirdepth_sbe_v1_6_a.underlier.dissect(buffer, index, packet, parent)

  -- Osi Root: InstrumentDirectoryOSIRoot
  index, osi_root = memx_options_memoirdepth_sbe_v1_6_a.osi_root.dissect(buffer, index, packet, parent)

  -- Maturity Date: InstrumentDirectoryMaturityDate
  index, maturity_date = memx_options_memoirdepth_sbe_v1_6_a.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Put Or Call: PutOrCallType
  index, strike_put_or_call = memx_options_memoirdepth_sbe_v1_6_a.strike_put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: PriceType
  index, strike_price = memx_options_memoirdepth_sbe_v1_6_a.strike_price.dissect(buffer, index, packet, parent)

  -- Closing Only: BooleanType
  index, closing_only = memx_options_memoirdepth_sbe_v1_6_a.closing_only.dissect(buffer, index, packet, parent)

  -- Closing Time: UTCTimestampNanos
  index, closing_time = memx_options_memoirdepth_sbe_v1_6_a.closing_time.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: BooleanType
  index, is_test_symbol = memx_options_memoirdepth_sbe_v1_6_a.is_test_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.instrument_directory_message, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
memx_options_memoirdepth_sbe_v1_6_a.payload = {}

-- Size: Payload
memx_options_memoirdepth_sbe_v1_6_a.payload.size = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message.size
  end
  -- Size of Options Instrument Status Message
  if template_id == 2 then
    return memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message.size
  end
  -- Size of Underlier Instrument Status Message
  if template_id == 3 then
    return memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message.size
  end
  -- Size of Broken Trade Message
  if template_id == 5 then
    return memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message.size
  end
  -- Size of Corrected Trade Message
  if template_id == 6 then
    return memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message.size
  end
  -- Size of Snapshot Complete Message
  if template_id == 7 then
    return memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message.size
  end
  -- Size of Order Added Short Message
  if template_id == 10 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message.size
  end
  -- Size of Order Added Long Message
  if template_id == 11 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message.size
  end
  -- Size of Order Added Extended Message
  if template_id == 12 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message.size
  end
  -- Size of Order Deleted Message
  if template_id == 13 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message.size
  end
  -- Size of Order Reduced Message
  if template_id == 14 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message.size
  end
  -- Size of Order Executed Message
  if template_id == 15 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_executed_message.size
  end
  -- Size of Clear Book Message
  if template_id == 18 then
    return memx_options_memoirdepth_sbe_v1_6_a.clear_book_message.size
  end

  return 0
end

-- Display: Payload
memx_options_memoirdepth_sbe_v1_6_a.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_options_memoirdepth_sbe_v1_6_a.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return memx_options_memoirdepth_sbe_v1_6_a.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Instrument Status Message
  if template_id == 2 then
    return memx_options_memoirdepth_sbe_v1_6_a.options_instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlier Instrument Status Message
  if template_id == 3 then
    return memx_options_memoirdepth_sbe_v1_6_a.underlier_instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if template_id == 5 then
    return memx_options_memoirdepth_sbe_v1_6_a.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corrected Trade Message
  if template_id == 6 then
    return memx_options_memoirdepth_sbe_v1_6_a.corrected_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if template_id == 7 then
    return memx_options_memoirdepth_sbe_v1_6_a.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Short Message
  if template_id == 10 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_added_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Long Message
  if template_id == 11 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_added_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Added Extended Message
  if template_id == 12 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_added_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if template_id == 13 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Reduced Message
  if template_id == 14 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_reduced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if template_id == 15 then
    return memx_options_memoirdepth_sbe_v1_6_a.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if template_id == 18 then
    return memx_options_memoirdepth_sbe_v1_6_a.clear_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_options_memoirdepth_sbe_v1_6_a.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_options_memoirdepth_sbe_v1_6_a.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memoirdepth_sbe_v1_6_a.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memoirdepth_sbe_v1_6_a.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.payload, range, display)

  return memx_options_memoirdepth_sbe_v1_6_a.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_options_memoirdepth_sbe_v1_6_a.version = {}

-- Size: Version
memx_options_memoirdepth_sbe_v1_6_a.version.size = 2

-- Display: Version
memx_options_memoirdepth_sbe_v1_6_a.version.display = function(value)
  if value == 262 then
    return "Version: Version 1.6"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
memx_options_memoirdepth_sbe_v1_6_a.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_options_memoirdepth_sbe_v1_6_a.schema_id = {}

-- Size: Schema Id
memx_options_memoirdepth_sbe_v1_6_a.schema_id.size = 1

-- Display: Schema Id
memx_options_memoirdepth_sbe_v1_6_a.schema_id.display = function(value)
  if value == 10 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
memx_options_memoirdepth_sbe_v1_6_a.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_options_memoirdepth_sbe_v1_6_a.template_id = {}

-- Size: Template Id
memx_options_memoirdepth_sbe_v1_6_a.template_id.size = 1

-- Display: Template Id
memx_options_memoirdepth_sbe_v1_6_a.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Instrument Directory Message (1)"
  end
  if value == 2 then
    return "Template Id: Options Instrument Status Message (2)"
  end
  if value == 3 then
    return "Template Id: Underlier Instrument Status Message (3)"
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
memx_options_memoirdepth_sbe_v1_6_a.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_options_memoirdepth_sbe_v1_6_a.block_length = {}

-- Size: Block Length
memx_options_memoirdepth_sbe_v1_6_a.block_length.size = 2

-- Display: Block Length
memx_options_memoirdepth_sbe_v1_6_a.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_options_memoirdepth_sbe_v1_6_a.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_options_memoirdepth_sbe_v1_6_a.sbe_header = {}

-- Size: Sbe Header
memx_options_memoirdepth_sbe_v1_6_a.sbe_header.size =
  memx_options_memoirdepth_sbe_v1_6_a.block_length.size + 
  memx_options_memoirdepth_sbe_v1_6_a.template_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.schema_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.version.size

-- Display: Sbe Header
memx_options_memoirdepth_sbe_v1_6_a.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_options_memoirdepth_sbe_v1_6_a.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = memx_options_memoirdepth_sbe_v1_6_a.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint8
  index, template_id = memx_options_memoirdepth_sbe_v1_6_a.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint8
  index, schema_id = memx_options_memoirdepth_sbe_v1_6_a.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = memx_options_memoirdepth_sbe_v1_6_a.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_options_memoirdepth_sbe_v1_6_a.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sbe_header, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_options_memoirdepth_sbe_v1_6_a.sbe_message = {}

-- Calculate size of: Sbe Message
memx_options_memoirdepth_sbe_v1_6_a.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_6_a.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_options_memoirdepth_sbe_v1_6_a.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_options_memoirdepth_sbe_v1_6_a.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_options_memoirdepth_sbe_v1_6_a.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_options_memoirdepth_sbe_v1_6_a.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 13 branches
  index = memx_options_memoirdepth_sbe_v1_6_a.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_options_memoirdepth_sbe_v1_6_a.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_options_memoirdepth_sbe_v1_6_a.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sbe_message, range, display)
  end

  return memx_options_memoirdepth_sbe_v1_6_a.sbe_message.fields(buffer, offset, packet, parent)
end

-- Message Length
memx_options_memoirdepth_sbe_v1_6_a.message_length = {}

-- Size: Message Length
memx_options_memoirdepth_sbe_v1_6_a.message_length.size = 2

-- Display: Message Length
memx_options_memoirdepth_sbe_v1_6_a.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_options_memoirdepth_sbe_v1_6_a.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message
memx_options_memoirdepth_sbe_v1_6_a.message = {}

-- Calculate size of: Message
memx_options_memoirdepth_sbe_v1_6_a.message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirdepth_sbe_v1_6_a.message_length.size

  index = index + memx_options_memoirdepth_sbe_v1_6_a.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Message
memx_options_memoirdepth_sbe_v1_6_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
memx_options_memoirdepth_sbe_v1_6_a.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_options_memoirdepth_sbe_v1_6_a.message_length.dissect(buffer, index, packet, parent)

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_memoirdepth_sbe_v1_6_a.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
memx_options_memoirdepth_sbe_v1_6_a.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = memx_options_memoirdepth_sbe_v1_6_a.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.message, range, display)
  end

  return memx_options_memoirdepth_sbe_v1_6_a.message.fields(buffer, offset, packet, parent)
end

-- Message Count
memx_options_memoirdepth_sbe_v1_6_a.message_count = {}

-- Size: Message Count
memx_options_memoirdepth_sbe_v1_6_a.message_count.size = 2

-- Display: Message Count
memx_options_memoirdepth_sbe_v1_6_a.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_options_memoirdepth_sbe_v1_6_a.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequenced Message
memx_options_memoirdepth_sbe_v1_6_a.sequenced_message = {}

-- Size: Sequenced Message
memx_options_memoirdepth_sbe_v1_6_a.sequenced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
memx_options_memoirdepth_sbe_v1_6_a.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_options_memoirdepth_sbe_v1_6_a.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = memx_options_memoirdepth_sbe_v1_6_a.message_count.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = memx_options_memoirdepth_sbe_v1_6_a.message.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sequenced Message
memx_options_memoirdepth_sbe_v1_6_a.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_options_memoirdepth_sbe_v1_6_a.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sequenced_message, range, display)
  end

  return memx_options_memoirdepth_sbe_v1_6_a.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Messages
memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages = {}

-- Size: Sequenced Messages
memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages.size = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return memx_options_memoirdepth_sbe_v1_6_a.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return memx_options_memoirdepth_sbe_v1_6_a.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sequenced_messages, range, display)

  return memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
end

-- Sequence Number
memx_options_memoirdepth_sbe_v1_6_a.sequence_number = {}

-- Size: Sequence Number
memx_options_memoirdepth_sbe_v1_6_a.sequence_number.size = 8

-- Display: Sequence Number
memx_options_memoirdepth_sbe_v1_6_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
memx_options_memoirdepth_sbe_v1_6_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_6_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
memx_options_memoirdepth_sbe_v1_6_a.session_id = {}

-- Size: Session Id
memx_options_memoirdepth_sbe_v1_6_a.session_id.size = 8

-- Display: Session Id
memx_options_memoirdepth_sbe_v1_6_a.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_options_memoirdepth_sbe_v1_6_a.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirdepth_sbe_v1_6_a.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Header Length
memx_options_memoirdepth_sbe_v1_6_a.header_length = {}

-- Size: Header Length
memx_options_memoirdepth_sbe_v1_6_a.header_length.size = 1

-- Display: Header Length
memx_options_memoirdepth_sbe_v1_6_a.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
memx_options_memoirdepth_sbe_v1_6_a.header_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_options_memoirdepth_sbe_v1_6_a.message_type = {}

-- Size: Message Type
memx_options_memoirdepth_sbe_v1_6_a.message_type.size = 1

-- Display: Message Type
memx_options_memoirdepth_sbe_v1_6_a.message_type.display = function(value)
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
memx_options_memoirdepth_sbe_v1_6_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirdepth_sbe_v1_6_a.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirdepth_sbe_v1_6_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_options_memoirdepth_sbe_v1_6_a.common_header = {}

-- Size: Common Header
memx_options_memoirdepth_sbe_v1_6_a.common_header.size =
  memx_options_memoirdepth_sbe_v1_6_a.message_type.size + 
  memx_options_memoirdepth_sbe_v1_6_a.header_length.size + 
  memx_options_memoirdepth_sbe_v1_6_a.session_id.size + 
  memx_options_memoirdepth_sbe_v1_6_a.sequence_number.size

-- Display: Common Header
memx_options_memoirdepth_sbe_v1_6_a.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_options_memoirdepth_sbe_v1_6_a.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = memx_options_memoirdepth_sbe_v1_6_a.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = memx_options_memoirdepth_sbe_v1_6_a.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memoirdepth_sbe_v1_6_a.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = memx_options_memoirdepth_sbe_v1_6_a.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_options_memoirdepth_sbe_v1_6_a.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a.fields.common_header, buffer(offset, 0))
    local index = memx_options_memoirdepth_sbe_v1_6_a.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirdepth_sbe_v1_6_a.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirdepth_sbe_v1_6_a.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_options_memoirdepth_sbe_v1_6_a.packet = {}

-- Dissect Packet
memx_options_memoirdepth_sbe_v1_6_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = memx_options_memoirdepth_sbe_v1_6_a.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = memx_options_memoirdepth_sbe_v1_6_a.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_options_memoirdepth_sbe_v1_6_a.init()
end

-- Dissector for Memx Options MemoirDepth Sbe 1.6.a
function omi_memx_options_memoirdepth_sbe_v1_6_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_options_memoirdepth_sbe_v1_6_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_options_memoirdepth_sbe_v1_6_a, buffer(), omi_memx_options_memoirdepth_sbe_v1_6_a.description, "("..buffer:len().." Bytes)")
  return memx_options_memoirdepth_sbe_v1_6_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_memx_options_memoirdepth_sbe_v1_6_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_options_memoirdepth_sbe_v1_6_a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Memx Options MemoirDepth Sbe 1.6.a
local function omi_memx_options_memoirdepth_sbe_v1_6_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_options_memoirdepth_sbe_v1_6_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_options_memoirdepth_sbe_v1_6_a
  omi_memx_options_memoirdepth_sbe_v1_6_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Options MemoirDepth Sbe 1.6.a
omi_memx_options_memoirdepth_sbe_v1_6_a:register_heuristic("udp", omi_memx_options_memoirdepth_sbe_v1_6_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.6.a
--   Date: Monday, November 13, 2023
--   Specification: MEMOIR Depth for US Options-v1_6a.pdf
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
