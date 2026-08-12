-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex IexEquities DeepPlus Snap 1.05 Protocol
local omi_iex_iexequities_deepplus_snap_v1_05 = Proto("Omi.Iex.IexEquities.DeepPlus.Snap.v1.05", "Iex IexEquities DeepPlus Snap 1.05")

-- Protocol table
local iex_iexequities_deepplus_snap_v1_05 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex IexEquities DeepPlus Snap 1.05 Fields
omi_iex_iexequities_deepplus_snap_v1_05.fields.adjusted_poc_price = ProtoField.new("Adjusted Poc Price", "iex.iexequities.deepplus.snap.v1.05.adjustedpocprice", ftypes.DOUBLE)
omi_iex_iexequities_deepplus_snap_v1_05.fields.authentication_token = ProtoField.new("Authentication Token", "iex.iexequities.deepplus.snap.v1.05.authenticationtoken", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.channel_id = ProtoField.new("Channel Id", "iex.iexequities.deepplus.snap.v1.05.channelid", ftypes.UINT32)
omi_iex_iexequities_deepplus_snap_v1_05.fields.detail = ProtoField.new("Detail", "iex.iexequities.deepplus.snap.v1.05.detail", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.etp = ProtoField.new("Etp", "iex.iexequities.deepplus.snap.v1.05.etp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_iex_iexequities_deepplus_snap_v1_05.fields.extended_hours = ProtoField.new("Extended Hours", "iex.iexequities.deepplus.snap.v1.05.extendedhours", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_iex_iexequities_deepplus_snap_v1_05.fields.iex_tp_header = ProtoField.new("Iex Tp Header", "iex.iexequities.deepplus.snap.v1.05.iextpheader", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.iex_tp_message_block_length = ProtoField.new("Iex Tp Message Block Length", "iex.iexequities.deepplus.snap.v1.05.iextpmessageblocklength", ftypes.UINT16)
omi_iex_iexequities_deepplus_snap_v1_05.fields.iex_tp_message_length = ProtoField.new("Iex Tp Message Length", "iex.iexequities.deepplus.snap.v1.05.iextpmessagelength", ftypes.UINT16)
omi_iex_iexequities_deepplus_snap_v1_05.fields.iex_tp_message_type = ProtoField.new("Iex Tp Message Type", "iex.iexequities.deepplus.snap.v1.05.iextpmessagetype", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "iex.iexequities.deepplus.snap.v1.05.intermarketsweep", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_iex_iexequities_deepplus_snap_v1_05.fields.luld_tier = ProtoField.new("Luld Tier", "iex.iexequities.deepplus.snap.v1.05.luldtier", ftypes.UINT8)
omi_iex_iexequities_deepplus_snap_v1_05.fields.message = ProtoField.new("Message", "iex.iexequities.deepplus.snap.v1.05.message", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.message_header = ProtoField.new("Message Header", "iex.iexequities.deepplus.snap.v1.05.messageheader", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.message_length = ProtoField.new("Message Length", "iex.iexequities.deepplus.snap.v1.05.messagelength", ftypes.UINT16)
omi_iex_iexequities_deepplus_snap_v1_05.fields.message_type = ProtoField.new("Message Type", "iex.iexequities.deepplus.snap.v1.05.messagetype", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.minimum_sequence_number = ProtoField.new("Minimum Sequence Number", "iex.iexequities.deepplus.snap.v1.05.minimumsequencenumber", ftypes.UINT64)
omi_iex_iexequities_deepplus_snap_v1_05.fields.modify_flags = ProtoField.new("Modify Flags", "iex.iexequities.deepplus.snap.v1.05.modifyflags", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.odd_lot = ProtoField.new("Odd Lot", "iex.iexequities.deepplus.snap.v1.05.oddlot", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_iex_iexequities_deepplus_snap_v1_05.fields.operational_halt_status = ProtoField.new("Operational Halt Status", "iex.iexequities.deepplus.snap.v1.05.operationalhaltstatus", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.order_id = ProtoField.new("Order Id", "iex.iexequities.deepplus.snap.v1.05.orderid", ftypes.UINT64)
omi_iex_iexequities_deepplus_snap_v1_05.fields.order_id_reference = ProtoField.new("Order Id Reference", "iex.iexequities.deepplus.snap.v1.05.orderidreference", ftypes.UINT64)
omi_iex_iexequities_deepplus_snap_v1_05.fields.packet = ProtoField.new("Packet", "iex.iexequities.deepplus.snap.v1.05.packet", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.price = ProtoField.new("Price", "iex.iexequities.deepplus.snap.v1.05.price", ftypes.DOUBLE)
omi_iex_iexequities_deepplus_snap_v1_05.fields.priority = ProtoField.new("Priority", "iex.iexequities.deepplus.snap.v1.05.priority", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_iex_iexequities_deepplus_snap_v1_05.fields.reason = ProtoField.new("Reason", "iex.iexequities.deepplus.snap.v1.05.reason", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "iex.iexequities.deepplus.snap.v1.05.rejectreasoncode", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.reserved_1 = ProtoField.new("Reserved 1", "iex.iexequities.deepplus.snap.v1.05.reserved1", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.retail_liquidity_indicator = ProtoField.new("Retail Liquidity Indicator", "iex.iexequities.deepplus.snap.v1.05.retailliquidityindicator", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.round_lot_size = ProtoField.new("Round Lot Size", "iex.iexequities.deepplus.snap.v1.05.roundlotsize", ftypes.UINT32)
omi_iex_iexequities_deepplus_snap_v1_05.fields.sale_condition_flags = ProtoField.new("Sale Condition Flags", "iex.iexequities.deepplus.snap.v1.05.saleconditionflags", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.security_directory_flags = ProtoField.new("Security Directory Flags", "iex.iexequities.deepplus.snap.v1.05.securitydirectoryflags", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.security_event = ProtoField.new("Security Event", "iex.iexequities.deepplus.snap.v1.05.securityevent", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.session_id = ProtoField.new("Session Id", "iex.iexequities.deepplus.snap.v1.05.sessionid", ftypes.UINT32)
omi_iex_iexequities_deepplus_snap_v1_05.fields.short_sale_price_test_status = ProtoField.new("Short Sale Price Test Status", "iex.iexequities.deepplus.snap.v1.05.shortsalepriceteststatus", ftypes.UINT8)
omi_iex_iexequities_deepplus_snap_v1_05.fields.side = ProtoField.new("Side", "iex.iexequities.deepplus.snap.v1.05.side", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.singleprice_cross_trade = ProtoField.new("Singleprice Cross Trade", "iex.iexequities.deepplus.snap.v1.05.singlepricecrosstrade", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_iex_iexequities_deepplus_snap_v1_05.fields.size = ProtoField.new("Size", "iex.iexequities.deepplus.snap.v1.05.size", ftypes.UINT32)
omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_length = ProtoField.new("Snapshot Length", "iex.iexequities.deepplus.snap.v1.05.snapshotlength", ftypes.UINT64)
omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_sequence_number = ProtoField.new("Snapshot Sequence Number", "iex.iexequities.deepplus.snap.v1.05.snapshotsequencenumber", ftypes.UINT64)
omi_iex_iexequities_deepplus_snap_v1_05.fields.symbol = ProtoField.new("Symbol", "iex.iexequities.deepplus.snap.v1.05.symbol", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.system_event = ProtoField.new("System Event", "iex.iexequities.deepplus.snap.v1.05.systemevent", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.test_security = ProtoField.new("Test Security", "iex.iexequities.deepplus.snap.v1.05.testsecurity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_iex_iexequities_deepplus_snap_v1_05.fields.timestamp = ProtoField.new("Timestamp", "iex.iexequities.deepplus.snap.v1.05.timestamp", ftypes.INT64)
omi_iex_iexequities_deepplus_snap_v1_05.fields.trade_id = ProtoField.new("Trade Id", "iex.iexequities.deepplus.snap.v1.05.tradeid", ftypes.UINT64)
omi_iex_iexequities_deepplus_snap_v1_05.fields.trade_through_exempt = ProtoField.new("Trade Through Exempt", "iex.iexequities.deepplus.snap.v1.05.tradethroughexempt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_iex_iexequities_deepplus_snap_v1_05.fields.trading_status = ProtoField.new("Trading Status", "iex.iexequities.deepplus.snap.v1.05.tradingstatus", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.unused_3 = ProtoField.new("Unused 3", "iex.iexequities.deepplus.snap.v1.05.unused3", ftypes.UINT8, nil, base.DEC, 0x07)
omi_iex_iexequities_deepplus_snap_v1_05.fields.unused_5 = ProtoField.new("Unused 5", "iex.iexequities.deepplus.snap.v1.05.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_iex_iexequities_deepplus_snap_v1_05.fields.unused_7 = ProtoField.new("Unused 7", "iex.iexequities.deepplus.snap.v1.05.unused7", ftypes.UINT8, nil, base.DEC, 0x7F)
omi_iex_iexequities_deepplus_snap_v1_05.fields.when_issued = ProtoField.new("When Issued", "iex.iexequities.deepplus.snap.v1.05.whenissued", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)

-- Iex IexEquities DeepPlus 1.05 Application Messages
omi_iex_iexequities_deepplus_snap_v1_05.fields.add_order_message = ProtoField.new("Add Order Message", "iex.iexequities.deepplus.snap.v1.05.addordermessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.clear_book_message = ProtoField.new("Clear Book Message", "iex.iexequities.deepplus.snap.v1.05.clearbookmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.error_response_message = ProtoField.new("Error Response Message", "iex.iexequities.deepplus.snap.v1.05.errorresponsemessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.operational_halt_status_message = ProtoField.new("Operational Halt Status Message", "iex.iexequities.deepplus.snap.v1.05.operationalhaltstatusmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.order_delete_message = ProtoField.new("Order Delete Message", "iex.iexequities.deepplus.snap.v1.05.orderdeletemessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.order_executed_message = ProtoField.new("Order Executed Message", "iex.iexequities.deepplus.snap.v1.05.orderexecutedmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.order_modify_message = ProtoField.new("Order Modify Message", "iex.iexequities.deepplus.snap.v1.05.ordermodifymessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.retail_liquidity_indicator_message = ProtoField.new("Retail Liquidity Indicator Message", "iex.iexequities.deepplus.snap.v1.05.retailliquidityindicatormessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.security_directory_message = ProtoField.new("Security Directory Message", "iex.iexequities.deepplus.snap.v1.05.securitydirectorymessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.security_event_message = ProtoField.new("Security Event Message", "iex.iexequities.deepplus.snap.v1.05.securityeventmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.short_sale_price_test_status_message = ProtoField.new("Short Sale Price Test Status Message", "iex.iexequities.deepplus.snap.v1.05.shortsalepriceteststatusmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_data_message = ProtoField.new("Snapshot Data Message", "iex.iexequities.deepplus.snap.v1.05.snapshotdatamessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_end_message = ProtoField.new("Snapshot End Message", "iex.iexequities.deepplus.snap.v1.05.snapshotendmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_request_message = ProtoField.new("Snapshot Request Message", "iex.iexequities.deepplus.snap.v1.05.snapshotrequestmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_start_message = ProtoField.new("Snapshot Start Message", "iex.iexequities.deepplus.snap.v1.05.snapshotstartmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.system_event_message = ProtoField.new("System Event Message", "iex.iexequities.deepplus.snap.v1.05.systemeventmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.trade_break_message = ProtoField.new("Trade Break Message", "iex.iexequities.deepplus.snap.v1.05.tradebreakmessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.trade_message = ProtoField.new("Trade Message", "iex.iexequities.deepplus.snap.v1.05.trademessage", ftypes.STRING)
omi_iex_iexequities_deepplus_snap_v1_05.fields.trading_status_message = ProtoField.new("Trading Status Message", "iex.iexequities.deepplus.snap.v1.05.tradingstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Iex IexEquities DeepPlus Snap 1.05 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Iex IexEquities DeepPlus Snap 1.05 Show Options
omi_iex_iexequities_deepplus_snap_v1_05.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_iex_iexequities_deepplus_snap_v1_05.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_iex_iexequities_deepplus_snap_v1_05.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")


-- Handle changed preferences
function omi_iex_iexequities_deepplus_snap_v1_05.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_iex_iexequities_deepplus_snap_v1_05.prefs.show_application_messages then
    show.application_messages = omi_iex_iexequities_deepplus_snap_v1_05.prefs.show_application_messages
  end
  if show.headers ~= omi_iex_iexequities_deepplus_snap_v1_05.prefs.show_headers then
    show.headers = omi_iex_iexequities_deepplus_snap_v1_05.prefs.show_headers
  end
  if show.structs ~= omi_iex_iexequities_deepplus_snap_v1_05.prefs.show_structs then
    show.structs = omi_iex_iexequities_deepplus_snap_v1_05.prefs.show_structs
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
-- Iex IexEquities DeepPlus Snap 1.05 Fields
-----------------------------------------------------------------------

-- Adjusted Poc Price
iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price = {}

-- Size: Adjusted Poc Price
iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price.size = 8

-- Display: Adjusted Poc Price
iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price.display = function(value)
  return "Adjusted Poc Price: "..value
end

-- Translate: Adjusted Poc Price
iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Adjusted Poc Price
iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price.translate(raw)
  local display = iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.adjusted_poc_price, range, value, display)

  return offset + length, value
end

-- Authentication Token
iex_iexequities_deepplus_snap_v1_05.authentication_token = {}

-- Size: Authentication Token
iex_iexequities_deepplus_snap_v1_05.authentication_token.size = 40

-- Display: Authentication Token
iex_iexequities_deepplus_snap_v1_05.authentication_token.display = function(value)
  return "Authentication Token: "..value
end

-- Dissect: Authentication Token
iex_iexequities_deepplus_snap_v1_05.authentication_token.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.authentication_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_iexequities_deepplus_snap_v1_05.authentication_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.authentication_token, range, value, display)

  return offset + length, value
end

-- Channel Id
iex_iexequities_deepplus_snap_v1_05.channel_id = {}

-- Size: Channel Id
iex_iexequities_deepplus_snap_v1_05.channel_id.size = 4

-- Display: Channel Id
iex_iexequities_deepplus_snap_v1_05.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
iex_iexequities_deepplus_snap_v1_05.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Detail
iex_iexequities_deepplus_snap_v1_05.detail = {}

-- Size: Detail
iex_iexequities_deepplus_snap_v1_05.detail.size = 1

-- Display: Detail
iex_iexequities_deepplus_snap_v1_05.detail.display = function(value)
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
iex_iexequities_deepplus_snap_v1_05.detail.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.detail.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.detail.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.detail, range, value, display)

  return offset + length, value
end

-- Iex Tp Header
iex_iexequities_deepplus_snap_v1_05.iex_tp_header = {}

-- Size: Iex Tp Header
iex_iexequities_deepplus_snap_v1_05.iex_tp_header.size = 1

-- Display: Iex Tp Header
iex_iexequities_deepplus_snap_v1_05.iex_tp_header.display = function(value)
  return "Iex Tp Header: "..value
end

-- Dissect: Iex Tp Header
iex_iexequities_deepplus_snap_v1_05.iex_tp_header.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.iex_tp_header.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.iex_tp_header.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.iex_tp_header, range, value, display)

  return offset + length, value
end

-- Iex Tp Message Block Length
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_block_length = {}

-- Size: Iex Tp Message Block Length
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_block_length.size = 2

-- Display: Iex Tp Message Block Length
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_block_length.display = function(value)
  return "Iex Tp Message Block Length: "..value
end

-- Dissect: Iex Tp Message Block Length
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_block_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.iex_tp_message_block_length, range, value, display)

  return offset + length, value
end

-- Iex Tp Message Length
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_length = {}

-- Size: Iex Tp Message Length
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_length.size = 2

-- Display: Iex Tp Message Length
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_length.display = function(value)
  return "Iex Tp Message Length: "..value
end

-- Dissect: Iex Tp Message Length
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.iex_tp_message_length, range, value, display)

  return offset + length, value
end

-- Iex Tp Message Type
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_type = {}

-- Size: Iex Tp Message Type
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_type.size = 1

-- Display: Iex Tp Message Type
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_type.display = function(value)
  if value == "S" then
    return "Iex Tp Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Iex Tp Message Type: Security Directory Message (D)"
  end
  if value == "H" then
    return "Iex Tp Message Type: Trading Status Message (H)"
  end
  if value == "I" then
    return "Iex Tp Message Type: Retail Liquidity Indicator Message (I)"
  end
  if value == "O" then
    return "Iex Tp Message Type: Operational Halt Status Message (O)"
  end
  if value == "P" then
    return "Iex Tp Message Type: Short Sale Price Test Status Message (P)"
  end
  if value == "E" then
    return "Iex Tp Message Type: Security Event Message (E)"
  end
  if value == "a" then
    return "Iex Tp Message Type: Add Order Message (a)"
  end
  if value == "M" then
    return "Iex Tp Message Type: Order Modify Message (M)"
  end
  if value == "R" then
    return "Iex Tp Message Type: Order Delete Message (R)"
  end
  if value == "L" then
    return "Iex Tp Message Type: Order Executed Message (L)"
  end
  if value == "T" then
    return "Iex Tp Message Type: Trade Message (T)"
  end
  if value == "B" then
    return "Iex Tp Message Type: Trade Break Message (B)"
  end
  if value == "C" then
    return "Iex Tp Message Type: Clear Book Message (C)"
  end

  return "Iex Tp Message Type: Unknown("..value..")"
end

-- Dissect: Iex Tp Message Type
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.iex_tp_message_type, range, value, display)

  return offset + length, value
end

-- Luld Tier
iex_iexequities_deepplus_snap_v1_05.luld_tier = {}

-- Size: Luld Tier
iex_iexequities_deepplus_snap_v1_05.luld_tier.size = 1

-- Display: Luld Tier
iex_iexequities_deepplus_snap_v1_05.luld_tier.display = function(value)
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
iex_iexequities_deepplus_snap_v1_05.luld_tier.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.luld_tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_iexequities_deepplus_snap_v1_05.luld_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.luld_tier, range, value, display)

  return offset + length, value
end

-- Message Length
iex_iexequities_deepplus_snap_v1_05.message_length = {}

-- Size: Message Length
iex_iexequities_deepplus_snap_v1_05.message_length.size = 2

-- Display: Message Length
iex_iexequities_deepplus_snap_v1_05.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
iex_iexequities_deepplus_snap_v1_05.message_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
iex_iexequities_deepplus_snap_v1_05.message_type = {}

-- Size: Message Type
iex_iexequities_deepplus_snap_v1_05.message_type.size = 1

-- Display: Message Type
iex_iexequities_deepplus_snap_v1_05.message_type.display = function(value)
  if value == "r" then
    return "Message Type: Snapshot Request Message (r)"
  end
  if value == "e" then
    return "Message Type: Error Response Message (e)"
  end
  if value == "s" then
    return "Message Type: Snapshot Start Message (s)"
  end
  if value == "d" then
    return "Message Type: Snapshot Data Message (d)"
  end
  if value == "x" then
    return "Message Type: Snapshot End Message (x)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
iex_iexequities_deepplus_snap_v1_05.message_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Sequence Number
iex_iexequities_deepplus_snap_v1_05.minimum_sequence_number = {}

-- Size: Minimum Sequence Number
iex_iexequities_deepplus_snap_v1_05.minimum_sequence_number.size = 8

-- Display: Minimum Sequence Number
iex_iexequities_deepplus_snap_v1_05.minimum_sequence_number.display = function(value)
  return "Minimum Sequence Number: "..value
end

-- Dissect: Minimum Sequence Number
iex_iexequities_deepplus_snap_v1_05.minimum_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.minimum_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deepplus_snap_v1_05.minimum_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.minimum_sequence_number, range, value, display)

  return offset + length, value
end

-- Operational Halt Status
iex_iexequities_deepplus_snap_v1_05.operational_halt_status = {}

-- Size: Operational Halt Status
iex_iexequities_deepplus_snap_v1_05.operational_halt_status.size = 1

-- Display: Operational Halt Status
iex_iexequities_deepplus_snap_v1_05.operational_halt_status.display = function(value)
  if value == "O" then
    return "Operational Halt Status: Iex Specific Operational Trading Halt (O)"
  end
  if value == "N" then
    return "Operational Halt Status: Not Operationally Halted On Iex (N)"
  end

  return "Operational Halt Status: Unknown("..value..")"
end

-- Dissect: Operational Halt Status
iex_iexequities_deepplus_snap_v1_05.operational_halt_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.operational_halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.operational_halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.operational_halt_status, range, value, display)

  return offset + length, value
end

-- Order Id
iex_iexequities_deepplus_snap_v1_05.order_id = {}

-- Size: Order Id
iex_iexequities_deepplus_snap_v1_05.order_id.size = 8

-- Display: Order Id
iex_iexequities_deepplus_snap_v1_05.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
iex_iexequities_deepplus_snap_v1_05.order_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deepplus_snap_v1_05.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Id Reference
iex_iexequities_deepplus_snap_v1_05.order_id_reference = {}

-- Size: Order Id Reference
iex_iexequities_deepplus_snap_v1_05.order_id_reference.size = 8

-- Display: Order Id Reference
iex_iexequities_deepplus_snap_v1_05.order_id_reference.display = function(value)
  return "Order Id Reference: "..value
end

-- Dissect: Order Id Reference
iex_iexequities_deepplus_snap_v1_05.order_id_reference.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.order_id_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deepplus_snap_v1_05.order_id_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.order_id_reference, range, value, display)

  return offset + length, value
end

-- Price
iex_iexequities_deepplus_snap_v1_05.price = {}

-- Size: Price
iex_iexequities_deepplus_snap_v1_05.price.size = 8

-- Display: Price
iex_iexequities_deepplus_snap_v1_05.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
iex_iexequities_deepplus_snap_v1_05.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
iex_iexequities_deepplus_snap_v1_05.price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deepplus_snap_v1_05.price.translate(raw)
  local display = iex_iexequities_deepplus_snap_v1_05.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.price, range, value, display)

  return offset + length, value
end

-- Reason
iex_iexequities_deepplus_snap_v1_05.reason = {}

-- Size: Reason
iex_iexequities_deepplus_snap_v1_05.reason.size = 4

-- Display: Reason
iex_iexequities_deepplus_snap_v1_05.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
iex_iexequities_deepplus_snap_v1_05.reason.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_iexequities_deepplus_snap_v1_05.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
iex_iexequities_deepplus_snap_v1_05.reject_reason_code = {}

-- Size: Reject Reason Code
iex_iexequities_deepplus_snap_v1_05.reject_reason_code.size = 1

-- Display: Reject Reason Code
iex_iexequities_deepplus_snap_v1_05.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Authentication Failure (A)"
  end
  if value == "C" then
    return "Reject Reason Code: Incorrect Channel Id (C)"
  end
  if value == "E" then
    return "Reject Reason Code: Snapshot Request Already Active (E)"
  end
  if value == "Q" then
    return "Reject Reason Code: Quota Exceeded (Q)"
  end
  if value == "R" then
    return "Reject Reason Code: Snapshot Not Yet Available (R)"
  end
  if value == "S" then
    return "Reject Reason Code: Incorrect Session Id (S)"
  end
  if value == "U" then
    return "Reject Reason Code: Unknown Message (U)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
iex_iexequities_deepplus_snap_v1_05.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Reserved 1
iex_iexequities_deepplus_snap_v1_05.reserved_1 = {}

-- Size: Reserved 1
iex_iexequities_deepplus_snap_v1_05.reserved_1.size = 1

-- Display: Reserved 1
iex_iexequities_deepplus_snap_v1_05.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
iex_iexequities_deepplus_snap_v1_05.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Retail Liquidity Indicator
iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator = {}

-- Size: Retail Liquidity Indicator
iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator.size = 1

-- Display: Retail Liquidity Indicator
iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator.display = function(value)
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
iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.retail_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
iex_iexequities_deepplus_snap_v1_05.round_lot_size = {}

-- Size: Round Lot Size
iex_iexequities_deepplus_snap_v1_05.round_lot_size.size = 4

-- Display: Round Lot Size
iex_iexequities_deepplus_snap_v1_05.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
iex_iexequities_deepplus_snap_v1_05.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Security Event
iex_iexequities_deepplus_snap_v1_05.security_event = {}

-- Size: Security Event
iex_iexequities_deepplus_snap_v1_05.security_event.size = 1

-- Display: Security Event
iex_iexequities_deepplus_snap_v1_05.security_event.display = function(value)
  if value == "O" then
    return "Security Event: Opening Process Complete (O)"
  end
  if value == "C" then
    return "Security Event: Closing Process Complete (C)"
  end

  return "Security Event: Unknown("..value..")"
end

-- Dissect: Security Event
iex_iexequities_deepplus_snap_v1_05.security_event.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.security_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.security_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.security_event, range, value, display)

  return offset + length, value
end

-- Session Id
iex_iexequities_deepplus_snap_v1_05.session_id = {}

-- Size: Session Id
iex_iexequities_deepplus_snap_v1_05.session_id.size = 4

-- Display: Session Id
iex_iexequities_deepplus_snap_v1_05.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
iex_iexequities_deepplus_snap_v1_05.session_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.session_id, range, value, display)

  return offset + length, value
end

-- Short Sale Price Test Status
iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status = {}

-- Size: Short Sale Price Test Status
iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status.size = 1

-- Display: Short Sale Price Test Status
iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status.display = function(value)
  if value == 0 then
    return "Short Sale Price Test Status: Not In Effect (0)"
  end
  if value == 1 then
    return "Short Sale Price Test Status: In Effect (1)"
  end

  return "Short Sale Price Test Status: Unknown("..value..")"
end

-- Dissect: Short Sale Price Test Status
iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.short_sale_price_test_status, range, value, display)

  return offset + length, value
end

-- Side
iex_iexequities_deepplus_snap_v1_05.side = {}

-- Size: Side
iex_iexequities_deepplus_snap_v1_05.side.size = 1

-- Display: Side
iex_iexequities_deepplus_snap_v1_05.side.display = function(value)
  if value == "8" then
    return "Side: Buy (8)"
  end
  if value == "5" then
    return "Side: Sell (5)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
iex_iexequities_deepplus_snap_v1_05.side.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.side, range, value, display)

  return offset + length, value
end

-- Size
iex_iexequities_deepplus_snap_v1_05.size = {}

-- Size: Size
iex_iexequities_deepplus_snap_v1_05.size.size = 4

-- Display: Size
iex_iexequities_deepplus_snap_v1_05.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
iex_iexequities_deepplus_snap_v1_05.size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.size, range, value, display)

  return offset + length, value
end

-- Snapshot Length
iex_iexequities_deepplus_snap_v1_05.snapshot_length = {}

-- Size: Snapshot Length
iex_iexequities_deepplus_snap_v1_05.snapshot_length.size = 8

-- Display: Snapshot Length
iex_iexequities_deepplus_snap_v1_05.snapshot_length.display = function(value)
  return "Snapshot Length: "..value
end

-- Dissect: Snapshot Length
iex_iexequities_deepplus_snap_v1_05.snapshot_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.snapshot_length.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deepplus_snap_v1_05.snapshot_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_length, range, value, display)

  return offset + length, value
end

-- Snapshot Sequence Number
iex_iexequities_deepplus_snap_v1_05.snapshot_sequence_number = {}

-- Size: Snapshot Sequence Number
iex_iexequities_deepplus_snap_v1_05.snapshot_sequence_number.size = 8

-- Display: Snapshot Sequence Number
iex_iexequities_deepplus_snap_v1_05.snapshot_sequence_number.display = function(value)
  return "Snapshot Sequence Number: "..value
end

-- Dissect: Snapshot Sequence Number
iex_iexequities_deepplus_snap_v1_05.snapshot_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.snapshot_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deepplus_snap_v1_05.snapshot_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_sequence_number, range, value, display)

  return offset + length, value
end

-- Symbol
iex_iexequities_deepplus_snap_v1_05.symbol = {}

-- Size: Symbol
iex_iexequities_deepplus_snap_v1_05.symbol.size = 8

-- Display: Symbol
iex_iexequities_deepplus_snap_v1_05.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
iex_iexequities_deepplus_snap_v1_05.symbol.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_iexequities_deepplus_snap_v1_05.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.symbol, range, value, display)

  return offset + length, value
end

-- System Event
iex_iexequities_deepplus_snap_v1_05.system_event = {}

-- Size: System Event
iex_iexequities_deepplus_snap_v1_05.system_event.size = 1

-- Display: System Event
iex_iexequities_deepplus_snap_v1_05.system_event.display = function(value)
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
iex_iexequities_deepplus_snap_v1_05.system_event.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.system_event, range, value, display)

  return offset + length, value
end

-- Timestamp
iex_iexequities_deepplus_snap_v1_05.timestamp = {}

-- Size: Timestamp
iex_iexequities_deepplus_snap_v1_05.timestamp.size = 8

-- Display: Timestamp
iex_iexequities_deepplus_snap_v1_05.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
iex_iexequities_deepplus_snap_v1_05.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = iex_iexequities_deepplus_snap_v1_05.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
iex_iexequities_deepplus_snap_v1_05.trade_id = {}

-- Size: Trade Id
iex_iexequities_deepplus_snap_v1_05.trade_id.size = 8

-- Display: Trade Id
iex_iexequities_deepplus_snap_v1_05.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
iex_iexequities_deepplus_snap_v1_05.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deepplus_snap_v1_05.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Status
iex_iexequities_deepplus_snap_v1_05.trading_status = {}

-- Size: Trading Status
iex_iexequities_deepplus_snap_v1_05.trading_status.size = 1

-- Display: Trading Status
iex_iexequities_deepplus_snap_v1_05.trading_status.display = function(value)
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
iex_iexequities_deepplus_snap_v1_05.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deepplus_snap_v1_05.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deepplus_snap_v1_05.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.trading_status, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Iex IexEquities DeepPlus Snap 1.05
-----------------------------------------------------------------------

-- Snapshot End Message
iex_iexequities_deepplus_snap_v1_05.snapshot_end_message = {}

-- Size: Snapshot End Message
iex_iexequities_deepplus_snap_v1_05.snapshot_end_message.size =
  iex_iexequities_deepplus_snap_v1_05.snapshot_sequence_number.size

-- Display: Snapshot End Message
iex_iexequities_deepplus_snap_v1_05.snapshot_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot End Message
iex_iexequities_deepplus_snap_v1_05.snapshot_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Sequence Number: Long
  index, snapshot_sequence_number = iex_iexequities_deepplus_snap_v1_05.snapshot_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot End Message
iex_iexequities_deepplus_snap_v1_05.snapshot_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_end_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.snapshot_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.snapshot_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.snapshot_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Clear Book Message
iex_iexequities_deepplus_snap_v1_05.clear_book_message = {}

-- Size: Clear Book Message
iex_iexequities_deepplus_snap_v1_05.clear_book_message.size =
  iex_iexequities_deepplus_snap_v1_05.reserved_1.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size

-- Display: Clear Book Message
iex_iexequities_deepplus_snap_v1_05.clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
iex_iexequities_deepplus_snap_v1_05.clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Byte
  index, reserved_1 = iex_iexequities_deepplus_snap_v1_05.reserved_1.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
iex_iexequities_deepplus_snap_v1_05.clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.clear_book_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Sale Condition Flags
iex_iexequities_deepplus_snap_v1_05.sale_condition_flags = {}

-- Size: Sale Condition Flags
iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.size = 1

-- Display: Sale Condition Flags
iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Singleprice Cross Trade flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Singleprice Cross Trade"
  end
  -- Is Trade Through Exempt flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Through Exempt"
  end
  -- Is Odd Lot flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Odd Lot"
  end
  -- Is Extended Hours flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Extended Hours"
  end
  -- Is Intermarket Sweep flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Intermarket Sweep"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Sale Condition Flags
iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.bits = function(range, value, packet, parent)

  -- Unused 3: 3 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.unused_3, range, value)

  -- Singleprice Cross Trade: 1 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.singleprice_cross_trade, range, value)

  -- Trade Through Exempt: 1 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.trade_through_exempt, range, value)

  -- Odd Lot: 1 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.odd_lot, range, value)

  -- Extended Hours: 1 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.extended_hours, range, value)

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.intermarket_sweep, range, value)
end

-- Dissect: Sale Condition Flags
iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.dissect = function(buffer, offset, packet, parent)
  local size = iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.display(range, value, packet, parent)
  local element = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.sale_condition_flags, range, display)

  if show.structs then
    iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Break Message
iex_iexequities_deepplus_snap_v1_05.trade_break_message = {}

-- Size: Trade Break Message
iex_iexequities_deepplus_snap_v1_05.trade_break_message.size =
  iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size + 
  iex_iexequities_deepplus_snap_v1_05.size.size + 
  iex_iexequities_deepplus_snap_v1_05.price.size + 
  iex_iexequities_deepplus_snap_v1_05.trade_id.size

-- Display: Trade Break Message
iex_iexequities_deepplus_snap_v1_05.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
iex_iexequities_deepplus_snap_v1_05.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_deepplus_snap_v1_05.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_deepplus_snap_v1_05.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_iexequities_deepplus_snap_v1_05.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
iex_iexequities_deepplus_snap_v1_05.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.trade_break_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
iex_iexequities_deepplus_snap_v1_05.trade_message = {}

-- Size: Trade Message
iex_iexequities_deepplus_snap_v1_05.trade_message.size =
  iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size + 
  iex_iexequities_deepplus_snap_v1_05.size.size + 
  iex_iexequities_deepplus_snap_v1_05.price.size + 
  iex_iexequities_deepplus_snap_v1_05.trade_id.size

-- Display: Trade Message
iex_iexequities_deepplus_snap_v1_05.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
iex_iexequities_deepplus_snap_v1_05.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_deepplus_snap_v1_05.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_deepplus_snap_v1_05.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_iexequities_deepplus_snap_v1_05.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
iex_iexequities_deepplus_snap_v1_05.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.trade_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
iex_iexequities_deepplus_snap_v1_05.order_executed_message = {}

-- Size: Order Executed Message
iex_iexequities_deepplus_snap_v1_05.order_executed_message.size =
  iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size + 
  iex_iexequities_deepplus_snap_v1_05.order_id_reference.size + 
  iex_iexequities_deepplus_snap_v1_05.size.size + 
  iex_iexequities_deepplus_snap_v1_05.price.size + 
  iex_iexequities_deepplus_snap_v1_05.trade_id.size

-- Display: Order Executed Message
iex_iexequities_deepplus_snap_v1_05.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
iex_iexequities_deepplus_snap_v1_05.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_iexequities_deepplus_snap_v1_05.sale_condition_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  -- Order Id Reference: Long
  index, order_id_reference = iex_iexequities_deepplus_snap_v1_05.order_id_reference.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_deepplus_snap_v1_05.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_deepplus_snap_v1_05.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_iexequities_deepplus_snap_v1_05.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
iex_iexequities_deepplus_snap_v1_05.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.order_executed_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
iex_iexequities_deepplus_snap_v1_05.order_delete_message = {}

-- Size: Order Delete Message
iex_iexequities_deepplus_snap_v1_05.order_delete_message.size =
  iex_iexequities_deepplus_snap_v1_05.reserved_1.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size + 
  iex_iexequities_deepplus_snap_v1_05.order_id_reference.size

-- Display: Order Delete Message
iex_iexequities_deepplus_snap_v1_05.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
iex_iexequities_deepplus_snap_v1_05.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: Byte
  index, reserved_1 = iex_iexequities_deepplus_snap_v1_05.reserved_1.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  -- Order Id Reference: Long
  index, order_id_reference = iex_iexequities_deepplus_snap_v1_05.order_id_reference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
iex_iexequities_deepplus_snap_v1_05.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.order_delete_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
iex_iexequities_deepplus_snap_v1_05.modify_flags = {}

-- Size: Modify Flags
iex_iexequities_deepplus_snap_v1_05.modify_flags.size = 1

-- Display: Modify Flags
iex_iexequities_deepplus_snap_v1_05.modify_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Priority flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Priority"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Flags
iex_iexequities_deepplus_snap_v1_05.modify_flags.bits = function(range, value, packet, parent)

  -- Unused 7: 7 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.unused_7, range, value)

  -- Priority: 1 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.priority, range, value)
end

-- Dissect: Modify Flags
iex_iexequities_deepplus_snap_v1_05.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = iex_iexequities_deepplus_snap_v1_05.modify_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.modify_flags.display(range, value, packet, parent)
  local element = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.modify_flags, range, display)

  if show.structs then
    iex_iexequities_deepplus_snap_v1_05.modify_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Modify Message
iex_iexequities_deepplus_snap_v1_05.order_modify_message = {}

-- Size: Order Modify Message
iex_iexequities_deepplus_snap_v1_05.order_modify_message.size =
  iex_iexequities_deepplus_snap_v1_05.modify_flags.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size + 
  iex_iexequities_deepplus_snap_v1_05.order_id_reference.size + 
  iex_iexequities_deepplus_snap_v1_05.size.size + 
  iex_iexequities_deepplus_snap_v1_05.price.size

-- Display: Order Modify Message
iex_iexequities_deepplus_snap_v1_05.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
iex_iexequities_deepplus_snap_v1_05.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Modify Flags: Struct of 2 fields
  index, modify_flags = iex_iexequities_deepplus_snap_v1_05.modify_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  -- Order Id Reference: Long
  index, order_id_reference = iex_iexequities_deepplus_snap_v1_05.order_id_reference.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_deepplus_snap_v1_05.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_deepplus_snap_v1_05.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
iex_iexequities_deepplus_snap_v1_05.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.order_modify_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
iex_iexequities_deepplus_snap_v1_05.add_order_message = {}

-- Size: Add Order Message
iex_iexequities_deepplus_snap_v1_05.add_order_message.size =
  iex_iexequities_deepplus_snap_v1_05.side.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size + 
  iex_iexequities_deepplus_snap_v1_05.order_id.size + 
  iex_iexequities_deepplus_snap_v1_05.size.size + 
  iex_iexequities_deepplus_snap_v1_05.price.size

-- Display: Add Order Message
iex_iexequities_deepplus_snap_v1_05.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
iex_iexequities_deepplus_snap_v1_05.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: Byte
  index, side = iex_iexequities_deepplus_snap_v1_05.side.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = iex_iexequities_deepplus_snap_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_deepplus_snap_v1_05.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_deepplus_snap_v1_05.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
iex_iexequities_deepplus_snap_v1_05.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.add_order_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Event Message
iex_iexequities_deepplus_snap_v1_05.security_event_message = {}

-- Size: Security Event Message
iex_iexequities_deepplus_snap_v1_05.security_event_message.size =
  iex_iexequities_deepplus_snap_v1_05.security_event.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size

-- Display: Security Event Message
iex_iexequities_deepplus_snap_v1_05.security_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Event Message
iex_iexequities_deepplus_snap_v1_05.security_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Event: Byte
  index, security_event = iex_iexequities_deepplus_snap_v1_05.security_event.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Event Message
iex_iexequities_deepplus_snap_v1_05.security_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.security_event_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.security_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.security_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.security_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Price Test Status Message
iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status_message = {}

-- Size: Short Sale Price Test Status Message
iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status_message.size =
  iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size + 
  iex_iexequities_deepplus_snap_v1_05.detail.size

-- Display: Short Sale Price Test Status Message
iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sale Price Test Status Message
iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Sale Price Test Status: Byte (int)
  index, short_sale_price_test_status = iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  -- Detail: Byte
  index, detail = iex_iexequities_deepplus_snap_v1_05.detail.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sale Price Test Status Message
iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.short_sale_price_test_status_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Status Message
iex_iexequities_deepplus_snap_v1_05.operational_halt_status_message = {}

-- Size: Operational Halt Status Message
iex_iexequities_deepplus_snap_v1_05.operational_halt_status_message.size =
  iex_iexequities_deepplus_snap_v1_05.operational_halt_status.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size

-- Display: Operational Halt Status Message
iex_iexequities_deepplus_snap_v1_05.operational_halt_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Status Message
iex_iexequities_deepplus_snap_v1_05.operational_halt_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Operational Halt Status: Byte
  index, operational_halt_status = iex_iexequities_deepplus_snap_v1_05.operational_halt_status.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Status Message
iex_iexequities_deepplus_snap_v1_05.operational_halt_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.operational_halt_status_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.operational_halt_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.operational_halt_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.operational_halt_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Liquidity Indicator Message
iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator_message = {}

-- Size: Retail Liquidity Indicator Message
iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator_message.size =
  iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size

-- Display: Retail Liquidity Indicator Message
iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Liquidity Indicator Message
iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retail Liquidity Indicator: Byte
  index, retail_liquidity_indicator = iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Liquidity Indicator Message
iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.retail_liquidity_indicator_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
iex_iexequities_deepplus_snap_v1_05.trading_status_message = {}

-- Size: Trading Status Message
iex_iexequities_deepplus_snap_v1_05.trading_status_message.size =
  iex_iexequities_deepplus_snap_v1_05.trading_status.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size + 
  iex_iexequities_deepplus_snap_v1_05.reason.size

-- Display: Trading Status Message
iex_iexequities_deepplus_snap_v1_05.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
iex_iexequities_deepplus_snap_v1_05.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Status: Byte
  index, trading_status = iex_iexequities_deepplus_snap_v1_05.trading_status.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  -- Reason: String
  index, reason = iex_iexequities_deepplus_snap_v1_05.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
iex_iexequities_deepplus_snap_v1_05.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.trading_status_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Directory Flags
iex_iexequities_deepplus_snap_v1_05.security_directory_flags = {}

-- Size: Security Directory Flags
iex_iexequities_deepplus_snap_v1_05.security_directory_flags.size = 1

-- Display: Security Directory Flags
iex_iexequities_deepplus_snap_v1_05.security_directory_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Etp flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Etp"
  end
  -- Is When Issued flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "When Issued"
  end
  -- Is Test Security flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Test Security"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Directory Flags
iex_iexequities_deepplus_snap_v1_05.security_directory_flags.bits = function(range, value, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.unused_5, range, value)

  -- Etp: 1 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.etp, range, value)

  -- When Issued: 1 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.when_issued, range, value)

  -- Test Security: 1 Bit
  parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.test_security, range, value)
end

-- Dissect: Security Directory Flags
iex_iexequities_deepplus_snap_v1_05.security_directory_flags.dissect = function(buffer, offset, packet, parent)
  local size = iex_iexequities_deepplus_snap_v1_05.security_directory_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = iex_iexequities_deepplus_snap_v1_05.security_directory_flags.display(range, value, packet, parent)
  local element = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.security_directory_flags, range, display)

  if show.structs then
    iex_iexequities_deepplus_snap_v1_05.security_directory_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Directory Message
iex_iexequities_deepplus_snap_v1_05.security_directory_message = {}

-- Size: Security Directory Message
iex_iexequities_deepplus_snap_v1_05.security_directory_message.size =
  iex_iexequities_deepplus_snap_v1_05.security_directory_flags.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size + 
  iex_iexequities_deepplus_snap_v1_05.symbol.size + 
  iex_iexequities_deepplus_snap_v1_05.round_lot_size.size + 
  iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price.size + 
  iex_iexequities_deepplus_snap_v1_05.luld_tier.size

-- Display: Security Directory Message
iex_iexequities_deepplus_snap_v1_05.security_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Directory Message
iex_iexequities_deepplus_snap_v1_05.security_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Directory Flags: Struct of 4 fields
  index, security_directory_flags = iex_iexequities_deepplus_snap_v1_05.security_directory_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deepplus_snap_v1_05.symbol.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = iex_iexequities_deepplus_snap_v1_05.round_lot_size.dissect(buffer, index, packet, parent)

  -- Adjusted Poc Price: Price
  index, adjusted_poc_price = iex_iexequities_deepplus_snap_v1_05.adjusted_poc_price.dissect(buffer, index, packet, parent)

  -- Luld Tier: Byte (int)
  index, luld_tier = iex_iexequities_deepplus_snap_v1_05.luld_tier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Directory Message
iex_iexequities_deepplus_snap_v1_05.security_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.security_directory_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.security_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.security_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.security_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
iex_iexequities_deepplus_snap_v1_05.system_event_message = {}

-- Size: System Event Message
iex_iexequities_deepplus_snap_v1_05.system_event_message.size =
  iex_iexequities_deepplus_snap_v1_05.system_event.size + 
  iex_iexequities_deepplus_snap_v1_05.timestamp.size

-- Display: System Event Message
iex_iexequities_deepplus_snap_v1_05.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
iex_iexequities_deepplus_snap_v1_05.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- System Event: Byte
  index, system_event = iex_iexequities_deepplus_snap_v1_05.system_event.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deepplus_snap_v1_05.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
iex_iexequities_deepplus_snap_v1_05.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.system_event_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Iex Tp Message Data
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_data = {}

-- Dissect: Iex Tp Message Data
iex_iexequities_deepplus_snap_v1_05.iex_tp_message_data.dissect = function(buffer, offset, packet, parent, iex_tp_message_type)
  -- Dissect System Event Message
  if iex_tp_message_type == "S" then
    return iex_iexequities_deepplus_snap_v1_05.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Directory Message
  if iex_tp_message_type == "D" then
    return iex_iexequities_deepplus_snap_v1_05.security_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if iex_tp_message_type == "H" then
    return iex_iexequities_deepplus_snap_v1_05.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Liquidity Indicator Message
  if iex_tp_message_type == "I" then
    return iex_iexequities_deepplus_snap_v1_05.retail_liquidity_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Status Message
  if iex_tp_message_type == "O" then
    return iex_iexequities_deepplus_snap_v1_05.operational_halt_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Sale Price Test Status Message
  if iex_tp_message_type == "P" then
    return iex_iexequities_deepplus_snap_v1_05.short_sale_price_test_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Event Message
  if iex_tp_message_type == "E" then
    return iex_iexequities_deepplus_snap_v1_05.security_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if iex_tp_message_type == "a" then
    return iex_iexequities_deepplus_snap_v1_05.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Message
  if iex_tp_message_type == "M" then
    return iex_iexequities_deepplus_snap_v1_05.order_modify_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if iex_tp_message_type == "R" then
    return iex_iexequities_deepplus_snap_v1_05.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if iex_tp_message_type == "L" then
    return iex_iexequities_deepplus_snap_v1_05.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if iex_tp_message_type == "T" then
    return iex_iexequities_deepplus_snap_v1_05.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if iex_tp_message_type == "B" then
    return iex_iexequities_deepplus_snap_v1_05.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if iex_tp_message_type == "C" then
    return iex_iexequities_deepplus_snap_v1_05.clear_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Snapshot Data Message
iex_iexequities_deepplus_snap_v1_05.snapshot_data_message = {}

-- Calculate size of: Snapshot Data Message
iex_iexequities_deepplus_snap_v1_05.snapshot_data_message.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexequities_deepplus_snap_v1_05.iex_tp_header.size

  index = index + iex_iexequities_deepplus_snap_v1_05.iex_tp_message_block_length.size

  index = index + iex_iexequities_deepplus_snap_v1_05.iex_tp_message_length.size

  index = index + iex_iexequities_deepplus_snap_v1_05.iex_tp_message_type.size

  -- Calculate runtime size of Iex Tp Message Data field
  local iex_tp_message_data_offset = offset + index
  local iex_tp_message_data_type = buffer(iex_tp_message_data_offset - 1, 1):string()
  index = index + iex_iexequities_deepplus_snap_v1_05.iex_tp_message_data.size(buffer, iex_tp_message_data_offset, iex_tp_message_data_type)

  return index
end

-- Display: Snapshot Data Message
iex_iexequities_deepplus_snap_v1_05.snapshot_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Data Message
iex_iexequities_deepplus_snap_v1_05.snapshot_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Iex Tp Header: Byte
  index, iex_tp_header = iex_iexequities_deepplus_snap_v1_05.iex_tp_header.dissect(buffer, index, packet, parent)

  -- Iex Tp Message Block Length: Integer
  index, iex_tp_message_block_length = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_block_length.dissect(buffer, index, packet, parent)

  -- Iex Tp Message Length: Integer
  index, iex_tp_message_length = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_length.dissect(buffer, index, packet, parent)

  -- Iex Tp Message Type: Byte
  index, iex_tp_message_type = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_type.dissect(buffer, index, packet, parent)

  -- Iex Tp Message Data: Runtime Type with 14 branches
  index = iex_iexequities_deepplus_snap_v1_05.iex_tp_message_data.dissect(buffer, index, packet, parent, iex_tp_message_type)

  return index
end

-- Dissect: Snapshot Data Message
iex_iexequities_deepplus_snap_v1_05.snapshot_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_data_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.snapshot_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.snapshot_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.snapshot_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Start Message
iex_iexequities_deepplus_snap_v1_05.snapshot_start_message = {}

-- Size: Snapshot Start Message
iex_iexequities_deepplus_snap_v1_05.snapshot_start_message.size =
  iex_iexequities_deepplus_snap_v1_05.snapshot_length.size

-- Display: Snapshot Start Message
iex_iexequities_deepplus_snap_v1_05.snapshot_start_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Start Message
iex_iexequities_deepplus_snap_v1_05.snapshot_start_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Length: Long
  index, snapshot_length = iex_iexequities_deepplus_snap_v1_05.snapshot_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Start Message
iex_iexequities_deepplus_snap_v1_05.snapshot_start_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_start_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.snapshot_start_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.snapshot_start_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.snapshot_start_message.fields(buffer, offset, packet, parent)
  end
end

-- Error Response Message
iex_iexequities_deepplus_snap_v1_05.error_response_message = {}

-- Size: Error Response Message
iex_iexequities_deepplus_snap_v1_05.error_response_message.size =
  iex_iexequities_deepplus_snap_v1_05.reject_reason_code.size

-- Display: Error Response Message
iex_iexequities_deepplus_snap_v1_05.error_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Response Message
iex_iexequities_deepplus_snap_v1_05.error_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: Byte
  index, reject_reason_code = iex_iexequities_deepplus_snap_v1_05.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Response Message
iex_iexequities_deepplus_snap_v1_05.error_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.error_response_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.error_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.error_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.error_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Request Message
iex_iexequities_deepplus_snap_v1_05.snapshot_request_message = {}

-- Size: Snapshot Request Message
iex_iexequities_deepplus_snap_v1_05.snapshot_request_message.size =
  iex_iexequities_deepplus_snap_v1_05.authentication_token.size + 
  iex_iexequities_deepplus_snap_v1_05.channel_id.size + 
  iex_iexequities_deepplus_snap_v1_05.session_id.size + 
  iex_iexequities_deepplus_snap_v1_05.minimum_sequence_number.size

-- Display: Snapshot Request Message
iex_iexequities_deepplus_snap_v1_05.snapshot_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Request Message
iex_iexequities_deepplus_snap_v1_05.snapshot_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Authentication Token: String
  index, authentication_token = iex_iexequities_deepplus_snap_v1_05.authentication_token.dissect(buffer, index, packet, parent)

  -- Channel Id: Integer
  index, channel_id = iex_iexequities_deepplus_snap_v1_05.channel_id.dissect(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = iex_iexequities_deepplus_snap_v1_05.session_id.dissect(buffer, index, packet, parent)

  -- Minimum Sequence Number: Long
  index, minimum_sequence_number = iex_iexequities_deepplus_snap_v1_05.minimum_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Request Message
iex_iexequities_deepplus_snap_v1_05.snapshot_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.snapshot_request_message, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.snapshot_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.snapshot_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.snapshot_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Data
iex_iexequities_deepplus_snap_v1_05.message_data = {}

-- Dissect: Message Data
iex_iexequities_deepplus_snap_v1_05.message_data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Snapshot Request Message
  if message_type == "r" then
    return iex_iexequities_deepplus_snap_v1_05.snapshot_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Error Response Message
  if message_type == "e" then
    return iex_iexequities_deepplus_snap_v1_05.error_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Start Message
  if message_type == "s" then
    return iex_iexequities_deepplus_snap_v1_05.snapshot_start_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Data Message
  if message_type == "d" then
    return iex_iexequities_deepplus_snap_v1_05.snapshot_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot End Message
  if message_type == "x" then
    return iex_iexequities_deepplus_snap_v1_05.snapshot_end_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
iex_iexequities_deepplus_snap_v1_05.message_header = {}

-- Size: Message Header
iex_iexequities_deepplus_snap_v1_05.message_header.size =
  iex_iexequities_deepplus_snap_v1_05.message_length.size + 
  iex_iexequities_deepplus_snap_v1_05.message_type.size

-- Display: Message Header
iex_iexequities_deepplus_snap_v1_05.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_iexequities_deepplus_snap_v1_05.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = iex_iexequities_deepplus_snap_v1_05.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 5 values
  index, message_type = iex_iexequities_deepplus_snap_v1_05.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_iexequities_deepplus_snap_v1_05.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.message_header, buffer(offset, 0))
    local index = iex_iexequities_deepplus_snap_v1_05.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deepplus_snap_v1_05.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deepplus_snap_v1_05.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
iex_iexequities_deepplus_snap_v1_05.message = {}

-- Display: Message
iex_iexequities_deepplus_snap_v1_05.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
iex_iexequities_deepplus_snap_v1_05.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = iex_iexequities_deepplus_snap_v1_05.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Message Data: Runtime Type with 5 branches
  index = iex_iexequities_deepplus_snap_v1_05.message_data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
iex_iexequities_deepplus_snap_v1_05.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_iex_iexequities_deepplus_snap_v1_05.fields.message, buffer(offset, 0))
    local current = iex_iexequities_deepplus_snap_v1_05.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = iex_iexequities_deepplus_snap_v1_05.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    iex_iexequities_deepplus_snap_v1_05.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < iex_iexequities_deepplus_snap_v1_05.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
iex_iexequities_deepplus_snap_v1_05.packet = {}

-- Verify required size of Tcp packet
iex_iexequities_deepplus_snap_v1_05.packet.requiredsize = function(buffer)
  return buffer:len() >= iex_iexequities_deepplus_snap_v1_05.message_header.size
end

-- Dissect Packet
iex_iexequities_deepplus_snap_v1_05.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = iex_iexequities_deepplus_snap_v1_05.message.dissect(buffer, index, packet, parent, size_of_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_iex_iexequities_deepplus_snap_v1_05.init()
end

-- Dissector for Iex IexEquities DeepPlus Snap 1.05
function omi_iex_iexequities_deepplus_snap_v1_05.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_iex_iexequities_deepplus_snap_v1_05.name

  -- Dissect protocol
  local protocol = parent:add(omi_iex_iexequities_deepplus_snap_v1_05, buffer(), omi_iex_iexequities_deepplus_snap_v1_05.description, "("..buffer:len().." Bytes)")
  return iex_iexequities_deepplus_snap_v1_05.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Iex IexEquities DeepPlus Snap 1.05 (Tcp)
local function omi_iex_iexequities_deepplus_snap_v1_05_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not iex_iexequities_deepplus_snap_v1_05.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_iex_iexequities_deepplus_snap_v1_05
  omi_iex_iexequities_deepplus_snap_v1_05.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex IexEquities DeepPlus Snap 1.05
omi_iex_iexequities_deepplus_snap_v1_05:register_heuristic("tcp", omi_iex_iexequities_deepplus_snap_v1_05_tcp_heuristic)

-- Register Iex IexEquities DeepPlus Snap 1.05 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_iex_iexequities_deepplus_snap_v1_05)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.05
--   Date: Thursday, June 4, 2026
--   Specification: IEX DEEP+ SNAP Specification.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
