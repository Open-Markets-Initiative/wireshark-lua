-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- OtcMarkets Overnight DepthOfBook Link 1.0 Protocol
local omi_otcmarkets_overnight_depthofbook_link_v1_0 = Proto("Omi.OtcMarkets.Overnight.DepthOfBook.Link.v1.0", "OtcMarkets Overnight DepthOfBook Link 1.0")

-- Protocol table
local otcmarkets_overnight_depthofbook_link_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- OtcMarkets Overnight DepthOfBook Link 1.0 Fields
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.asset_class = ProtoField.new("Asset Class", "otcmarkets.overnight.depthofbook.link.v1.0.assetclass", ftypes.UINT8)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.caveat_flag = ProtoField.new("Caveat Flag", "otcmarkets.overnight.depthofbook.link.v1.0.caveatflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.closing_cross_auction = ProtoField.new("Closing Cross Auction", "otcmarkets.overnight.depthofbook.link.v1.0.closingcrossauction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.current_inside_closing_price = ProtoField.new("Current Inside Closing Price", "otcmarkets.overnight.depthofbook.link.v1.0.currentinsideclosingprice", ftypes.DOUBLE)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.current_inside_imbalance_quantity = ProtoField.new("Current Inside Imbalance Quantity", "otcmarkets.overnight.depthofbook.link.v1.0.currentinsideimbalancequantity", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.current_inside_imbalance_side = ProtoField.new("Current Inside Imbalance Side", "otcmarkets.overnight.depthofbook.link.v1.0.currentinsideimbalanceside", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.current_inside_paired_shares = ProtoField.new("Current Inside Paired Shares", "otcmarkets.overnight.depthofbook.link.v1.0.currentinsidepairedshares", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.deprecated = ProtoField.new("Deprecated", "otcmarkets.overnight.depthofbook.link.v1.0.deprecated", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.executed_quantity = ProtoField.new("Executed Quantity", "otcmarkets.overnight.depthofbook.link.v1.0.executedquantity", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.execution_id = ProtoField.new("Execution Id", "otcmarkets.overnight.depthofbook.link.v1.0.executionid", ftypes.UINT64)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.firm_id = ProtoField.new("Firm Id", "otcmarkets.overnight.depthofbook.link.v1.0.firmid", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.full_closing_price = ProtoField.new("Full Closing Price", "otcmarkets.overnight.depthofbook.link.v1.0.fullclosingprice", ftypes.DOUBLE)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.heartbeat = ProtoField.new("Heartbeat", "otcmarkets.overnight.depthofbook.link.v1.0.heartbeat", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.last_update_milli = ProtoField.new("Last Update Milli", "otcmarkets.overnight.depthofbook.link.v1.0.lastupdatemilli", ftypes.UINT64)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message = ProtoField.new("Message", "otcmarkets.overnight.depthofbook.link.v1.0.message", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message_header = ProtoField.new("Message Header", "otcmarkets.overnight.depthofbook.link.v1.0.messageheader", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message_size = ProtoField.new("Message Size", "otcmarkets.overnight.depthofbook.link.v1.0.messagesize", ftypes.UINT16)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message_type = ProtoField.new("Message Type", "otcmarkets.overnight.depthofbook.link.v1.0.messagetype", ftypes.UINT8)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.messages = ProtoField.new("Messages", "otcmarkets.overnight.depthofbook.link.v1.0.messages", ftypes.UINT8)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.moc_shares_unmatched = ProtoField.new("Moc Shares Unmatched", "otcmarkets.overnight.depthofbook.link.v1.0.mocsharesunmatched", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "otcmarkets.overnight.depthofbook.link.v1.0.nextsequencenumber", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.ocio_only_closing_price = ProtoField.new("Ocio Only Closing Price", "otcmarkets.overnight.depthofbook.link.v1.0.ocioonlyclosingprice", ftypes.DOUBLE)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_flags = ProtoField.new("Order Flags", "otcmarkets.overnight.depthofbook.link.v1.0.orderflags", ftypes.UINT16)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_id = ProtoField.new("Order Id", "otcmarkets.overnight.depthofbook.link.v1.0.orderid", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.packet = ProtoField.new("Packet", "otcmarkets.overnight.depthofbook.link.v1.0.packet", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.packet_flag = ProtoField.new("Packet Flag", "otcmarkets.overnight.depthofbook.link.v1.0.packetflag", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.packet_header = ProtoField.new("Packet Header", "otcmarkets.overnight.depthofbook.link.v1.0.packetheader", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.packet_milli = ProtoField.new("Packet Milli", "otcmarkets.overnight.depthofbook.link.v1.0.packetmilli", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.packet_size = ProtoField.new("Packet Size", "otcmarkets.overnight.depthofbook.link.v1.0.packetsize", ftypes.UINT16)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.piggyback_flag = ProtoField.new("Piggyback Flag", "otcmarkets.overnight.depthofbook.link.v1.0.piggybackflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.price = ProtoField.new("Price", "otcmarkets.overnight.depthofbook.link.v1.0.price", ftypes.DOUBLE)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.qib_only_144_a = ProtoField.new("Qib Only 144 A", "otcmarkets.overnight.depthofbook.link.v1.0.qibonly144a", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.quantity = ProtoField.new("Quantity", "otcmarkets.overnight.depthofbook.link.v1.0.quantity", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.recovery_start_time = ProtoField.new("Recovery Start Time", "otcmarkets.overnight.depthofbook.link.v1.0.recoverystarttime", ftypes.UINT64)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.recovery_type = ProtoField.new("Recovery Type", "otcmarkets.overnight.depthofbook.link.v1.0.recoverytype", ftypes.UINT8)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "otcmarkets.overnight.depthofbook.link.v1.0.remainingquantity", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.replay = ProtoField.new("Replay", "otcmarkets.overnight.depthofbook.link.v1.0.replay", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.reporting_status = ProtoField.new("Reporting Status", "otcmarkets.overnight.depthofbook.link.v1.0.reportingstatus", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.reserved_11 = ProtoField.new("Reserved 11", "otcmarkets.overnight.depthofbook.link.v1.0.reserved11", ftypes.UINT16, nil, base.DEC, 0xFFE0)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.reserved_4 = ProtoField.new("Reserved 4", "otcmarkets.overnight.depthofbook.link.v1.0.reserved4", ftypes.UINT8, nil, base.DEC, 0x3C)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.reserved_binary_long_8 = ProtoField.new("Reserved Binary Long 8", "otcmarkets.overnight.depthofbook.link.v1.0.reservedbinarylong8", ftypes.UINT64)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_action = ProtoField.new("Security Action", "otcmarkets.overnight.depthofbook.link.v1.0.securityaction", ftypes.UINT8)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_flags = ProtoField.new("Security Flags", "otcmarkets.overnight.depthofbook.link.v1.0.securityflags", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_id = ProtoField.new("Security Id", "otcmarkets.overnight.depthofbook.link.v1.0.securityid", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_status = ProtoField.new("Security Status", "otcmarkets.overnight.depthofbook.link.v1.0.securitystatus", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.seq_num = ProtoField.new("Seq Num", "otcmarkets.overnight.depthofbook.link.v1.0.seqnum", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otcmarkets.overnight.depthofbook.link.v1.0.seqnumreset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.session_time = ProtoField.new("Session Time", "otcmarkets.overnight.depthofbook.link.v1.0.sessiontime", ftypes.UINT64)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.side_indicator = ProtoField.new("Side Indicator", "otcmarkets.overnight.depthofbook.link.v1.0.sideindicator", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otcmarkets.overnight.depthofbook.link.v1.0.spinendtimemilli", ftypes.UINT64)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otcmarkets.overnight.depthofbook.link.v1.0.spinlastseqnum", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otcmarkets.overnight.depthofbook.link.v1.0.spinmsgct", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otcmarkets.overnight.depthofbook.link.v1.0.spinstarttimemilli", ftypes.UINT64)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_type = ProtoField.new("Spin Type", "otcmarkets.overnight.depthofbook.link.v1.0.spintype", ftypes.UINT8)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.symbol = ProtoField.new("Symbol", "otcmarkets.overnight.depthofbook.link.v1.0.symbol", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.test = ProtoField.new("Test", "otcmarkets.overnight.depthofbook.link.v1.0.test", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.tier = ProtoField.new("Tier", "otcmarkets.overnight.depthofbook.link.v1.0.tier", ftypes.UINT8)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.time = ProtoField.new("Time", "otcmarkets.overnight.depthofbook.link.v1.0.time", ftypes.UINT32)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.trading_session = ProtoField.new("Trading Session", "otcmarkets.overnight.depthofbook.link.v1.0.tradingsession", ftypes.UINT8)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.unsolicited = ProtoField.new("Unsolicited", "otcmarkets.overnight.depthofbook.link.v1.0.unsolicited", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.unsolicited_only_flag = ProtoField.new("Unsolicited Only Flag", "otcmarkets.overnight.depthofbook.link.v1.0.unsolicitedonlyflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)

-- OtcMarkets Overnight Link DepthOfBook 1.0 Application Messages
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otcmarkets.overnight.depthofbook.link.v1.0.endofspinmessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.imbalance_message = ProtoField.new("Imbalance Message", "otcmarkets.overnight.depthofbook.link.v1.0.imbalancemessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_add_message = ProtoField.new("Order Add Message", "otcmarkets.overnight.depthofbook.link.v1.0.orderaddmessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_delete_message = ProtoField.new("Order Delete Message", "otcmarkets.overnight.depthofbook.link.v1.0.orderdeletemessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_execution_message = ProtoField.new("Order Execution Message", "otcmarkets.overnight.depthofbook.link.v1.0.orderexecutionmessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_execution_with_price_message = ProtoField.new("Order Execution With Price Message", "otcmarkets.overnight.depthofbook.link.v1.0.orderexecutionwithpricemessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_update_message = ProtoField.new("Order Update Message", "otcmarkets.overnight.depthofbook.link.v1.0.orderupdatemessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_message = ProtoField.new("Security Message", "otcmarkets.overnight.depthofbook.link.v1.0.securitymessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otcmarkets.overnight.depthofbook.link.v1.0.startofspinmessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.system_recovery_event_message = ProtoField.new("System Recovery Event Message", "otcmarkets.overnight.depthofbook.link.v1.0.systemrecoveryeventmessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.trade_message = ProtoField.new("Trade Message", "otcmarkets.overnight.depthofbook.link.v1.0.trademessage", ftypes.STRING)
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.trading_session_message = ProtoField.new("Trading Session Message", "otcmarkets.overnight.depthofbook.link.v1.0.tradingsessionmessage", ftypes.STRING)

-- OtcMarkets Overnight DepthOfBook Link 1.0 generated fields
omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message_index = ProtoField.new("Message Index", "otcmarkets.overnight.depthofbook.link.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- OtcMarkets Overnight DepthOfBook Link 1.0 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_flag = true
show.packet_header = true
show.security_flags = true
show.message_index = true

-- Register OtcMarkets Overnight DepthOfBook Link 1.0 Show Options
omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_packet_flag = Pref.bool("Show Packet Flag", show.packet_flag, "Parse and add Packet Flag to protocol tree")
omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")
omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_application_messages then
    show.application_messages = omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_application_messages
  end
  if show.message ~= omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_message then
    show.message = omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_message
  end
  if show.message_header ~= omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_message_header then
    show.message_header = omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_message_header
  end
  if show.packet ~= omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_packet then
    show.packet = omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_packet
  end
  if show.packet_flag ~= omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_packet_flag then
    show.packet_flag = omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_packet_flag
  end
  if show.packet_header ~= omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_packet_header then
    show.packet_header = omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_packet_header
  end
  if show.security_flags ~= omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_security_flags then
    show.security_flags = omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_security_flags
  end
  if show.message_index ~= omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_message_index then
    show.message_index = omi_otcmarkets_overnight_depthofbook_link_v1_0.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- OtcMarkets Overnight DepthOfBook Link 1.0 Fields
-----------------------------------------------------------------------

-- Asset Class
otcmarkets_overnight_depthofbook_link_v1_0.asset_class = {}

-- Size: Asset Class
otcmarkets_overnight_depthofbook_link_v1_0.asset_class.size = 1

-- Display: Asset Class
otcmarkets_overnight_depthofbook_link_v1_0.asset_class.display = function(value)
  if value == 1 then
    return "Asset Class: Equity (1)"
  end
  if value == 2 then
    return "Asset Class: Fixed Income (2)"
  end

  return "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otcmarkets_overnight_depthofbook_link_v1_0.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Current Inside Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price = {}

-- Size: Current Inside Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price.size = 8

-- Display: Current Inside Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price.display = function(value)
  return "Current Inside Closing Price: "..value
end

-- Translate: Current Inside Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Current Inside Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price.translate(raw)
  local display = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.current_inside_closing_price, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Quantity
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_quantity = {}

-- Size: Current Inside Imbalance Quantity
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_quantity.size = 4

-- Display: Current Inside Imbalance Quantity
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_quantity.display = function(value)
  return "Current Inside Imbalance Quantity: "..value
end

-- Dissect: Current Inside Imbalance Quantity
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.current_inside_imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Side
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_side = {}

-- Size: Current Inside Imbalance Side
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_side.size = 1

-- Display: Current Inside Imbalance Side
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_side.display = function(value)
  if value == "B" then
    return "Current Inside Imbalance Side: Buy Side (B)"
  end
  if value == "S" then
    return "Current Inside Imbalance Side: Sell Side (S)"
  end
  if value == "N" then
    return "Current Inside Imbalance Side: No Imbalance (N)"
  end
  if value == "O" then
    return "Current Inside Imbalance Side: No Marketable Orders (O)"
  end

  return "Current Inside Imbalance Side: Unknown("..value..")"
end

-- Dissect: Current Inside Imbalance Side
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.current_inside_imbalance_side, range, value, display)

  return offset + length, value
end

-- Current Inside Paired Shares
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_paired_shares = {}

-- Size: Current Inside Paired Shares
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_paired_shares.size = 4

-- Display: Current Inside Paired Shares
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_paired_shares.display = function(value)
  return "Current Inside Paired Shares: "..value
end

-- Dissect: Current Inside Paired Shares
otcmarkets_overnight_depthofbook_link_v1_0.current_inside_paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.current_inside_paired_shares, range, value, display)

  return offset + length, value
end

-- Deprecated
otcmarkets_overnight_depthofbook_link_v1_0.deprecated = {}

-- Size: Deprecated
otcmarkets_overnight_depthofbook_link_v1_0.deprecated.size = 4

-- Display: Deprecated
otcmarkets_overnight_depthofbook_link_v1_0.deprecated.display = function(value)
  return "Deprecated: "..value
end

-- Dissect: Deprecated
otcmarkets_overnight_depthofbook_link_v1_0.deprecated.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.deprecated.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.deprecated.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.deprecated, range, value, display)

  return offset + length, value
end

-- Executed Quantity
otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity = {}

-- Size: Executed Quantity
otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity.size = 4

-- Display: Executed Quantity
otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
otcmarkets_overnight_depthofbook_link_v1_0.execution_id = {}

-- Size: Execution Id
otcmarkets_overnight_depthofbook_link_v1_0.execution_id.size = 8

-- Display: Execution Id
otcmarkets_overnight_depthofbook_link_v1_0.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
otcmarkets_overnight_depthofbook_link_v1_0.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.execution_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Firm Id
otcmarkets_overnight_depthofbook_link_v1_0.firm_id = {}

-- Size: Firm Id
otcmarkets_overnight_depthofbook_link_v1_0.firm_id.size = 4

-- Display: Firm Id
otcmarkets_overnight_depthofbook_link_v1_0.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
otcmarkets_overnight_depthofbook_link_v1_0.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Full Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price = {}

-- Size: Full Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price.size = 8

-- Display: Full Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price.display = function(value)
  return "Full Closing Price: "..value
end

-- Translate: Full Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Full Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price.translate(raw)
  local display = otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.full_closing_price, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otcmarkets_overnight_depthofbook_link_v1_0.last_update_milli = {}

-- Size: Last Update Milli
otcmarkets_overnight_depthofbook_link_v1_0.last_update_milli.size = 8

-- Display: Last Update Milli
otcmarkets_overnight_depthofbook_link_v1_0.last_update_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Last Update Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Last Update Milli
otcmarkets_overnight_depthofbook_link_v1_0.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.last_update_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.last_update_milli, range, value, display)

  return offset + length, value
end

-- Message Size
otcmarkets_overnight_depthofbook_link_v1_0.message_size = {}

-- Size: Message Size
otcmarkets_overnight_depthofbook_link_v1_0.message_size.size = 2

-- Display: Message Size
otcmarkets_overnight_depthofbook_link_v1_0.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otcmarkets_overnight_depthofbook_link_v1_0.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
otcmarkets_overnight_depthofbook_link_v1_0.message_type = {}

-- Size: Message Type
otcmarkets_overnight_depthofbook_link_v1_0.message_type.size = 1

-- Display: Message Type
otcmarkets_overnight_depthofbook_link_v1_0.message_type.display = function(value)
  if value == 11 then
    return "Message Type: Start Of Spin Message (11)"
  end
  if value == 12 then
    return "Message Type: End Of Spin Message (12)"
  end
  if value == 20 then
    return "Message Type: Trading Session Message (20)"
  end
  if value == 9 then
    return "Message Type: Security Message (9)"
  end
  if value == 21 then
    return "Message Type: Order Add Message (21)"
  end
  if value == 22 then
    return "Message Type: Order Update Message (22)"
  end
  if value == 23 then
    return "Message Type: Order Delete Message (23)"
  end
  if value == 24 then
    return "Message Type: Order Execution Message (24)"
  end
  if value == 25 then
    return "Message Type: Order Execution With Price Message (25)"
  end
  if value == 26 then
    return "Message Type: Trade Message (26)"
  end
  if value == 28 then
    return "Message Type: Imbalance Message (28)"
  end
  if value == 74 then
    return "Message Type: System Recovery Event Message (74)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
otcmarkets_overnight_depthofbook_link_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Messages
otcmarkets_overnight_depthofbook_link_v1_0.messages = {}

-- Size: Messages
otcmarkets_overnight_depthofbook_link_v1_0.messages.size = 1

-- Display: Messages
otcmarkets_overnight_depthofbook_link_v1_0.messages.display = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
otcmarkets_overnight_depthofbook_link_v1_0.messages.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.messages, range, value, display)

  return offset + length, value
end

-- Moc Shares Unmatched
otcmarkets_overnight_depthofbook_link_v1_0.moc_shares_unmatched = {}

-- Size: Moc Shares Unmatched
otcmarkets_overnight_depthofbook_link_v1_0.moc_shares_unmatched.size = 1

-- Display: Moc Shares Unmatched
otcmarkets_overnight_depthofbook_link_v1_0.moc_shares_unmatched.display = function(value)
  if value == "B" then
    return "Moc Shares Unmatched: Buy Moc Not Matched (B)"
  end
  if value == "S" then
    return "Moc Shares Unmatched: Sell Moc Not Matched (S)"
  end
  if value == "O" then
    return "Moc Shares Unmatched: No Moc Unmatched (O)"
  end

  return "Moc Shares Unmatched: Unknown("..value..")"
end

-- Dissect: Moc Shares Unmatched
otcmarkets_overnight_depthofbook_link_v1_0.moc_shares_unmatched.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.moc_shares_unmatched.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.moc_shares_unmatched.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.moc_shares_unmatched, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
otcmarkets_overnight_depthofbook_link_v1_0.next_sequence_number = {}

-- Size: Next Sequence Number
otcmarkets_overnight_depthofbook_link_v1_0.next_sequence_number.size = 4

-- Display: Next Sequence Number
otcmarkets_overnight_depthofbook_link_v1_0.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
otcmarkets_overnight_depthofbook_link_v1_0.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Ocio Only Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price = {}

-- Size: Ocio Only Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price.size = 8

-- Display: Ocio Only Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price.display = function(value)
  return "Ocio Only Closing Price: "..value
end

-- Translate: Ocio Only Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Ocio Only Closing Price
otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price.translate(raw)
  local display = otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.ocio_only_closing_price, range, value, display)

  return offset + length, value
end

-- Order Flags
otcmarkets_overnight_depthofbook_link_v1_0.order_flags = {}

-- Size: Order Flags
otcmarkets_overnight_depthofbook_link_v1_0.order_flags.size = 2

-- Display: Order Flags
otcmarkets_overnight_depthofbook_link_v1_0.order_flags.display = function(value)
  return "Order Flags: "..value
end

-- Dissect: Order Flags
otcmarkets_overnight_depthofbook_link_v1_0.order_flags.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.order_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.order_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_flags, range, value, display)

  return offset + length, value
end

-- Order Id
otcmarkets_overnight_depthofbook_link_v1_0.order_id = {}

-- Size: Order Id
otcmarkets_overnight_depthofbook_link_v1_0.order_id.size = 14

-- Display: Order Id
otcmarkets_overnight_depthofbook_link_v1_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
otcmarkets_overnight_depthofbook_link_v1_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Milli
otcmarkets_overnight_depthofbook_link_v1_0.packet_milli = {}

-- Size: Packet Milli
otcmarkets_overnight_depthofbook_link_v1_0.packet_milli.size = 4

-- Display: Packet Milli
otcmarkets_overnight_depthofbook_link_v1_0.packet_milli.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otcmarkets_overnight_depthofbook_link_v1_0.packet_milli_format == 0 then
    return "Packet Milli: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otcmarkets_overnight_depthofbook_link_v1_0.packet_milli_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otcmarkets_overnight_depthofbook_link_v1_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Packet Milli: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Packet Milli: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Packet Milli
otcmarkets_overnight_depthofbook_link_v1_0.packet_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.packet_milli.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.packet_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Packet Size
otcmarkets_overnight_depthofbook_link_v1_0.packet_size = {}

-- Size: Packet Size
otcmarkets_overnight_depthofbook_link_v1_0.packet_size.size = 2

-- Display: Packet Size
otcmarkets_overnight_depthofbook_link_v1_0.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otcmarkets_overnight_depthofbook_link_v1_0.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Price
otcmarkets_overnight_depthofbook_link_v1_0.price = {}

-- Size: Price
otcmarkets_overnight_depthofbook_link_v1_0.price.size = 8

-- Display: Price
otcmarkets_overnight_depthofbook_link_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
otcmarkets_overnight_depthofbook_link_v1_0.price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Price
otcmarkets_overnight_depthofbook_link_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_overnight_depthofbook_link_v1_0.price.translate(raw)
  local display = otcmarkets_overnight_depthofbook_link_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
otcmarkets_overnight_depthofbook_link_v1_0.quantity = {}

-- Size: Quantity
otcmarkets_overnight_depthofbook_link_v1_0.quantity.size = 4

-- Display: Quantity
otcmarkets_overnight_depthofbook_link_v1_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
otcmarkets_overnight_depthofbook_link_v1_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Recovery Start Time
otcmarkets_overnight_depthofbook_link_v1_0.recovery_start_time = {}

-- Size: Recovery Start Time
otcmarkets_overnight_depthofbook_link_v1_0.recovery_start_time.size = 8

-- Display: Recovery Start Time
otcmarkets_overnight_depthofbook_link_v1_0.recovery_start_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Recovery Start Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Recovery Start Time
otcmarkets_overnight_depthofbook_link_v1_0.recovery_start_time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.recovery_start_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.recovery_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.recovery_start_time, range, value, display)

  return offset + length, value
end

-- Recovery Type
otcmarkets_overnight_depthofbook_link_v1_0.recovery_type = {}

-- Size: Recovery Type
otcmarkets_overnight_depthofbook_link_v1_0.recovery_type.size = 1

-- Display: Recovery Type
otcmarkets_overnight_depthofbook_link_v1_0.recovery_type.display = function(value)
  if value == 83 then
    return "Recovery Type: Scheduling Start (83)"
  end
  if value == 66 then
    return "Recovery Type: Recovery Begins (66)"
  end

  return "Recovery Type: Unknown("..value..")"
end

-- Dissect: Recovery Type
otcmarkets_overnight_depthofbook_link_v1_0.recovery_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.recovery_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.recovery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.recovery_type, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity = {}

-- Size: Remaining Quantity
otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity.size = 4

-- Display: Remaining Quantity
otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reporting Status
otcmarkets_overnight_depthofbook_link_v1_0.reporting_status = {}

-- Size: Reporting Status
otcmarkets_overnight_depthofbook_link_v1_0.reporting_status.size = 1

-- Display: Reporting Status
otcmarkets_overnight_depthofbook_link_v1_0.reporting_status.display = function(value)
  if value == "A" then
    return "Reporting Status: Alternative Reporting Standard (A)"
  end
  if value == "B" then
    return "Reporting Status: Bank Thrift (B)"
  end
  if value == "F" then
    return "Reporting Status: Sec Reporting (F)"
  end
  if value == "G" then
    return "Reporting Status: International Reporting (G)"
  end
  if value == "I" then
    return "Reporting Status: Insurance Company (I)"
  end
  if value == "N" then
    return "Reporting Status: No Reporting (N)"
  end
  if value == "O" then
    return "Reporting Status: Other Reporting Standard (O)"
  end
  if value == "R" then
    return "Reporting Status: Finra Reporting (R)"
  end
  if value == "V" then
    return "Reporting Status: Sec Reporting Investment Company (V)"
  end
  if value == "W" then
    return "Reporting Status: Sec Reporting Reg A (W)"
  end

  return "Reporting Status: Unknown("..value..")"
end

-- Dissect: Reporting Status
otcmarkets_overnight_depthofbook_link_v1_0.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Reserved Binary Long 8
otcmarkets_overnight_depthofbook_link_v1_0.reserved_binary_long_8 = {}

-- Size: Reserved Binary Long 8
otcmarkets_overnight_depthofbook_link_v1_0.reserved_binary_long_8.size = 8

-- Display: Reserved Binary Long 8
otcmarkets_overnight_depthofbook_link_v1_0.reserved_binary_long_8.display = function(value)
  return "Reserved Binary Long 8: "..value
end

-- Dissect: Reserved Binary Long 8
otcmarkets_overnight_depthofbook_link_v1_0.reserved_binary_long_8.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.reserved_binary_long_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.reserved_binary_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.reserved_binary_long_8, range, value, display)

  return offset + length, value
end

-- Security Action
otcmarkets_overnight_depthofbook_link_v1_0.security_action = {}

-- Size: Security Action
otcmarkets_overnight_depthofbook_link_v1_0.security_action.size = 1

-- Display: Security Action
otcmarkets_overnight_depthofbook_link_v1_0.security_action.display = function(value)
  if value == 1 then
    return "Security Action: Update (1)"
  end
  if value == 2 then
    return "Security Action: Add (2)"
  end
  if value == 3 then
    return "Security Action: Delete (3)"
  end
  if value == 4 then
    return "Security Action: Spin (4)"
  end

  return "Security Action: Unknown("..value..")"
end

-- Dissect: Security Action
otcmarkets_overnight_depthofbook_link_v1_0.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_action, range, value, display)

  return offset + length, value
end

-- Security Id
otcmarkets_overnight_depthofbook_link_v1_0.security_id = {}

-- Size: Security Id
otcmarkets_overnight_depthofbook_link_v1_0.security_id.size = 4

-- Display: Security Id
otcmarkets_overnight_depthofbook_link_v1_0.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otcmarkets_overnight_depthofbook_link_v1_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
otcmarkets_overnight_depthofbook_link_v1_0.security_status = {}

-- Size: Security Status
otcmarkets_overnight_depthofbook_link_v1_0.security_status.size = 1

-- Display: Security Status
otcmarkets_overnight_depthofbook_link_v1_0.security_status.display = function(value)
  if value == "A" then
    return "Security Status: Active (A)"
  end
  if value == "Q" then
    return "Security Status: Quote Only (Q)"
  end
  if value == "S" then
    return "Security Status: Suspended (S)"
  end
  if value == "H" then
    return "Security Status: Halted (H)"
  end
  if value == "I" then
    return "Security Status: Internal Halt (I)"
  end
  if value == "R" then
    return "Security Status: Revoked (R)"
  end
  if value == "D" then
    return "Security Status: Deleted (D)"
  end
  if value == "X" then
    return "Security Status: Removed From Idqs (X)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
otcmarkets_overnight_depthofbook_link_v1_0.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_status, range, value, display)

  return offset + length, value
end

-- Seq Num
otcmarkets_overnight_depthofbook_link_v1_0.seq_num = {}

-- Size: Seq Num
otcmarkets_overnight_depthofbook_link_v1_0.seq_num.size = 4

-- Display: Seq Num
otcmarkets_overnight_depthofbook_link_v1_0.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otcmarkets_overnight_depthofbook_link_v1_0.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session Time
otcmarkets_overnight_depthofbook_link_v1_0.session_time = {}

-- Size: Session Time
otcmarkets_overnight_depthofbook_link_v1_0.session_time.size = 8

-- Display: Session Time
otcmarkets_overnight_depthofbook_link_v1_0.session_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Session Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Session Time
otcmarkets_overnight_depthofbook_link_v1_0.session_time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.session_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.session_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.session_time, range, value, display)

  return offset + length, value
end

-- Side Indicator
otcmarkets_overnight_depthofbook_link_v1_0.side_indicator = {}

-- Size: Side Indicator
otcmarkets_overnight_depthofbook_link_v1_0.side_indicator.size = 1

-- Display: Side Indicator
otcmarkets_overnight_depthofbook_link_v1_0.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
otcmarkets_overnight_depthofbook_link_v1_0.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otcmarkets_overnight_depthofbook_link_v1_0.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otcmarkets_overnight_depthofbook_link_v1_0.spin_end_time_milli.size = 8

-- Display: Spin End Time Milli
otcmarkets_overnight_depthofbook_link_v1_0.spin_end_time_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Spin End Time Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Spin End Time Milli
otcmarkets_overnight_depthofbook_link_v1_0.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.spin_end_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_end_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Last Seq Num
otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otcmarkets_overnight_depthofbook_link_v1_0.spin_msg_ct = {}

-- Size: Spin Msg Ct
otcmarkets_overnight_depthofbook_link_v1_0.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otcmarkets_overnight_depthofbook_link_v1_0.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otcmarkets_overnight_depthofbook_link_v1_0.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Start Time Milli
otcmarkets_overnight_depthofbook_link_v1_0.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otcmarkets_overnight_depthofbook_link_v1_0.spin_start_time_milli.size = 8

-- Display: Spin Start Time Milli
otcmarkets_overnight_depthofbook_link_v1_0.spin_start_time_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Spin Start Time Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Spin Start Time Milli
otcmarkets_overnight_depthofbook_link_v1_0.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.spin_start_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_start_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Type
otcmarkets_overnight_depthofbook_link_v1_0.spin_type = {}

-- Size: Spin Type
otcmarkets_overnight_depthofbook_link_v1_0.spin_type.size = 1

-- Display: Spin Type
otcmarkets_overnight_depthofbook_link_v1_0.spin_type.display = function(value)
  if value == 1 then
    return "Spin Type: Reference (1)"
  end

  return "Spin Type: Unknown("..value..")"
end

-- Dissect: Spin Type
otcmarkets_overnight_depthofbook_link_v1_0.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.spin_type, range, value, display)

  return offset + length, value
end

-- Symbol
otcmarkets_overnight_depthofbook_link_v1_0.symbol = {}

-- Size: Symbol
otcmarkets_overnight_depthofbook_link_v1_0.symbol.size = 14

-- Display: Symbol
otcmarkets_overnight_depthofbook_link_v1_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otcmarkets_overnight_depthofbook_link_v1_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tier
otcmarkets_overnight_depthofbook_link_v1_0.tier = {}

-- Size: Tier
otcmarkets_overnight_depthofbook_link_v1_0.tier.size = 1

-- Display: Tier
otcmarkets_overnight_depthofbook_link_v1_0.tier.display = function(value)
  if value == 0 then
    return "Tier: No Tier (0)"
  end
  if value == 2 then
    return "Tier: Otcqx Us (2)"
  end
  if value == 6 then
    return "Tier: Otcqx International (6)"
  end
  if value == 10 then
    return "Tier: Otcqb (10)"
  end
  if value == 20 then
    return "Tier: Otcid (20)"
  end
  if value == 21 then
    return "Tier: Pink Limited (21)"
  end
  if value == 30 then
    return "Tier: Grey Market (30)"
  end
  if value == 40 then
    return "Tier: Expert Market (40)"
  end
  if value == 50 then
    return "Tier: Otc Bonds (50)"
  end

  return "Tier: Unknown("..value..")"
end

-- Dissect: Tier
otcmarkets_overnight_depthofbook_link_v1_0.tier.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.tier, range, value, display)

  return offset + length, value
end

-- Time
otcmarkets_overnight_depthofbook_link_v1_0.time = {}

-- Size: Time
otcmarkets_overnight_depthofbook_link_v1_0.time.size = 4

-- Display: Time
otcmarkets_overnight_depthofbook_link_v1_0.time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otcmarkets_overnight_depthofbook_link_v1_0.time_format == 0 then
    return "Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otcmarkets_overnight_depthofbook_link_v1_0.time_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otcmarkets_overnight_depthofbook_link_v1_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Time
otcmarkets_overnight_depthofbook_link_v1_0.time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.time, range, value, display)

  return offset + length, value
end

-- Trading Session
otcmarkets_overnight_depthofbook_link_v1_0.trading_session = {}

-- Size: Trading Session
otcmarkets_overnight_depthofbook_link_v1_0.trading_session.size = 1

-- Display: Trading Session
otcmarkets_overnight_depthofbook_link_v1_0.trading_session.display = function(value)
  if value == 1 then
    return "Trading Session: Order Acceptance (1)"
  end
  if value == 5 then
    return "Trading Session: Market Close (5)"
  end
  if value == 6 then
    return "Trading Session: Overnight (6)"
  end

  return "Trading Session: Unknown("..value..")"
end

-- Dissect: Trading Session
otcmarkets_overnight_depthofbook_link_v1_0.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.trading_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Unsolicited
otcmarkets_overnight_depthofbook_link_v1_0.unsolicited = {}

-- Size: Unsolicited
otcmarkets_overnight_depthofbook_link_v1_0.unsolicited.size = 1

-- Display: Unsolicited
otcmarkets_overnight_depthofbook_link_v1_0.unsolicited.display = function(value)
  if value == "Y" then
    return "Unsolicited: Unsolicited (Y)"
  end
  if value == "N" then
    return "Unsolicited: Not Unsolicited (N)"
  end

  return "Unsolicited: Unknown("..value..")"
end

-- Dissect: Unsolicited
otcmarkets_overnight_depthofbook_link_v1_0.unsolicited.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_overnight_depthofbook_link_v1_0.unsolicited.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.unsolicited.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.unsolicited, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect OtcMarkets Overnight DepthOfBook Link 1.0
-----------------------------------------------------------------------

-- System Recovery Event Message
otcmarkets_overnight_depthofbook_link_v1_0.system_recovery_event_message = {}

-- Size: System Recovery Event Message
otcmarkets_overnight_depthofbook_link_v1_0.system_recovery_event_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.deprecated.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.recovery_type.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.next_sequence_number.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.recovery_start_time.size

-- Display: System Recovery Event Message
otcmarkets_overnight_depthofbook_link_v1_0.system_recovery_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Recovery Event Message
otcmarkets_overnight_depthofbook_link_v1_0.system_recovery_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Deprecated: Binary Integer
  index, deprecated = otcmarkets_overnight_depthofbook_link_v1_0.deprecated.dissect(buffer, index, packet, parent)

  -- Recovery Type: Binary Byte
  index, recovery_type = otcmarkets_overnight_depthofbook_link_v1_0.recovery_type.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Binary Integer
  index, next_sequence_number = otcmarkets_overnight_depthofbook_link_v1_0.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Recovery Start Time: Binary Long
  index, recovery_start_time = otcmarkets_overnight_depthofbook_link_v1_0.recovery_start_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Recovery Event Message
otcmarkets_overnight_depthofbook_link_v1_0.system_recovery_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.system_recovery_event_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.system_recovery_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.system_recovery_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.system_recovery_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
otcmarkets_overnight_depthofbook_link_v1_0.imbalance_message = {}

-- Size: Imbalance Message
otcmarkets_overnight_depthofbook_link_v1_0.imbalance_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.time.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.symbol.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.current_inside_paired_shares.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_quantity.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_side.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.moc_shares_unmatched.size

-- Display: Imbalance Message
otcmarkets_overnight_depthofbook_link_v1_0.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
otcmarkets_overnight_depthofbook_link_v1_0.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_overnight_depthofbook_link_v1_0.time.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_overnight_depthofbook_link_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Current Inside Paired Shares: Binary Integer
  index, current_inside_paired_shares = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_paired_shares.dissect(buffer, index, packet, parent)

  -- Current Inside Closing Price: Binary Long Price
  index, current_inside_closing_price = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_closing_price.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Quantity: Binary Integer
  index, current_inside_imbalance_quantity = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Side: Printable ASCII
  index, current_inside_imbalance_side = otcmarkets_overnight_depthofbook_link_v1_0.current_inside_imbalance_side.dissect(buffer, index, packet, parent)

  -- Full Closing Price: Binary Long Price
  index, full_closing_price = otcmarkets_overnight_depthofbook_link_v1_0.full_closing_price.dissect(buffer, index, packet, parent)

  -- Ocio Only Closing Price: Binary Long Price
  index, ocio_only_closing_price = otcmarkets_overnight_depthofbook_link_v1_0.ocio_only_closing_price.dissect(buffer, index, packet, parent)

  -- Moc Shares Unmatched: Printable ASCII
  index, moc_shares_unmatched = otcmarkets_overnight_depthofbook_link_v1_0.moc_shares_unmatched.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
otcmarkets_overnight_depthofbook_link_v1_0.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.imbalance_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
otcmarkets_overnight_depthofbook_link_v1_0.trade_message = {}

-- Size: Trade Message
otcmarkets_overnight_depthofbook_link_v1_0.trade_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.time.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.side_indicator.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.quantity.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.symbol.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.price.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.execution_id.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.reserved_binary_long_8.size

-- Display: Trade Message
otcmarkets_overnight_depthofbook_link_v1_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
otcmarkets_overnight_depthofbook_link_v1_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_overnight_depthofbook_link_v1_0.time.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otcmarkets_overnight_depthofbook_link_v1_0.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_overnight_depthofbook_link_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_overnight_depthofbook_link_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_overnight_depthofbook_link_v1_0.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_overnight_depthofbook_link_v1_0.execution_id.dissect(buffer, index, packet, parent)

  -- Reserved Binary Long 8: Binary Long
  index, reserved_binary_long_8 = otcmarkets_overnight_depthofbook_link_v1_0.reserved_binary_long_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
otcmarkets_overnight_depthofbook_link_v1_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.trade_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution With Price Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_with_price_message = {}

-- Size: Order Execution With Price Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_with_price_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.time.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.order_id.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.execution_id.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.price.size

-- Display: Order Execution With Price Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution With Price Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_overnight_depthofbook_link_v1_0.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_overnight_depthofbook_link_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_overnight_depthofbook_link_v1_0.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_overnight_depthofbook_link_v1_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution With Price Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_execution_with_price_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.order_execution_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.order_execution_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.order_execution_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_message = {}

-- Size: Order Execution Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.time.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.order_id.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.execution_id.size

-- Display: Order Execution Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_overnight_depthofbook_link_v1_0.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_overnight_depthofbook_link_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otcmarkets_overnight_depthofbook_link_v1_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otcmarkets_overnight_depthofbook_link_v1_0.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_overnight_depthofbook_link_v1_0.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
otcmarkets_overnight_depthofbook_link_v1_0.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_execution_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
otcmarkets_overnight_depthofbook_link_v1_0.order_delete_message = {}

-- Size: Order Delete Message
otcmarkets_overnight_depthofbook_link_v1_0.order_delete_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.time.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.order_id.size

-- Display: Order Delete Message
otcmarkets_overnight_depthofbook_link_v1_0.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
otcmarkets_overnight_depthofbook_link_v1_0.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_overnight_depthofbook_link_v1_0.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_overnight_depthofbook_link_v1_0.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
otcmarkets_overnight_depthofbook_link_v1_0.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_delete_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Update Message
otcmarkets_overnight_depthofbook_link_v1_0.order_update_message = {}

-- Size: Order Update Message
otcmarkets_overnight_depthofbook_link_v1_0.order_update_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.time.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.order_id.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.quantity.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.price.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.order_flags.size

-- Display: Order Update Message
otcmarkets_overnight_depthofbook_link_v1_0.order_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Message
otcmarkets_overnight_depthofbook_link_v1_0.order_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_overnight_depthofbook_link_v1_0.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_overnight_depthofbook_link_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_overnight_depthofbook_link_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_overnight_depthofbook_link_v1_0.price.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otcmarkets_overnight_depthofbook_link_v1_0.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
otcmarkets_overnight_depthofbook_link_v1_0.order_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_update_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.order_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.order_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.order_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
otcmarkets_overnight_depthofbook_link_v1_0.order_add_message = {}

-- Size: Order Add Message
otcmarkets_overnight_depthofbook_link_v1_0.order_add_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.time.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.order_id.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.side_indicator.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.quantity.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.symbol.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.price.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.firm_id.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.unsolicited.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.order_flags.size

-- Display: Order Add Message
otcmarkets_overnight_depthofbook_link_v1_0.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
otcmarkets_overnight_depthofbook_link_v1_0.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_overnight_depthofbook_link_v1_0.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_overnight_depthofbook_link_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otcmarkets_overnight_depthofbook_link_v1_0.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_overnight_depthofbook_link_v1_0.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_overnight_depthofbook_link_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_overnight_depthofbook_link_v1_0.price.dissect(buffer, index, packet, parent)

  -- Firm Id: Printable ASCII
  index, firm_id = otcmarkets_overnight_depthofbook_link_v1_0.firm_id.dissect(buffer, index, packet, parent)

  -- Unsolicited: Printable ASCII
  index, unsolicited = otcmarkets_overnight_depthofbook_link_v1_0.unsolicited.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otcmarkets_overnight_depthofbook_link_v1_0.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
otcmarkets_overnight_depthofbook_link_v1_0.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.order_add_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Flags
otcmarkets_overnight_depthofbook_link_v1_0.security_flags = {}

-- Size: Security Flags
otcmarkets_overnight_depthofbook_link_v1_0.security_flags.size = 2

-- Display: Security Flags
otcmarkets_overnight_depthofbook_link_v1_0.security_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Piggyback Flag flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Piggyback Flag"
  end
  -- Is Caveat Flag flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Caveat Flag"
  end
  -- Is Qib Only 144 A flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Qib Only 144 A"
  end
  -- Is Unsolicited Only Flag flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Unsolicited Only Flag"
  end
  -- Is Closing Cross Auction flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Closing Cross Auction"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Flags
otcmarkets_overnight_depthofbook_link_v1_0.security_flags.bits = function(range, value, packet, parent)

  -- Piggyback Flag: 1 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.piggyback_flag, range, value)

  -- Caveat Flag: 1 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.caveat_flag, range, value)

  -- Qib Only 144 A: 1 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.qib_only_144_a, range, value)

  -- Unsolicited Only Flag: 1 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.unsolicited_only_flag, range, value)

  -- Closing Cross Auction: 1 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.closing_cross_auction, range, value)

  -- Reserved 11: 11 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.reserved_11, range, value)
end

-- Dissect: Security Flags
otcmarkets_overnight_depthofbook_link_v1_0.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_overnight_depthofbook_link_v1_0.security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_flags, range, display)

  if show.security_flags then
    otcmarkets_overnight_depthofbook_link_v1_0.security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Message
otcmarkets_overnight_depthofbook_link_v1_0.security_message = {}

-- Size: Security Message
otcmarkets_overnight_depthofbook_link_v1_0.security_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.symbol.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.last_update_milli.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.security_action.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.asset_class.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.security_id.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.security_flags.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.tier.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.reporting_status.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.security_status.size

-- Display: Security Message
otcmarkets_overnight_depthofbook_link_v1_0.security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Message
otcmarkets_overnight_depthofbook_link_v1_0.security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_overnight_depthofbook_link_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Binary Long
  index, last_update_milli = otcmarkets_overnight_depthofbook_link_v1_0.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Binary Integer
  index, security_action = otcmarkets_overnight_depthofbook_link_v1_0.security_action.dissect(buffer, index, packet, parent)

  -- Asset Class: Binary Byte
  index, asset_class = otcmarkets_overnight_depthofbook_link_v1_0.asset_class.dissect(buffer, index, packet, parent)

  -- Security Id: Binary Integer
  index, security_id = otcmarkets_overnight_depthofbook_link_v1_0.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 6 fields
  index, security_flags = otcmarkets_overnight_depthofbook_link_v1_0.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Binary Byte
  index, tier = otcmarkets_overnight_depthofbook_link_v1_0.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: Printable ASCII
  index, reporting_status = otcmarkets_overnight_depthofbook_link_v1_0.reporting_status.dissect(buffer, index, packet, parent)

  -- Security Status: Printable ASCII
  index, security_status = otcmarkets_overnight_depthofbook_link_v1_0.security_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
otcmarkets_overnight_depthofbook_link_v1_0.security_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.security_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.security_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Message
otcmarkets_overnight_depthofbook_link_v1_0.trading_session_message = {}

-- Size: Trading Session Message
otcmarkets_overnight_depthofbook_link_v1_0.trading_session_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.session_time.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.trading_session.size

-- Display: Trading Session Message
otcmarkets_overnight_depthofbook_link_v1_0.trading_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Message
otcmarkets_overnight_depthofbook_link_v1_0.trading_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Time: Binary Long
  index, session_time = otcmarkets_overnight_depthofbook_link_v1_0.session_time.dissect(buffer, index, packet, parent)

  -- Trading Session: Binary Byte
  index, trading_session = otcmarkets_overnight_depthofbook_link_v1_0.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Message
otcmarkets_overnight_depthofbook_link_v1_0.trading_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.trading_session_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.trading_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.trading_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.trading_session_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.end_of_spin_message = {}

-- Size: End Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.end_of_spin_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.spin_type.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.spin_msg_ct.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.spin_end_time_milli.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num.size

-- Display: End Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otcmarkets_overnight_depthofbook_link_v1_0.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: Binary Integer
  index, spin_msg_ct = otcmarkets_overnight_depthofbook_link_v1_0.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: Binary Long
  index, spin_end_time_milli = otcmarkets_overnight_depthofbook_link_v1_0.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.end_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.start_of_spin_message = {}

-- Size: Start Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.start_of_spin_message.size =
  otcmarkets_overnight_depthofbook_link_v1_0.spin_type.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.spin_start_time_milli.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num.size

-- Display: Start Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otcmarkets_overnight_depthofbook_link_v1_0.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: Binary Long
  index, spin_start_time_milli = otcmarkets_overnight_depthofbook_link_v1_0.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otcmarkets_overnight_depthofbook_link_v1_0.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otcmarkets_overnight_depthofbook_link_v1_0.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.start_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otcmarkets_overnight_depthofbook_link_v1_0.payload = {}

-- Dissect: Payload
otcmarkets_overnight_depthofbook_link_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Spin Message
  if message_type == 11 then
    return otcmarkets_overnight_depthofbook_link_v1_0.start_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Spin Message
  if message_type == 12 then
    return otcmarkets_overnight_depthofbook_link_v1_0.end_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Message
  if message_type == 20 then
    return otcmarkets_overnight_depthofbook_link_v1_0.trading_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Message
  if message_type == 9 then
    return otcmarkets_overnight_depthofbook_link_v1_0.security_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add Message
  if message_type == 21 then
    return otcmarkets_overnight_depthofbook_link_v1_0.order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Update Message
  if message_type == 22 then
    return otcmarkets_overnight_depthofbook_link_v1_0.order_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == 23 then
    return otcmarkets_overnight_depthofbook_link_v1_0.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 24 then
    return otcmarkets_overnight_depthofbook_link_v1_0.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution With Price Message
  if message_type == 25 then
    return otcmarkets_overnight_depthofbook_link_v1_0.order_execution_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 26 then
    return otcmarkets_overnight_depthofbook_link_v1_0.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 28 then
    return otcmarkets_overnight_depthofbook_link_v1_0.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Recovery Event Message
  if message_type == 74 then
    return otcmarkets_overnight_depthofbook_link_v1_0.system_recovery_event_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
otcmarkets_overnight_depthofbook_link_v1_0.message_header = {}

-- Size: Message Header
otcmarkets_overnight_depthofbook_link_v1_0.message_header.size =
  otcmarkets_overnight_depthofbook_link_v1_0.message_size.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.message_type.size

-- Display: Message Header
otcmarkets_overnight_depthofbook_link_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otcmarkets_overnight_depthofbook_link_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otcmarkets_overnight_depthofbook_link_v1_0.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, message_type = otcmarkets_overnight_depthofbook_link_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otcmarkets_overnight_depthofbook_link_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message_header, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otcmarkets_overnight_depthofbook_link_v1_0.message = {}

-- Display: Message
otcmarkets_overnight_depthofbook_link_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otcmarkets_overnight_depthofbook_link_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = otcmarkets_overnight_depthofbook_link_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 12 branches
  index = otcmarkets_overnight_depthofbook_link_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otcmarkets_overnight_depthofbook_link_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.message, buffer(offset, 0))
    local current = otcmarkets_overnight_depthofbook_link_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otcmarkets_overnight_depthofbook_link_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Flag
otcmarkets_overnight_depthofbook_link_v1_0.packet_flag = {}

-- Size: Packet Flag
otcmarkets_overnight_depthofbook_link_v1_0.packet_flag.size = 1

-- Display: Packet Flag
otcmarkets_overnight_depthofbook_link_v1_0.packet_flag.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Heartbeat flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Heartbeat"
  end
  -- Is Seq Num Reset flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Seq Num Reset"
  end
  -- Is Replay flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Replay"
  end
  -- Is Test flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Test"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Packet Flag
otcmarkets_overnight_depthofbook_link_v1_0.packet_flag.bits = function(range, value, packet, parent)

  -- Heartbeat: 1 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.heartbeat, range, value)

  -- Seq Num Reset: 1 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.seq_num_reset, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.reserved_4, range, value)

  -- Replay: 1 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.replay, range, value)

  -- Test: 1 Bit
  parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.test, range, value)
end

-- Dissect: Packet Flag
otcmarkets_overnight_depthofbook_link_v1_0.packet_flag.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_overnight_depthofbook_link_v1_0.packet_flag.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otcmarkets_overnight_depthofbook_link_v1_0.packet_flag.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.packet_flag, range, display)

  if show.packet_flag then
    otcmarkets_overnight_depthofbook_link_v1_0.packet_flag.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Packet Header
otcmarkets_overnight_depthofbook_link_v1_0.packet_header = {}

-- Size: Packet Header
otcmarkets_overnight_depthofbook_link_v1_0.packet_header.size =
  otcmarkets_overnight_depthofbook_link_v1_0.packet_size.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.seq_num.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.packet_flag.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.messages.size + 
  otcmarkets_overnight_depthofbook_link_v1_0.packet_milli.size

-- Display: Packet Header
otcmarkets_overnight_depthofbook_link_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otcmarkets_overnight_depthofbook_link_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otcmarkets_overnight_depthofbook_link_v1_0.packet_size.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otcmarkets_overnight_depthofbook_link_v1_0.seq_num.dissect(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = otcmarkets_overnight_depthofbook_link_v1_0.packet_flag.dissect(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = otcmarkets_overnight_depthofbook_link_v1_0.messages.dissect(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otcmarkets_overnight_depthofbook_link_v1_0.packet_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otcmarkets_overnight_depthofbook_link_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0.fields.packet_header, buffer(offset, 0))
    local index = otcmarkets_overnight_depthofbook_link_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_overnight_depthofbook_link_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_overnight_depthofbook_link_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
otcmarkets_overnight_depthofbook_link_v1_0.packet = {}

-- Verify required size of Udp packet
otcmarkets_overnight_depthofbook_link_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= otcmarkets_overnight_depthofbook_link_v1_0.packet_header.size
end

-- Dissect Packet
otcmarkets_overnight_depthofbook_link_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otcmarkets_overnight_depthofbook_link_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = otcmarkets_overnight_depthofbook_link_v1_0.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otcmarkets_overnight_depthofbook_link_v1_0.init()
end

-- Dissector for OtcMarkets Overnight DepthOfBook Link 1.0
function omi_otcmarkets_overnight_depthofbook_link_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otcmarkets_overnight_depthofbook_link_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_otcmarkets_overnight_depthofbook_link_v1_0, buffer(), omi_otcmarkets_overnight_depthofbook_link_v1_0.description, "("..buffer:len().." Bytes)")
  return otcmarkets_overnight_depthofbook_link_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for OtcMarkets Overnight DepthOfBook Link 1.0 (Udp)
local function omi_otcmarkets_overnight_depthofbook_link_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otcmarkets_overnight_depthofbook_link_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otcmarkets_overnight_depthofbook_link_v1_0
  omi_otcmarkets_overnight_depthofbook_link_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for OtcMarkets Overnight DepthOfBook Link 1.0
omi_otcmarkets_overnight_depthofbook_link_v1_0:register_heuristic("udp", omi_otcmarkets_overnight_depthofbook_link_v1_0_udp_heuristic)

-- Register OtcMarkets Overnight DepthOfBook Link 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_otcmarkets_overnight_depthofbook_link_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: OTC Markets Group
--   Version: 1.0
--   Date: Wednesday, April 1, 2026
--   Specification: OTC-Link-Overnight-OTC-MD-Specification.pdf
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
