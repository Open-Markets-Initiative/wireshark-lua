-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex Equities DeepPlus IexTp 1.0.1 Protocol
local iex_equities_deepplus_iextp_v1_0_1 = Proto("Iex.Equities.DeepPlus.IexTp.v1.0.1.Lua", "Iex Equities DeepPlus IexTp 1.0.1")

-- Component Tables
local show = {}
local format = {}
local iex_equities_deepplus_iextp_v1_0_1_display = {}
local iex_equities_deepplus_iextp_v1_0_1_dissect = {}
local iex_equities_deepplus_iextp_v1_0_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex Equities DeepPlus IexTp 1.0.1 Fields
iex_equities_deepplus_iextp_v1_0_1.fields.adjusted_poc_price = ProtoField.new("Adjusted Poc Price", "iex.equities.deepplus.iextp.v1.0.1.adjustedpocprice", ftypes.DOUBLE)
iex_equities_deepplus_iextp_v1_0_1.fields.channel_id = ProtoField.new("Channel Id", "iex.equities.deepplus.iextp.v1.0.1.channelid", ftypes.UINT32)
iex_equities_deepplus_iextp_v1_0_1.fields.detail = ProtoField.new("Detail", "iex.equities.deepplus.iextp.v1.0.1.detail", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.etp = ProtoField.new("Etp", "iex.equities.deepplus.iextp.v1.0.1.etp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
iex_equities_deepplus_iextp_v1_0_1.fields.extended_hours = ProtoField.new("Extended Hours", "iex.equities.deepplus.iextp.v1.0.1.extendedhours", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
iex_equities_deepplus_iextp_v1_0_1.fields.first_message_sequence_number = ProtoField.new("First Message Sequence Number", "iex.equities.deepplus.iextp.v1.0.1.firstmessagesequencenumber", ftypes.UINT64)
iex_equities_deepplus_iextp_v1_0_1.fields.iex_tp_header = ProtoField.new("Iex Tp Header", "iex.equities.deepplus.iextp.v1.0.1.iextpheader", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "iex.equities.deepplus.iextp.v1.0.1.intermarketsweep", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
iex_equities_deepplus_iextp_v1_0_1.fields.luld_tier = ProtoField.new("Luld Tier", "iex.equities.deepplus.iextp.v1.0.1.luldtier", ftypes.UINT8)
iex_equities_deepplus_iextp_v1_0_1.fields.message = ProtoField.new("Message", "iex.equities.deepplus.iextp.v1.0.1.message", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.message_count = ProtoField.new("Message Count", "iex.equities.deepplus.iextp.v1.0.1.messagecount", ftypes.UINT16)
iex_equities_deepplus_iextp_v1_0_1.fields.message_data = ProtoField.new("Message Data", "iex.equities.deepplus.iextp.v1.0.1.messagedata", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.message_header = ProtoField.new("Message Header", "iex.equities.deepplus.iextp.v1.0.1.messageheader", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.message_length = ProtoField.new("Message Length", "iex.equities.deepplus.iextp.v1.0.1.messagelength", ftypes.UINT16)
iex_equities_deepplus_iextp_v1_0_1.fields.message_protocol_id = ProtoField.new("Message Protocol Id", "iex.equities.deepplus.iextp.v1.0.1.messageprotocolid", ftypes.UINT16)
iex_equities_deepplus_iextp_v1_0_1.fields.message_type = ProtoField.new("Message Type", "iex.equities.deepplus.iextp.v1.0.1.messagetype", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.modify_flags = ProtoField.new("Modify Flags", "iex.equities.deepplus.iextp.v1.0.1.modifyflags", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.odd_lot = ProtoField.new("Odd Lot", "iex.equities.deepplus.iextp.v1.0.1.oddlot", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
iex_equities_deepplus_iextp_v1_0_1.fields.operational_halt_status = ProtoField.new("Operational Halt Status", "iex.equities.deepplus.iextp.v1.0.1.operationalhaltstatus", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.order_id = ProtoField.new("Order Id", "iex.equities.deepplus.iextp.v1.0.1.orderid", ftypes.UINT64)
iex_equities_deepplus_iextp_v1_0_1.fields.order_id_reference = ProtoField.new("Order Id Reference", "iex.equities.deepplus.iextp.v1.0.1.orderidreference", ftypes.UINT64)
iex_equities_deepplus_iextp_v1_0_1.fields.packet = ProtoField.new("Packet", "iex.equities.deepplus.iextp.v1.0.1.packet", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.payload_length = ProtoField.new("Payload Length", "iex.equities.deepplus.iextp.v1.0.1.payloadlength", ftypes.UINT16)
iex_equities_deepplus_iextp_v1_0_1.fields.price = ProtoField.new("Price", "iex.equities.deepplus.iextp.v1.0.1.price", ftypes.DOUBLE)
iex_equities_deepplus_iextp_v1_0_1.fields.priority = ProtoField.new("Priority", "iex.equities.deepplus.iextp.v1.0.1.priority", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
iex_equities_deepplus_iextp_v1_0_1.fields.reason = ProtoField.new("Reason", "iex.equities.deepplus.iextp.v1.0.1.reason", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.reserved = ProtoField.new("Reserved", "iex.equities.deepplus.iextp.v1.0.1.reserved", ftypes.BYTES)
iex_equities_deepplus_iextp_v1_0_1.fields.reserved_1 = ProtoField.new("Reserved 1", "iex.equities.deepplus.iextp.v1.0.1.reserved1", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.retail_liquidity_indicator = ProtoField.new("Retail Liquidity Indicator", "iex.equities.deepplus.iextp.v1.0.1.retailliquidityindicator", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "iex.equities.deepplus.iextp.v1.0.1.roundlotsize", ftypes.UINT32)
iex_equities_deepplus_iextp_v1_0_1.fields.sale_condition_flags = ProtoField.new("Sale Condition Flags", "iex.equities.deepplus.iextp.v1.0.1.saleconditionflags", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.security_directory_flags = ProtoField.new("Security Directory Flags", "iex.equities.deepplus.iextp.v1.0.1.securitydirectoryflags", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.security_event = ProtoField.new("Security Event", "iex.equities.deepplus.iextp.v1.0.1.securityevent", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.send_time = ProtoField.new("Send Time", "iex.equities.deepplus.iextp.v1.0.1.sendtime", ftypes.UINT64)
iex_equities_deepplus_iextp_v1_0_1.fields.session_id = ProtoField.new("Session Id", "iex.equities.deepplus.iextp.v1.0.1.sessionid", ftypes.UINT32)
iex_equities_deepplus_iextp_v1_0_1.fields.short_sale_price_test_status = ProtoField.new("Short Sale Price Test Status", "iex.equities.deepplus.iextp.v1.0.1.shortsalepriceteststatus", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.side = ProtoField.new("Side", "iex.equities.deepplus.iextp.v1.0.1.side", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.singleprice_cross_trade = ProtoField.new("Singleprice Cross Trade", "iex.equities.deepplus.iextp.v1.0.1.singlepricecrosstrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
iex_equities_deepplus_iextp_v1_0_1.fields.size = ProtoField.new("Size", "iex.equities.deepplus.iextp.v1.0.1.size", ftypes.UINT32)
iex_equities_deepplus_iextp_v1_0_1.fields.stream_offset = ProtoField.new("Stream Offset", "iex.equities.deepplus.iextp.v1.0.1.streamoffset", ftypes.UINT64)
iex_equities_deepplus_iextp_v1_0_1.fields.symbol = ProtoField.new("Symbol", "iex.equities.deepplus.iextp.v1.0.1.symbol", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.system_event = ProtoField.new("System Event", "iex.equities.deepplus.iextp.v1.0.1.systemevent", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.test_security = ProtoField.new("Test Security", "iex.equities.deepplus.iextp.v1.0.1.testsecurity", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
iex_equities_deepplus_iextp_v1_0_1.fields.timestamp = ProtoField.new("Timestamp", "iex.equities.deepplus.iextp.v1.0.1.timestamp", ftypes.INT64)
iex_equities_deepplus_iextp_v1_0_1.fields.trade_id = ProtoField.new("Trade Id", "iex.equities.deepplus.iextp.v1.0.1.tradeid", ftypes.UINT64)
iex_equities_deepplus_iextp_v1_0_1.fields.trade_through_exempt = ProtoField.new("Trade Through Exempt", "iex.equities.deepplus.iextp.v1.0.1.tradethroughexempt", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
iex_equities_deepplus_iextp_v1_0_1.fields.trading_status = ProtoField.new("Trading Status", "iex.equities.deepplus.iextp.v1.0.1.tradingstatus", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.unused_3 = ProtoField.new("Unused 3", "iex.equities.deepplus.iextp.v1.0.1.unused3", ftypes.UINT8, nil, base.DEC, 0x07)
iex_equities_deepplus_iextp_v1_0_1.fields.unused_5 = ProtoField.new("Unused 5", "iex.equities.deepplus.iextp.v1.0.1.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
iex_equities_deepplus_iextp_v1_0_1.fields.unused_7 = ProtoField.new("Unused 7", "iex.equities.deepplus.iextp.v1.0.1.unused7", ftypes.UINT8, nil, base.DEC, 0x7F)
iex_equities_deepplus_iextp_v1_0_1.fields.version = ProtoField.new("Version", "iex.equities.deepplus.iextp.v1.0.1.version", ftypes.UINT8)
iex_equities_deepplus_iextp_v1_0_1.fields.when_issued = ProtoField.new("When Issued", "iex.equities.deepplus.iextp.v1.0.1.whenissued", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)

-- Iex Equities DeepPlus IexTp 1.0.1 messages
iex_equities_deepplus_iextp_v1_0_1.fields.add_order_message = ProtoField.new("Add Order Message", "iex.equities.deepplus.iextp.v1.0.1.addordermessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.clear_book_message = ProtoField.new("Clear Book Message", "iex.equities.deepplus.iextp.v1.0.1.clearbookmessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.operational_halt_status_message = ProtoField.new("Operational Halt Status Message", "iex.equities.deepplus.iextp.v1.0.1.operationalhaltstatusmessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.order_delete_message = ProtoField.new("Order Delete Message", "iex.equities.deepplus.iextp.v1.0.1.orderdeletemessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.order_executed_message = ProtoField.new("Order Executed Message", "iex.equities.deepplus.iextp.v1.0.1.orderexecutedmessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.order_modify_message = ProtoField.new("Order Modify Message", "iex.equities.deepplus.iextp.v1.0.1.ordermodifymessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.retail_liquidity_indicator_message = ProtoField.new("Retail Liquidity Indicator Message", "iex.equities.deepplus.iextp.v1.0.1.retailliquidityindicatormessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.security_directory_message = ProtoField.new("Security Directory Message", "iex.equities.deepplus.iextp.v1.0.1.securitydirectorymessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.security_event_message = ProtoField.new("Security Event Message", "iex.equities.deepplus.iextp.v1.0.1.securityeventmessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.short_sale_price_test_status_message = ProtoField.new("Short Sale Price Test Status Message", "iex.equities.deepplus.iextp.v1.0.1.shortsalepriceteststatusmessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.system_event_message = ProtoField.new("System Event Message", "iex.equities.deepplus.iextp.v1.0.1.systemeventmessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.trade_break_message = ProtoField.new("Trade Break Message", "iex.equities.deepplus.iextp.v1.0.1.tradebreakmessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.trade_message = ProtoField.new("Trade Message", "iex.equities.deepplus.iextp.v1.0.1.trademessage", ftypes.STRING)
iex_equities_deepplus_iextp_v1_0_1.fields.trading_status_message = ProtoField.new("Trading Status Message", "iex.equities.deepplus.iextp.v1.0.1.tradingstatusmessage", ftypes.STRING)

-- Iex Equities DeepPlus IexTp 1.0.1 generated fields
iex_equities_deepplus_iextp_v1_0_1.fields.message_index = ProtoField.new("Message Index", "iex.equities.deepplus.iextp.v1.0.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Iex Equities DeepPlus IexTp 1.0.1 Element Dissection Options
show.add_order_message = true
show.clear_book_message = true
show.iex_tp_header = true
show.message = true
show.message_header = true
show.modify_flags = true
show.operational_halt_status_message = true
show.order_delete_message = true
show.order_executed_message = true
show.order_modify_message = true
show.packet = true
show.retail_liquidity_indicator_message = true
show.sale_condition_flags = true
show.security_directory_flags = true
show.security_directory_message = true
show.security_event_message = true
show.short_sale_price_test_status_message = true
show.system_event_message = true
show.trade_break_message = true
show.trade_message = true
show.trading_status_message = true
show.message_data = false

-- Register Iex Equities DeepPlus IexTp 1.0.1 Show Options
iex_equities_deepplus_iextp_v1_0_1.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_iex_tp_header = Pref.bool("Show Iex Tp Header", show.iex_tp_header, "Parse and add Iex Tp Header to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_modify_flags = Pref.bool("Show Modify Flags", show.modify_flags, "Parse and add Modify Flags to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_operational_halt_status_message = Pref.bool("Show Operational Halt Status Message", show.operational_halt_status_message, "Parse and add Operational Halt Status Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_order_modify_message = Pref.bool("Show Order Modify Message", show.order_modify_message, "Parse and add Order Modify Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_retail_liquidity_indicator_message = Pref.bool("Show Retail Liquidity Indicator Message", show.retail_liquidity_indicator_message, "Parse and add Retail Liquidity Indicator Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_sale_condition_flags = Pref.bool("Show Sale Condition Flags", show.sale_condition_flags, "Parse and add Sale Condition Flags to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_security_directory_flags = Pref.bool("Show Security Directory Flags", show.security_directory_flags, "Parse and add Security Directory Flags to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_security_directory_message = Pref.bool("Show Security Directory Message", show.security_directory_message, "Parse and add Security Directory Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_security_event_message = Pref.bool("Show Security Event Message", show.security_event_message, "Parse and add Security Event Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_short_sale_price_test_status_message = Pref.bool("Show Short Sale Price Test Status Message", show.short_sale_price_test_status_message, "Parse and add Short Sale Price Test Status Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
iex_equities_deepplus_iextp_v1_0_1.prefs.show_message_data = Pref.bool("Show Message Data", show.message_data, "Parse and add Message Data to protocol tree")

-- Handle changed preferences
function iex_equities_deepplus_iextp_v1_0_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_add_order_message then
    show.add_order_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_add_order_message
    changed = true
  end
  if show.clear_book_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_clear_book_message then
    show.clear_book_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_clear_book_message
    changed = true
  end
  if show.iex_tp_header ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_iex_tp_header then
    show.iex_tp_header = iex_equities_deepplus_iextp_v1_0_1.prefs.show_iex_tp_header
    changed = true
  end
  if show.message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_message then
    show.message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_message_header then
    show.message_header = iex_equities_deepplus_iextp_v1_0_1.prefs.show_message_header
    changed = true
  end
  if show.modify_flags ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_modify_flags then
    show.modify_flags = iex_equities_deepplus_iextp_v1_0_1.prefs.show_modify_flags
    changed = true
  end
  if show.operational_halt_status_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_operational_halt_status_message then
    show.operational_halt_status_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_operational_halt_status_message
    changed = true
  end
  if show.order_delete_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_order_delete_message then
    show.order_delete_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_order_executed_message then
    show.order_executed_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_order_executed_message
    changed = true
  end
  if show.order_modify_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_order_modify_message then
    show.order_modify_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_order_modify_message
    changed = true
  end
  if show.packet ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_packet then
    show.packet = iex_equities_deepplus_iextp_v1_0_1.prefs.show_packet
    changed = true
  end
  if show.retail_liquidity_indicator_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_retail_liquidity_indicator_message then
    show.retail_liquidity_indicator_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_retail_liquidity_indicator_message
    changed = true
  end
  if show.sale_condition_flags ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_sale_condition_flags then
    show.sale_condition_flags = iex_equities_deepplus_iextp_v1_0_1.prefs.show_sale_condition_flags
    changed = true
  end
  if show.security_directory_flags ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_security_directory_flags then
    show.security_directory_flags = iex_equities_deepplus_iextp_v1_0_1.prefs.show_security_directory_flags
    changed = true
  end
  if show.security_directory_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_security_directory_message then
    show.security_directory_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_security_directory_message
    changed = true
  end
  if show.security_event_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_security_event_message then
    show.security_event_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_security_event_message
    changed = true
  end
  if show.short_sale_price_test_status_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_short_sale_price_test_status_message then
    show.short_sale_price_test_status_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_short_sale_price_test_status_message
    changed = true
  end
  if show.system_event_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_system_event_message then
    show.system_event_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_system_event_message
    changed = true
  end
  if show.trade_break_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_trade_break_message then
    show.trade_break_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_trade_message then
    show.trade_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_trade_message
    changed = true
  end
  if show.trading_status_message ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_trading_status_message then
    show.trading_status_message = iex_equities_deepplus_iextp_v1_0_1.prefs.show_trading_status_message
    changed = true
  end
  if show.message_data ~= iex_equities_deepplus_iextp_v1_0_1.prefs.show_message_data then
    show.message_data = iex_equities_deepplus_iextp_v1_0_1.prefs.show_message_data
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Dissect Iex Equities DeepPlus IexTp 1.0.1
-----------------------------------------------------------------------

-- Size: Symbol
iex_equities_deepplus_iextp_v1_0_1_size_of.symbol = 8

-- Display: Symbol
iex_equities_deepplus_iextp_v1_0_1_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
iex_equities_deepplus_iextp_v1_0_1_dissect.symbol = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_equities_deepplus_iextp_v1_0_1_display.symbol(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp = 8

-- Display: Timestamp
iex_equities_deepplus_iextp_v1_0_1_display.timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
iex_equities_deepplus_iextp_v1_0_1_size_of.reserved_1 = 1

-- Display: Reserved 1
iex_equities_deepplus_iextp_v1_0_1_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
iex_equities_deepplus_iextp_v1_0_1_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Clear Book Message
iex_equities_deepplus_iextp_v1_0_1_size_of.clear_book_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.reserved_1

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  return index
end

-- Display: Clear Book Message
iex_equities_deepplus_iextp_v1_0_1_display.clear_book_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
iex_equities_deepplus_iextp_v1_0_1_dissect.clear_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Byte
  index, reserved_1 = iex_equities_deepplus_iextp_v1_0_1_dissect.reserved_1(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
iex_equities_deepplus_iextp_v1_0_1_dissect.clear_book_message = function(buffer, offset, packet, parent)
  if show.clear_book_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.clear_book_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.clear_book_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.clear_book_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.clear_book_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Trade Id
iex_equities_deepplus_iextp_v1_0_1_size_of.trade_id = 8

-- Display: Trade Id
iex_equities_deepplus_iextp_v1_0_1_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
iex_equities_deepplus_iextp_v1_0_1_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Price
iex_equities_deepplus_iextp_v1_0_1_size_of.price = 8

-- Display: Price
iex_equities_deepplus_iextp_v1_0_1_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
iex_equities_deepplus_iextp_v1_0_1_dissect.price = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = iex_equities_deepplus_iextp_v1_0_1_display.price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Size
iex_equities_deepplus_iextp_v1_0_1_size_of.size = 4

-- Display: Size
iex_equities_deepplus_iextp_v1_0_1_display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
iex_equities_deepplus_iextp_v1_0_1_dissect.size = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.size(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Flags
iex_equities_deepplus_iextp_v1_0_1_size_of.sale_condition_flags = 1

-- Display: Sale Condition Flags
iex_equities_deepplus_iextp_v1_0_1_display.sale_condition_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Intermarket Sweep flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Intermarket Sweep|"
  end
  -- Is Extended Hours flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Extended Hours|"
  end
  -- Is Odd Lot flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Odd Lot|"
  end
  -- Is Trade Through Exempt flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Trade Through Exempt|"
  end
  -- Is Singleprice Cross Trade flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Singleprice Cross Trade|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Sale Condition Flags
iex_equities_deepplus_iextp_v1_0_1_dissect.sale_condition_flags_bits = function(buffer, offset, packet, parent)

  -- Intermarket Sweep: 1 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.intermarket_sweep, buffer(offset, 1))

  -- Extended Hours: 1 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.extended_hours, buffer(offset, 1))

  -- Odd Lot: 1 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.odd_lot, buffer(offset, 1))

  -- Trade Through Exempt: 1 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.trade_through_exempt, buffer(offset, 1))

  -- Singleprice Cross Trade: 1 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.singleprice_cross_trade, buffer(offset, 1))

  -- Unused 3: 3 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.unused_3, buffer(offset, 1))
end

-- Dissect: Sale Condition Flags
iex_equities_deepplus_iextp_v1_0_1_dissect.sale_condition_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = iex_equities_deepplus_iextp_v1_0_1_display.sale_condition_flags(range, packet, parent)
  local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.sale_condition_flags, range, display)

  if show.sale_condition_flags then
    iex_equities_deepplus_iextp_v1_0_1_dissect.sale_condition_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Trade Break Message
iex_equities_deepplus_iextp_v1_0_1_size_of.trade_break_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.sale_condition_flags

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.size

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.price

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.trade_id

  return index
end

-- Display: Trade Break Message
iex_equities_deepplus_iextp_v1_0_1_display.trade_break_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
iex_equities_deepplus_iextp_v1_0_1_dissect.trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_equities_deepplus_iextp_v1_0_1_dissect.sale_condition_flags(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_deepplus_iextp_v1_0_1_dissect.size(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_deepplus_iextp_v1_0_1_dissect.price(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_equities_deepplus_iextp_v1_0_1_dissect.trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
iex_equities_deepplus_iextp_v1_0_1_dissect.trade_break_message = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.trade_break_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.trade_break_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.trade_break_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.trade_break_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Message
iex_equities_deepplus_iextp_v1_0_1_size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.sale_condition_flags

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.size

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.price

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.trade_id

  return index
end

-- Display: Trade Message
iex_equities_deepplus_iextp_v1_0_1_display.trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
iex_equities_deepplus_iextp_v1_0_1_dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_equities_deepplus_iextp_v1_0_1_dissect.sale_condition_flags(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_deepplus_iextp_v1_0_1_dissect.size(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_deepplus_iextp_v1_0_1_dissect.price(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_equities_deepplus_iextp_v1_0_1_dissect.trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
iex_equities_deepplus_iextp_v1_0_1_dissect.trade_message = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.trade_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Order Id Reference
iex_equities_deepplus_iextp_v1_0_1_size_of.order_id_reference = 8

-- Display: Order Id Reference
iex_equities_deepplus_iextp_v1_0_1_display.order_id_reference = function(value)
  return "Order Id Reference: "..value
end

-- Dissect: Order Id Reference
iex_equities_deepplus_iextp_v1_0_1_dissect.order_id_reference = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.order_id_reference
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.order_id_reference(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.order_id_reference, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed Message
iex_equities_deepplus_iextp_v1_0_1_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.sale_condition_flags

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.order_id_reference

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.size

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.price

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.trade_id

  return index
end

-- Display: Order Executed Message
iex_equities_deepplus_iextp_v1_0_1_display.order_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
iex_equities_deepplus_iextp_v1_0_1_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_equities_deepplus_iextp_v1_0_1_dissect.sale_condition_flags(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  -- Order Id Reference: Long
  index, order_id_reference = iex_equities_deepplus_iextp_v1_0_1_dissect.order_id_reference(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_deepplus_iextp_v1_0_1_dissect.size(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_deepplus_iextp_v1_0_1_dissect.price(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_equities_deepplus_iextp_v1_0_1_dissect.trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
iex_equities_deepplus_iextp_v1_0_1_dissect.order_executed_message = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.order_executed_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.order_executed_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.order_executed_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.order_executed_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Delete Message
iex_equities_deepplus_iextp_v1_0_1_size_of.order_delete_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.reserved_1

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.order_id_reference

  return index
end

-- Display: Order Delete Message
iex_equities_deepplus_iextp_v1_0_1_display.order_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
iex_equities_deepplus_iextp_v1_0_1_dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Byte
  index, reserved_1 = iex_equities_deepplus_iextp_v1_0_1_dissect.reserved_1(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  -- Order Id Reference: Long
  index, order_id_reference = iex_equities_deepplus_iextp_v1_0_1_dissect.order_id_reference(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
iex_equities_deepplus_iextp_v1_0_1_dissect.order_delete_message = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.order_delete_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.order_delete_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.order_delete_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.order_delete_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Modify Flags
iex_equities_deepplus_iextp_v1_0_1_size_of.modify_flags = 1

-- Display: Modify Flags
iex_equities_deepplus_iextp_v1_0_1_display.modify_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Priority flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Priority|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Modify Flags
iex_equities_deepplus_iextp_v1_0_1_dissect.modify_flags_bits = function(buffer, offset, packet, parent)

  -- Priority: 1 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.priority, buffer(offset, 1))

  -- Unused 7: 7 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.unused_7, buffer(offset, 1))
end

-- Dissect: Modify Flags
iex_equities_deepplus_iextp_v1_0_1_dissect.modify_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = iex_equities_deepplus_iextp_v1_0_1_display.modify_flags(range, packet, parent)
  local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.modify_flags, range, display)

  if show.modify_flags then
    iex_equities_deepplus_iextp_v1_0_1_dissect.modify_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Order Modify Message
iex_equities_deepplus_iextp_v1_0_1_size_of.order_modify_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.modify_flags

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.order_id_reference

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.size

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.price

  return index
end

-- Display: Order Modify Message
iex_equities_deepplus_iextp_v1_0_1_display.order_modify_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
iex_equities_deepplus_iextp_v1_0_1_dissect.order_modify_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Modify Flags: Struct of 2 fields
  index, modify_flags = iex_equities_deepplus_iextp_v1_0_1_dissect.modify_flags(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  -- Order Id Reference: Long
  index, order_id_reference = iex_equities_deepplus_iextp_v1_0_1_dissect.order_id_reference(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_deepplus_iextp_v1_0_1_dissect.size(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_deepplus_iextp_v1_0_1_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
iex_equities_deepplus_iextp_v1_0_1_dissect.order_modify_message = function(buffer, offset, packet, parent)
  if show.order_modify_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.order_modify_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.order_modify_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.order_modify_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.order_modify_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Order Id
iex_equities_deepplus_iextp_v1_0_1_size_of.order_id = 8

-- Display: Order Id
iex_equities_deepplus_iextp_v1_0_1_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
iex_equities_deepplus_iextp_v1_0_1_dissect.order_id = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.order_id(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Side
iex_equities_deepplus_iextp_v1_0_1_size_of.side = 1

-- Display: Side
iex_equities_deepplus_iextp_v1_0_1_display.side = function(value)
  return "Side: "..value
end

-- Dissect: Side
iex_equities_deepplus_iextp_v1_0_1_dissect.side = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.side(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Message
iex_equities_deepplus_iextp_v1_0_1_size_of.add_order_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.side

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.order_id

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.size

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.price

  return index
end

-- Display: Add Order Message
iex_equities_deepplus_iextp_v1_0_1_display.add_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
iex_equities_deepplus_iextp_v1_0_1_dissect.add_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: Byte
  index, side = iex_equities_deepplus_iextp_v1_0_1_dissect.side(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = iex_equities_deepplus_iextp_v1_0_1_dissect.order_id(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_deepplus_iextp_v1_0_1_dissect.size(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_deepplus_iextp_v1_0_1_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
iex_equities_deepplus_iextp_v1_0_1_dissect.add_order_message = function(buffer, offset, packet, parent)
  if show.add_order_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.add_order_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.add_order_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.add_order_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.add_order_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Security Event
iex_equities_deepplus_iextp_v1_0_1_size_of.security_event = 1

-- Display: Security Event
iex_equities_deepplus_iextp_v1_0_1_display.security_event = function(value)
  if value == "O" then
    return "Security Event: Opening Process Complete (O)"
  end
  if value == "C" then
    return "Security Event: Closing Process Complete (C)"
  end
  if value == "8" then
    return "Security Event: Buy (8)"
  end
  if value == "5" then
    return "Security Event: Sell (5)"
  end

  return "Security Event: Unknown("..value..")"
end

-- Dissect: Security Event
iex_equities_deepplus_iextp_v1_0_1_dissect.security_event = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.security_event
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.security_event(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.security_event, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Event Message
iex_equities_deepplus_iextp_v1_0_1_size_of.security_event_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.security_event

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  return index
end

-- Display: Security Event Message
iex_equities_deepplus_iextp_v1_0_1_display.security_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Event Message
iex_equities_deepplus_iextp_v1_0_1_dissect.security_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Event: Byte
  index, security_event = iex_equities_deepplus_iextp_v1_0_1_dissect.security_event(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Event Message
iex_equities_deepplus_iextp_v1_0_1_dissect.security_event_message = function(buffer, offset, packet, parent)
  if show.security_event_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.security_event_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.security_event_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.security_event_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.security_event_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Detail
iex_equities_deepplus_iextp_v1_0_1_size_of.detail = 1

-- Display: Detail
iex_equities_deepplus_iextp_v1_0_1_display.detail = function(value)
  if value == " " then
    return "Detail: No Price Test In Place (<whitespace>)"
  end
  if value == "A" then
    return "Detail: Short Sale Price Test Restriction In Effect Due To An Intraday Price Drop In The Security (A)"
  end
  if value == "C" then
    return "Detail: Short Sale Price Test Restriction Remains In Effect From Prior Day (C)"
  end
  if value == "D" then
    return "Detail: Short Sale Price Test Restriction Deactivated (D)"
  end
  if value == "N" then
    return "Detail: Not Available (N)"
  end

  return "Detail: Unknown("..value..")"
end

-- Dissect: Detail
iex_equities_deepplus_iextp_v1_0_1_dissect.detail = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.detail
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.detail(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.detail, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Price Test Status
iex_equities_deepplus_iextp_v1_0_1_size_of.short_sale_price_test_status = 1

-- Display: Short Sale Price Test Status
iex_equities_deepplus_iextp_v1_0_1_display.short_sale_price_test_status = function(value)
  if value == "0" then
    return "Short Sale Price Test Status: Not In Effect (0)"
  end
  if value == "1" then
    return "Short Sale Price Test Status: In Effect (1)"
  end

  return "Short Sale Price Test Status: Unknown("..value..")"
end

-- Dissect: Short Sale Price Test Status
iex_equities_deepplus_iextp_v1_0_1_dissect.short_sale_price_test_status = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.short_sale_price_test_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.short_sale_price_test_status(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.short_sale_price_test_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Short Sale Price Test Status Message
iex_equities_deepplus_iextp_v1_0_1_size_of.short_sale_price_test_status_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.short_sale_price_test_status

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.detail

  return index
end

-- Display: Short Sale Price Test Status Message
iex_equities_deepplus_iextp_v1_0_1_display.short_sale_price_test_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sale Price Test Status Message
iex_equities_deepplus_iextp_v1_0_1_dissect.short_sale_price_test_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Sale Price Test Status: Byte
  index, short_sale_price_test_status = iex_equities_deepplus_iextp_v1_0_1_dissect.short_sale_price_test_status(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  -- Detail: Byte
  index, detail = iex_equities_deepplus_iextp_v1_0_1_dissect.detail(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sale Price Test Status Message
iex_equities_deepplus_iextp_v1_0_1_dissect.short_sale_price_test_status_message = function(buffer, offset, packet, parent)
  if show.short_sale_price_test_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.short_sale_price_test_status_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.short_sale_price_test_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.short_sale_price_test_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.short_sale_price_test_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Operational Halt Status
iex_equities_deepplus_iextp_v1_0_1_size_of.operational_halt_status = 1

-- Display: Operational Halt Status
iex_equities_deepplus_iextp_v1_0_1_display.operational_halt_status = function(value)
  if value == "O" then
    return "Operational Halt Status: Iex Specific Operational Trading Halt (O)"
  end
  if value == "N" then
    return "Operational Halt Status: Not Operationally Halted On Iex (N)"
  end

  return "Operational Halt Status: Unknown("..value..")"
end

-- Dissect: Operational Halt Status
iex_equities_deepplus_iextp_v1_0_1_dissect.operational_halt_status = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.operational_halt_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.operational_halt_status(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.operational_halt_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Operational Halt Status Message
iex_equities_deepplus_iextp_v1_0_1_size_of.operational_halt_status_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.operational_halt_status

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  return index
end

-- Display: Operational Halt Status Message
iex_equities_deepplus_iextp_v1_0_1_display.operational_halt_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Status Message
iex_equities_deepplus_iextp_v1_0_1_dissect.operational_halt_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Operational Halt Status: Byte
  index, operational_halt_status = iex_equities_deepplus_iextp_v1_0_1_dissect.operational_halt_status(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Status Message
iex_equities_deepplus_iextp_v1_0_1_dissect.operational_halt_status_message = function(buffer, offset, packet, parent)
  if show.operational_halt_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.operational_halt_status_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.operational_halt_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.operational_halt_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.operational_halt_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Retail Liquidity Indicator
iex_equities_deepplus_iextp_v1_0_1_size_of.retail_liquidity_indicator = 1

-- Display: Retail Liquidity Indicator
iex_equities_deepplus_iextp_v1_0_1_display.retail_liquidity_indicator = function(value)
  if value == " " then
    return "Retail Liquidity Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Retail Liquidity Indicator: Buy Interest (A)"
  end
  if value == "B" then
    return "Retail Liquidity Indicator: Sell Interest (B)"
  end
  if value == "C" then
    return "Retail Liquidity Indicator: Buy And Sell Interest (C)"
  end

  return "Retail Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Retail Liquidity Indicator
iex_equities_deepplus_iextp_v1_0_1_dissect.retail_liquidity_indicator = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.retail_liquidity_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.retail_liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.retail_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retail Liquidity Indicator Message
iex_equities_deepplus_iextp_v1_0_1_size_of.retail_liquidity_indicator_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.retail_liquidity_indicator

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  return index
end

-- Display: Retail Liquidity Indicator Message
iex_equities_deepplus_iextp_v1_0_1_display.retail_liquidity_indicator_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Liquidity Indicator Message
iex_equities_deepplus_iextp_v1_0_1_dissect.retail_liquidity_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retail Liquidity Indicator: Byte
  index, retail_liquidity_indicator = iex_equities_deepplus_iextp_v1_0_1_dissect.retail_liquidity_indicator(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Liquidity Indicator Message
iex_equities_deepplus_iextp_v1_0_1_dissect.retail_liquidity_indicator_message = function(buffer, offset, packet, parent)
  if show.retail_liquidity_indicator_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.retail_liquidity_indicator_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.retail_liquidity_indicator_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.retail_liquidity_indicator_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.retail_liquidity_indicator_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reason
iex_equities_deepplus_iextp_v1_0_1_size_of.reason = 4

-- Display: Reason
iex_equities_deepplus_iextp_v1_0_1_display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
iex_equities_deepplus_iextp_v1_0_1_dissect.reason = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_equities_deepplus_iextp_v1_0_1_display.reason(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
iex_equities_deepplus_iextp_v1_0_1_size_of.trading_status = 1

-- Display: Trading Status
iex_equities_deepplus_iextp_v1_0_1_display.trading_status = function(value)
  if value == "H" then
    return "Trading Status: Trading Halted Across All Us Equity Markets (H)"
  end
  if value == "O" then
    return "Trading Status: Trading Halt Released Into An Order Acceptance Period On Iex (O)"
  end
  if value == "P" then
    return "Trading Status: Trading Paused And Order Acceptance Period On Iex (P)"
  end
  if value == "T" then
    return "Trading Status: Trading On Iex (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
iex_equities_deepplus_iextp_v1_0_1_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
iex_equities_deepplus_iextp_v1_0_1_size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.trading_status

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.reason

  return index
end

-- Display: Trading Status Message
iex_equities_deepplus_iextp_v1_0_1_display.trading_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
iex_equities_deepplus_iextp_v1_0_1_dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Status: Byte
  index, trading_status = iex_equities_deepplus_iextp_v1_0_1_dissect.trading_status(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  -- Reason: String
  index, reason = iex_equities_deepplus_iextp_v1_0_1_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
iex_equities_deepplus_iextp_v1_0_1_dissect.trading_status_message = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.trading_status_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.trading_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.trading_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.trading_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Luld Tier
iex_equities_deepplus_iextp_v1_0_1_size_of.luld_tier = 1

-- Display: Luld Tier
iex_equities_deepplus_iextp_v1_0_1_display.luld_tier = function(value)
  if value == 0 then
    return "Luld Tier: Not Applicable (0)"
  end
  if value == 1 then
    return "Luld Tier: Tier 1 Nms Stock (1)"
  end
  if value == 2 then
    return "Luld Tier: Tier 2 Nms Stock (2)"
  end

  return "Luld Tier: Unknown("..value..")"
end

-- Dissect: Luld Tier
iex_equities_deepplus_iextp_v1_0_1_dissect.luld_tier = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.luld_tier
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.luld_tier(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.luld_tier, range, value, display)

  return offset + length, value
end

-- Size: Adjusted Poc Price
iex_equities_deepplus_iextp_v1_0_1_size_of.adjusted_poc_price = 8

-- Display: Adjusted Poc Price
iex_equities_deepplus_iextp_v1_0_1_display.adjusted_poc_price = function(value)
  return "Adjusted Poc Price: "..value
end

-- Translate: Adjusted Poc Price
translate.adjusted_poc_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Adjusted Poc Price
iex_equities_deepplus_iextp_v1_0_1_dissect.adjusted_poc_price = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.adjusted_poc_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.adjusted_poc_price(raw)
  local display = iex_equities_deepplus_iextp_v1_0_1_display.adjusted_poc_price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.adjusted_poc_price, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
iex_equities_deepplus_iextp_v1_0_1_size_of.round_lot_size = 4

-- Display: Round Lot Size
iex_equities_deepplus_iextp_v1_0_1_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
iex_equities_deepplus_iextp_v1_0_1_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Security Directory Flags
iex_equities_deepplus_iextp_v1_0_1_size_of.security_directory_flags = 1

-- Display: Security Directory Flags
iex_equities_deepplus_iextp_v1_0_1_display.security_directory_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Test Security flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Test Security|"
  end
  -- Is When Issued flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."When Issued|"
  end
  -- Is Etp flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Etp|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Security Directory Flags
iex_equities_deepplus_iextp_v1_0_1_dissect.security_directory_flags_bits = function(buffer, offset, packet, parent)

  -- Test Security: 1 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.test_security, buffer(offset, 1))

  -- When Issued: 1 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.when_issued, buffer(offset, 1))

  -- Etp: 1 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.etp, buffer(offset, 1))

  -- Unused 5: 5 Bit
  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.unused_5, buffer(offset, 1))
end

-- Dissect: Security Directory Flags
iex_equities_deepplus_iextp_v1_0_1_dissect.security_directory_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = iex_equities_deepplus_iextp_v1_0_1_display.security_directory_flags(range, packet, parent)
  local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.security_directory_flags, range, display)

  if show.security_directory_flags then
    iex_equities_deepplus_iextp_v1_0_1_dissect.security_directory_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Security Directory Message
iex_equities_deepplus_iextp_v1_0_1_size_of.security_directory_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.security_directory_flags

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.symbol

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.round_lot_size

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.adjusted_poc_price

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.luld_tier

  return index
end

-- Display: Security Directory Message
iex_equities_deepplus_iextp_v1_0_1_display.security_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Directory Message
iex_equities_deepplus_iextp_v1_0_1_dissect.security_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Directory Flags: Struct of 4 fields
  index, security_directory_flags = iex_equities_deepplus_iextp_v1_0_1_dissect.security_directory_flags(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deepplus_iextp_v1_0_1_dissect.symbol(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = iex_equities_deepplus_iextp_v1_0_1_dissect.round_lot_size(buffer, index, packet, parent)

  -- Adjusted Poc Price: Price
  index, adjusted_poc_price = iex_equities_deepplus_iextp_v1_0_1_dissect.adjusted_poc_price(buffer, index, packet, parent)

  -- Luld Tier: Byte (int)
  index, luld_tier = iex_equities_deepplus_iextp_v1_0_1_dissect.luld_tier(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Directory Message
iex_equities_deepplus_iextp_v1_0_1_dissect.security_directory_message = function(buffer, offset, packet, parent)
  if show.security_directory_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.security_directory_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.security_directory_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.security_directory_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.security_directory_message_fields(buffer, offset, packet, element)
  end
end

-- Size: System Event
iex_equities_deepplus_iextp_v1_0_1_size_of.system_event = 1

-- Display: System Event
iex_equities_deepplus_iextp_v1_0_1_display.system_event = function(value)
  if value == "O" then
    return "System Event: Start Of Messages (O)"
  end
  if value == "S" then
    return "System Event: Start Of System Hours (S)"
  end
  if value == "R" then
    return "System Event: Start Of Regular Market Hours (R)"
  end
  if value == "M" then
    return "System Event: End Of Regular Market Hours (M)"
  end
  if value == "E" then
    return "System Event: End Of System Hours (E)"
  end
  if value == "C" then
    return "System Event: End Of Messages (C)"
  end

  return "System Event: Unknown("..value..")"
end

-- Dissect: System Event
iex_equities_deepplus_iextp_v1_0_1_dissect.system_event = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.system_event
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.system_event(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.system_event, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
iex_equities_deepplus_iextp_v1_0_1_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.system_event

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.timestamp

  return index
end

-- Display: System Event Message
iex_equities_deepplus_iextp_v1_0_1_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
iex_equities_deepplus_iextp_v1_0_1_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- System Event: Byte
  index, system_event = iex_equities_deepplus_iextp_v1_0_1_dissect.system_event(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deepplus_iextp_v1_0_1_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
iex_equities_deepplus_iextp_v1_0_1_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.system_event_message, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.system_event_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.system_event_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.system_event_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Message Data
iex_equities_deepplus_iextp_v1_0_1_size_of.message_data = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.system_event_message(buffer, offset)
  end
  -- Size of Security Directory Message
  if message_type == "D" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.security_directory_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == "H" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.trading_status_message(buffer, offset)
  end
  -- Size of Retail Liquidity Indicator Message
  if message_type == "I" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.retail_liquidity_indicator_message(buffer, offset)
  end
  -- Size of Operational Halt Status Message
  if message_type == "O" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.operational_halt_status_message(buffer, offset)
  end
  -- Size of Short Sale Price Test Status Message
  if message_type == "P" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.short_sale_price_test_status_message(buffer, offset)
  end
  -- Size of Security Event Message
  if message_type == "E" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.security_event_message(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == "a" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.add_order_message(buffer, offset)
  end
  -- Size of Order Modify Message
  if message_type == "M" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.order_modify_message(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == "R" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.order_delete_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "L" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "T" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == "B" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.trade_break_message(buffer, offset)
  end
  -- Size of Clear Book Message
  if message_type == "C" then
    return iex_equities_deepplus_iextp_v1_0_1_size_of.clear_book_message(buffer, offset)
  end

  return 0
end

-- Display: Message Data
iex_equities_deepplus_iextp_v1_0_1_display.message_data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Data
iex_equities_deepplus_iextp_v1_0_1_dissect.message_data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Directory Message
  if message_type == "D" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.security_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == "H" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Liquidity Indicator Message
  if message_type == "I" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.retail_liquidity_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Status Message
  if message_type == "O" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.operational_halt_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Sale Price Test Status Message
  if message_type == "P" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.short_sale_price_test_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Event Message
  if message_type == "E" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.security_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "a" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.add_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Message
  if message_type == "M" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.order_modify_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "R" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "L" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "T" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == "B" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if message_type == "C" then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.clear_book_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Data
iex_equities_deepplus_iextp_v1_0_1_dissect.message_data = function(buffer, offset, packet, parent, message_type)
  if not show.message_data then
    return iex_equities_deepplus_iextp_v1_0_1_dissect.message_data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = iex_equities_deepplus_iextp_v1_0_1_size_of.message_data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = iex_equities_deepplus_iextp_v1_0_1_display.message_data(buffer, packet, parent)
  local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.message_data, range, display)

  return iex_equities_deepplus_iextp_v1_0_1_dissect.message_data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
iex_equities_deepplus_iextp_v1_0_1_size_of.message_type = 1

-- Display: Message Type
iex_equities_deepplus_iextp_v1_0_1_display.message_type = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Message Type: Security Directory Message (D)"
  end
  if value == "H" then
    return "Message Type: Trading Status Message (H)"
  end
  if value == "I" then
    return "Message Type: Retail Liquidity Indicator Message (I)"
  end
  if value == "O" then
    return "Message Type: Operational Halt Status Message (O)"
  end
  if value == "P" then
    return "Message Type: Short Sale Price Test Status Message (P)"
  end
  if value == "E" then
    return "Message Type: Security Event Message (E)"
  end
  if value == "a" then
    return "Message Type: Add Order Message (a)"
  end
  if value == "M" then
    return "Message Type: Order Modify Message (M)"
  end
  if value == "R" then
    return "Message Type: Order Delete Message (R)"
  end
  if value == "L" then
    return "Message Type: Order Executed Message (L)"
  end
  if value == "T" then
    return "Message Type: Trade Message (T)"
  end
  if value == "B" then
    return "Message Type: Trade Break Message (B)"
  end
  if value == "C" then
    return "Message Type: Clear Book Message (C)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
iex_equities_deepplus_iextp_v1_0_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
iex_equities_deepplus_iextp_v1_0_1_size_of.message_length = 2

-- Display: Message Length
iex_equities_deepplus_iextp_v1_0_1_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
iex_equities_deepplus_iextp_v1_0_1_dissect.message_length = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.message_length(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
iex_equities_deepplus_iextp_v1_0_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.message_length

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.message_type

  return index
end

-- Display: Message Header
iex_equities_deepplus_iextp_v1_0_1_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_equities_deepplus_iextp_v1_0_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = iex_equities_deepplus_iextp_v1_0_1_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = iex_equities_deepplus_iextp_v1_0_1_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_equities_deepplus_iextp_v1_0_1_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.message_header, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
iex_equities_deepplus_iextp_v1_0_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
iex_equities_deepplus_iextp_v1_0_1_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = iex_equities_deepplus_iextp_v1_0_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Message Data: Runtime Type with 14 branches
  index = iex_equities_deepplus_iextp_v1_0_1_dissect.message_data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
iex_equities_deepplus_iextp_v1_0_1_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.message, buffer(offset, 0))
    local current = iex_equities_deepplus_iextp_v1_0_1_dissect.message_fields(buffer, offset, packet, element, size_of_message)
    element:set_len(size_of_message)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.message(buffer, packet, element)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    iex_equities_deepplus_iextp_v1_0_1_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Size: Send Time
iex_equities_deepplus_iextp_v1_0_1_size_of.send_time = 8

-- Display: Send Time
iex_equities_deepplus_iextp_v1_0_1_display.send_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
iex_equities_deepplus_iextp_v1_0_1_dissect.send_time = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.send_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.send_time(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.send_time, range, value, display)

  return offset + length, value
end

-- Size: First Message Sequence Number
iex_equities_deepplus_iextp_v1_0_1_size_of.first_message_sequence_number = 8

-- Display: First Message Sequence Number
iex_equities_deepplus_iextp_v1_0_1_display.first_message_sequence_number = function(value)
  return "First Message Sequence Number: "..value
end

-- Dissect: First Message Sequence Number
iex_equities_deepplus_iextp_v1_0_1_dissect.first_message_sequence_number = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.first_message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.first_message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.first_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Stream Offset
iex_equities_deepplus_iextp_v1_0_1_size_of.stream_offset = 8

-- Display: Stream Offset
iex_equities_deepplus_iextp_v1_0_1_display.stream_offset = function(value)
  return "Stream Offset: "..value
end

-- Dissect: Stream Offset
iex_equities_deepplus_iextp_v1_0_1_dissect.stream_offset = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.stream_offset
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.stream_offset(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.stream_offset, range, value, display)

  return offset + length, value
end

-- Size: Message Count
iex_equities_deepplus_iextp_v1_0_1_size_of.message_count = 2

-- Display: Message Count
iex_equities_deepplus_iextp_v1_0_1_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
iex_equities_deepplus_iextp_v1_0_1_dissect.message_count = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.message_count(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Payload Length
iex_equities_deepplus_iextp_v1_0_1_size_of.payload_length = 2

-- Display: Payload Length
iex_equities_deepplus_iextp_v1_0_1_display.payload_length = function(value)
  return "Payload Length: "..value
end

-- Dissect: Payload Length
iex_equities_deepplus_iextp_v1_0_1_dissect.payload_length = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.payload_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.payload_length(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.payload_length, range, value, display)

  return offset + length, value
end

-- Size: Session Id
iex_equities_deepplus_iextp_v1_0_1_size_of.session_id = 4

-- Display: Session Id
iex_equities_deepplus_iextp_v1_0_1_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
iex_equities_deepplus_iextp_v1_0_1_dissect.session_id = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.session_id(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Channel Id
iex_equities_deepplus_iextp_v1_0_1_size_of.channel_id = 4

-- Display: Channel Id
iex_equities_deepplus_iextp_v1_0_1_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
iex_equities_deepplus_iextp_v1_0_1_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Message Protocol Id
iex_equities_deepplus_iextp_v1_0_1_size_of.message_protocol_id = 2

-- Display: Message Protocol Id
iex_equities_deepplus_iextp_v1_0_1_display.message_protocol_id = function(value)
  return "Message Protocol Id: "..value
end

-- Dissect: Message Protocol Id
iex_equities_deepplus_iextp_v1_0_1_dissect.message_protocol_id = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.message_protocol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.message_protocol_id(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.message_protocol_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved
iex_equities_deepplus_iextp_v1_0_1_size_of.reserved = 1

-- Display: Reserved
iex_equities_deepplus_iextp_v1_0_1_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
iex_equities_deepplus_iextp_v1_0_1_dissect.reserved = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.reserved
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = iex_equities_deepplus_iextp_v1_0_1_display.reserved(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Version
iex_equities_deepplus_iextp_v1_0_1_size_of.version = 1

-- Display: Version
iex_equities_deepplus_iextp_v1_0_1_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
iex_equities_deepplus_iextp_v1_0_1_dissect.version = function(buffer, offset, packet, parent)
  local length = iex_equities_deepplus_iextp_v1_0_1_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deepplus_iextp_v1_0_1_display.version(value, buffer, offset, packet, parent)

  parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Iex Tp Header
iex_equities_deepplus_iextp_v1_0_1_size_of.iex_tp_header = function(buffer, offset)
  local index = 0

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.version

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.reserved

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.message_protocol_id

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.channel_id

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.session_id

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.payload_length

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.message_count

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.stream_offset

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.first_message_sequence_number

  index = index + iex_equities_deepplus_iextp_v1_0_1_size_of.send_time

  return index
end

-- Display: Iex Tp Header
iex_equities_deepplus_iextp_v1_0_1_display.iex_tp_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Iex Tp Header
iex_equities_deepplus_iextp_v1_0_1_dissect.iex_tp_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = iex_equities_deepplus_iextp_v1_0_1_dissect.version(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = iex_equities_deepplus_iextp_v1_0_1_dissect.reserved(buffer, index, packet, parent)

  -- Message Protocol Id: 2 Byte Unsigned Fixed Width Integer
  index, message_protocol_id = iex_equities_deepplus_iextp_v1_0_1_dissect.message_protocol_id(buffer, index, packet, parent)

  -- Channel Id: 4 Byte Unsigned Fixed Width Integer
  index, channel_id = iex_equities_deepplus_iextp_v1_0_1_dissect.channel_id(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = iex_equities_deepplus_iextp_v1_0_1_dissect.session_id(buffer, index, packet, parent)

  -- Payload Length: 2 Byte Unsigned Fixed Width Integer
  index, payload_length = iex_equities_deepplus_iextp_v1_0_1_dissect.payload_length(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = iex_equities_deepplus_iextp_v1_0_1_dissect.message_count(buffer, index, packet, parent)

  -- Stream Offset: 8 Byte Unsigned Fixed Width Integer
  index, stream_offset = iex_equities_deepplus_iextp_v1_0_1_dissect.stream_offset(buffer, index, packet, parent)

  -- First Message Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, first_message_sequence_number = iex_equities_deepplus_iextp_v1_0_1_dissect.first_message_sequence_number(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = iex_equities_deepplus_iextp_v1_0_1_dissect.send_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Iex Tp Header
iex_equities_deepplus_iextp_v1_0_1_dissect.iex_tp_header = function(buffer, offset, packet, parent)
  if show.iex_tp_header then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_deepplus_iextp_v1_0_1.fields.iex_tp_header, buffer(offset, 0))
    local index = iex_equities_deepplus_iextp_v1_0_1_dissect.iex_tp_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_deepplus_iextp_v1_0_1_display.iex_tp_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_deepplus_iextp_v1_0_1_dissect.iex_tp_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
iex_equities_deepplus_iextp_v1_0_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Iex Tp Header: Struct of 10 fields
  index, iex_tp_header = iex_equities_deepplus_iextp_v1_0_1_dissect.iex_tp_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 26, 2):le_uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = iex_equities_deepplus_iextp_v1_0_1_dissect.message(buffer, index, packet, parent, size_of_message)

    if message ~= nil then
      local iteration = message:add(iex_equities_deepplus_iextp_v1_0_1.fields.message_index, message_index)
      iteration:set_generated()
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function iex_equities_deepplus_iextp_v1_0_1.init()
end

-- Dissector for Iex Equities DeepPlus IexTp 1.0.1
function iex_equities_deepplus_iextp_v1_0_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = iex_equities_deepplus_iextp_v1_0_1.name

  -- Dissect protocol
  local protocol = parent:add(iex_equities_deepplus_iextp_v1_0_1, buffer(), iex_equities_deepplus_iextp_v1_0_1.description, "("..buffer:len().." Bytes)")
  return iex_equities_deepplus_iextp_v1_0_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, iex_equities_deepplus_iextp_v1_0_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.iex_equities_deepplus_iextp_v1_0_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Iex Equities DeepPlus IexTp 1.0.1
local function iex_equities_deepplus_iextp_v1_0_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.iex_equities_deepplus_iextp_v1_0_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = iex_equities_deepplus_iextp_v1_0_1
  iex_equities_deepplus_iextp_v1_0_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex Equities DeepPlus IexTp 1.0.1
iex_equities_deepplus_iextp_v1_0_1:register_heuristic("udp", iex_equities_deepplus_iextp_v1_0_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.0.1
--   Date: Monday, September 30, 2024
--   Specification: IEX_DEEP+ Specification.pdf
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
