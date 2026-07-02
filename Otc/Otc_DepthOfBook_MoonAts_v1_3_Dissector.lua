-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Otc DepthOfBook MoonAts 1.3 Protocol
local omi_otc_depthofbook_moonats_v1_3 = Proto("Omi.Otc.DepthOfBook.MoonAts.v1.3", "Otc DepthOfBook MoonAts 1.3")

-- Protocol table
local otc_depthofbook_moonats_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Otc DepthOfBook MoonAts 1.3 Fields
omi_otc_depthofbook_moonats_v1_3.fields.asset_class = ProtoField.new("Asset Class", "otc.depthofbook.moonats.v1.3.assetclass", ftypes.UINT8)
omi_otc_depthofbook_moonats_v1_3.fields.caveat_flag = ProtoField.new("Caveat Flag", "otc.depthofbook.moonats.v1.3.caveatflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_otc_depthofbook_moonats_v1_3.fields.closing_cross_auction = ProtoField.new("Closing Cross Auction", "otc.depthofbook.moonats.v1.3.closingcrossauction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_otc_depthofbook_moonats_v1_3.fields.current_inside_closing_price = ProtoField.new("Current Inside Closing Price", "otc.depthofbook.moonats.v1.3.currentinsideclosingprice", ftypes.DOUBLE)
omi_otc_depthofbook_moonats_v1_3.fields.current_inside_imbalance_quantity = ProtoField.new("Current Inside Imbalance Quantity", "otc.depthofbook.moonats.v1.3.currentinsideimbalancequantity", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.current_inside_imbalance_side = ProtoField.new("Current Inside Imbalance Side", "otc.depthofbook.moonats.v1.3.currentinsideimbalanceside", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.current_inside_paired_shares = ProtoField.new("Current Inside Paired Shares", "otc.depthofbook.moonats.v1.3.currentinsidepairedshares", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.deprecated = ProtoField.new("Deprecated", "otc.depthofbook.moonats.v1.3.deprecated", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.executed_quantity = ProtoField.new("Executed Quantity", "otc.depthofbook.moonats.v1.3.executedquantity", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.execution_id = ProtoField.new("Execution Id", "otc.depthofbook.moonats.v1.3.executionid", ftypes.UINT64)
omi_otc_depthofbook_moonats_v1_3.fields.firm_id = ProtoField.new("Firm Id", "otc.depthofbook.moonats.v1.3.firmid", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.full_closing_price = ProtoField.new("Full Closing Price", "otc.depthofbook.moonats.v1.3.fullclosingprice", ftypes.DOUBLE)
omi_otc_depthofbook_moonats_v1_3.fields.heartbeat = ProtoField.new("Heartbeat", "otc.depthofbook.moonats.v1.3.heartbeat", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_otc_depthofbook_moonats_v1_3.fields.last_update_milli = ProtoField.new("Last Update Milli", "otc.depthofbook.moonats.v1.3.lastupdatemilli", ftypes.UINT64)
omi_otc_depthofbook_moonats_v1_3.fields.message = ProtoField.new("Message", "otc.depthofbook.moonats.v1.3.message", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.message_header = ProtoField.new("Message Header", "otc.depthofbook.moonats.v1.3.messageheader", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.message_size = ProtoField.new("Message Size", "otc.depthofbook.moonats.v1.3.messagesize", ftypes.UINT16)
omi_otc_depthofbook_moonats_v1_3.fields.message_type = ProtoField.new("Message Type", "otc.depthofbook.moonats.v1.3.messagetype", ftypes.UINT8)
omi_otc_depthofbook_moonats_v1_3.fields.messages = ProtoField.new("Messages", "otc.depthofbook.moonats.v1.3.messages", ftypes.UINT8)
omi_otc_depthofbook_moonats_v1_3.fields.moc_shares_unmatched = ProtoField.new("Moc Shares Unmatched", "otc.depthofbook.moonats.v1.3.mocsharesunmatched", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "otc.depthofbook.moonats.v1.3.nextsequencenumber", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.ocio_only_closing_price = ProtoField.new("Ocio Only Closing Price", "otc.depthofbook.moonats.v1.3.ocioonlyclosingprice", ftypes.DOUBLE)
omi_otc_depthofbook_moonats_v1_3.fields.order_flags = ProtoField.new("Order Flags", "otc.depthofbook.moonats.v1.3.orderflags", ftypes.UINT16)
omi_otc_depthofbook_moonats_v1_3.fields.order_id = ProtoField.new("Order Id", "otc.depthofbook.moonats.v1.3.orderid", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.packet = ProtoField.new("Packet", "otc.depthofbook.moonats.v1.3.packet", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.packet_flag = ProtoField.new("Packet Flag", "otc.depthofbook.moonats.v1.3.packetflag", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.packet_header = ProtoField.new("Packet Header", "otc.depthofbook.moonats.v1.3.packetheader", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.packet_milli = ProtoField.new("Packet Milli", "otc.depthofbook.moonats.v1.3.packetmilli", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.packet_size = ProtoField.new("Packet Size", "otc.depthofbook.moonats.v1.3.packetsize", ftypes.UINT16)
omi_otc_depthofbook_moonats_v1_3.fields.piggyback_flag = ProtoField.new("Piggyback Flag", "otc.depthofbook.moonats.v1.3.piggybackflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_otc_depthofbook_moonats_v1_3.fields.price = ProtoField.new("Price", "otc.depthofbook.moonats.v1.3.price", ftypes.DOUBLE)
omi_otc_depthofbook_moonats_v1_3.fields.qib_only_144_a = ProtoField.new("Qib Only 144 A", "otc.depthofbook.moonats.v1.3.qibonly144a", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_otc_depthofbook_moonats_v1_3.fields.quantity = ProtoField.new("Quantity", "otc.depthofbook.moonats.v1.3.quantity", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.recovery_start_time = ProtoField.new("Recovery Start Time", "otc.depthofbook.moonats.v1.3.recoverystarttime", ftypes.UINT64)
omi_otc_depthofbook_moonats_v1_3.fields.recovery_type = ProtoField.new("Recovery Type", "otc.depthofbook.moonats.v1.3.recoverytype", ftypes.UINT8)
omi_otc_depthofbook_moonats_v1_3.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "otc.depthofbook.moonats.v1.3.remainingquantity", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.reporting_status = ProtoField.new("Reporting Status", "otc.depthofbook.moonats.v1.3.reportingstatus", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.reserved = ProtoField.new("Reserved", "otc.depthofbook.moonats.v1.3.reserved", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_otc_depthofbook_moonats_v1_3.fields.reserved_11 = ProtoField.new("Reserved 11", "otc.depthofbook.moonats.v1.3.reserved11", ftypes.UINT16, nil, base.DEC, 0xFFE0)
omi_otc_depthofbook_moonats_v1_3.fields.reserved_binary_long_8 = ProtoField.new("Reserved Binary Long 8", "otc.depthofbook.moonats.v1.3.reservedbinarylong8", ftypes.UINT64)
omi_otc_depthofbook_moonats_v1_3.fields.security_action = ProtoField.new("Security Action", "otc.depthofbook.moonats.v1.3.securityaction", ftypes.UINT8)
omi_otc_depthofbook_moonats_v1_3.fields.security_flags = ProtoField.new("Security Flags", "otc.depthofbook.moonats.v1.3.securityflags", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.security_id = ProtoField.new("Security Id", "otc.depthofbook.moonats.v1.3.securityid", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.security_status = ProtoField.new("Security Status", "otc.depthofbook.moonats.v1.3.securitystatus", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.seq_num = ProtoField.new("Seq Num", "otc.depthofbook.moonats.v1.3.seqnum", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.session_time = ProtoField.new("Session Time", "otc.depthofbook.moonats.v1.3.sessiontime", ftypes.UINT64)
omi_otc_depthofbook_moonats_v1_3.fields.side_indicator = ProtoField.new("Side Indicator", "otc.depthofbook.moonats.v1.3.sideindicator", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otc.depthofbook.moonats.v1.3.spinendtimemilli", ftypes.UINT64)
omi_otc_depthofbook_moonats_v1_3.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otc.depthofbook.moonats.v1.3.spinlastseqnum", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otc.depthofbook.moonats.v1.3.spinmsgct", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otc.depthofbook.moonats.v1.3.spinstarttimemilli", ftypes.UINT64)
omi_otc_depthofbook_moonats_v1_3.fields.spin_type = ProtoField.new("Spin Type", "otc.depthofbook.moonats.v1.3.spintype", ftypes.UINT8)
omi_otc_depthofbook_moonats_v1_3.fields.symbol = ProtoField.new("Symbol", "otc.depthofbook.moonats.v1.3.symbol", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.tier = ProtoField.new("Tier", "otc.depthofbook.moonats.v1.3.tier", ftypes.UINT8)
omi_otc_depthofbook_moonats_v1_3.fields.time = ProtoField.new("Time", "otc.depthofbook.moonats.v1.3.time", ftypes.UINT32)
omi_otc_depthofbook_moonats_v1_3.fields.trading_session = ProtoField.new("Trading Session", "otc.depthofbook.moonats.v1.3.tradingsession", ftypes.UINT8)
omi_otc_depthofbook_moonats_v1_3.fields.unsolicited = ProtoField.new("Unsolicited", "otc.depthofbook.moonats.v1.3.unsolicited", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.unsolicited_only_flag = ProtoField.new("Unsolicited Only Flag", "otc.depthofbook.moonats.v1.3.unsolicitedonlyflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)

-- Otc MoonAts DepthOfBook 1.3 Application Messages
omi_otc_depthofbook_moonats_v1_3.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otc.depthofbook.moonats.v1.3.endofspinmessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.imbalance_message = ProtoField.new("Imbalance Message", "otc.depthofbook.moonats.v1.3.imbalancemessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.order_add_message = ProtoField.new("Order Add Message", "otc.depthofbook.moonats.v1.3.orderaddmessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.order_delete_message = ProtoField.new("Order Delete Message", "otc.depthofbook.moonats.v1.3.orderdeletemessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.order_execution_message = ProtoField.new("Order Execution Message", "otc.depthofbook.moonats.v1.3.orderexecutionmessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.order_execution_with_price_message = ProtoField.new("Order Execution With Price Message", "otc.depthofbook.moonats.v1.3.orderexecutionwithpricemessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.order_update_message = ProtoField.new("Order Update Message", "otc.depthofbook.moonats.v1.3.orderupdatemessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.security_message = ProtoField.new("Security Message", "otc.depthofbook.moonats.v1.3.securitymessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otc.depthofbook.moonats.v1.3.startofspinmessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.system_recovery_event_message = ProtoField.new("System Recovery Event Message", "otc.depthofbook.moonats.v1.3.systemrecoveryeventmessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.trade_message = ProtoField.new("Trade Message", "otc.depthofbook.moonats.v1.3.trademessage", ftypes.STRING)
omi_otc_depthofbook_moonats_v1_3.fields.trading_session_message = ProtoField.new("Trading Session Message", "otc.depthofbook.moonats.v1.3.tradingsessionmessage", ftypes.STRING)

-- Otc DepthOfBook MoonAts 1.3 generated fields
omi_otc_depthofbook_moonats_v1_3.fields.message_index = ProtoField.new("Message Index", "otc.depthofbook.moonats.v1.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Otc DepthOfBook MoonAts 1.3 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_flag = true
show.packet_header = true
show.security_flags = true
show.message_index = true

-- Register Otc DepthOfBook MoonAts 1.3 Show Options
omi_otc_depthofbook_moonats_v1_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_otc_depthofbook_moonats_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_otc_depthofbook_moonats_v1_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_otc_depthofbook_moonats_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_otc_depthofbook_moonats_v1_3.prefs.show_packet_flag = Pref.bool("Show Packet Flag", show.packet_flag, "Parse and add Packet Flag to protocol tree")
omi_otc_depthofbook_moonats_v1_3.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_otc_depthofbook_moonats_v1_3.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")
omi_otc_depthofbook_moonats_v1_3.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_otc_depthofbook_moonats_v1_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_otc_depthofbook_moonats_v1_3.prefs.show_application_messages then
    show.application_messages = omi_otc_depthofbook_moonats_v1_3.prefs.show_application_messages
  end
  if show.message ~= omi_otc_depthofbook_moonats_v1_3.prefs.show_message then
    show.message = omi_otc_depthofbook_moonats_v1_3.prefs.show_message
  end
  if show.message_header ~= omi_otc_depthofbook_moonats_v1_3.prefs.show_message_header then
    show.message_header = omi_otc_depthofbook_moonats_v1_3.prefs.show_message_header
  end
  if show.packet ~= omi_otc_depthofbook_moonats_v1_3.prefs.show_packet then
    show.packet = omi_otc_depthofbook_moonats_v1_3.prefs.show_packet
  end
  if show.packet_flag ~= omi_otc_depthofbook_moonats_v1_3.prefs.show_packet_flag then
    show.packet_flag = omi_otc_depthofbook_moonats_v1_3.prefs.show_packet_flag
  end
  if show.packet_header ~= omi_otc_depthofbook_moonats_v1_3.prefs.show_packet_header then
    show.packet_header = omi_otc_depthofbook_moonats_v1_3.prefs.show_packet_header
  end
  if show.security_flags ~= omi_otc_depthofbook_moonats_v1_3.prefs.show_security_flags then
    show.security_flags = omi_otc_depthofbook_moonats_v1_3.prefs.show_security_flags
  end
  if show.message_index ~= omi_otc_depthofbook_moonats_v1_3.prefs.show_message_index then
    show.message_index = omi_otc_depthofbook_moonats_v1_3.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Otc DepthOfBook MoonAts 1.3 Fields
-----------------------------------------------------------------------

-- Asset Class
otc_depthofbook_moonats_v1_3.asset_class = {}

-- Size: Asset Class
otc_depthofbook_moonats_v1_3.asset_class.size = 1

-- Display: Asset Class
otc_depthofbook_moonats_v1_3.asset_class.display = function(value)
  if value == 1 then
    return "Asset Class: Equity (1)"
  end
  if value == 2 then
    return "Asset Class: Fixed Income (2)"
  end

  return "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otc_depthofbook_moonats_v1_3.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Current Inside Closing Price
otc_depthofbook_moonats_v1_3.current_inside_closing_price = {}

-- Size: Current Inside Closing Price
otc_depthofbook_moonats_v1_3.current_inside_closing_price.size = 8

-- Display: Current Inside Closing Price
otc_depthofbook_moonats_v1_3.current_inside_closing_price.display = function(value)
  return "Current Inside Closing Price: "..value
end

-- Translate: Current Inside Closing Price
otc_depthofbook_moonats_v1_3.current_inside_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Current Inside Closing Price
otc_depthofbook_moonats_v1_3.current_inside_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.current_inside_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_depthofbook_moonats_v1_3.current_inside_closing_price.translate(raw)
  local display = otc_depthofbook_moonats_v1_3.current_inside_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.current_inside_closing_price, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Quantity
otc_depthofbook_moonats_v1_3.current_inside_imbalance_quantity = {}

-- Size: Current Inside Imbalance Quantity
otc_depthofbook_moonats_v1_3.current_inside_imbalance_quantity.size = 4

-- Display: Current Inside Imbalance Quantity
otc_depthofbook_moonats_v1_3.current_inside_imbalance_quantity.display = function(value)
  return "Current Inside Imbalance Quantity: "..value
end

-- Dissect: Current Inside Imbalance Quantity
otc_depthofbook_moonats_v1_3.current_inside_imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.current_inside_imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.current_inside_imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.current_inside_imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Side
otc_depthofbook_moonats_v1_3.current_inside_imbalance_side = {}

-- Size: Current Inside Imbalance Side
otc_depthofbook_moonats_v1_3.current_inside_imbalance_side.size = 1

-- Display: Current Inside Imbalance Side
otc_depthofbook_moonats_v1_3.current_inside_imbalance_side.display = function(value)
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
otc_depthofbook_moonats_v1_3.current_inside_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.current_inside_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_depthofbook_moonats_v1_3.current_inside_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.current_inside_imbalance_side, range, value, display)

  return offset + length, value
end

-- Current Inside Paired Shares
otc_depthofbook_moonats_v1_3.current_inside_paired_shares = {}

-- Size: Current Inside Paired Shares
otc_depthofbook_moonats_v1_3.current_inside_paired_shares.size = 4

-- Display: Current Inside Paired Shares
otc_depthofbook_moonats_v1_3.current_inside_paired_shares.display = function(value)
  return "Current Inside Paired Shares: "..value
end

-- Dissect: Current Inside Paired Shares
otc_depthofbook_moonats_v1_3.current_inside_paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.current_inside_paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.current_inside_paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.current_inside_paired_shares, range, value, display)

  return offset + length, value
end

-- Deprecated
otc_depthofbook_moonats_v1_3.deprecated = {}

-- Size: Deprecated
otc_depthofbook_moonats_v1_3.deprecated.size = 4

-- Display: Deprecated
otc_depthofbook_moonats_v1_3.deprecated.display = function(value)
  return "Deprecated: "..value
end

-- Dissect: Deprecated
otc_depthofbook_moonats_v1_3.deprecated.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.deprecated.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.deprecated.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.deprecated, range, value, display)

  return offset + length, value
end

-- Executed Quantity
otc_depthofbook_moonats_v1_3.executed_quantity = {}

-- Size: Executed Quantity
otc_depthofbook_moonats_v1_3.executed_quantity.size = 4

-- Display: Executed Quantity
otc_depthofbook_moonats_v1_3.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
otc_depthofbook_moonats_v1_3.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
otc_depthofbook_moonats_v1_3.execution_id = {}

-- Size: Execution Id
otc_depthofbook_moonats_v1_3.execution_id.size = 8

-- Display: Execution Id
otc_depthofbook_moonats_v1_3.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
otc_depthofbook_moonats_v1_3.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.execution_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_depthofbook_moonats_v1_3.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Firm Id
otc_depthofbook_moonats_v1_3.firm_id = {}

-- Size: Firm Id
otc_depthofbook_moonats_v1_3.firm_id.size = 4

-- Display: Firm Id
otc_depthofbook_moonats_v1_3.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
otc_depthofbook_moonats_v1_3.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_depthofbook_moonats_v1_3.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Full Closing Price
otc_depthofbook_moonats_v1_3.full_closing_price = {}

-- Size: Full Closing Price
otc_depthofbook_moonats_v1_3.full_closing_price.size = 8

-- Display: Full Closing Price
otc_depthofbook_moonats_v1_3.full_closing_price.display = function(value)
  return "Full Closing Price: "..value
end

-- Translate: Full Closing Price
otc_depthofbook_moonats_v1_3.full_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Full Closing Price
otc_depthofbook_moonats_v1_3.full_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.full_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_depthofbook_moonats_v1_3.full_closing_price.translate(raw)
  local display = otc_depthofbook_moonats_v1_3.full_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.full_closing_price, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otc_depthofbook_moonats_v1_3.last_update_milli = {}

-- Size: Last Update Milli
otc_depthofbook_moonats_v1_3.last_update_milli.size = 8

-- Display: Last Update Milli
otc_depthofbook_moonats_v1_3.last_update_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Last Update Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Last Update Milli
otc_depthofbook_moonats_v1_3.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_depthofbook_moonats_v1_3.last_update_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.last_update_milli, range, value, display)

  return offset + length, value
end

-- Message Size
otc_depthofbook_moonats_v1_3.message_size = {}

-- Size: Message Size
otc_depthofbook_moonats_v1_3.message_size.size = 2

-- Display: Message Size
otc_depthofbook_moonats_v1_3.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otc_depthofbook_moonats_v1_3.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
otc_depthofbook_moonats_v1_3.message_type = {}

-- Size: Message Type
otc_depthofbook_moonats_v1_3.message_type.size = 1

-- Display: Message Type
otc_depthofbook_moonats_v1_3.message_type.display = function(value)
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
otc_depthofbook_moonats_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Messages
otc_depthofbook_moonats_v1_3.messages = {}

-- Size: Messages
otc_depthofbook_moonats_v1_3.messages.size = 1

-- Display: Messages
otc_depthofbook_moonats_v1_3.messages.display = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
otc_depthofbook_moonats_v1_3.messages.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.messages, range, value, display)

  return offset + length, value
end

-- Moc Shares Unmatched
otc_depthofbook_moonats_v1_3.moc_shares_unmatched = {}

-- Size: Moc Shares Unmatched
otc_depthofbook_moonats_v1_3.moc_shares_unmatched.size = 1

-- Display: Moc Shares Unmatched
otc_depthofbook_moonats_v1_3.moc_shares_unmatched.display = function(value)
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
otc_depthofbook_moonats_v1_3.moc_shares_unmatched.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.moc_shares_unmatched.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_depthofbook_moonats_v1_3.moc_shares_unmatched.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.moc_shares_unmatched, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
otc_depthofbook_moonats_v1_3.next_sequence_number = {}

-- Size: Next Sequence Number
otc_depthofbook_moonats_v1_3.next_sequence_number.size = 4

-- Display: Next Sequence Number
otc_depthofbook_moonats_v1_3.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
otc_depthofbook_moonats_v1_3.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Ocio Only Closing Price
otc_depthofbook_moonats_v1_3.ocio_only_closing_price = {}

-- Size: Ocio Only Closing Price
otc_depthofbook_moonats_v1_3.ocio_only_closing_price.size = 8

-- Display: Ocio Only Closing Price
otc_depthofbook_moonats_v1_3.ocio_only_closing_price.display = function(value)
  return "Ocio Only Closing Price: "..value
end

-- Translate: Ocio Only Closing Price
otc_depthofbook_moonats_v1_3.ocio_only_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Ocio Only Closing Price
otc_depthofbook_moonats_v1_3.ocio_only_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.ocio_only_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_depthofbook_moonats_v1_3.ocio_only_closing_price.translate(raw)
  local display = otc_depthofbook_moonats_v1_3.ocio_only_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.ocio_only_closing_price, range, value, display)

  return offset + length, value
end

-- Order Flags
otc_depthofbook_moonats_v1_3.order_flags = {}

-- Size: Order Flags
otc_depthofbook_moonats_v1_3.order_flags.size = 2

-- Display: Order Flags
otc_depthofbook_moonats_v1_3.order_flags.display = function(value)
  return "Order Flags: "..value
end

-- Dissect: Order Flags
otc_depthofbook_moonats_v1_3.order_flags.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.order_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.order_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.order_flags, range, value, display)

  return offset + length, value
end

-- Order Id
otc_depthofbook_moonats_v1_3.order_id = {}

-- Size: Order Id
otc_depthofbook_moonats_v1_3.order_id.size = 14

-- Display: Order Id
otc_depthofbook_moonats_v1_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
otc_depthofbook_moonats_v1_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_depthofbook_moonats_v1_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Milli
otc_depthofbook_moonats_v1_3.packet_milli = {}

-- Size: Packet Milli
otc_depthofbook_moonats_v1_3.packet_milli.size = 4

-- Display: Packet Milli
otc_depthofbook_moonats_v1_3.packet_milli.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otc_depthofbook_moonats_v1_3.packet_milli_format == 0 then
    return "Packet Milli: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otc_depthofbook_moonats_v1_3.packet_milli_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otc_depthofbook_moonats_v1_3.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Packet Milli: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Packet Milli: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Packet Milli
otc_depthofbook_moonats_v1_3.packet_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.packet_milli.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.packet_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Packet Size
otc_depthofbook_moonats_v1_3.packet_size = {}

-- Size: Packet Size
otc_depthofbook_moonats_v1_3.packet_size.size = 2

-- Display: Packet Size
otc_depthofbook_moonats_v1_3.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otc_depthofbook_moonats_v1_3.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Price
otc_depthofbook_moonats_v1_3.price = {}

-- Size: Price
otc_depthofbook_moonats_v1_3.price.size = 8

-- Display: Price
otc_depthofbook_moonats_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
otc_depthofbook_moonats_v1_3.price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Price
otc_depthofbook_moonats_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_depthofbook_moonats_v1_3.price.translate(raw)
  local display = otc_depthofbook_moonats_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
otc_depthofbook_moonats_v1_3.quantity = {}

-- Size: Quantity
otc_depthofbook_moonats_v1_3.quantity.size = 4

-- Display: Quantity
otc_depthofbook_moonats_v1_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
otc_depthofbook_moonats_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Recovery Start Time
otc_depthofbook_moonats_v1_3.recovery_start_time = {}

-- Size: Recovery Start Time
otc_depthofbook_moonats_v1_3.recovery_start_time.size = 8

-- Display: Recovery Start Time
otc_depthofbook_moonats_v1_3.recovery_start_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Recovery Start Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Recovery Start Time
otc_depthofbook_moonats_v1_3.recovery_start_time.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.recovery_start_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_depthofbook_moonats_v1_3.recovery_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.recovery_start_time, range, value, display)

  return offset + length, value
end

-- Recovery Type
otc_depthofbook_moonats_v1_3.recovery_type = {}

-- Size: Recovery Type
otc_depthofbook_moonats_v1_3.recovery_type.size = 1

-- Display: Recovery Type
otc_depthofbook_moonats_v1_3.recovery_type.display = function(value)
  if value == 83 then
    return "Recovery Type: Scheduling Start (83)"
  end
  if value == 66 then
    return "Recovery Type: Recovery Begins (66)"
  end

  return "Recovery Type: Unknown("..value..")"
end

-- Dissect: Recovery Type
otc_depthofbook_moonats_v1_3.recovery_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.recovery_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.recovery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.recovery_type, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
otc_depthofbook_moonats_v1_3.remaining_quantity = {}

-- Size: Remaining Quantity
otc_depthofbook_moonats_v1_3.remaining_quantity.size = 4

-- Display: Remaining Quantity
otc_depthofbook_moonats_v1_3.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
otc_depthofbook_moonats_v1_3.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reporting Status
otc_depthofbook_moonats_v1_3.reporting_status = {}

-- Size: Reporting Status
otc_depthofbook_moonats_v1_3.reporting_status.size = 1

-- Display: Reporting Status
otc_depthofbook_moonats_v1_3.reporting_status.display = function(value)
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
otc_depthofbook_moonats_v1_3.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_depthofbook_moonats_v1_3.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Reserved Binary Long 8
otc_depthofbook_moonats_v1_3.reserved_binary_long_8 = {}

-- Size: Reserved Binary Long 8
otc_depthofbook_moonats_v1_3.reserved_binary_long_8.size = 8

-- Display: Reserved Binary Long 8
otc_depthofbook_moonats_v1_3.reserved_binary_long_8.display = function(value)
  return "Reserved Binary Long 8: "..value
end

-- Dissect: Reserved Binary Long 8
otc_depthofbook_moonats_v1_3.reserved_binary_long_8.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.reserved_binary_long_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_depthofbook_moonats_v1_3.reserved_binary_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.reserved_binary_long_8, range, value, display)

  return offset + length, value
end

-- Security Action
otc_depthofbook_moonats_v1_3.security_action = {}

-- Size: Security Action
otc_depthofbook_moonats_v1_3.security_action.size = 1

-- Display: Security Action
otc_depthofbook_moonats_v1_3.security_action.display = function(value)
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
otc_depthofbook_moonats_v1_3.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.security_action, range, value, display)

  return offset + length, value
end

-- Security Id
otc_depthofbook_moonats_v1_3.security_id = {}

-- Size: Security Id
otc_depthofbook_moonats_v1_3.security_id.size = 4

-- Display: Security Id
otc_depthofbook_moonats_v1_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otc_depthofbook_moonats_v1_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
otc_depthofbook_moonats_v1_3.security_status = {}

-- Size: Security Status
otc_depthofbook_moonats_v1_3.security_status.size = 1

-- Display: Security Status
otc_depthofbook_moonats_v1_3.security_status.display = function(value)
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
otc_depthofbook_moonats_v1_3.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_depthofbook_moonats_v1_3.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.security_status, range, value, display)

  return offset + length, value
end

-- Seq Num
otc_depthofbook_moonats_v1_3.seq_num = {}

-- Size: Seq Num
otc_depthofbook_moonats_v1_3.seq_num.size = 4

-- Display: Seq Num
otc_depthofbook_moonats_v1_3.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otc_depthofbook_moonats_v1_3.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session Time
otc_depthofbook_moonats_v1_3.session_time = {}

-- Size: Session Time
otc_depthofbook_moonats_v1_3.session_time.size = 8

-- Display: Session Time
otc_depthofbook_moonats_v1_3.session_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Session Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Session Time
otc_depthofbook_moonats_v1_3.session_time.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.session_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_depthofbook_moonats_v1_3.session_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.session_time, range, value, display)

  return offset + length, value
end

-- Side Indicator
otc_depthofbook_moonats_v1_3.side_indicator = {}

-- Size: Side Indicator
otc_depthofbook_moonats_v1_3.side_indicator.size = 1

-- Display: Side Indicator
otc_depthofbook_moonats_v1_3.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
otc_depthofbook_moonats_v1_3.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_depthofbook_moonats_v1_3.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otc_depthofbook_moonats_v1_3.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otc_depthofbook_moonats_v1_3.spin_end_time_milli.size = 8

-- Display: Spin End Time Milli
otc_depthofbook_moonats_v1_3.spin_end_time_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Spin End Time Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Spin End Time Milli
otc_depthofbook_moonats_v1_3.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_depthofbook_moonats_v1_3.spin_end_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.spin_end_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Last Seq Num
otc_depthofbook_moonats_v1_3.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otc_depthofbook_moonats_v1_3.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otc_depthofbook_moonats_v1_3.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otc_depthofbook_moonats_v1_3.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otc_depthofbook_moonats_v1_3.spin_msg_ct = {}

-- Size: Spin Msg Ct
otc_depthofbook_moonats_v1_3.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otc_depthofbook_moonats_v1_3.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otc_depthofbook_moonats_v1_3.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Start Time Milli
otc_depthofbook_moonats_v1_3.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otc_depthofbook_moonats_v1_3.spin_start_time_milli.size = 8

-- Display: Spin Start Time Milli
otc_depthofbook_moonats_v1_3.spin_start_time_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Spin Start Time Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Spin Start Time Milli
otc_depthofbook_moonats_v1_3.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_depthofbook_moonats_v1_3.spin_start_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.spin_start_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Type
otc_depthofbook_moonats_v1_3.spin_type = {}

-- Size: Spin Type
otc_depthofbook_moonats_v1_3.spin_type.size = 1

-- Display: Spin Type
otc_depthofbook_moonats_v1_3.spin_type.display = function(value)
  if value == 1 then
    return "Spin Type: Reference (1)"
  end

  return "Spin Type: Unknown("..value..")"
end

-- Dissect: Spin Type
otc_depthofbook_moonats_v1_3.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.spin_type, range, value, display)

  return offset + length, value
end

-- Symbol
otc_depthofbook_moonats_v1_3.symbol = {}

-- Size: Symbol
otc_depthofbook_moonats_v1_3.symbol.size = 14

-- Display: Symbol
otc_depthofbook_moonats_v1_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otc_depthofbook_moonats_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_depthofbook_moonats_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tier
otc_depthofbook_moonats_v1_3.tier = {}

-- Size: Tier
otc_depthofbook_moonats_v1_3.tier.size = 1

-- Display: Tier
otc_depthofbook_moonats_v1_3.tier.display = function(value)
  if value == 0 then
    return "Tier: No Tier (0)"
  end

  return "Tier: Unknown("..value..")"
end

-- Dissect: Tier
otc_depthofbook_moonats_v1_3.tier.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.tier, range, value, display)

  return offset + length, value
end

-- Time
otc_depthofbook_moonats_v1_3.time = {}

-- Size: Time
otc_depthofbook_moonats_v1_3.time.size = 4

-- Display: Time
otc_depthofbook_moonats_v1_3.time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otc_depthofbook_moonats_v1_3.time_format == 0 then
    return "Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otc_depthofbook_moonats_v1_3.time_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otc_depthofbook_moonats_v1_3.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Time
otc_depthofbook_moonats_v1_3.time.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.time, range, value, display)

  return offset + length, value
end

-- Trading Session
otc_depthofbook_moonats_v1_3.trading_session = {}

-- Size: Trading Session
otc_depthofbook_moonats_v1_3.trading_session.size = 1

-- Display: Trading Session
otc_depthofbook_moonats_v1_3.trading_session.display = function(value)
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
otc_depthofbook_moonats_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.trading_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Unsolicited
otc_depthofbook_moonats_v1_3.unsolicited = {}

-- Size: Unsolicited
otc_depthofbook_moonats_v1_3.unsolicited.size = 1

-- Display: Unsolicited
otc_depthofbook_moonats_v1_3.unsolicited.display = function(value)
  if value == "Y" then
    return "Unsolicited: Unsolicited (Y)"
  end
  if value == "N" then
    return "Unsolicited: Not Unsolicited (N)"
  end

  return "Unsolicited: Unknown("..value..")"
end

-- Dissect: Unsolicited
otc_depthofbook_moonats_v1_3.unsolicited.dissect = function(buffer, offset, packet, parent)
  local length = otc_depthofbook_moonats_v1_3.unsolicited.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_depthofbook_moonats_v1_3.unsolicited.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.unsolicited, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Otc DepthOfBook MoonAts 1.3
-----------------------------------------------------------------------

-- System Recovery Event Message
otc_depthofbook_moonats_v1_3.system_recovery_event_message = {}

-- Size: System Recovery Event Message
otc_depthofbook_moonats_v1_3.system_recovery_event_message.size =
  otc_depthofbook_moonats_v1_3.deprecated.size + 
  otc_depthofbook_moonats_v1_3.recovery_type.size + 
  otc_depthofbook_moonats_v1_3.next_sequence_number.size + 
  otc_depthofbook_moonats_v1_3.recovery_start_time.size

-- Display: System Recovery Event Message
otc_depthofbook_moonats_v1_3.system_recovery_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Recovery Event Message
otc_depthofbook_moonats_v1_3.system_recovery_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Deprecated: Binary Integer
  index, deprecated = otc_depthofbook_moonats_v1_3.deprecated.dissect(buffer, index, packet, parent)

  -- Recovery Type: Binary Byte
  index, recovery_type = otc_depthofbook_moonats_v1_3.recovery_type.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Binary Integer
  index, next_sequence_number = otc_depthofbook_moonats_v1_3.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Recovery Start Time: Binary Long
  index, recovery_start_time = otc_depthofbook_moonats_v1_3.recovery_start_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Recovery Event Message
otc_depthofbook_moonats_v1_3.system_recovery_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.system_recovery_event_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.system_recovery_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.system_recovery_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.system_recovery_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
otc_depthofbook_moonats_v1_3.imbalance_message = {}

-- Size: Imbalance Message
otc_depthofbook_moonats_v1_3.imbalance_message.size =
  otc_depthofbook_moonats_v1_3.time.size + 
  otc_depthofbook_moonats_v1_3.symbol.size + 
  otc_depthofbook_moonats_v1_3.current_inside_paired_shares.size + 
  otc_depthofbook_moonats_v1_3.current_inside_closing_price.size + 
  otc_depthofbook_moonats_v1_3.current_inside_imbalance_quantity.size + 
  otc_depthofbook_moonats_v1_3.current_inside_imbalance_side.size + 
  otc_depthofbook_moonats_v1_3.full_closing_price.size + 
  otc_depthofbook_moonats_v1_3.ocio_only_closing_price.size + 
  otc_depthofbook_moonats_v1_3.moc_shares_unmatched.size

-- Display: Imbalance Message
otc_depthofbook_moonats_v1_3.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
otc_depthofbook_moonats_v1_3.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_depthofbook_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otc_depthofbook_moonats_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Current Inside Paired Shares: Binary Integer
  index, current_inside_paired_shares = otc_depthofbook_moonats_v1_3.current_inside_paired_shares.dissect(buffer, index, packet, parent)

  -- Current Inside Closing Price: Binary Long Price
  index, current_inside_closing_price = otc_depthofbook_moonats_v1_3.current_inside_closing_price.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Quantity: Binary Integer
  index, current_inside_imbalance_quantity = otc_depthofbook_moonats_v1_3.current_inside_imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Side: Printable ASCII
  index, current_inside_imbalance_side = otc_depthofbook_moonats_v1_3.current_inside_imbalance_side.dissect(buffer, index, packet, parent)

  -- Full Closing Price: Binary Long Price
  index, full_closing_price = otc_depthofbook_moonats_v1_3.full_closing_price.dissect(buffer, index, packet, parent)

  -- Ocio Only Closing Price: Binary Long Price
  index, ocio_only_closing_price = otc_depthofbook_moonats_v1_3.ocio_only_closing_price.dissect(buffer, index, packet, parent)

  -- Moc Shares Unmatched: Printable ASCII
  index, moc_shares_unmatched = otc_depthofbook_moonats_v1_3.moc_shares_unmatched.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
otc_depthofbook_moonats_v1_3.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.imbalance_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
otc_depthofbook_moonats_v1_3.trade_message = {}

-- Size: Trade Message
otc_depthofbook_moonats_v1_3.trade_message.size =
  otc_depthofbook_moonats_v1_3.time.size + 
  otc_depthofbook_moonats_v1_3.side_indicator.size + 
  otc_depthofbook_moonats_v1_3.quantity.size + 
  otc_depthofbook_moonats_v1_3.symbol.size + 
  otc_depthofbook_moonats_v1_3.price.size + 
  otc_depthofbook_moonats_v1_3.execution_id.size + 
  otc_depthofbook_moonats_v1_3.reserved_binary_long_8.size

-- Display: Trade Message
otc_depthofbook_moonats_v1_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
otc_depthofbook_moonats_v1_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_depthofbook_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otc_depthofbook_moonats_v1_3.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otc_depthofbook_moonats_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otc_depthofbook_moonats_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otc_depthofbook_moonats_v1_3.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otc_depthofbook_moonats_v1_3.execution_id.dissect(buffer, index, packet, parent)

  -- Reserved Binary Long 8: Binary Long
  index, reserved_binary_long_8 = otc_depthofbook_moonats_v1_3.reserved_binary_long_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
otc_depthofbook_moonats_v1_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.trade_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution With Price Message
otc_depthofbook_moonats_v1_3.order_execution_with_price_message = {}

-- Size: Order Execution With Price Message
otc_depthofbook_moonats_v1_3.order_execution_with_price_message.size =
  otc_depthofbook_moonats_v1_3.time.size + 
  otc_depthofbook_moonats_v1_3.order_id.size + 
  otc_depthofbook_moonats_v1_3.executed_quantity.size + 
  otc_depthofbook_moonats_v1_3.remaining_quantity.size + 
  otc_depthofbook_moonats_v1_3.execution_id.size + 
  otc_depthofbook_moonats_v1_3.price.size

-- Display: Order Execution With Price Message
otc_depthofbook_moonats_v1_3.order_execution_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution With Price Message
otc_depthofbook_moonats_v1_3.order_execution_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_depthofbook_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_depthofbook_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otc_depthofbook_moonats_v1_3.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otc_depthofbook_moonats_v1_3.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otc_depthofbook_moonats_v1_3.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otc_depthofbook_moonats_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution With Price Message
otc_depthofbook_moonats_v1_3.order_execution_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.order_execution_with_price_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.order_execution_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.order_execution_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.order_execution_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
otc_depthofbook_moonats_v1_3.order_execution_message = {}

-- Size: Order Execution Message
otc_depthofbook_moonats_v1_3.order_execution_message.size =
  otc_depthofbook_moonats_v1_3.time.size + 
  otc_depthofbook_moonats_v1_3.order_id.size + 
  otc_depthofbook_moonats_v1_3.executed_quantity.size + 
  otc_depthofbook_moonats_v1_3.remaining_quantity.size + 
  otc_depthofbook_moonats_v1_3.execution_id.size

-- Display: Order Execution Message
otc_depthofbook_moonats_v1_3.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
otc_depthofbook_moonats_v1_3.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_depthofbook_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_depthofbook_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otc_depthofbook_moonats_v1_3.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otc_depthofbook_moonats_v1_3.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otc_depthofbook_moonats_v1_3.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
otc_depthofbook_moonats_v1_3.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.order_execution_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
otc_depthofbook_moonats_v1_3.order_delete_message = {}

-- Size: Order Delete Message
otc_depthofbook_moonats_v1_3.order_delete_message.size =
  otc_depthofbook_moonats_v1_3.time.size + 
  otc_depthofbook_moonats_v1_3.order_id.size

-- Display: Order Delete Message
otc_depthofbook_moonats_v1_3.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
otc_depthofbook_moonats_v1_3.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_depthofbook_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_depthofbook_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
otc_depthofbook_moonats_v1_3.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.order_delete_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Update Message
otc_depthofbook_moonats_v1_3.order_update_message = {}

-- Size: Order Update Message
otc_depthofbook_moonats_v1_3.order_update_message.size =
  otc_depthofbook_moonats_v1_3.time.size + 
  otc_depthofbook_moonats_v1_3.order_id.size + 
  otc_depthofbook_moonats_v1_3.quantity.size + 
  otc_depthofbook_moonats_v1_3.price.size + 
  otc_depthofbook_moonats_v1_3.order_flags.size

-- Display: Order Update Message
otc_depthofbook_moonats_v1_3.order_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Message
otc_depthofbook_moonats_v1_3.order_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_depthofbook_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_depthofbook_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otc_depthofbook_moonats_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otc_depthofbook_moonats_v1_3.price.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otc_depthofbook_moonats_v1_3.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
otc_depthofbook_moonats_v1_3.order_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.order_update_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.order_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.order_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.order_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
otc_depthofbook_moonats_v1_3.order_add_message = {}

-- Size: Order Add Message
otc_depthofbook_moonats_v1_3.order_add_message.size =
  otc_depthofbook_moonats_v1_3.time.size + 
  otc_depthofbook_moonats_v1_3.order_id.size + 
  otc_depthofbook_moonats_v1_3.side_indicator.size + 
  otc_depthofbook_moonats_v1_3.quantity.size + 
  otc_depthofbook_moonats_v1_3.symbol.size + 
  otc_depthofbook_moonats_v1_3.price.size + 
  otc_depthofbook_moonats_v1_3.firm_id.size + 
  otc_depthofbook_moonats_v1_3.unsolicited.size + 
  otc_depthofbook_moonats_v1_3.order_flags.size

-- Display: Order Add Message
otc_depthofbook_moonats_v1_3.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
otc_depthofbook_moonats_v1_3.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_depthofbook_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_depthofbook_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otc_depthofbook_moonats_v1_3.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otc_depthofbook_moonats_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otc_depthofbook_moonats_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otc_depthofbook_moonats_v1_3.price.dissect(buffer, index, packet, parent)

  -- Firm Id: Printable ASCII
  index, firm_id = otc_depthofbook_moonats_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Unsolicited: Printable ASCII
  index, unsolicited = otc_depthofbook_moonats_v1_3.unsolicited.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otc_depthofbook_moonats_v1_3.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
otc_depthofbook_moonats_v1_3.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.order_add_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Flags
otc_depthofbook_moonats_v1_3.security_flags = {}

-- Size: Security Flags
otc_depthofbook_moonats_v1_3.security_flags.size = 2

-- Display: Security Flags
otc_depthofbook_moonats_v1_3.security_flags.display = function(range, value, packet, parent)
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
otc_depthofbook_moonats_v1_3.security_flags.bits = function(range, value, packet, parent)

  -- Piggyback Flag: 1 Bit
  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.piggyback_flag, range, value)

  -- Caveat Flag: 1 Bit
  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.caveat_flag, range, value)

  -- Qib Only 144 A: 1 Bit
  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.qib_only_144_a, range, value)

  -- Unsolicited Only Flag: 1 Bit
  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.unsolicited_only_flag, range, value)

  -- Closing Cross Auction: 1 Bit
  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.closing_cross_auction, range, value)

  -- Reserved 11: 11 Bit
  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.reserved_11, range, value)
end

-- Dissect: Security Flags
otc_depthofbook_moonats_v1_3.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otc_depthofbook_moonats_v1_3.security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.security_flags, range, display)

  if show.security_flags then
    otc_depthofbook_moonats_v1_3.security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Message
otc_depthofbook_moonats_v1_3.security_message = {}

-- Size: Security Message
otc_depthofbook_moonats_v1_3.security_message.size =
  otc_depthofbook_moonats_v1_3.symbol.size + 
  otc_depthofbook_moonats_v1_3.last_update_milli.size + 
  otc_depthofbook_moonats_v1_3.security_action.size + 
  otc_depthofbook_moonats_v1_3.asset_class.size + 
  otc_depthofbook_moonats_v1_3.security_id.size + 
  otc_depthofbook_moonats_v1_3.security_flags.size + 
  otc_depthofbook_moonats_v1_3.tier.size + 
  otc_depthofbook_moonats_v1_3.reporting_status.size + 
  otc_depthofbook_moonats_v1_3.security_status.size

-- Display: Security Message
otc_depthofbook_moonats_v1_3.security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Message
otc_depthofbook_moonats_v1_3.security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Printable ASCII
  index, symbol = otc_depthofbook_moonats_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Binary Long
  index, last_update_milli = otc_depthofbook_moonats_v1_3.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Binary Integer
  index, security_action = otc_depthofbook_moonats_v1_3.security_action.dissect(buffer, index, packet, parent)

  -- Asset Class: Binary Byte
  index, asset_class = otc_depthofbook_moonats_v1_3.asset_class.dissect(buffer, index, packet, parent)

  -- Security Id: Binary Integer
  index, security_id = otc_depthofbook_moonats_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 6 fields
  index, security_flags = otc_depthofbook_moonats_v1_3.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Binary Byte
  index, tier = otc_depthofbook_moonats_v1_3.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: Printable ASCII
  index, reporting_status = otc_depthofbook_moonats_v1_3.reporting_status.dissect(buffer, index, packet, parent)

  -- Security Status: Printable ASCII
  index, security_status = otc_depthofbook_moonats_v1_3.security_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
otc_depthofbook_moonats_v1_3.security_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.security_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.security_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Message
otc_depthofbook_moonats_v1_3.trading_session_message = {}

-- Size: Trading Session Message
otc_depthofbook_moonats_v1_3.trading_session_message.size =
  otc_depthofbook_moonats_v1_3.session_time.size + 
  otc_depthofbook_moonats_v1_3.trading_session.size

-- Display: Trading Session Message
otc_depthofbook_moonats_v1_3.trading_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Message
otc_depthofbook_moonats_v1_3.trading_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Time: Binary Long
  index, session_time = otc_depthofbook_moonats_v1_3.session_time.dissect(buffer, index, packet, parent)

  -- Trading Session: Binary Byte
  index, trading_session = otc_depthofbook_moonats_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Message
otc_depthofbook_moonats_v1_3.trading_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.trading_session_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.trading_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.trading_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.trading_session_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Spin Message
otc_depthofbook_moonats_v1_3.end_of_spin_message = {}

-- Size: End Of Spin Message
otc_depthofbook_moonats_v1_3.end_of_spin_message.size =
  otc_depthofbook_moonats_v1_3.spin_type.size + 
  otc_depthofbook_moonats_v1_3.spin_msg_ct.size + 
  otc_depthofbook_moonats_v1_3.spin_end_time_milli.size + 
  otc_depthofbook_moonats_v1_3.spin_last_seq_num.size

-- Display: End Of Spin Message
otc_depthofbook_moonats_v1_3.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otc_depthofbook_moonats_v1_3.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otc_depthofbook_moonats_v1_3.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: Binary Integer
  index, spin_msg_ct = otc_depthofbook_moonats_v1_3.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: Binary Long
  index, spin_end_time_milli = otc_depthofbook_moonats_v1_3.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otc_depthofbook_moonats_v1_3.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otc_depthofbook_moonats_v1_3.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.end_of_spin_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Spin Message
otc_depthofbook_moonats_v1_3.start_of_spin_message = {}

-- Size: Start Of Spin Message
otc_depthofbook_moonats_v1_3.start_of_spin_message.size =
  otc_depthofbook_moonats_v1_3.spin_type.size + 
  otc_depthofbook_moonats_v1_3.spin_start_time_milli.size + 
  otc_depthofbook_moonats_v1_3.spin_last_seq_num.size

-- Display: Start Of Spin Message
otc_depthofbook_moonats_v1_3.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otc_depthofbook_moonats_v1_3.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otc_depthofbook_moonats_v1_3.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: Binary Long
  index, spin_start_time_milli = otc_depthofbook_moonats_v1_3.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otc_depthofbook_moonats_v1_3.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otc_depthofbook_moonats_v1_3.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.start_of_spin_message, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otc_depthofbook_moonats_v1_3.payload = {}

-- Dissect: Payload
otc_depthofbook_moonats_v1_3.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Spin Message
  if message_type == 11 then
    return otc_depthofbook_moonats_v1_3.start_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Spin Message
  if message_type == 12 then
    return otc_depthofbook_moonats_v1_3.end_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Message
  if message_type == 20 then
    return otc_depthofbook_moonats_v1_3.trading_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Message
  if message_type == 9 then
    return otc_depthofbook_moonats_v1_3.security_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add Message
  if message_type == 21 then
    return otc_depthofbook_moonats_v1_3.order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Update Message
  if message_type == 22 then
    return otc_depthofbook_moonats_v1_3.order_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == 23 then
    return otc_depthofbook_moonats_v1_3.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 24 then
    return otc_depthofbook_moonats_v1_3.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution With Price Message
  if message_type == 25 then
    return otc_depthofbook_moonats_v1_3.order_execution_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 26 then
    return otc_depthofbook_moonats_v1_3.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 28 then
    return otc_depthofbook_moonats_v1_3.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Recovery Event Message
  if message_type == 74 then
    return otc_depthofbook_moonats_v1_3.system_recovery_event_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
otc_depthofbook_moonats_v1_3.message_header = {}

-- Size: Message Header
otc_depthofbook_moonats_v1_3.message_header.size =
  otc_depthofbook_moonats_v1_3.message_size.size + 
  otc_depthofbook_moonats_v1_3.message_type.size

-- Display: Message Header
otc_depthofbook_moonats_v1_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otc_depthofbook_moonats_v1_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otc_depthofbook_moonats_v1_3.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, message_type = otc_depthofbook_moonats_v1_3.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otc_depthofbook_moonats_v1_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.message_header, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otc_depthofbook_moonats_v1_3.message = {}

-- Display: Message
otc_depthofbook_moonats_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otc_depthofbook_moonats_v1_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = otc_depthofbook_moonats_v1_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 12 branches
  index = otc_depthofbook_moonats_v1_3.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otc_depthofbook_moonats_v1_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.message, buffer(offset, 0))
    local current = otc_depthofbook_moonats_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = otc_depthofbook_moonats_v1_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otc_depthofbook_moonats_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Flag
otc_depthofbook_moonats_v1_3.packet_flag = {}

-- Size: Packet Flag
otc_depthofbook_moonats_v1_3.packet_flag.size = 1

-- Display: Packet Flag
otc_depthofbook_moonats_v1_3.packet_flag.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Heartbeat flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Heartbeat"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Packet Flag
otc_depthofbook_moonats_v1_3.packet_flag.bits = function(range, value, packet, parent)

  -- Heartbeat: 1 Bit
  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.heartbeat, range, value)

  -- Reserved: 7 Bit
  parent:add(omi_otc_depthofbook_moonats_v1_3.fields.reserved, range, value)
end

-- Dissect: Packet Flag
otc_depthofbook_moonats_v1_3.packet_flag.dissect = function(buffer, offset, packet, parent)
  local size = otc_depthofbook_moonats_v1_3.packet_flag.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otc_depthofbook_moonats_v1_3.packet_flag.display(range, value, packet, parent)
  local element = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.packet_flag, range, display)

  if show.packet_flag then
    otc_depthofbook_moonats_v1_3.packet_flag.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Packet Header
otc_depthofbook_moonats_v1_3.packet_header = {}

-- Size: Packet Header
otc_depthofbook_moonats_v1_3.packet_header.size =
  otc_depthofbook_moonats_v1_3.packet_size.size + 
  otc_depthofbook_moonats_v1_3.seq_num.size + 
  otc_depthofbook_moonats_v1_3.packet_flag.size + 
  otc_depthofbook_moonats_v1_3.messages.size + 
  otc_depthofbook_moonats_v1_3.packet_milli.size

-- Display: Packet Header
otc_depthofbook_moonats_v1_3.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otc_depthofbook_moonats_v1_3.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otc_depthofbook_moonats_v1_3.packet_size.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otc_depthofbook_moonats_v1_3.seq_num.dissect(buffer, index, packet, parent)

  -- Packet Flag: Struct of 2 fields
  index, packet_flag = otc_depthofbook_moonats_v1_3.packet_flag.dissect(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = otc_depthofbook_moonats_v1_3.messages.dissect(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otc_depthofbook_moonats_v1_3.packet_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otc_depthofbook_moonats_v1_3.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_depthofbook_moonats_v1_3.fields.packet_header, buffer(offset, 0))
    local index = otc_depthofbook_moonats_v1_3.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_depthofbook_moonats_v1_3.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_depthofbook_moonats_v1_3.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
otc_depthofbook_moonats_v1_3.packet = {}

-- Verify required size of Udp packet
otc_depthofbook_moonats_v1_3.packet.requiredsize = function(buffer)
  return buffer:len() >= otc_depthofbook_moonats_v1_3.packet_header.size
end

-- Dissect Packet
otc_depthofbook_moonats_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otc_depthofbook_moonats_v1_3.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = otc_depthofbook_moonats_v1_3.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otc_depthofbook_moonats_v1_3.init()
end

-- Dissector for Otc DepthOfBook MoonAts 1.3
function omi_otc_depthofbook_moonats_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otc_depthofbook_moonats_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_otc_depthofbook_moonats_v1_3, buffer(), omi_otc_depthofbook_moonats_v1_3.description, "("..buffer:len().." Bytes)")
  return otc_depthofbook_moonats_v1_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Otc DepthOfBook MoonAts 1.3 (Udp)
local function omi_otc_depthofbook_moonats_v1_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otc_depthofbook_moonats_v1_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otc_depthofbook_moonats_v1_3
  omi_otc_depthofbook_moonats_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Otc DepthOfBook MoonAts 1.3
omi_otc_depthofbook_moonats_v1_3:register_heuristic("udp", omi_otc_depthofbook_moonats_v1_3_udp_heuristic)

-- Register Otc DepthOfBook MoonAts 1.3 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_otc_depthofbook_moonats_v1_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: OTC Markets Group
--   Version: 1.3
--   Date: Friday, May 1, 2026
--   Specification: MOON-ATS-MD-Specification.pdf
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
