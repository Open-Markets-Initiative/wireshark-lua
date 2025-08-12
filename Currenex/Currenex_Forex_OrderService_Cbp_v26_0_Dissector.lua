-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Currenex Forex OrderService Cbp 26.0 Protocol
local currenex_forex_orderservice_cbp_v26_0 = Proto("Currenex.Forex.OrderService.Cbp.v26.0.Lua", "Currenex Forex OrderService Cbp 26.0")

-- Component Tables
local show = {}
local format = {}
local currenex_forex_orderservice_cbp_v26_0_display = {}
local currenex_forex_orderservice_cbp_v26_0_dissect = {}
local currenex_forex_orderservice_cbp_v26_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Currenex Forex OrderService Cbp 26.0 Fields
currenex_forex_orderservice_cbp_v26_0.fields.aggressor_flag = ProtoField.new("Aggressor Flag", "currenex.forex.orderservice.cbp.v26.0.aggressorflag", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.begin_seq_no = ProtoField.new("Begin Seq No", "currenex.forex.orderservice.cbp.v26.0.beginseqno", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.cl_order_id = ProtoField.new("Cl Order Id", "currenex.forex.orderservice.cbp.v26.0.clorderid", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.error_code = ProtoField.new("Error Code", "currenex.forex.orderservice.cbp.v26.0.errorcode", ftypes.INT16)
currenex_forex_orderservice_cbp_v26_0.fields.exec_broker = ProtoField.new("Exec Broker", "currenex.forex.orderservice.cbp.v26.0.execbroker", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.exec_type = ProtoField.new("Exec Type", "currenex.forex.orderservice.cbp.v26.0.exectype", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.execution_id = ProtoField.new("Execution Id", "currenex.forex.orderservice.cbp.v26.0.executionid", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.expire_type = ProtoField.new("Expire Type", "currenex.forex.orderservice.cbp.v26.0.expiretype", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.fill_amt = ProtoField.new("Fill Amt", "currenex.forex.orderservice.cbp.v26.0.fillamt", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.fill_rate = ProtoField.new("Fill Rate", "currenex.forex.orderservice.cbp.v26.0.fillrate", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.gap_fill = ProtoField.new("Gap Fill", "currenex.forex.orderservice.cbp.v26.0.gapfill", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.heartbeat = ProtoField.new("Heartbeat", "currenex.forex.orderservice.cbp.v26.0.heartbeat", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.instrument_id = ProtoField.new("Instrument Id", "currenex.forex.orderservice.cbp.v26.0.instrumentid", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.instrument_index = ProtoField.new("Instrument Index", "currenex.forex.orderservice.cbp.v26.0.instrumentindex", ftypes.INT16)
currenex_forex_orderservice_cbp_v26_0.fields.instrument_info = ProtoField.new("Instrument Info", "currenex.forex.orderservice.cbp.v26.0.instrumentinfo", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.instrument_info_request = ProtoField.new("Instrument Info Request", "currenex.forex.orderservice.cbp.v26.0.instrumentinforequest", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.instrument_type = ProtoField.new("Instrument Type", "currenex.forex.orderservice.cbp.v26.0.instrumenttype", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.itch_etx = ProtoField.new("Itch Etx", "currenex.forex.orderservice.cbp.v26.0.itchetx", ftypes.INT8)
currenex_forex_orderservice_cbp_v26_0.fields.itch_soh = ProtoField.new("Itch Soh", "currenex.forex.orderservice.cbp.v26.0.itchsoh", ftypes.INT8)
currenex_forex_orderservice_cbp_v26_0.fields.leaves_amt = ProtoField.new("Leaves Amt", "currenex.forex.orderservice.cbp.v26.0.leavesamt", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.logon = ProtoField.new("Logon", "currenex.forex.orderservice.cbp.v26.0.logon", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.logout = ProtoField.new("Logout", "currenex.forex.orderservice.cbp.v26.0.logout", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.message_body = ProtoField.new("Message Body", "currenex.forex.orderservice.cbp.v26.0.messagebody", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.message_header = ProtoField.new("Message Header", "currenex.forex.orderservice.cbp.v26.0.messageheader", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.message_type = ProtoField.new("Message Type", "currenex.forex.orderservice.cbp.v26.0.messagetype", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.min_amt = ProtoField.new("Min Amt", "currenex.forex.orderservice.cbp.v26.0.minamt", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.new_cl_order_id = ProtoField.new("New Cl Order Id", "currenex.forex.orderservice.cbp.v26.0.newclorderid", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.new_order_ack = ProtoField.new("New Order Ack", "currenex.forex.orderservice.cbp.v26.0.neworderack", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.new_order_request = ProtoField.new("New Order Request", "currenex.forex.orderservice.cbp.v26.0.neworderrequest", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.new_seq_no = ProtoField.new("New Seq No", "currenex.forex.orderservice.cbp.v26.0.newseqno", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.order_amt = ProtoField.new("Order Amt", "currenex.forex.orderservice.cbp.v26.0.orderamt", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.order_cancel_reject = ProtoField.new("Order Cancel Reject", "currenex.forex.orderservice.cbp.v26.0.ordercancelreject", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.order_cancel_request = ProtoField.new("Order Cancel Request", "currenex.forex.orderservice.cbp.v26.0.ordercancelrequest", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.order_canceled_or_expired = ProtoField.new("Order Canceled Or Expired", "currenex.forex.orderservice.cbp.v26.0.ordercanceledorexpired", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.order_id = ProtoField.new("Order Id", "currenex.forex.orderservice.cbp.v26.0.orderid", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.order_replace_or_cancel_ack = ProtoField.new("Order Replace Or Cancel Ack", "currenex.forex.orderservice.cbp.v26.0.orderreplaceorcancelack", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.order_replace_or_cancel_request = ProtoField.new("Order Replace Or Cancel Request", "currenex.forex.orderservice.cbp.v26.0.orderreplaceorcancelrequest", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.order_type = ProtoField.new("Order Type", "currenex.forex.orderservice.cbp.v26.0.ordertype", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.orig_cl_order_id = ProtoField.new("Orig Cl Order Id", "currenex.forex.orderservice.cbp.v26.0.origclorderid", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.packet = ProtoField.new("Packet", "currenex.forex.orderservice.cbp.v26.0.packet", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.password = ProtoField.new("Password", "currenex.forex.orderservice.cbp.v26.0.password", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.pending_fill = ProtoField.new("Pending Fill", "currenex.forex.orderservice.cbp.v26.0.pendingfill", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.pending_fill_cancel = ProtoField.new("Pending Fill Cancel", "currenex.forex.orderservice.cbp.v26.0.pendingfillcancel", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.prev_cl_order_id = ProtoField.new("Prev Cl Order Id", "currenex.forex.orderservice.cbp.v26.0.prevclorderid", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.price = ProtoField.new("Price", "currenex.forex.orderservice.cbp.v26.0.price", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.reason = ProtoField.new("Reason", "currenex.forex.orderservice.cbp.v26.0.reason", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.reason_code = ProtoField.new("Reason Code", "currenex.forex.orderservice.cbp.v26.0.reasoncode", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.resend_request = ProtoField.new("Resend Request", "currenex.forex.orderservice.cbp.v26.0.resendrequest", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.sequence_number = ProtoField.new("Sequence Number", "currenex.forex.orderservice.cbp.v26.0.sequencenumber", ftypes.UINT32)
currenex_forex_orderservice_cbp_v26_0.fields.session_id = ProtoField.new("Session Id", "currenex.forex.orderservice.cbp.v26.0.sessionid", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.settle_date = ProtoField.new("Settle Date", "currenex.forex.orderservice.cbp.v26.0.settledate", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.settlement_date = ProtoField.new("Settlement Date", "currenex.forex.orderservice.cbp.v26.0.settlementdate", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.show_amt = ProtoField.new("Show Amt", "currenex.forex.orderservice.cbp.v26.0.showamt", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.side = ProtoField.new("Side", "currenex.forex.orderservice.cbp.v26.0.side", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.status = ProtoField.new("Status", "currenex.forex.orderservice.cbp.v26.0.status", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.trade = ProtoField.new("Trade", "currenex.forex.orderservice.cbp.v26.0.trade", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.trade_date = ProtoField.new("Trade Date", "currenex.forex.orderservice.cbp.v26.0.tradedate", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.trade_link_id = ProtoField.new("Trade Link Id", "currenex.forex.orderservice.cbp.v26.0.tradelinkid", ftypes.INT32)
currenex_forex_orderservice_cbp_v26_0.fields.trade_pending = ProtoField.new("Trade Pending", "currenex.forex.orderservice.cbp.v26.0.tradepending", ftypes.STRING)
currenex_forex_orderservice_cbp_v26_0.fields.transact_time = ProtoField.new("Transact Time", "currenex.forex.orderservice.cbp.v26.0.transacttime", ftypes.INT64)
currenex_forex_orderservice_cbp_v26_0.fields.type = ProtoField.new("Type", "currenex.forex.orderservice.cbp.v26.0.type", ftypes.INT16)
currenex_forex_orderservice_cbp_v26_0.fields.user_id = ProtoField.new("User Id", "currenex.forex.orderservice.cbp.v26.0.userid", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Currenex Forex OrderService Cbp 26.0 Element Dissection Options
show.gap_fill = true
show.heartbeat = true
show.instrument_info = true
show.instrument_info_request = true
show.logon = true
show.logout = true
show.message_header = true
show.new_order_ack = true
show.new_order_request = true
show.order_cancel_reject = true
show.order_cancel_request = true
show.order_canceled_or_expired = true
show.order_replace_or_cancel_ack = true
show.order_replace_or_cancel_request = true
show.packet = true
show.pending_fill = true
show.pending_fill_cancel = true
show.resend_request = true
show.trade = true
show.trade_pending = true
show.message_body = false

-- Register Currenex Forex OrderService Cbp 26.0 Show Options
currenex_forex_orderservice_cbp_v26_0.prefs.show_gap_fill = Pref.bool("Show Gap Fill", show.gap_fill, "Parse and add Gap Fill to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_instrument_info = Pref.bool("Show Instrument Info", show.instrument_info, "Parse and add Instrument Info to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_instrument_info_request = Pref.bool("Show Instrument Info Request", show.instrument_info_request, "Parse and add Instrument Info Request to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_logon = Pref.bool("Show Logon", show.logon, "Parse and add Logon to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_logout = Pref.bool("Show Logout", show.logout, "Parse and add Logout to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_new_order_ack = Pref.bool("Show New Order Ack", show.new_order_ack, "Parse and add New Order Ack to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_new_order_request = Pref.bool("Show New Order Request", show.new_order_request, "Parse and add New Order Request to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_order_cancel_reject = Pref.bool("Show Order Cancel Reject", show.order_cancel_reject, "Parse and add Order Cancel Reject to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_order_cancel_request = Pref.bool("Show Order Cancel Request", show.order_cancel_request, "Parse and add Order Cancel Request to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_order_canceled_or_expired = Pref.bool("Show Order Canceled Or Expired", show.order_canceled_or_expired, "Parse and add Order Canceled Or Expired to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_order_replace_or_cancel_ack = Pref.bool("Show Order Replace Or Cancel Ack", show.order_replace_or_cancel_ack, "Parse and add Order Replace Or Cancel Ack to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_order_replace_or_cancel_request = Pref.bool("Show Order Replace Or Cancel Request", show.order_replace_or_cancel_request, "Parse and add Order Replace Or Cancel Request to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_pending_fill = Pref.bool("Show Pending Fill", show.pending_fill, "Parse and add Pending Fill to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_pending_fill_cancel = Pref.bool("Show Pending Fill Cancel", show.pending_fill_cancel, "Parse and add Pending Fill Cancel to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_resend_request = Pref.bool("Show Resend Request", show.resend_request, "Parse and add Resend Request to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_trade_pending = Pref.bool("Show Trade Pending", show.trade_pending, "Parse and add Trade Pending to protocol tree")
currenex_forex_orderservice_cbp_v26_0.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function currenex_forex_orderservice_cbp_v26_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.gap_fill ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_gap_fill then
    show.gap_fill = currenex_forex_orderservice_cbp_v26_0.prefs.show_gap_fill
    changed = true
  end
  if show.heartbeat ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_heartbeat then
    show.heartbeat = currenex_forex_orderservice_cbp_v26_0.prefs.show_heartbeat
    changed = true
  end
  if show.instrument_info ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_instrument_info then
    show.instrument_info = currenex_forex_orderservice_cbp_v26_0.prefs.show_instrument_info
    changed = true
  end
  if show.instrument_info_request ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_instrument_info_request then
    show.instrument_info_request = currenex_forex_orderservice_cbp_v26_0.prefs.show_instrument_info_request
    changed = true
  end
  if show.logon ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_logon then
    show.logon = currenex_forex_orderservice_cbp_v26_0.prefs.show_logon
    changed = true
  end
  if show.logout ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_logout then
    show.logout = currenex_forex_orderservice_cbp_v26_0.prefs.show_logout
    changed = true
  end
  if show.message_header ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_message_header then
    show.message_header = currenex_forex_orderservice_cbp_v26_0.prefs.show_message_header
    changed = true
  end
  if show.new_order_ack ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_new_order_ack then
    show.new_order_ack = currenex_forex_orderservice_cbp_v26_0.prefs.show_new_order_ack
    changed = true
  end
  if show.new_order_request ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_new_order_request then
    show.new_order_request = currenex_forex_orderservice_cbp_v26_0.prefs.show_new_order_request
    changed = true
  end
  if show.order_cancel_reject ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_order_cancel_reject then
    show.order_cancel_reject = currenex_forex_orderservice_cbp_v26_0.prefs.show_order_cancel_reject
    changed = true
  end
  if show.order_cancel_request ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_order_cancel_request then
    show.order_cancel_request = currenex_forex_orderservice_cbp_v26_0.prefs.show_order_cancel_request
    changed = true
  end
  if show.order_canceled_or_expired ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_order_canceled_or_expired then
    show.order_canceled_or_expired = currenex_forex_orderservice_cbp_v26_0.prefs.show_order_canceled_or_expired
    changed = true
  end
  if show.order_replace_or_cancel_ack ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_order_replace_or_cancel_ack then
    show.order_replace_or_cancel_ack = currenex_forex_orderservice_cbp_v26_0.prefs.show_order_replace_or_cancel_ack
    changed = true
  end
  if show.order_replace_or_cancel_request ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_order_replace_or_cancel_request then
    show.order_replace_or_cancel_request = currenex_forex_orderservice_cbp_v26_0.prefs.show_order_replace_or_cancel_request
    changed = true
  end
  if show.packet ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_packet then
    show.packet = currenex_forex_orderservice_cbp_v26_0.prefs.show_packet
    changed = true
  end
  if show.pending_fill ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_pending_fill then
    show.pending_fill = currenex_forex_orderservice_cbp_v26_0.prefs.show_pending_fill
    changed = true
  end
  if show.pending_fill_cancel ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_pending_fill_cancel then
    show.pending_fill_cancel = currenex_forex_orderservice_cbp_v26_0.prefs.show_pending_fill_cancel
    changed = true
  end
  if show.resend_request ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_resend_request then
    show.resend_request = currenex_forex_orderservice_cbp_v26_0.prefs.show_resend_request
    changed = true
  end
  if show.trade ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_trade then
    show.trade = currenex_forex_orderservice_cbp_v26_0.prefs.show_trade
    changed = true
  end
  if show.trade_pending ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_trade_pending then
    show.trade_pending = currenex_forex_orderservice_cbp_v26_0.prefs.show_trade_pending
    changed = true
  end
  if show.message_body ~= currenex_forex_orderservice_cbp_v26_0.prefs.show_message_body then
    show.message_body = currenex_forex_orderservice_cbp_v26_0.prefs.show_message_body
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
-- Dissect Currenex Forex OrderService Cbp 26.0
-----------------------------------------------------------------------

-- Size: Itch Etx
currenex_forex_orderservice_cbp_v26_0_size_of.itch_etx = 1

-- Display: Itch Etx
currenex_forex_orderservice_cbp_v26_0_display.itch_etx = function(value)
  return "Itch Etx: "..value
end

-- Dissect: Itch Etx
currenex_forex_orderservice_cbp_v26_0_dissect.itch_etx = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.itch_etx
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.itch_etx(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.itch_etx, range, value, display)

  return offset + length, value
end

-- Size: Reason Code
currenex_forex_orderservice_cbp_v26_0_size_of.reason_code = 1

-- Display: Reason Code
currenex_forex_orderservice_cbp_v26_0_display.reason_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason Code: No Value"
  end

  return "Reason Code: "..value
end

-- Dissect: Reason Code
currenex_forex_orderservice_cbp_v26_0_dissect.reason_code = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.reason_code
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_orderservice_cbp_v26_0_display.reason_code(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Size: New Seq No
currenex_forex_orderservice_cbp_v26_0_size_of.new_seq_no = 4

-- Display: New Seq No
currenex_forex_orderservice_cbp_v26_0_display.new_seq_no = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
currenex_forex_orderservice_cbp_v26_0_dissect.new_seq_no = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.new_seq_no
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.new_seq_no(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Calculate size of: Gap Fill
currenex_forex_orderservice_cbp_v26_0_size_of.gap_fill = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.new_seq_no

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.reason_code

  return index
end

-- Display: Gap Fill
currenex_forex_orderservice_cbp_v26_0_display.gap_fill = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Fill
currenex_forex_orderservice_cbp_v26_0_dissect.gap_fill_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Integer
  index, new_seq_no = currenex_forex_orderservice_cbp_v26_0_dissect.new_seq_no(buffer, index, packet, parent)

  -- Reason Code: Alpha
  index, reason_code = currenex_forex_orderservice_cbp_v26_0_dissect.reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Fill
currenex_forex_orderservice_cbp_v26_0_dissect.gap_fill = function(buffer, offset, packet, parent)
  if show.gap_fill then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.gap_fill, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.gap_fill_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.gap_fill(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.gap_fill_fields(buffer, offset, packet, parent)
  end
end

-- Size: Begin Seq No
currenex_forex_orderservice_cbp_v26_0_size_of.begin_seq_no = 4

-- Display: Begin Seq No
currenex_forex_orderservice_cbp_v26_0_display.begin_seq_no = function(value)
  return "Begin Seq No: "..value
end

-- Dissect: Begin Seq No
currenex_forex_orderservice_cbp_v26_0_dissect.begin_seq_no = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.begin_seq_no
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.begin_seq_no(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.begin_seq_no, range, value, display)

  return offset + length, value
end

-- Calculate size of: Resend Request
currenex_forex_orderservice_cbp_v26_0_size_of.resend_request = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.begin_seq_no

  return index
end

-- Display: Resend Request
currenex_forex_orderservice_cbp_v26_0_display.resend_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Resend Request
currenex_forex_orderservice_cbp_v26_0_dissect.resend_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq No: Integer
  index, begin_seq_no = currenex_forex_orderservice_cbp_v26_0_dissect.begin_seq_no(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Request
currenex_forex_orderservice_cbp_v26_0_dissect.resend_request = function(buffer, offset, packet, parent)
  if show.resend_request then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.resend_request, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.resend_request_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.resend_request(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.resend_request_fields(buffer, offset, packet, parent)
  end
end

-- Size: Aggressor Flag
currenex_forex_orderservice_cbp_v26_0_size_of.aggressor_flag = 1

-- Display: Aggressor Flag
currenex_forex_orderservice_cbp_v26_0_display.aggressor_flag = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Aggressor Flag: No Value"
  end

  return "Aggressor Flag: "..value
end

-- Dissect: Aggressor Flag
currenex_forex_orderservice_cbp_v26_0_dissect.aggressor_flag = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.aggressor_flag
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_orderservice_cbp_v26_0_display.aggressor_flag(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.aggressor_flag, range, value, display)

  return offset + length, value
end

-- Size: Leaves Amt
currenex_forex_orderservice_cbp_v26_0_size_of.leaves_amt = 8

-- Display: Leaves Amt
currenex_forex_orderservice_cbp_v26_0_display.leaves_amt = function(value)
  return "Leaves Amt: "..value
end

-- Dissect: Leaves Amt
currenex_forex_orderservice_cbp_v26_0_dissect.leaves_amt = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.leaves_amt
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.leaves_amt(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.leaves_amt, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
currenex_forex_orderservice_cbp_v26_0_size_of.transact_time = 8

-- Display: Transact Time
currenex_forex_orderservice_cbp_v26_0_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
currenex_forex_orderservice_cbp_v26_0_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
currenex_forex_orderservice_cbp_v26_0_size_of.trade_date = 8

-- Display: Trade Date
currenex_forex_orderservice_cbp_v26_0_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
currenex_forex_orderservice_cbp_v26_0_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Settle Date
currenex_forex_orderservice_cbp_v26_0_size_of.settle_date = 8

-- Display: Settle Date
currenex_forex_orderservice_cbp_v26_0_display.settle_date = function(value)
  return "Settle Date: "..value
end

-- Dissect: Settle Date
currenex_forex_orderservice_cbp_v26_0_dissect.settle_date = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.settle_date
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.settle_date(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.settle_date, range, value, display)

  return offset + length, value
end

-- Size: Exec Type
currenex_forex_orderservice_cbp_v26_0_size_of.exec_type = 1

-- Display: Exec Type
currenex_forex_orderservice_cbp_v26_0_display.exec_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exec Type: No Value"
  end

  return "Exec Type: "..value
end

-- Dissect: Exec Type
currenex_forex_orderservice_cbp_v26_0_dissect.exec_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.exec_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_orderservice_cbp_v26_0_display.exec_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Pending
currenex_forex_orderservice_cbp_v26_0_size_of.trade_pending = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.exec_type

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.settle_date

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.trade_date

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.transact_time

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.leaves_amt

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.aggressor_flag

  return index
end

-- Display: Trade Pending
currenex_forex_orderservice_cbp_v26_0_display.trade_pending = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Pending
currenex_forex_orderservice_cbp_v26_0_dissect.trade_pending_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exec Type: Alpha
  index, exec_type = currenex_forex_orderservice_cbp_v26_0_dissect.exec_type(buffer, index, packet, parent)

  -- Settle Date: Long
  index, settle_date = currenex_forex_orderservice_cbp_v26_0_dissect.settle_date(buffer, index, packet, parent)

  -- Trade Date: Long
  index, trade_date = currenex_forex_orderservice_cbp_v26_0_dissect.trade_date(buffer, index, packet, parent)

  -- Transact Time: Long
  index, transact_time = currenex_forex_orderservice_cbp_v26_0_dissect.transact_time(buffer, index, packet, parent)

  -- Leaves Amt: Long
  index, leaves_amt = currenex_forex_orderservice_cbp_v26_0_dissect.leaves_amt(buffer, index, packet, parent)

  -- Aggressor Flag: Alpha
  index, aggressor_flag = currenex_forex_orderservice_cbp_v26_0_dissect.aggressor_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Pending
currenex_forex_orderservice_cbp_v26_0_dissect.trade_pending = function(buffer, offset, packet, parent)
  if show.trade_pending then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.trade_pending, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.trade_pending_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.trade_pending(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.trade_pending_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Link Id
currenex_forex_orderservice_cbp_v26_0_size_of.trade_link_id = 4

-- Display: Trade Link Id
currenex_forex_orderservice_cbp_v26_0_display.trade_link_id = function(value)
  return "Trade Link Id: "..value
end

-- Dissect: Trade Link Id
currenex_forex_orderservice_cbp_v26_0_dissect.trade_link_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.trade_link_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.trade_link_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.trade_link_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
currenex_forex_orderservice_cbp_v26_0_size_of.order_id = 8

-- Display: Order Id
currenex_forex_orderservice_cbp_v26_0_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
currenex_forex_orderservice_cbp_v26_0_dissect.order_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.order_id
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.order_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Cl Order Id
currenex_forex_orderservice_cbp_v26_0_size_of.cl_order_id = 4

-- Display: Cl Order Id
currenex_forex_orderservice_cbp_v26_0_display.cl_order_id = function(value)
  return "Cl Order Id: "..value
end

-- Dissect: Cl Order Id
currenex_forex_orderservice_cbp_v26_0_dissect.cl_order_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.cl_order_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.cl_order_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.cl_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Pending Fill Cancel
currenex_forex_orderservice_cbp_v26_0_size_of.pending_fill_cancel = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.trade_link_id

  return index
end

-- Display: Pending Fill Cancel
currenex_forex_orderservice_cbp_v26_0_display.pending_fill_cancel = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Fill Cancel
currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill_cancel_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.cl_order_id(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_forex_orderservice_cbp_v26_0_dissect.order_id(buffer, index, packet, parent)

  -- Trade Link Id: Integer
  index, trade_link_id = currenex_forex_orderservice_cbp_v26_0_dissect.trade_link_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Fill Cancel
currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill_cancel = function(buffer, offset, packet, parent)
  if show.pending_fill_cancel then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.pending_fill_cancel, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill_cancel_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.pending_fill_cancel(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill_cancel_fields(buffer, offset, packet, parent)
  end
end

-- Size: Exec Broker
currenex_forex_orderservice_cbp_v26_0_size_of.exec_broker = 4

-- Display: Exec Broker
currenex_forex_orderservice_cbp_v26_0_display.exec_broker = function(value)
  return "Exec Broker: "..value
end

-- Dissect: Exec Broker
currenex_forex_orderservice_cbp_v26_0_dissect.exec_broker = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.exec_broker
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_orderservice_cbp_v26_0_display.exec_broker(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.exec_broker, range, value, display)

  return offset + length, value
end

-- Size: Fill Rate
currenex_forex_orderservice_cbp_v26_0_size_of.fill_rate = 4

-- Display: Fill Rate
currenex_forex_orderservice_cbp_v26_0_display.fill_rate = function(value)
  return "Fill Rate: "..value
end

-- Dissect: Fill Rate
currenex_forex_orderservice_cbp_v26_0_dissect.fill_rate = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.fill_rate
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.fill_rate(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.fill_rate, range, value, display)

  return offset + length, value
end

-- Size: Fill Amt
currenex_forex_orderservice_cbp_v26_0_size_of.fill_amt = 8

-- Display: Fill Amt
currenex_forex_orderservice_cbp_v26_0_display.fill_amt = function(value)
  return "Fill Amt: "..value
end

-- Dissect: Fill Amt
currenex_forex_orderservice_cbp_v26_0_dissect.fill_amt = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.fill_amt
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.fill_amt(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.fill_amt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Pending Fill
currenex_forex_orderservice_cbp_v26_0_size_of.pending_fill = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.trade_link_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.fill_amt

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.fill_rate

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.aggressor_flag

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.exec_broker

  return index
end

-- Display: Pending Fill
currenex_forex_orderservice_cbp_v26_0_display.pending_fill = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pending Fill
currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.cl_order_id(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_forex_orderservice_cbp_v26_0_dissect.order_id(buffer, index, packet, parent)

  -- Trade Link Id: Integer
  index, trade_link_id = currenex_forex_orderservice_cbp_v26_0_dissect.trade_link_id(buffer, index, packet, parent)

  -- Fill Amt: Long
  index, fill_amt = currenex_forex_orderservice_cbp_v26_0_dissect.fill_amt(buffer, index, packet, parent)

  -- Fill Rate: Integer
  index, fill_rate = currenex_forex_orderservice_cbp_v26_0_dissect.fill_rate(buffer, index, packet, parent)

  -- Aggressor Flag: Alpha
  index, aggressor_flag = currenex_forex_orderservice_cbp_v26_0_dissect.aggressor_flag(buffer, index, packet, parent)

  -- Exec Broker: Alpha
  index, exec_broker = currenex_forex_orderservice_cbp_v26_0_dissect.exec_broker(buffer, index, packet, parent)

  return index
end

-- Dissect: Pending Fill
currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill = function(buffer, offset, packet, parent)
  if show.pending_fill then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.pending_fill, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.pending_fill(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill_fields(buffer, offset, packet, parent)
  end
end

-- Size: Execution Id
currenex_forex_orderservice_cbp_v26_0_size_of.execution_id = 20

-- Display: Execution Id
currenex_forex_orderservice_cbp_v26_0_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
currenex_forex_orderservice_cbp_v26_0_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.execution_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_orderservice_cbp_v26_0_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Side
currenex_forex_orderservice_cbp_v26_0_size_of.side = 1

-- Display: Side
currenex_forex_orderservice_cbp_v26_0_display.side = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Side: No Value"
  end

  return "Side: "..value
end

-- Dissect: Side
currenex_forex_orderservice_cbp_v26_0_dissect.side = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.side
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_orderservice_cbp_v26_0_display.side(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Instrument Index
currenex_forex_orderservice_cbp_v26_0_size_of.instrument_index = 2

-- Display: Instrument Index
currenex_forex_orderservice_cbp_v26_0_display.instrument_index = function(value)
  return "Instrument Index: "..value
end

-- Dissect: Instrument Index
currenex_forex_orderservice_cbp_v26_0_dissect.instrument_index = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.instrument_index
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.instrument_index(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.instrument_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade
currenex_forex_orderservice_cbp_v26_0_size_of.trade = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.instrument_index

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.side

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.fill_amt

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.fill_rate

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.exec_broker

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.execution_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.exec_type

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.settle_date

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.trade_date

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.transact_time

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.leaves_amt

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.aggressor_flag

  return index
end

-- Display: Trade
currenex_forex_orderservice_cbp_v26_0_display.trade = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
currenex_forex_orderservice_cbp_v26_0_dissect.trade_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.cl_order_id(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_forex_orderservice_cbp_v26_0_dissect.order_id(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_orderservice_cbp_v26_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = currenex_forex_orderservice_cbp_v26_0_dissect.side(buffer, index, packet, parent)

  -- Fill Amt: Long
  index, fill_amt = currenex_forex_orderservice_cbp_v26_0_dissect.fill_amt(buffer, index, packet, parent)

  -- Fill Rate: Integer
  index, fill_rate = currenex_forex_orderservice_cbp_v26_0_dissect.fill_rate(buffer, index, packet, parent)

  -- Exec Broker: Alpha
  index, exec_broker = currenex_forex_orderservice_cbp_v26_0_dissect.exec_broker(buffer, index, packet, parent)

  -- Execution Id: Alpha
  index, execution_id = currenex_forex_orderservice_cbp_v26_0_dissect.execution_id(buffer, index, packet, parent)

  -- Exec Type: Alpha
  index, exec_type = currenex_forex_orderservice_cbp_v26_0_dissect.exec_type(buffer, index, packet, parent)

  -- Settle Date: Long
  index, settle_date = currenex_forex_orderservice_cbp_v26_0_dissect.settle_date(buffer, index, packet, parent)

  -- Trade Date: Long
  index, trade_date = currenex_forex_orderservice_cbp_v26_0_dissect.trade_date(buffer, index, packet, parent)

  -- Transact Time: Long
  index, transact_time = currenex_forex_orderservice_cbp_v26_0_dissect.transact_time(buffer, index, packet, parent)

  -- Leaves Amt: Long
  index, leaves_amt = currenex_forex_orderservice_cbp_v26_0_dissect.leaves_amt(buffer, index, packet, parent)

  -- Aggressor Flag: Alpha
  index, aggressor_flag = currenex_forex_orderservice_cbp_v26_0_dissect.aggressor_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade
currenex_forex_orderservice_cbp_v26_0_dissect.trade = function(buffer, offset, packet, parent)
  if show.trade then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.trade, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.trade_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.trade(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.trade_fields(buffer, offset, packet, parent)
  end
end

-- Size: Type
currenex_forex_orderservice_cbp_v26_0_size_of.type = 2

-- Display: Type
currenex_forex_orderservice_cbp_v26_0_display.type = function(value)
  return "Type: "..value
end

-- Dissect: Type
currenex_forex_orderservice_cbp_v26_0_dissect.type = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.type
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.type, range, value, display)

  return offset + length, value
end

-- Size: Status
currenex_forex_orderservice_cbp_v26_0_size_of.status = 1

-- Display: Status
currenex_forex_orderservice_cbp_v26_0_display.status = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Status: No Value"
  end

  return "Status: "..value
end

-- Dissect: Status
currenex_forex_orderservice_cbp_v26_0_dissect.status = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_orderservice_cbp_v26_0_display.status(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Canceled Or Expired
currenex_forex_orderservice_cbp_v26_0_size_of.order_canceled_or_expired = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.status

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.type

  return index
end

-- Display: Order Canceled Or Expired
currenex_forex_orderservice_cbp_v26_0_display.order_canceled_or_expired = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Or Expired
currenex_forex_orderservice_cbp_v26_0_dissect.order_canceled_or_expired_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.cl_order_id(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_forex_orderservice_cbp_v26_0_dissect.order_id(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = currenex_forex_orderservice_cbp_v26_0_dissect.status(buffer, index, packet, parent)

  -- Type: Short
  index, type = currenex_forex_orderservice_cbp_v26_0_dissect.type(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Or Expired
currenex_forex_orderservice_cbp_v26_0_dissect.order_canceled_or_expired = function(buffer, offset, packet, parent)
  if show.order_canceled_or_expired then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.order_canceled_or_expired, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.order_canceled_or_expired_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.order_canceled_or_expired(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_canceled_or_expired_fields(buffer, offset, packet, parent)
  end
end

-- Size: Error Code
currenex_forex_orderservice_cbp_v26_0_size_of.error_code = 2

-- Display: Error Code
currenex_forex_orderservice_cbp_v26_0_display.error_code = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
currenex_forex_orderservice_cbp_v26_0_dissect.error_code = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.error_code
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.error_code(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.error_code, range, value, display)

  return offset + length, value
end

-- Size: Prev Cl Order Id
currenex_forex_orderservice_cbp_v26_0_size_of.prev_cl_order_id = 4

-- Display: Prev Cl Order Id
currenex_forex_orderservice_cbp_v26_0_display.prev_cl_order_id = function(value)
  return "Prev Cl Order Id: "..value
end

-- Dissect: Prev Cl Order Id
currenex_forex_orderservice_cbp_v26_0_dissect.prev_cl_order_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.prev_cl_order_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.prev_cl_order_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.prev_cl_order_id, range, value, display)

  return offset + length, value
end

-- Size: New Cl Order Id
currenex_forex_orderservice_cbp_v26_0_size_of.new_cl_order_id = 4

-- Display: New Cl Order Id
currenex_forex_orderservice_cbp_v26_0_display.new_cl_order_id = function(value)
  return "New Cl Order Id: "..value
end

-- Dissect: New Cl Order Id
currenex_forex_orderservice_cbp_v26_0_dissect.new_cl_order_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.new_cl_order_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.new_cl_order_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.new_cl_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replace Or Cancel Ack
currenex_forex_orderservice_cbp_v26_0_size_of.order_replace_or_cancel_ack = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.new_cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.prev_cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.status

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.error_code

  return index
end

-- Display: Order Replace Or Cancel Ack
currenex_forex_orderservice_cbp_v26_0_display.order_replace_or_cancel_ack = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Or Cancel Ack
currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_ack_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Cl Order Id: Integer
  index, new_cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.new_cl_order_id(buffer, index, packet, parent)

  -- Prev Cl Order Id: Integer
  index, prev_cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.prev_cl_order_id(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = currenex_forex_orderservice_cbp_v26_0_dissect.status(buffer, index, packet, parent)

  -- Error Code: Short
  index, error_code = currenex_forex_orderservice_cbp_v26_0_dissect.error_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Or Cancel Ack
currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_ack = function(buffer, offset, packet, parent)
  if show.order_replace_or_cancel_ack then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.order_replace_or_cancel_ack, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_ack_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.order_replace_or_cancel_ack(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_ack_fields(buffer, offset, packet, parent)
  end
end

-- Size: Price
currenex_forex_orderservice_cbp_v26_0_size_of.price = 4

-- Display: Price
currenex_forex_orderservice_cbp_v26_0_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
currenex_forex_orderservice_cbp_v26_0_dissect.price = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.price
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.price(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Order Amt
currenex_forex_orderservice_cbp_v26_0_size_of.order_amt = 8

-- Display: Order Amt
currenex_forex_orderservice_cbp_v26_0_display.order_amt = function(value)
  return "Order Amt: "..value
end

-- Dissect: Order Amt
currenex_forex_orderservice_cbp_v26_0_dissect.order_amt = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.order_amt
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.order_amt(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.order_amt, range, value, display)

  return offset + length, value
end

-- Size: Orig Cl Order Id
currenex_forex_orderservice_cbp_v26_0_size_of.orig_cl_order_id = 4

-- Display: Orig Cl Order Id
currenex_forex_orderservice_cbp_v26_0_display.orig_cl_order_id = function(value)
  return "Orig Cl Order Id: "..value
end

-- Dissect: Orig Cl Order Id
currenex_forex_orderservice_cbp_v26_0_dissect.orig_cl_order_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.orig_cl_order_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.orig_cl_order_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.orig_cl_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replace Or Cancel Request
currenex_forex_orderservice_cbp_v26_0_size_of.order_replace_or_cancel_request = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.new_cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.orig_cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.order_amt

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.price

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.instrument_index

  return index
end

-- Display: Order Replace Or Cancel Request
currenex_forex_orderservice_cbp_v26_0_display.order_replace_or_cancel_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Or Cancel Request
currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Cl Order Id: Integer
  index, new_cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.new_cl_order_id(buffer, index, packet, parent)

  -- Orig Cl Order Id: Integer
  index, orig_cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.orig_cl_order_id(buffer, index, packet, parent)

  -- Order Amt: Long
  index, order_amt = currenex_forex_orderservice_cbp_v26_0_dissect.order_amt(buffer, index, packet, parent)

  -- Price: Rate
  index, price = currenex_forex_orderservice_cbp_v26_0_dissect.price(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_orderservice_cbp_v26_0_dissect.instrument_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Or Cancel Request
currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_request = function(buffer, offset, packet, parent)
  if show.order_replace_or_cancel_request then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.order_replace_or_cancel_request, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_request_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.order_replace_or_cancel_request(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_request_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Order Cancel Reject
currenex_forex_orderservice_cbp_v26_0_size_of.order_cancel_reject = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.new_cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.prev_cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.error_code

  return index
end

-- Display: Order Cancel Reject
currenex_forex_orderservice_cbp_v26_0_display.order_cancel_reject = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject
currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Cl Order Id: Integer
  index, new_cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.new_cl_order_id(buffer, index, packet, parent)

  -- Prev Cl Order Id: Integer
  index, prev_cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.prev_cl_order_id(buffer, index, packet, parent)

  -- Error Code: Short
  index, error_code = currenex_forex_orderservice_cbp_v26_0_dissect.error_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject
currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_reject = function(buffer, offset, packet, parent)
  if show.order_cancel_reject then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.order_cancel_reject, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_reject_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.order_cancel_reject(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_reject_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Order Cancel Request
currenex_forex_orderservice_cbp_v26_0_size_of.order_cancel_request = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.new_cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.prev_cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.instrument_index

  return index
end

-- Display: Order Cancel Request
currenex_forex_orderservice_cbp_v26_0_display.order_cancel_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request
currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Cl Order Id: Integer
  index, new_cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.new_cl_order_id(buffer, index, packet, parent)

  -- Prev Cl Order Id: Integer
  index, prev_cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.prev_cl_order_id(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_orderservice_cbp_v26_0_dissect.instrument_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request
currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_request = function(buffer, offset, packet, parent)
  if show.order_cancel_request then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.order_cancel_request, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_request_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.order_cancel_request(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_request_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: New Order Ack
currenex_forex_orderservice_cbp_v26_0_size_of.new_order_ack = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.status

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.error_code

  return index
end

-- Display: New Order Ack
currenex_forex_orderservice_cbp_v26_0_display.new_order_ack = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Ack
currenex_forex_orderservice_cbp_v26_0_dissect.new_order_ack_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.cl_order_id(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = currenex_forex_orderservice_cbp_v26_0_dissect.order_id(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = currenex_forex_orderservice_cbp_v26_0_dissect.status(buffer, index, packet, parent)

  -- Error Code: Short
  index, error_code = currenex_forex_orderservice_cbp_v26_0_dissect.error_code(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Ack
currenex_forex_orderservice_cbp_v26_0_dissect.new_order_ack = function(buffer, offset, packet, parent)
  if show.new_order_ack then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.new_order_ack, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.new_order_ack_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.new_order_ack(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.new_order_ack_fields(buffer, offset, packet, parent)
  end
end

-- Size: Expire Type
currenex_forex_orderservice_cbp_v26_0_size_of.expire_type = 1

-- Display: Expire Type
currenex_forex_orderservice_cbp_v26_0_display.expire_type = function(value)
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
currenex_forex_orderservice_cbp_v26_0_dissect.expire_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.expire_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_orderservice_cbp_v26_0_display.expire_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.expire_type, range, value, display)

  return offset + length, value
end

-- Size: Show Amt
currenex_forex_orderservice_cbp_v26_0_size_of.show_amt = 8

-- Display: Show Amt
currenex_forex_orderservice_cbp_v26_0_display.show_amt = function(value)
  return "Show Amt: "..value
end

-- Dissect: Show Amt
currenex_forex_orderservice_cbp_v26_0_dissect.show_amt = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.show_amt
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.show_amt(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.show_amt, range, value, display)

  return offset + length, value
end

-- Size: Min Amt
currenex_forex_orderservice_cbp_v26_0_size_of.min_amt = 8

-- Display: Min Amt
currenex_forex_orderservice_cbp_v26_0_display.min_amt = function(value)
  return "Min Amt: "..value
end

-- Dissect: Min Amt
currenex_forex_orderservice_cbp_v26_0_dissect.min_amt = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.min_amt
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.min_amt(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.min_amt, range, value, display)

  return offset + length, value
end

-- Size: Order Type
currenex_forex_orderservice_cbp_v26_0_size_of.order_type = 1

-- Display: Order Type
currenex_forex_orderservice_cbp_v26_0_display.order_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Type: No Value"
  end

  return "Order Type: "..value
end

-- Dissect: Order Type
currenex_forex_orderservice_cbp_v26_0_dissect.order_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.order_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_orderservice_cbp_v26_0_display.order_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.order_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Request
currenex_forex_orderservice_cbp_v26_0_size_of.new_order_request = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.cl_order_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.order_type

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.instrument_index

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.side

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.order_amt

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.min_amt

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.price

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.show_amt

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.expire_type

  return index
end

-- Display: New Order Request
currenex_forex_orderservice_cbp_v26_0_display.new_order_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Request
currenex_forex_orderservice_cbp_v26_0_dissect.new_order_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Order Id: Integer
  index, cl_order_id = currenex_forex_orderservice_cbp_v26_0_dissect.cl_order_id(buffer, index, packet, parent)

  -- Order Type: Alpha
  index, order_type = currenex_forex_orderservice_cbp_v26_0_dissect.order_type(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_orderservice_cbp_v26_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = currenex_forex_orderservice_cbp_v26_0_dissect.side(buffer, index, packet, parent)

  -- Order Amt: Long
  index, order_amt = currenex_forex_orderservice_cbp_v26_0_dissect.order_amt(buffer, index, packet, parent)

  -- Min Amt: Long
  index, min_amt = currenex_forex_orderservice_cbp_v26_0_dissect.min_amt(buffer, index, packet, parent)

  -- Price: Rate
  index, price = currenex_forex_orderservice_cbp_v26_0_dissect.price(buffer, index, packet, parent)

  -- Show Amt: Long
  index, show_amt = currenex_forex_orderservice_cbp_v26_0_dissect.show_amt(buffer, index, packet, parent)

  -- Expire Type: Alpha
  index, expire_type = currenex_forex_orderservice_cbp_v26_0_dissect.expire_type(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Request
currenex_forex_orderservice_cbp_v26_0_dissect.new_order_request = function(buffer, offset, packet, parent)
  if show.new_order_request then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.new_order_request, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.new_order_request_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.new_order_request(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.new_order_request_fields(buffer, offset, packet, parent)
  end
end

-- Size: Settlement Date
currenex_forex_orderservice_cbp_v26_0_size_of.settlement_date = 8

-- Display: Settlement Date
currenex_forex_orderservice_cbp_v26_0_display.settlement_date = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
currenex_forex_orderservice_cbp_v26_0_dissect.settlement_date = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.settlement_date
  local range = buffer(offset, length)
  local value = range:int64()
  local display = currenex_forex_orderservice_cbp_v26_0_display.settlement_date(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
currenex_forex_orderservice_cbp_v26_0_size_of.instrument_id = 20

-- Display: Instrument Id
currenex_forex_orderservice_cbp_v26_0_display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
currenex_forex_orderservice_cbp_v26_0_dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.instrument_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_orderservice_cbp_v26_0_display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type
currenex_forex_orderservice_cbp_v26_0_size_of.instrument_type = 1

-- Display: Instrument Type
currenex_forex_orderservice_cbp_v26_0_display.instrument_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Type: No Value"
  end

  return "Instrument Type: "..value
end

-- Dissect: Instrument Type
currenex_forex_orderservice_cbp_v26_0_dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.instrument_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = currenex_forex_orderservice_cbp_v26_0_display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Session Id
currenex_forex_orderservice_cbp_v26_0_size_of.session_id = 4

-- Display: Session Id
currenex_forex_orderservice_cbp_v26_0_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
currenex_forex_orderservice_cbp_v26_0_dissect.session_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.session_id
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.session_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Info
currenex_forex_orderservice_cbp_v26_0_size_of.instrument_info = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.session_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.instrument_index

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.instrument_type

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.instrument_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.settlement_date

  return index
end

-- Display: Instrument Info
currenex_forex_orderservice_cbp_v26_0_display.instrument_info = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info
currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_orderservice_cbp_v26_0_dissect.session_id(buffer, index, packet, parent)

  -- Instrument Index: Short
  index, instrument_index = currenex_forex_orderservice_cbp_v26_0_dissect.instrument_index(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = currenex_forex_orderservice_cbp_v26_0_dissect.instrument_type(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = currenex_forex_orderservice_cbp_v26_0_dissect.instrument_id(buffer, index, packet, parent)

  -- Settlement Date: Long
  index, settlement_date = currenex_forex_orderservice_cbp_v26_0_dissect.settlement_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info
currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info = function(buffer, offset, packet, parent)
  if show.instrument_info then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.instrument_info, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.instrument_info(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Instrument Info Request
currenex_forex_orderservice_cbp_v26_0_size_of.instrument_info_request = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.session_id

  return index
end

-- Display: Instrument Info Request
currenex_forex_orderservice_cbp_v26_0_display.instrument_info_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Info Request
currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_orderservice_cbp_v26_0_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Info Request
currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info_request = function(buffer, offset, packet, parent)
  if show.instrument_info_request then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.instrument_info_request, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info_request_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.instrument_info_request(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info_request_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Heartbeat
currenex_forex_orderservice_cbp_v26_0_size_of.heartbeat = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.session_id

  return index
end

-- Display: Heartbeat
currenex_forex_orderservice_cbp_v26_0_display.heartbeat = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
currenex_forex_orderservice_cbp_v26_0_dissect.heartbeat_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: Integer
  index, session_id = currenex_forex_orderservice_cbp_v26_0_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
currenex_forex_orderservice_cbp_v26_0_dissect.heartbeat = function(buffer, offset, packet, parent)
  if show.heartbeat then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.heartbeat, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.heartbeat_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.heartbeat(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.heartbeat_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reason
currenex_forex_orderservice_cbp_v26_0_size_of.reason = 3

-- Display: Reason
currenex_forex_orderservice_cbp_v26_0_display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
currenex_forex_orderservice_cbp_v26_0_dissect.reason = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_orderservice_cbp_v26_0_display.reason(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: User Id
currenex_forex_orderservice_cbp_v26_0_size_of.user_id = 20

-- Display: User Id
currenex_forex_orderservice_cbp_v26_0_display.user_id = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
currenex_forex_orderservice_cbp_v26_0_dissect.user_id = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.user_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_orderservice_cbp_v26_0_display.user_id(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.user_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logout
currenex_forex_orderservice_cbp_v26_0_size_of.logout = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.user_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.session_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.reason

  return index
end

-- Display: Logout
currenex_forex_orderservice_cbp_v26_0_display.logout = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout
currenex_forex_orderservice_cbp_v26_0_dissect.logout_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_forex_orderservice_cbp_v26_0_dissect.user_id(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_forex_orderservice_cbp_v26_0_dissect.session_id(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = currenex_forex_orderservice_cbp_v26_0_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout
currenex_forex_orderservice_cbp_v26_0_dissect.logout = function(buffer, offset, packet, parent)
  if show.logout then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.logout, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.logout_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.logout(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.logout_fields(buffer, offset, packet, parent)
  end
end

-- Size: Password
currenex_forex_orderservice_cbp_v26_0_size_of.password = 20

-- Display: Password
currenex_forex_orderservice_cbp_v26_0_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
currenex_forex_orderservice_cbp_v26_0_dissect.password = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.password
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = currenex_forex_orderservice_cbp_v26_0_display.password(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.password, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon
currenex_forex_orderservice_cbp_v26_0_size_of.logon = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.user_id

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.password

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.session_id

  return index
end

-- Display: Logon
currenex_forex_orderservice_cbp_v26_0_display.logon = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon
currenex_forex_orderservice_cbp_v26_0_dissect.logon_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alpha
  index, user_id = currenex_forex_orderservice_cbp_v26_0_dissect.user_id(buffer, index, packet, parent)

  -- Password: Alpha
  index, password = currenex_forex_orderservice_cbp_v26_0_dissect.password(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = currenex_forex_orderservice_cbp_v26_0_dissect.session_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon
currenex_forex_orderservice_cbp_v26_0_dissect.logon = function(buffer, offset, packet, parent)
  if show.logon then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.logon, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.logon_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.logon(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.logon_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Message Body
currenex_forex_orderservice_cbp_v26_0_size_of.message_body = function(buffer, offset, message_type)
  -- Size of Logon
  if message_type == "A" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.logon(buffer, offset)
  end
  -- Size of Logout
  if message_type == "B" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.logout(buffer, offset)
  end
  -- Size of Heartbeat
  if message_type == "C" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.heartbeat(buffer, offset)
  end
  -- Size of Instrument Info Request
  if message_type == "E" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.instrument_info_request(buffer, offset)
  end
  -- Size of Instrument Info
  if message_type == "D" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.instrument_info(buffer, offset)
  end
  -- Size of New Order Request
  if message_type == "L" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.new_order_request(buffer, offset)
  end
  -- Size of New Order Ack
  if message_type == "M" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.new_order_ack(buffer, offset)
  end
  -- Size of Order Cancel Request
  if message_type == "N" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.order_cancel_request(buffer, offset)
  end
  -- Size of Order Cancel Reject
  if message_type == "O" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.order_cancel_reject(buffer, offset)
  end
  -- Size of Order Replace Or Cancel Request
  if message_type == "P" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.order_replace_or_cancel_request(buffer, offset)
  end
  -- Size of Order Replace Or Cancel Ack
  if message_type == "Q" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.order_replace_or_cancel_ack(buffer, offset)
  end
  -- Size of Order Canceled Or Expired
  if message_type == "R" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.order_canceled_or_expired(buffer, offset)
  end
  -- Size of Trade
  if message_type == "T" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.trade(buffer, offset)
  end
  -- Size of Pending Fill
  if message_type == "U" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.pending_fill(buffer, offset)
  end
  -- Size of Pending Fill Cancel
  if message_type == "V" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.pending_fill_cancel(buffer, offset)
  end
  -- Size of Trade Pending
  if message_type == "t" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.trade_pending(buffer, offset)
  end
  -- Size of Resend Request
  if message_type == "2" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.resend_request(buffer, offset)
  end
  -- Size of Gap Fill
  if message_type == "4" then
    return currenex_forex_orderservice_cbp_v26_0_size_of.gap_fill(buffer, offset)
  end

  return 0
end

-- Display: Message Body
currenex_forex_orderservice_cbp_v26_0_display.message_body = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
currenex_forex_orderservice_cbp_v26_0_dissect.message_body_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Logon
  if message_type == "A" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.logon(buffer, offset, packet, parent)
  end
  -- Dissect Logout
  if message_type == "B" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.logout(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if message_type == "C" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info Request
  if message_type == "E" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info_request(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Info
  if message_type == "D" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.instrument_info(buffer, offset, packet, parent)
  end
  -- Dissect New Order Request
  if message_type == "L" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.new_order_request(buffer, offset, packet, parent)
  end
  -- Dissect New Order Ack
  if message_type == "M" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.new_order_ack(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request
  if message_type == "N" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_request(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject
  if message_type == "O" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_cancel_reject(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Or Cancel Request
  if message_type == "P" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_request(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Or Cancel Ack
  if message_type == "Q" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_replace_or_cancel_ack(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Or Expired
  if message_type == "R" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.order_canceled_or_expired(buffer, offset, packet, parent)
  end
  -- Dissect Trade
  if message_type == "T" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.trade(buffer, offset, packet, parent)
  end
  -- Dissect Pending Fill
  if message_type == "U" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill(buffer, offset, packet, parent)
  end
  -- Dissect Pending Fill Cancel
  if message_type == "V" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.pending_fill_cancel(buffer, offset, packet, parent)
  end
  -- Dissect Trade Pending
  if message_type == "t" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.trade_pending(buffer, offset, packet, parent)
  end
  -- Dissect Resend Request
  if message_type == "2" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.resend_request(buffer, offset, packet, parent)
  end
  -- Dissect Gap Fill
  if message_type == "4" then
    return currenex_forex_orderservice_cbp_v26_0_dissect.gap_fill(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
currenex_forex_orderservice_cbp_v26_0_dissect.message_body = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return currenex_forex_orderservice_cbp_v26_0_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = currenex_forex_orderservice_cbp_v26_0_size_of.message_body(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = currenex_forex_orderservice_cbp_v26_0_display.message_body(buffer, packet, parent)
  local element = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.message_body, range, display)

  return currenex_forex_orderservice_cbp_v26_0_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
currenex_forex_orderservice_cbp_v26_0_size_of.message_type = 1

-- Display: Message Type
currenex_forex_orderservice_cbp_v26_0_display.message_type = function(value)
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
currenex_forex_orderservice_cbp_v26_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = currenex_forex_orderservice_cbp_v26_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
currenex_forex_orderservice_cbp_v26_0_size_of.sequence_number = 4

-- Display: Sequence Number
currenex_forex_orderservice_cbp_v26_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
currenex_forex_orderservice_cbp_v26_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = currenex_forex_orderservice_cbp_v26_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
currenex_forex_orderservice_cbp_v26_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.sequence_number

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.sequence_number

  index = index + currenex_forex_orderservice_cbp_v26_0_size_of.message_type

  return index
end

-- Display: Message Header
currenex_forex_orderservice_cbp_v26_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
currenex_forex_orderservice_cbp_v26_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_orderservice_cbp_v26_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = currenex_forex_orderservice_cbp_v26_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 18 values
  index, message_type = currenex_forex_orderservice_cbp_v26_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
currenex_forex_orderservice_cbp_v26_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(currenex_forex_orderservice_cbp_v26_0.fields.message_header, buffer(offset, 0))
    local index = currenex_forex_orderservice_cbp_v26_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = currenex_forex_orderservice_cbp_v26_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return currenex_forex_orderservice_cbp_v26_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Size: Itch Soh
currenex_forex_orderservice_cbp_v26_0_size_of.itch_soh = 1

-- Display: Itch Soh
currenex_forex_orderservice_cbp_v26_0_display.itch_soh = function(value)
  return "Itch Soh: "..value
end

-- Dissect: Itch Soh
currenex_forex_orderservice_cbp_v26_0_dissect.itch_soh = function(buffer, offset, packet, parent)
  local length = currenex_forex_orderservice_cbp_v26_0_size_of.itch_soh
  local range = buffer(offset, length)
  local value = range:int()
  local display = currenex_forex_orderservice_cbp_v26_0_display.itch_soh(value, buffer, offset, packet, parent)

  parent:add(currenex_forex_orderservice_cbp_v26_0.fields.itch_soh, range, value, display)

  return offset + length, value
end

-- Dissect Packet
currenex_forex_orderservice_cbp_v26_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Itch Soh: 1 Byte Fixed Width Integer Static
    index, itch_soh = currenex_forex_orderservice_cbp_v26_0_dissect.itch_soh(buffer, index, packet, parent)

    -- Message Header: Struct of 3 fields
    index, message_header = currenex_forex_orderservice_cbp_v26_0_dissect.message_header(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 1, 1):string()

    -- Message Body: Runtime Type with 18 branches
    index = currenex_forex_orderservice_cbp_v26_0_dissect.message_body(buffer, index, packet, parent, message_type)

    -- Itch Etx: 1 Byte Fixed Width Integer
    index, itch_etx = currenex_forex_orderservice_cbp_v26_0_dissect.itch_etx(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function currenex_forex_orderservice_cbp_v26_0.init()
end

-- Dissector for Currenex Forex OrderService Cbp 26.0
function currenex_forex_orderservice_cbp_v26_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = currenex_forex_orderservice_cbp_v26_0.name

  -- Dissect protocol
  local protocol = parent:add(currenex_forex_orderservice_cbp_v26_0, buffer(), currenex_forex_orderservice_cbp_v26_0.description, "("..buffer:len().." Bytes)")
  return currenex_forex_orderservice_cbp_v26_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, currenex_forex_orderservice_cbp_v26_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.currenex_forex_orderservice_cbp_v26_0_packet_size = function(buffer)

  return true
end

-- Verify Itch Soh Field
verify.itch_soh = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Currenex Forex OrderService Cbp 26.0
local function currenex_forex_orderservice_cbp_v26_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.currenex_forex_orderservice_cbp_v26_0_packet_size(buffer) then return false end

  -- Verify Itch Soh
  if not verify.itch_soh(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = currenex_forex_orderservice_cbp_v26_0
  currenex_forex_orderservice_cbp_v26_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Currenex Forex OrderService Cbp 26.0
currenex_forex_orderservice_cbp_v26_0:register_heuristic("udp", currenex_forex_orderservice_cbp_v26_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
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
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
