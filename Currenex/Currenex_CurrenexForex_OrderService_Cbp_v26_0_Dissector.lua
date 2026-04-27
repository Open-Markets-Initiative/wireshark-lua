-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Currenex CurrenexForex OrderService Cbp 26.0 Protocol
local omi_currenex_currenexforex_orderservice_cbp_v26_0 = Proto("Currenex.CurrenexForex.OrderService.Cbp.v26.0.Lua", "Currenex CurrenexForex OrderService Cbp 26.0")

-- Protocol table
local currenex_currenexforex_orderservice_cbp_v26_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Currenex CurrenexForex OrderService Cbp 26.0 Fields
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.aggressor_flag = ProtoField.new("Aggressor Flag", "currenex.currenexforex.orderservice.cbp.v26.0.aggressorflag", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.begin_seq_no = ProtoField.new("Begin Seq No", "currenex.currenexforex.orderservice.cbp.v26.0.beginseqno", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.cl_order_id = ProtoField.new("Cl Order Id", "currenex.currenexforex.orderservice.cbp.v26.0.clorderid", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.error_code = ProtoField.new("Error Code", "currenex.currenexforex.orderservice.cbp.v26.0.errorcode", ftypes.INT16)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.etx = ProtoField.new("Etx", "currenex.currenexforex.orderservice.cbp.v26.0.etx", ftypes.INT8)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.exec_broker = ProtoField.new("Exec Broker", "currenex.currenexforex.orderservice.cbp.v26.0.execbroker", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.exec_type = ProtoField.new("Exec Type", "currenex.currenexforex.orderservice.cbp.v26.0.exectype", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.execution_id = ProtoField.new("Execution Id", "currenex.currenexforex.orderservice.cbp.v26.0.executionid", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.expire_type = ProtoField.new("Expire Type", "currenex.currenexforex.orderservice.cbp.v26.0.expiretype", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.fill_amt = ProtoField.new("Fill Amt", "currenex.currenexforex.orderservice.cbp.v26.0.fillamt", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.fill_rate = ProtoField.new("Fill Rate", "currenex.currenexforex.orderservice.cbp.v26.0.fillrate", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_id = ProtoField.new("Instrument Id", "currenex.currenexforex.orderservice.cbp.v26.0.instrumentid", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_index = ProtoField.new("Instrument Index", "currenex.currenexforex.orderservice.cbp.v26.0.instrumentindex", ftypes.INT16)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_type = ProtoField.new("Instrument Type", "currenex.currenexforex.orderservice.cbp.v26.0.instrumenttype", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.leaves_amt = ProtoField.new("Leaves Amt", "currenex.currenexforex.orderservice.cbp.v26.0.leavesamt", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.message_header = ProtoField.new("Message Header", "currenex.currenexforex.orderservice.cbp.v26.0.messageheader", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.message_type = ProtoField.new("Message Type", "currenex.currenexforex.orderservice.cbp.v26.0.messagetype", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.min_amt = ProtoField.new("Min Amt", "currenex.currenexforex.orderservice.cbp.v26.0.minamt", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.new_cl_order_id = ProtoField.new("New Cl Order Id", "currenex.currenexforex.orderservice.cbp.v26.0.newclorderid", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.new_seq_no = ProtoField.new("New Seq No", "currenex.currenexforex.orderservice.cbp.v26.0.newseqno", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_amt = ProtoField.new("Order Amt", "currenex.currenexforex.orderservice.cbp.v26.0.orderamt", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_id = ProtoField.new("Order Id", "currenex.currenexforex.orderservice.cbp.v26.0.orderid", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_type = ProtoField.new("Order Type", "currenex.currenexforex.orderservice.cbp.v26.0.ordertype", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.orig_cl_order_id = ProtoField.new("Orig Cl Order Id", "currenex.currenexforex.orderservice.cbp.v26.0.origclorderid", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.packet = ProtoField.new("Packet", "currenex.currenexforex.orderservice.cbp.v26.0.packet", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.password = ProtoField.new("Password", "currenex.currenexforex.orderservice.cbp.v26.0.password", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.prev_cl_order_id = ProtoField.new("Prev Cl Order Id", "currenex.currenexforex.orderservice.cbp.v26.0.prevclorderid", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.price = ProtoField.new("Price", "currenex.currenexforex.orderservice.cbp.v26.0.price", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.reason = ProtoField.new("Reason", "currenex.currenexforex.orderservice.cbp.v26.0.reason", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.reason_code = ProtoField.new("Reason Code", "currenex.currenexforex.orderservice.cbp.v26.0.reasoncode", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.sequence_number = ProtoField.new("Sequence Number", "currenex.currenexforex.orderservice.cbp.v26.0.sequencenumber", ftypes.UINT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.session_id = ProtoField.new("Session Id", "currenex.currenexforex.orderservice.cbp.v26.0.sessionid", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.settle_date = ProtoField.new("Settle Date", "currenex.currenexforex.orderservice.cbp.v26.0.settledate", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.settlement_date = ProtoField.new("Settlement Date", "currenex.currenexforex.orderservice.cbp.v26.0.settlementdate", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.show_amt = ProtoField.new("Show Amt", "currenex.currenexforex.orderservice.cbp.v26.0.showamt", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.side = ProtoField.new("Side", "currenex.currenexforex.orderservice.cbp.v26.0.side", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.soh = ProtoField.new("Soh", "currenex.currenexforex.orderservice.cbp.v26.0.soh", ftypes.INT8)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.status = ProtoField.new("Status", "currenex.currenexforex.orderservice.cbp.v26.0.status", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.trade_date = ProtoField.new("Trade Date", "currenex.currenexforex.orderservice.cbp.v26.0.tradedate", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.trade_link_id = ProtoField.new("Trade Link Id", "currenex.currenexforex.orderservice.cbp.v26.0.tradelinkid", ftypes.INT32)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.transact_time = ProtoField.new("Transact Time", "currenex.currenexforex.orderservice.cbp.v26.0.transacttime", ftypes.INT64)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.type = ProtoField.new("Type", "currenex.currenexforex.orderservice.cbp.v26.0.type", ftypes.INT16)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.user_id = ProtoField.new("User Id", "currenex.currenexforex.orderservice.cbp.v26.0.userid", ftypes.STRING)

-- Currenex CurrenexForex Cbp OrderService 26.0 Application Messages
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.gap_fill = ProtoField.new("Gap Fill", "currenex.currenexforex.orderservice.cbp.v26.0.gapfill", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.heartbeat = ProtoField.new("Heartbeat", "currenex.currenexforex.orderservice.cbp.v26.0.heartbeat", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_info = ProtoField.new("Instrument Info", "currenex.currenexforex.orderservice.cbp.v26.0.instrumentinfo", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_info_request = ProtoField.new("Instrument Info Request", "currenex.currenexforex.orderservice.cbp.v26.0.instrumentinforequest", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.logon = ProtoField.new("Logon", "currenex.currenexforex.orderservice.cbp.v26.0.logon", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.logout = ProtoField.new("Logout", "currenex.currenexforex.orderservice.cbp.v26.0.logout", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.new_order_ack = ProtoField.new("New Order Ack", "currenex.currenexforex.orderservice.cbp.v26.0.neworderack", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.new_order_request = ProtoField.new("New Order Request", "currenex.currenexforex.orderservice.cbp.v26.0.neworderrequest", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_cancel_reject = ProtoField.new("Order Cancel Reject", "currenex.currenexforex.orderservice.cbp.v26.0.ordercancelreject", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_cancel_request = ProtoField.new("Order Cancel Request", "currenex.currenexforex.orderservice.cbp.v26.0.ordercancelrequest", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_canceled_or_expired = ProtoField.new("Order Canceled Or Expired", "currenex.currenexforex.orderservice.cbp.v26.0.ordercanceledorexpired", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_replace_or_cancel_ack = ProtoField.new("Order Replace Or Cancel Ack", "currenex.currenexforex.orderservice.cbp.v26.0.orderreplaceorcancelack", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_replace_or_cancel_request = ProtoField.new("Order Replace Or Cancel Request", "currenex.currenexforex.orderservice.cbp.v26.0.orderreplaceorcancelrequest", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.pending_fill = ProtoField.new("Pending Fill", "currenex.currenexforex.orderservice.cbp.v26.0.pendingfill", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.pending_fill_cancel = ProtoField.new("Pending Fill Cancel", "currenex.currenexforex.orderservice.cbp.v26.0.pendingfillcancel", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.resend_request = ProtoField.new("Resend Request", "currenex.currenexforex.orderservice.cbp.v26.0.resendrequest", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.trade = ProtoField.new("Trade", "currenex.currenexforex.orderservice.cbp.v26.0.trade", ftypes.STRING)
omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.trade_pending = ProtoField.new("Trade Pending", "currenex.currenexforex.orderservice.cbp.v26.0.tradepending", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Currenex CurrenexForex OrderService Cbp 26.0 Element Dissection Options
show.application_messages = true
show.message_header = true
show.packet = true

-- Register Currenex CurrenexForex OrderService Cbp 26.0 Show Options
omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs.show_application_messages then
    show.application_messages = omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs.show_application_messages
  end
  if show.message_header ~= omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs.show_message_header then
    show.message_header = omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs.show_message_header
  end
  if show.packet ~= omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs.show_packet then
    show.packet = omi_currenex_currenexforex_orderservice_cbp_v26_0.prefs.show_packet
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
-- Currenex CurrenexForex OrderService Cbp 26.0 Fields
-----------------------------------------------------------------------

-- Aggressor Flag
currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag = {}

-- Size: Aggressor Flag
currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.size = 1

-- Display: Aggressor Flag
currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Aggressor Flag: No Value"
  end

  if value == "1" then
    return "Aggressor Flag: Aggressor (1)"
  end
  if value == "2" then
    return "Aggressor Flag: Not Aggressor (2)"
  end
  if value == "2" then
    return "Aggressor Flag: Passive (2)"
  end

  return "Aggressor Flag: Unknown("..value..")"
end

-- Dissect: Aggressor Flag
currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.aggressor_flag, range, value, display)

  return offset + length, value
end

-- Begin Seq No
currenex_currenexforex_orderservice_cbp_v26_0.begin_seq_no = {}

-- Size: Begin Seq No
currenex_currenexforex_orderservice_cbp_v26_0.begin_seq_no.size = 4

-- Display: Begin Seq No
currenex_currenexforex_orderservice_cbp_v26_0.begin_seq_no.display = function(value)
  return "Begin Seq No: "..value
end

-- Dissect: Begin Seq No
currenex_currenexforex_orderservice_cbp_v26_0.begin_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.begin_seq_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.begin_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.begin_seq_no, range, value, display)

  return offset + length, value
end

-- Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id = {}

-- Size: Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.size = 4

-- Display: Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.display = function(value)
  return "Cl Order Id: "..value
end

-- Dissect: Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.cl_order_id, range, value, display)

  return offset + length, value
end

-- Error Code
currenex_currenexforex_orderservice_cbp_v26_0.error_code = {}

-- Size: Error Code
currenex_currenexforex_orderservice_cbp_v26_0.error_code.size = 2

-- Display: Error Code
currenex_currenexforex_orderservice_cbp_v26_0.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
currenex_currenexforex_orderservice_cbp_v26_0.error_code.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.error_code, range, value, display)

  return offset + length, value
end

-- Etx
currenex_currenexforex_orderservice_cbp_v26_0.etx = {}

-- Size: Etx
currenex_currenexforex_orderservice_cbp_v26_0.etx.size = 1

-- Display: Etx
currenex_currenexforex_orderservice_cbp_v26_0.etx.display = function(value)
  return "Etx: "..value
end

-- Dissect: Etx
currenex_currenexforex_orderservice_cbp_v26_0.etx.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.etx, range, value, display)

  return offset + length, value
end

-- Exec Broker
currenex_currenexforex_orderservice_cbp_v26_0.exec_broker = {}

-- Size: Exec Broker
currenex_currenexforex_orderservice_cbp_v26_0.exec_broker.size = 4

-- Display: Exec Broker
currenex_currenexforex_orderservice_cbp_v26_0.exec_broker.display = function(value)
  return "Exec Broker: "..value
end

-- Dissect: Exec Broker
currenex_currenexforex_orderservice_cbp_v26_0.exec_broker.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.exec_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_currenexforex_orderservice_cbp_v26_0.exec_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.exec_broker, range, value, display)

  return offset + length, value
end

-- Exec Type
currenex_currenexforex_orderservice_cbp_v26_0.exec_type = {}

-- Size: Exec Type
currenex_currenexforex_orderservice_cbp_v26_0.exec_type.size = 1

-- Display: Exec Type
currenex_currenexforex_orderservice_cbp_v26_0.exec_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Type: No Value"
  end

  if value == "1" then
    return "Exec Type: New Trade (1)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
currenex_currenexforex_orderservice_cbp_v26_0.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.exec_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_currenexforex_orderservice_cbp_v26_0.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Execution Id
currenex_currenexforex_orderservice_cbp_v26_0.execution_id = {}

-- Size: Execution Id
currenex_currenexforex_orderservice_cbp_v26_0.execution_id.size = 20

-- Display: Execution Id
currenex_currenexforex_orderservice_cbp_v26_0.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
currenex_currenexforex_orderservice_cbp_v26_0.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.execution_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_currenexforex_orderservice_cbp_v26_0.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expire Type
currenex_currenexforex_orderservice_cbp_v26_0.expire_type = {}

-- Size: Expire Type
currenex_currenexforex_orderservice_cbp_v26_0.expire_type.size = 1

-- Display: Expire Type
currenex_currenexforex_orderservice_cbp_v26_0.expire_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Expire Type: No Value"
  end

  if value == "G" then
    return "Expire Type: Gtc (G)"
  end
  if value == "I" then
    return "Expire Type: Ioc (I)"
  end

  return "Expire Type: Unknown("..value..")"
end

-- Dissect: Expire Type
currenex_currenexforex_orderservice_cbp_v26_0.expire_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.expire_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_currenexforex_orderservice_cbp_v26_0.expire_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.expire_type, range, value, display)

  return offset + length, value
end

-- Fill Amt
currenex_currenexforex_orderservice_cbp_v26_0.fill_amt = {}

-- Size: Fill Amt
currenex_currenexforex_orderservice_cbp_v26_0.fill_amt.size = 8

-- Display: Fill Amt
currenex_currenexforex_orderservice_cbp_v26_0.fill_amt.display = function(value)
  return "Fill Amt: "..value
end

-- Dissect: Fill Amt
currenex_currenexforex_orderservice_cbp_v26_0.fill_amt.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.fill_amt.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.fill_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.fill_amt, range, value, display)

  return offset + length, value
end

-- Fill Rate
currenex_currenexforex_orderservice_cbp_v26_0.fill_rate = {}

-- Size: Fill Rate
currenex_currenexforex_orderservice_cbp_v26_0.fill_rate.size = 4

-- Display: Fill Rate
currenex_currenexforex_orderservice_cbp_v26_0.fill_rate.display = function(value)
  return "Fill Rate: "..value
end

-- Dissect: Fill Rate
currenex_currenexforex_orderservice_cbp_v26_0.fill_rate.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.fill_rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.fill_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.fill_rate, range, value, display)

  return offset + length, value
end

-- Instrument Id
currenex_currenexforex_orderservice_cbp_v26_0.instrument_id = {}

-- Size: Instrument Id
currenex_currenexforex_orderservice_cbp_v26_0.instrument_id.size = 20

-- Display: Instrument Id
currenex_currenexforex_orderservice_cbp_v26_0.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
currenex_currenexforex_orderservice_cbp_v26_0.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_currenexforex_orderservice_cbp_v26_0.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Index
currenex_currenexforex_orderservice_cbp_v26_0.instrument_index = {}

-- Size: Instrument Index
currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.size = 2

-- Display: Instrument Index
currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.display = function(value)
  return "Instrument Index: "..value
end

-- Dissect: Instrument Index
currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_index, range, value, display)

  return offset + length, value
end

-- Instrument Type
currenex_currenexforex_orderservice_cbp_v26_0.instrument_type = {}

-- Size: Instrument Type
currenex_currenexforex_orderservice_cbp_v26_0.instrument_type.size = 1

-- Display: Instrument Type
currenex_currenexforex_orderservice_cbp_v26_0.instrument_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Instrument Type: No Value"
  end

  if value == "1" then
    return "Instrument Type: Foreign Exchange (1)"
  end
  if value == "2" then
    return "Instrument Type: Cash Metals (2)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
currenex_currenexforex_orderservice_cbp_v26_0.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.instrument_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_currenexforex_orderservice_cbp_v26_0.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Leaves Amt
currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt = {}

-- Size: Leaves Amt
currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt.size = 8

-- Display: Leaves Amt
currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt.display = function(value)
  return "Leaves Amt: "..value
end

-- Dissect: Leaves Amt
currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.leaves_amt, range, value, display)

  return offset + length, value
end

-- Message Type
currenex_currenexforex_orderservice_cbp_v26_0.message_type = {}

-- Size: Message Type
currenex_currenexforex_orderservice_cbp_v26_0.message_type.size = 1

-- Display: Message Type
currenex_currenexforex_orderservice_cbp_v26_0.message_type.display = function(value)
  if value == "A" then
    return "Message Type: Logon (A)"
  end
  if value == "B" then
    return "Message Type: Logout (B)"
  end
  if value == "C" then
    return "Message Type: Heartbeat (C)"
  end
  if value == "E" then
    return "Message Type: Instrument Info Request (E)"
  end
  if value == "D" then
    return "Message Type: Instrument Info (D)"
  end
  if value == "L" then
    return "Message Type: New Order Request (L)"
  end
  if value == "M" then
    return "Message Type: New Order Ack (M)"
  end
  if value == "N" then
    return "Message Type: Order Cancel Request (N)"
  end
  if value == "O" then
    return "Message Type: Order Cancel Reject (O)"
  end
  if value == "P" then
    return "Message Type: Order Replace Or Cancel Request (P)"
  end
  if value == "Q" then
    return "Message Type: Order Replace Or Cancel Ack (Q)"
  end
  if value == "R" then
    return "Message Type: Order Canceled Or Expired (R)"
  end
  if value == "T" then
    return "Message Type: Trade (T)"
  end
  if value == "U" then
    return "Message Type: Pending Fill (U)"
  end
  if value == "V" then
    return "Message Type: Pending Fill Cancel (V)"
  end
  if value == "t" then
    return "Message Type: Trade Pending (t)"
  end
  if value == "2" then
    return "Message Type: Resend Request (2)"
  end
  if value == "4" then
    return "Message Type: Gap Fill (4)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
currenex_currenexforex_orderservice_cbp_v26_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Amt
currenex_currenexforex_orderservice_cbp_v26_0.min_amt = {}

-- Size: Min Amt
currenex_currenexforex_orderservice_cbp_v26_0.min_amt.size = 8

-- Display: Min Amt
currenex_currenexforex_orderservice_cbp_v26_0.min_amt.display = function(value)
  return "Min Amt: "..value
end

-- Dissect: Min Amt
currenex_currenexforex_orderservice_cbp_v26_0.min_amt.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.min_amt.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.min_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.min_amt, range, value, display)

  return offset + length, value
end

-- New Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id = {}

-- Size: New Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.size = 4

-- Display: New Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.display = function(value)
  return "New Cl Order Id: "..value
end

-- Dissect: New Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.new_cl_order_id, range, value, display)

  return offset + length, value
end

-- New Seq No
currenex_currenexforex_orderservice_cbp_v26_0.new_seq_no = {}

-- Size: New Seq No
currenex_currenexforex_orderservice_cbp_v26_0.new_seq_no.size = 4

-- Display: New Seq No
currenex_currenexforex_orderservice_cbp_v26_0.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
currenex_currenexforex_orderservice_cbp_v26_0.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Order Amt
currenex_currenexforex_orderservice_cbp_v26_0.order_amt = {}

-- Size: Order Amt
currenex_currenexforex_orderservice_cbp_v26_0.order_amt.size = 8

-- Display: Order Amt
currenex_currenexforex_orderservice_cbp_v26_0.order_amt.display = function(value)
  return "Order Amt: "..value
end

-- Dissect: Order Amt
currenex_currenexforex_orderservice_cbp_v26_0.order_amt.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.order_amt.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.order_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_amt, range, value, display)

  return offset + length, value
end

-- Order Id
currenex_currenexforex_orderservice_cbp_v26_0.order_id = {}

-- Size: Order Id
currenex_currenexforex_orderservice_cbp_v26_0.order_id.size = 8

-- Display: Order Id
currenex_currenexforex_orderservice_cbp_v26_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
currenex_currenexforex_orderservice_cbp_v26_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.order_id.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
currenex_currenexforex_orderservice_cbp_v26_0.order_type = {}

-- Size: Order Type
currenex_currenexforex_orderservice_cbp_v26_0.order_type.size = 1

-- Display: Order Type
currenex_currenexforex_orderservice_cbp_v26_0.order_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Order Type: No Value"
  end

  if value == "F" then
    return "Order Type: Limit (F)"
  end
  if value == "Z" then
    return "Order Type: Iceberg (Z)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
currenex_currenexforex_orderservice_cbp_v26_0.order_type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.order_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_currenexforex_orderservice_cbp_v26_0.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_type, range, value, display)

  return offset + length, value
end

-- Orig Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.orig_cl_order_id = {}

-- Size: Orig Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.orig_cl_order_id.size = 4

-- Display: Orig Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.orig_cl_order_id.display = function(value)
  return "Orig Cl Order Id: "..value
end

-- Dissect: Orig Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.orig_cl_order_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.orig_cl_order_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.orig_cl_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.orig_cl_order_id, range, value, display)

  return offset + length, value
end

-- Password
currenex_currenexforex_orderservice_cbp_v26_0.password = {}

-- Size: Password
currenex_currenexforex_orderservice_cbp_v26_0.password.size = 20

-- Display: Password
currenex_currenexforex_orderservice_cbp_v26_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
currenex_currenexforex_orderservice_cbp_v26_0.password.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_currenexforex_orderservice_cbp_v26_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.password, range, value, display)

  return offset + length, value
end

-- Prev Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id = {}

-- Size: Prev Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.size = 4

-- Display: Prev Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.display = function(value)
  return "Prev Cl Order Id: "..value
end

-- Dissect: Prev Cl Order Id
currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.prev_cl_order_id, range, value, display)

  return offset + length, value
end

-- Price
currenex_currenexforex_orderservice_cbp_v26_0.price = {}

-- Size: Price
currenex_currenexforex_orderservice_cbp_v26_0.price.size = 4

-- Display: Price
currenex_currenexforex_orderservice_cbp_v26_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
currenex_currenexforex_orderservice_cbp_v26_0.price.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.price, range, value, display)

  return offset + length, value
end

-- Reason
currenex_currenexforex_orderservice_cbp_v26_0.reason = {}

-- Size: Reason
currenex_currenexforex_orderservice_cbp_v26_0.reason.size = 3

-- Display: Reason
currenex_currenexforex_orderservice_cbp_v26_0.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
currenex_currenexforex_orderservice_cbp_v26_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_currenexforex_orderservice_cbp_v26_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Reason Code
currenex_currenexforex_orderservice_cbp_v26_0.reason_code = {}

-- Size: Reason Code
currenex_currenexforex_orderservice_cbp_v26_0.reason_code.size = 1

-- Display: Reason Code
currenex_currenexforex_orderservice_cbp_v26_0.reason_code.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Reason Code: No Value"
  end

  if value == "1" then
    return "Reason Code: Not Resendable (1)"
  end
  if value == "2" then
    return "Reason Code: Not Available (2)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
currenex_currenexforex_orderservice_cbp_v26_0.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.reason_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_currenexforex_orderservice_cbp_v26_0.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Sequence Number
currenex_currenexforex_orderservice_cbp_v26_0.sequence_number = {}

-- Size: Sequence Number
currenex_currenexforex_orderservice_cbp_v26_0.sequence_number.size = 4

-- Display: Sequence Number
currenex_currenexforex_orderservice_cbp_v26_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
currenex_currenexforex_orderservice_cbp_v26_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
currenex_currenexforex_orderservice_cbp_v26_0.session_id = {}

-- Size: Session Id
currenex_currenexforex_orderservice_cbp_v26_0.session_id.size = 4

-- Display: Session Id
currenex_currenexforex_orderservice_cbp_v26_0.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
currenex_currenexforex_orderservice_cbp_v26_0.session_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.session_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Settle Date
currenex_currenexforex_orderservice_cbp_v26_0.settle_date = {}

-- Size: Settle Date
currenex_currenexforex_orderservice_cbp_v26_0.settle_date.size = 8

-- Display: Settle Date
currenex_currenexforex_orderservice_cbp_v26_0.settle_date.display = function(value)
  return "Settle Date: "..value
end

-- Dissect: Settle Date
currenex_currenexforex_orderservice_cbp_v26_0.settle_date.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.settle_date.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.settle_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.settle_date, range, value, display)

  return offset + length, value
end

-- Settlement Date
currenex_currenexforex_orderservice_cbp_v26_0.settlement_date = {}

-- Size: Settlement Date
currenex_currenexforex_orderservice_cbp_v26_0.settlement_date.size = 8

-- Display: Settlement Date
currenex_currenexforex_orderservice_cbp_v26_0.settlement_date.display = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
currenex_currenexforex_orderservice_cbp_v26_0.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.settlement_date.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Show Amt
currenex_currenexforex_orderservice_cbp_v26_0.show_amt = {}

-- Size: Show Amt
currenex_currenexforex_orderservice_cbp_v26_0.show_amt.size = 8

-- Display: Show Amt
currenex_currenexforex_orderservice_cbp_v26_0.show_amt.display = function(value)
  return "Show Amt: "..value
end

-- Dissect: Show Amt
currenex_currenexforex_orderservice_cbp_v26_0.show_amt.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.show_amt.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.show_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.show_amt, range, value, display)

  return offset + length, value
end

-- Side
currenex_currenexforex_orderservice_cbp_v26_0.side = {}

-- Size: Side
currenex_currenexforex_orderservice_cbp_v26_0.side.size = 1

-- Display: Side
currenex_currenexforex_orderservice_cbp_v26_0.side.display = function(value)
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
currenex_currenexforex_orderservice_cbp_v26_0.side.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_currenexforex_orderservice_cbp_v26_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.side, range, value, display)

  return offset + length, value
end

-- Soh
currenex_currenexforex_orderservice_cbp_v26_0.soh = {}

-- Size: Soh
currenex_currenexforex_orderservice_cbp_v26_0.soh.size = 1

-- Display: Soh
currenex_currenexforex_orderservice_cbp_v26_0.soh.display = function(value)
  if value == 1 then
    return "Soh: Soh"
  end

  return "Soh: Unknown("..value..")"
end

-- Dissect: Soh
currenex_currenexforex_orderservice_cbp_v26_0.soh.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.soh.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.soh.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.soh, range, value, display)

  return offset + length, value
end

-- Status
currenex_currenexforex_orderservice_cbp_v26_0.status = {}

-- Size: Status
currenex_currenexforex_orderservice_cbp_v26_0.status.size = 1

-- Display: Status
currenex_currenexforex_orderservice_cbp_v26_0.status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Status: No Value"
  end

  if value == "C" then
    return "Status: Confirmed (C)"
  end
  if value == "R" then
    return "Status: Rejected (R)"
  end
  if value == "P" then
    return "Status: Replaced (P)"
  end
  if value == "C" then
    return "Status: Cancelled (C)"
  end
  if value == "E" then
    return "Status: Expired (E)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
currenex_currenexforex_orderservice_cbp_v26_0.status.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_currenexforex_orderservice_cbp_v26_0.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.status, range, value, display)

  return offset + length, value
end

-- Trade Date
currenex_currenexforex_orderservice_cbp_v26_0.trade_date = {}

-- Size: Trade Date
currenex_currenexforex_orderservice_cbp_v26_0.trade_date.size = 8

-- Display: Trade Date
currenex_currenexforex_orderservice_cbp_v26_0.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
currenex_currenexforex_orderservice_cbp_v26_0.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.trade_date.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Link Id
currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id = {}

-- Size: Trade Link Id
currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id.size = 4

-- Display: Trade Link Id
currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id.display = function(value)
  return "Trade Link Id: "..value
end

-- Dissect: Trade Link Id
currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.trade_link_id, range, value, display)

  return offset + length, value
end

-- Transact Time
currenex_currenexforex_orderservice_cbp_v26_0.transact_time = {}

-- Size: Transact Time
currenex_currenexforex_orderservice_cbp_v26_0.transact_time.size = 8

-- Display: Transact Time
currenex_currenexforex_orderservice_cbp_v26_0.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
currenex_currenexforex_orderservice_cbp_v26_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Type
currenex_currenexforex_orderservice_cbp_v26_0.type = {}

-- Size: Type
currenex_currenexforex_orderservice_cbp_v26_0.type.size = 2

-- Display: Type
currenex_currenexforex_orderservice_cbp_v26_0.type.display = function(value)
  if value == 0 then
    return "Type: User (0)"
  end
  if value == 1 then
    return "Type: System (1)"
  end
  if value == 2 then
    return "Type: Below Min (2)"
  end

  return "Type: Unknown("..value..")"
end

-- Dissect: Type
currenex_currenexforex_orderservice_cbp_v26_0.type.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_currenexforex_orderservice_cbp_v26_0.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.type, range, value, display)

  return offset + length, value
end

-- User Id
currenex_currenexforex_orderservice_cbp_v26_0.user_id = {}

-- Size: User Id
currenex_currenexforex_orderservice_cbp_v26_0.user_id.size = 20

-- Display: User Id
currenex_currenexforex_orderservice_cbp_v26_0.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
currenex_currenexforex_orderservice_cbp_v26_0.user_id.dissect = function(buffer, offset, packet, parent)
  local length = currenex_currenexforex_orderservice_cbp_v26_0.user_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_currenexforex_orderservice_cbp_v26_0.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.user_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Currenex CurrenexForex OrderService Cbp 26.0
-----------------------------------------------------------------------

-- Gap Fill
currenex_currenexforex_orderservice_cbp_v26_0.gap_fill = {}

-- Size: Gap Fill
currenex_currenexforex_orderservice_cbp_v26_0.gap_fill.size =
  currenex_currenexforex_orderservice_cbp_v26_0.new_seq_no.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.reason_code.size

-- Display: Gap Fill
currenex_currenexforex_orderservice_cbp_v26_0.gap_fill.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Fill
currenex_currenexforex_orderservice_cbp_v26_0.gap_fill.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Integer
  index, new_seq_no = currenex_currenexforex_orderservice_cbp_v26_0.new_seq_no.dissect(buffer, index, packet, parent)

  -- Reason Code: Alpha
  index, reason_code = currenex_currenexforex_orderservice_cbp_v26_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Fill
currenex_currenexforex_orderservice_cbp_v26_0.gap_fill.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.gap_fill, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.gap_fill.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.gap_fill.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.gap_fill.fields(buffer, offset, packet, parent)
  end
end

-- Resend Request
currenex_currenexforex_orderservice_cbp_v26_0.resend_request = {}

-- Size: Resend Request
currenex_currenexforex_orderservice_cbp_v26_0.resend_request.size =
  currenex_currenexforex_orderservice_cbp_v26_0.begin_seq_no.size

-- Display: Resend Request
currenex_currenexforex_orderservice_cbp_v26_0.resend_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Resend Request
currenex_currenexforex_orderservice_cbp_v26_0.resend_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq No: Integer
  index, begin_seq_no = currenex_currenexforex_orderservice_cbp_v26_0.begin_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Request
currenex_currenexforex_orderservice_cbp_v26_0.resend_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.resend_request, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.resend_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.resend_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.resend_request.fields(buffer, offset, packet, parent)
  end
end

-- Trade Pending
currenex_currenexforex_orderservice_cbp_v26_0.trade_pending = {}

-- Size: Trade Pending
currenex_currenexforex_orderservice_cbp_v26_0.trade_pending.size =
  currenex_currenexforex_orderservice_cbp_v26_0.exec_type.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.settle_date.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.trade_date.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.transact_time.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.size

-- Display: Trade Pending
currenex_currenexforex_orderservice_cbp_v26_0.trade_pending.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Pending
currenex_currenexforex_orderservice_cbp_v26_0.trade_pending.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exec Type: Alpha
  index, exec_type = currenex_currenexforex_orderservice_cbp_v26_0.exec_type.dissect(buffer, index, packet, parent)

  -- Settle Date: Long
  index, settle_date = currenex_currenexforex_orderservice_cbp_v26_0.settle_date.dissect(buffer, index, packet, parent)

  -- Trade Date: Long
  index, trade_date = currenex_currenexforex_orderservice_cbp_v26_0.trade_date.dissect(buffer, index, packet, parent)

  -- Transact Time: Long
  index, transact_time = currenex_currenexforex_orderservice_cbp_v26_0.transact_time.dissect(buffer, index, packet, parent)

  -- Leaves Amt: Long
  index, leaves_amt = currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt.dissect(buffer, index, packet, parent)

  -- Aggressor Flag: Alpha
  index, aggressor_flag = currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Pending
currenex_currenexforex_orderservice_cbp_v26_0.trade_pending.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.trade_pending, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.trade_pending.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.trade_pending.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.trade_pending.fields(buffer, offset, packet, parent)
  end
end

-- Pending Fill Cancel
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill_cancel = {}

-- Size: Pending Fill Cancel
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill_cancel.size =
  currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id.size

-- Display: Pending Fill Cancel
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Fill Cancel
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_currenexforex_orderservice_cbp_v26_0.order_id.dissect(buffer, index, packet, parent)

  -- Trade Link Id: Integer
  index, trade_link_id = currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Fill Cancel
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.pending_fill_cancel, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.pending_fill_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.pending_fill_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.pending_fill_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Pending Fill
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill = {}

-- Size: Pending Fill
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill.size =
  currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.fill_amt.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.fill_rate.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.exec_broker.size

-- Display: Pending Fill
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Fill
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_currenexforex_orderservice_cbp_v26_0.order_id.dissect(buffer, index, packet, parent)

  -- Trade Link Id: Integer
  index, trade_link_id = currenex_currenexforex_orderservice_cbp_v26_0.trade_link_id.dissect(buffer, index, packet, parent)

  -- Fill Amt: Long
  index, fill_amt = currenex_currenexforex_orderservice_cbp_v26_0.fill_amt.dissect(buffer, index, packet, parent)

  -- Fill Rate: Integer
  index, fill_rate = currenex_currenexforex_orderservice_cbp_v26_0.fill_rate.dissect(buffer, index, packet, parent)

  -- Aggressor Flag: Alpha
  index, aggressor_flag = currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.dissect(buffer, index, packet, parent)

  -- Exec Broker: Alpha
  index, exec_broker = currenex_currenexforex_orderservice_cbp_v26_0.exec_broker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Fill
currenex_currenexforex_orderservice_cbp_v26_0.pending_fill.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.pending_fill, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.pending_fill.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.pending_fill.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.pending_fill.fields(buffer, offset, packet, parent)
  end
end

-- Trade
currenex_currenexforex_orderservice_cbp_v26_0.trade = {}

-- Size: Trade
currenex_currenexforex_orderservice_cbp_v26_0.trade.size =
  currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.side.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.fill_amt.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.fill_rate.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.exec_broker.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.execution_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.exec_type.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.settle_date.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.trade_date.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.transact_time.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.size

-- Display: Trade
currenex_currenexforex_orderservice_cbp_v26_0.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
currenex_currenexforex_orderservice_cbp_v26_0.trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_currenexforex_orderservice_cbp_v26_0.order_id.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = currenex_currenexforex_orderservice_cbp_v26_0.side.dissect(buffer, index, packet, parent)

  -- Fill Amt: Long
  index, fill_amt = currenex_currenexforex_orderservice_cbp_v26_0.fill_amt.dissect(buffer, index, packet, parent)

  -- Fill Rate: Integer
  index, fill_rate = currenex_currenexforex_orderservice_cbp_v26_0.fill_rate.dissect(buffer, index, packet, parent)

  -- Exec Broker: Alpha
  index, exec_broker = currenex_currenexforex_orderservice_cbp_v26_0.exec_broker.dissect(buffer, index, packet, parent)

  -- Execution Id: Alpha
  index, execution_id = currenex_currenexforex_orderservice_cbp_v26_0.execution_id.dissect(buffer, index, packet, parent)

  -- Exec Type: Alpha
  index, exec_type = currenex_currenexforex_orderservice_cbp_v26_0.exec_type.dissect(buffer, index, packet, parent)

  -- Settle Date: Long
  index, settle_date = currenex_currenexforex_orderservice_cbp_v26_0.settle_date.dissect(buffer, index, packet, parent)

  -- Trade Date: Long
  index, trade_date = currenex_currenexforex_orderservice_cbp_v26_0.trade_date.dissect(buffer, index, packet, parent)

  -- Transact Time: Long
  index, transact_time = currenex_currenexforex_orderservice_cbp_v26_0.transact_time.dissect(buffer, index, packet, parent)

  -- Leaves Amt: Long
  index, leaves_amt = currenex_currenexforex_orderservice_cbp_v26_0.leaves_amt.dissect(buffer, index, packet, parent)

  -- Aggressor Flag: Alpha
  index, aggressor_flag = currenex_currenexforex_orderservice_cbp_v26_0.aggressor_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade
currenex_currenexforex_orderservice_cbp_v26_0.trade.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.trade, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.trade.fields(buffer, offset, packet, parent)
  end
end

-- Order Canceled Or Expired
currenex_currenexforex_orderservice_cbp_v26_0.order_canceled_or_expired = {}

-- Size: Order Canceled Or Expired
currenex_currenexforex_orderservice_cbp_v26_0.order_canceled_or_expired.size =
  currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.status.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.type.size

-- Display: Order Canceled Or Expired
currenex_currenexforex_orderservice_cbp_v26_0.order_canceled_or_expired.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Or Expired
currenex_currenexforex_orderservice_cbp_v26_0.order_canceled_or_expired.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_currenexforex_orderservice_cbp_v26_0.order_id.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = currenex_currenexforex_orderservice_cbp_v26_0.status.dissect(buffer, index, packet, parent)

  -- Type: Short
  index, type = currenex_currenexforex_orderservice_cbp_v26_0.type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Or Expired
currenex_currenexforex_orderservice_cbp_v26_0.order_canceled_or_expired.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_canceled_or_expired, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.order_canceled_or_expired.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.order_canceled_or_expired.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.order_canceled_or_expired.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Or Cancel Ack
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_ack = {}

-- Size: Order Replace Or Cancel Ack
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_ack.size =
  currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.status.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.error_code.size

-- Display: Order Replace Or Cancel Ack
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Or Cancel Ack
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Cl Order Id: Integer
  index, new_cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.dissect(buffer, index, packet, parent)

  -- Prev Cl Order Id: Integer
  index, prev_cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = currenex_currenexforex_orderservice_cbp_v26_0.status.dissect(buffer, index, packet, parent)

  -- Error Code: Short
  index, error_code = currenex_currenexforex_orderservice_cbp_v26_0.error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Or Cancel Ack
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_ack.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_replace_or_cancel_ack, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_ack.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Or Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_request = {}

-- Size: Order Replace Or Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_request.size =
  currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.orig_cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.order_amt.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.price.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.size

-- Display: Order Replace Or Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Or Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Cl Order Id: Integer
  index, new_cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Order Id: Integer
  index, orig_cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.orig_cl_order_id.dissect(buffer, index, packet, parent)

  -- Order Amt: Long
  index, order_amt = currenex_currenexforex_orderservice_cbp_v26_0.order_amt.dissect(buffer, index, packet, parent)

  -- Price: Rate
  index, price = currenex_currenexforex_orderservice_cbp_v26_0.price.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Or Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_replace_or_cancel_request, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_reject = {}

-- Size: Order Cancel Reject
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_reject.size =
  currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.error_code.size

-- Display: Order Cancel Reject
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Cl Order Id: Integer
  index, new_cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.dissect(buffer, index, packet, parent)

  -- Prev Cl Order Id: Integer
  index, prev_cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.dissect(buffer, index, packet, parent)

  -- Error Code: Short
  index, error_code = currenex_currenexforex_orderservice_cbp_v26_0.error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_cancel_reject, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_reject.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_request = {}

-- Size: Order Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_request.size =
  currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.size

-- Display: Order Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Cl Order Id: Integer
  index, new_cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.new_cl_order_id.dissect(buffer, index, packet, parent)

  -- Prev Cl Order Id: Integer
  index, prev_cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.prev_cl_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request
currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.order_cancel_request, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- New Order Ack
currenex_currenexforex_orderservice_cbp_v26_0.new_order_ack = {}

-- Size: New Order Ack
currenex_currenexforex_orderservice_cbp_v26_0.new_order_ack.size =
  currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.status.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.error_code.size

-- Display: New Order Ack
currenex_currenexforex_orderservice_cbp_v26_0.new_order_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Ack
currenex_currenexforex_orderservice_cbp_v26_0.new_order_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_currenexforex_orderservice_cbp_v26_0.order_id.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = currenex_currenexforex_orderservice_cbp_v26_0.status.dissect(buffer, index, packet, parent)

  -- Error Code: Short
  index, error_code = currenex_currenexforex_orderservice_cbp_v26_0.error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Ack
currenex_currenexforex_orderservice_cbp_v26_0.new_order_ack.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.new_order_ack, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.new_order_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.new_order_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.new_order_ack.fields(buffer, offset, packet, parent)
  end
end

-- New Order Request
currenex_currenexforex_orderservice_cbp_v26_0.new_order_request = {}

-- Size: New Order Request
currenex_currenexforex_orderservice_cbp_v26_0.new_order_request.size =
  currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.order_type.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.side.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.order_amt.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.min_amt.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.price.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.show_amt.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.expire_type.size

-- Display: New Order Request
currenex_currenexforex_orderservice_cbp_v26_0.new_order_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Request
currenex_currenexforex_orderservice_cbp_v26_0.new_order_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_currenexforex_orderservice_cbp_v26_0.cl_order_id.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = currenex_currenexforex_orderservice_cbp_v26_0.order_type.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = currenex_currenexforex_orderservice_cbp_v26_0.side.dissect(buffer, index, packet, parent)

  -- Order Amt: Long
  index, order_amt = currenex_currenexforex_orderservice_cbp_v26_0.order_amt.dissect(buffer, index, packet, parent)

  -- Min Amt: Long
  index, min_amt = currenex_currenexforex_orderservice_cbp_v26_0.min_amt.dissect(buffer, index, packet, parent)

  -- Price: Rate
  index, price = currenex_currenexforex_orderservice_cbp_v26_0.price.dissect(buffer, index, packet, parent)

  -- Show Amt: Long
  index, show_amt = currenex_currenexforex_orderservice_cbp_v26_0.show_amt.dissect(buffer, index, packet, parent)

  -- Expire Type: Alpha
  index, expire_type = currenex_currenexforex_orderservice_cbp_v26_0.expire_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Request
currenex_currenexforex_orderservice_cbp_v26_0.new_order_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.new_order_request, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.new_order_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.new_order_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.new_order_request.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Info
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info = {}

-- Size: Instrument Info
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info.size =
  currenex_currenexforex_orderservice_cbp_v26_0.session_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.instrument_type.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.instrument_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.settlement_date.size

-- Display: Instrument Info
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_currenexforex_orderservice_cbp_v26_0.session_id.dissect(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_currenexforex_orderservice_cbp_v26_0.instrument_index.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = currenex_currenexforex_orderservice_cbp_v26_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = currenex_currenexforex_orderservice_cbp_v26_0.instrument_id.dissect(buffer, index, packet, parent)

  -- Settlement Date: Long
  index, settlement_date = currenex_currenexforex_orderservice_cbp_v26_0.settlement_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_info, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.instrument_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.instrument_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.instrument_info.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Info Request
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info_request = {}

-- Size: Instrument Info Request
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info_request.size =
  currenex_currenexforex_orderservice_cbp_v26_0.session_id.size

-- Display: Instrument Info Request
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Request
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_currenexforex_orderservice_cbp_v26_0.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Request
currenex_currenexforex_orderservice_cbp_v26_0.instrument_info_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.instrument_info_request, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.instrument_info_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.instrument_info_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.instrument_info_request.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat
currenex_currenexforex_orderservice_cbp_v26_0.heartbeat = {}

-- Size: Heartbeat
currenex_currenexforex_orderservice_cbp_v26_0.heartbeat.size =
  currenex_currenexforex_orderservice_cbp_v26_0.session_id.size

-- Display: Heartbeat
currenex_currenexforex_orderservice_cbp_v26_0.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
currenex_currenexforex_orderservice_cbp_v26_0.heartbeat.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_currenexforex_orderservice_cbp_v26_0.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
currenex_currenexforex_orderservice_cbp_v26_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.heartbeat, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.heartbeat.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.heartbeat.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.heartbeat.fields(buffer, offset, packet, parent)
  end
end

-- Logout
currenex_currenexforex_orderservice_cbp_v26_0.logout = {}

-- Size: Logout
currenex_currenexforex_orderservice_cbp_v26_0.logout.size =
  currenex_currenexforex_orderservice_cbp_v26_0.user_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.session_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.reason.size

-- Display: Logout
currenex_currenexforex_orderservice_cbp_v26_0.logout.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout
currenex_currenexforex_orderservice_cbp_v26_0.logout.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_currenexforex_orderservice_cbp_v26_0.user_id.dissect(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_currenexforex_orderservice_cbp_v26_0.session_id.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = currenex_currenexforex_orderservice_cbp_v26_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout
currenex_currenexforex_orderservice_cbp_v26_0.logout.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.logout, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.logout.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.logout.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.logout.fields(buffer, offset, packet, parent)
  end
end

-- Logon
currenex_currenexforex_orderservice_cbp_v26_0.logon = {}

-- Size: Logon
currenex_currenexforex_orderservice_cbp_v26_0.logon.size =
  currenex_currenexforex_orderservice_cbp_v26_0.user_id.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.password.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.session_id.size

-- Display: Logon
currenex_currenexforex_orderservice_cbp_v26_0.logon.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon
currenex_currenexforex_orderservice_cbp_v26_0.logon.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_currenexforex_orderservice_cbp_v26_0.user_id.dissect(buffer, index, packet, parent)

  -- Password: Alpha
  index, password = currenex_currenexforex_orderservice_cbp_v26_0.password.dissect(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_currenexforex_orderservice_cbp_v26_0.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon
currenex_currenexforex_orderservice_cbp_v26_0.logon.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.logon, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.logon.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.logon.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.logon.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
currenex_currenexforex_orderservice_cbp_v26_0.message_body = {}

-- Dissect: Message Body
currenex_currenexforex_orderservice_cbp_v26_0.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon
  if message_type == "A" then
    return currenex_currenexforex_orderservice_cbp_v26_0.logon.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout
  if message_type == "B" then
    return currenex_currenexforex_orderservice_cbp_v26_0.logout.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if message_type == "C" then
    return currenex_currenexforex_orderservice_cbp_v26_0.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Request
  if message_type == "E" then
    return currenex_currenexforex_orderservice_cbp_v26_0.instrument_info_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info
  if message_type == "D" then
    return currenex_currenexforex_orderservice_cbp_v26_0.instrument_info.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Request
  if message_type == "L" then
    return currenex_currenexforex_orderservice_cbp_v26_0.new_order_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Ack
  if message_type == "M" then
    return currenex_currenexforex_orderservice_cbp_v26_0.new_order_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request
  if message_type == "N" then
    return currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject
  if message_type == "O" then
    return currenex_currenexforex_orderservice_cbp_v26_0.order_cancel_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Or Cancel Request
  if message_type == "P" then
    return currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Or Cancel Ack
  if message_type == "Q" then
    return currenex_currenexforex_orderservice_cbp_v26_0.order_replace_or_cancel_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Or Expired
  if message_type == "R" then
    return currenex_currenexforex_orderservice_cbp_v26_0.order_canceled_or_expired.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade
  if message_type == "T" then
    return currenex_currenexforex_orderservice_cbp_v26_0.trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pending Fill
  if message_type == "U" then
    return currenex_currenexforex_orderservice_cbp_v26_0.pending_fill.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pending Fill Cancel
  if message_type == "V" then
    return currenex_currenexforex_orderservice_cbp_v26_0.pending_fill_cancel.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Pending
  if message_type == "t" then
    return currenex_currenexforex_orderservice_cbp_v26_0.trade_pending.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Resend Request
  if message_type == "2" then
    return currenex_currenexforex_orderservice_cbp_v26_0.resend_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Fill
  if message_type == "4" then
    return currenex_currenexforex_orderservice_cbp_v26_0.gap_fill.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
currenex_currenexforex_orderservice_cbp_v26_0.message_header = {}

-- Size: Message Header
currenex_currenexforex_orderservice_cbp_v26_0.message_header.size =
  currenex_currenexforex_orderservice_cbp_v26_0.sequence_number.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.sequence_number.size + 
  currenex_currenexforex_orderservice_cbp_v26_0.message_type.size

-- Display: Message Header
currenex_currenexforex_orderservice_cbp_v26_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
currenex_currenexforex_orderservice_cbp_v26_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_currenexforex_orderservice_cbp_v26_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_currenexforex_orderservice_cbp_v26_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 18 values
  index, message_type = currenex_currenexforex_orderservice_cbp_v26_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
currenex_currenexforex_orderservice_cbp_v26_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0.fields.message_header, buffer(offset, 0))
    local index = currenex_currenexforex_orderservice_cbp_v26_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_currenexforex_orderservice_cbp_v26_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return currenex_currenexforex_orderservice_cbp_v26_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
currenex_currenexforex_orderservice_cbp_v26_0.packet = {}

-- Dissect Packet
currenex_currenexforex_orderservice_cbp_v26_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Soh: 1 Byte Fixed Width Integer Static
    index, soh = currenex_currenexforex_orderservice_cbp_v26_0.soh.dissect(buffer, index, packet, parent)

    -- Message Header: Struct of 3 fields
    index, message_header = currenex_currenexforex_orderservice_cbp_v26_0.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 1, 1):string()

    -- Message Body: Runtime Type with 18 branches
    index = currenex_currenexforex_orderservice_cbp_v26_0.message_body.dissect(buffer, index, packet, parent, message_type)

    -- Etx: 1 Byte Fixed Width Integer
    index, etx = currenex_currenexforex_orderservice_cbp_v26_0.etx.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_currenex_currenexforex_orderservice_cbp_v26_0.init()
end

-- Dissector for Currenex CurrenexForex OrderService Cbp 26.0
function omi_currenex_currenexforex_orderservice_cbp_v26_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_currenex_currenexforex_orderservice_cbp_v26_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_currenex_currenexforex_orderservice_cbp_v26_0, buffer(), omi_currenex_currenexforex_orderservice_cbp_v26_0.description, "("..buffer:len().." Bytes)")
  return currenex_currenexforex_orderservice_cbp_v26_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_currenex_currenexforex_orderservice_cbp_v26_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Tcp packet
currenex_currenexforex_orderservice_cbp_v26_0.packet.requiredsize = function(buffer)

  return true
end

-- Verify Soh Field
currenex_currenexforex_orderservice_cbp_v26_0.soh.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Currenex CurrenexForex OrderService Cbp 26.0 (Tcp)
local function omi_currenex_currenexforex_orderservice_cbp_v26_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not currenex_currenexforex_orderservice_cbp_v26_0.packet.requiredsize(buffer) then return false end

  -- Verify Soh
  if not currenex_currenexforex_orderservice_cbp_v26_0.soh.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_currenex_currenexforex_orderservice_cbp_v26_0
  omi_currenex_currenexforex_orderservice_cbp_v26_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Currenex CurrenexForex OrderService Cbp 26.0
omi_currenex_currenexforex_orderservice_cbp_v26_0:register_heuristic("tcp", omi_currenex_currenexforex_orderservice_cbp_v26_0_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Currenex
--   Version: 26.0
--   Date: Saturday, April 6, 2024
--   Specification: OUCH-Spec.pdf
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
