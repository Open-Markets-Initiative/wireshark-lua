-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Otc Retransmission MoonAts 1.3 Protocol
local omi_otc_retransmission_moonats_v1_3 = Proto("Omi.Otc.Retransmission.MoonAts.v1.3", "Otc Retransmission MoonAts 1.3")

-- Protocol table
local otc_retransmission_moonats_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Otc Retransmission MoonAts 1.3 Fields
omi_otc_retransmission_moonats_v1_3.fields.ask_price = ProtoField.new("Ask Price", "otc.retransmission.moonats.v1.3.askprice", ftypes.DOUBLE)
omi_otc_retransmission_moonats_v1_3.fields.ask_volume = ProtoField.new("Ask Volume", "otc.retransmission.moonats.v1.3.askvolume", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.asset_class = ProtoField.new("Asset Class", "otc.retransmission.moonats.v1.3.assetclass", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.bid_price = ProtoField.new("Bid Price", "otc.retransmission.moonats.v1.3.bidprice", ftypes.DOUBLE)
omi_otc_retransmission_moonats_v1_3.fields.bid_volume = ProtoField.new("Bid Volume", "otc.retransmission.moonats.v1.3.bidvolume", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.caveat_flag = ProtoField.new("Caveat Flag", "otc.retransmission.moonats.v1.3.caveatflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_otc_retransmission_moonats_v1_3.fields.client_identifier = ProtoField.new("Client Identifier", "otc.retransmission.moonats.v1.3.clientidentifier", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.closing_cross_auction = ProtoField.new("Closing Cross Auction", "otc.retransmission.moonats.v1.3.closingcrossauction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_otc_retransmission_moonats_v1_3.fields.current_inside_closing_price = ProtoField.new("Current Inside Closing Price", "otc.retransmission.moonats.v1.3.currentinsideclosingprice", ftypes.DOUBLE)
omi_otc_retransmission_moonats_v1_3.fields.current_inside_imbalance_quantity = ProtoField.new("Current Inside Imbalance Quantity", "otc.retransmission.moonats.v1.3.currentinsideimbalancequantity", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.current_inside_imbalance_side = ProtoField.new("Current Inside Imbalance Side", "otc.retransmission.moonats.v1.3.currentinsideimbalanceside", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.current_inside_paired_shares = ProtoField.new("Current Inside Paired Shares", "otc.retransmission.moonats.v1.3.currentinsidepairedshares", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.deprecated = ProtoField.new("Deprecated", "otc.retransmission.moonats.v1.3.deprecated", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.enhanced_spin_status = ProtoField.new("Enhanced Spin Status", "otc.retransmission.moonats.v1.3.enhancedspinstatus", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.executed_quantity = ProtoField.new("Executed Quantity", "otc.retransmission.moonats.v1.3.executedquantity", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.execution_id = ProtoField.new("Execution Id", "otc.retransmission.moonats.v1.3.executionid", ftypes.UINT64)
omi_otc_retransmission_moonats_v1_3.fields.firm_id = ProtoField.new("Firm Id", "otc.retransmission.moonats.v1.3.firmid", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.full_closing_price = ProtoField.new("Full Closing Price", "otc.retransmission.moonats.v1.3.fullclosingprice", ftypes.DOUBLE)
omi_otc_retransmission_moonats_v1_3.fields.last_seq_num = ProtoField.new("Last Seq Num", "otc.retransmission.moonats.v1.3.lastseqnum", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.last_update_milli = ProtoField.new("Last Update Milli", "otc.retransmission.moonats.v1.3.lastupdatemilli", ftypes.UINT64)
omi_otc_retransmission_moonats_v1_3.fields.login_status = ProtoField.new("Login Status", "otc.retransmission.moonats.v1.3.loginstatus", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.message = ProtoField.new("Message", "otc.retransmission.moonats.v1.3.message", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.message_header = ProtoField.new("Message Header", "otc.retransmission.moonats.v1.3.messageheader", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.message_size = ProtoField.new("Message Size", "otc.retransmission.moonats.v1.3.messagesize", ftypes.UINT16)
omi_otc_retransmission_moonats_v1_3.fields.message_type = ProtoField.new("Message Type", "otc.retransmission.moonats.v1.3.messagetype", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.moc_shares_unmatched = ProtoField.new("Moc Shares Unmatched", "otc.retransmission.moonats.v1.3.mocsharesunmatched", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "otc.retransmission.moonats.v1.3.nextsequencenumber", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.number_of_messages = ProtoField.new("Number Of Messages", "otc.retransmission.moonats.v1.3.numberofmessages", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.ocio_only_closing_price = ProtoField.new("Ocio Only Closing Price", "otc.retransmission.moonats.v1.3.ocioonlyclosingprice", ftypes.DOUBLE)
omi_otc_retransmission_moonats_v1_3.fields.order_flags = ProtoField.new("Order Flags", "otc.retransmission.moonats.v1.3.orderflags", ftypes.UINT16)
omi_otc_retransmission_moonats_v1_3.fields.order_id = ProtoField.new("Order Id", "otc.retransmission.moonats.v1.3.orderid", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.packet = ProtoField.new("Packet", "otc.retransmission.moonats.v1.3.packet", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.password = ProtoField.new("Password", "otc.retransmission.moonats.v1.3.password", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.piggyback_flag = ProtoField.new("Piggyback Flag", "otc.retransmission.moonats.v1.3.piggybackflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_otc_retransmission_moonats_v1_3.fields.price = ProtoField.new("Price", "otc.retransmission.moonats.v1.3.price", ftypes.DOUBLE)
omi_otc_retransmission_moonats_v1_3.fields.qib_only_144_a = ProtoField.new("Qib Only 144 A", "otc.retransmission.moonats.v1.3.qibonly144a", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_otc_retransmission_moonats_v1_3.fields.quantity = ProtoField.new("Quantity", "otc.retransmission.moonats.v1.3.quantity", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.recovery_start_time = ProtoField.new("Recovery Start Time", "otc.retransmission.moonats.v1.3.recoverystarttime", ftypes.UINT64)
omi_otc_retransmission_moonats_v1_3.fields.recovery_type = ProtoField.new("Recovery Type", "otc.retransmission.moonats.v1.3.recoverytype", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "otc.retransmission.moonats.v1.3.remainingquantity", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.reporting_status = ProtoField.new("Reporting Status", "otc.retransmission.moonats.v1.3.reportingstatus", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.reserved_11 = ProtoField.new("Reserved 11", "otc.retransmission.moonats.v1.3.reserved11", ftypes.UINT16, nil, base.DEC, 0xFFE0)
omi_otc_retransmission_moonats_v1_3.fields.reserved_binary_long_8 = ProtoField.new("Reserved Binary Long 8", "otc.retransmission.moonats.v1.3.reservedbinarylong8", ftypes.UINT64)
omi_otc_retransmission_moonats_v1_3.fields.retran_via_tcp = ProtoField.new("Retran Via Tcp", "otc.retransmission.moonats.v1.3.retranviatcp", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.retransmission_status = ProtoField.new("Retransmission Status", "otc.retransmission.moonats.v1.3.retransmissionstatus", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.security_action = ProtoField.new("Security Action", "otc.retransmission.moonats.v1.3.securityaction", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.security_flags = ProtoField.new("Security Flags", "otc.retransmission.moonats.v1.3.securityflags", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.security_id = ProtoField.new("Security Id", "otc.retransmission.moonats.v1.3.securityid", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.security_status = ProtoField.new("Security Status", "otc.retransmission.moonats.v1.3.securitystatus", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.session_time = ProtoField.new("Session Time", "otc.retransmission.moonats.v1.3.sessiontime", ftypes.UINT64)
omi_otc_retransmission_moonats_v1_3.fields.side_indicator = ProtoField.new("Side Indicator", "otc.retransmission.moonats.v1.3.sideindicator", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otc.retransmission.moonats.v1.3.spinendtimemilli", ftypes.UINT64)
omi_otc_retransmission_moonats_v1_3.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otc.retransmission.moonats.v1.3.spinlastseqnum", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otc.retransmission.moonats.v1.3.spinmsgct", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otc.retransmission.moonats.v1.3.spinstarttimemilli", ftypes.UINT64)
omi_otc_retransmission_moonats_v1_3.fields.spin_status = ProtoField.new("Spin Status", "otc.retransmission.moonats.v1.3.spinstatus", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.spin_type = ProtoField.new("Spin Type", "otc.retransmission.moonats.v1.3.spintype", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.start_sequence = ProtoField.new("Start Sequence", "otc.retransmission.moonats.v1.3.startsequence", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.symbol = ProtoField.new("Symbol", "otc.retransmission.moonats.v1.3.symbol", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.tier = ProtoField.new("Tier", "otc.retransmission.moonats.v1.3.tier", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.time = ProtoField.new("Time", "otc.retransmission.moonats.v1.3.time", ftypes.UINT32)
omi_otc_retransmission_moonats_v1_3.fields.trading_session = ProtoField.new("Trading Session", "otc.retransmission.moonats.v1.3.tradingsession", ftypes.UINT8)
omi_otc_retransmission_moonats_v1_3.fields.unsolicited = ProtoField.new("Unsolicited", "otc.retransmission.moonats.v1.3.unsolicited", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.unsolicited_only_flag = ProtoField.new("Unsolicited Only Flag", "otc.retransmission.moonats.v1.3.unsolicitedonlyflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_otc_retransmission_moonats_v1_3.fields.user_id = ProtoField.new("User Id", "otc.retransmission.moonats.v1.3.userid", ftypes.STRING)

-- Otc MoonAts Retransmission 1.3 Application Messages
omi_otc_retransmission_moonats_v1_3.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otc.retransmission.moonats.v1.3.endofspinmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.enhanced_spin_request_message = ProtoField.new("Enhanced Spin Request Message", "otc.retransmission.moonats.v1.3.enhancedspinrequestmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.enhanced_spin_response_message = ProtoField.new("Enhanced Spin Response Message", "otc.retransmission.moonats.v1.3.enhancedspinresponsemessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "otc.retransmission.moonats.v1.3.heartbeatmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.imbalance_message = ProtoField.new("Imbalance Message", "otc.retransmission.moonats.v1.3.imbalancemessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.login_request_message = ProtoField.new("Login Request Message", "otc.retransmission.moonats.v1.3.loginrequestmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.login_response_message = ProtoField.new("Login Response Message", "otc.retransmission.moonats.v1.3.loginresponsemessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.order_add_message = ProtoField.new("Order Add Message", "otc.retransmission.moonats.v1.3.orderaddmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.order_delete_message = ProtoField.new("Order Delete Message", "otc.retransmission.moonats.v1.3.orderdeletemessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.order_execution_message = ProtoField.new("Order Execution Message", "otc.retransmission.moonats.v1.3.orderexecutionmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.order_execution_with_price_message = ProtoField.new("Order Execution With Price Message", "otc.retransmission.moonats.v1.3.orderexecutionwithpricemessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.order_update_message = ProtoField.new("Order Update Message", "otc.retransmission.moonats.v1.3.orderupdatemessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "otc.retransmission.moonats.v1.3.retransmissionrequestmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "otc.retransmission.moonats.v1.3.retransmissionresponsemessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.security_message = ProtoField.new("Security Message", "otc.retransmission.moonats.v1.3.securitymessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.spin_request_message = ProtoField.new("Spin Request Message", "otc.retransmission.moonats.v1.3.spinrequestmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.spin_response_message = ProtoField.new("Spin Response Message", "otc.retransmission.moonats.v1.3.spinresponsemessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otc.retransmission.moonats.v1.3.startofspinmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.system_recovery_event_message = ProtoField.new("System Recovery Event Message", "otc.retransmission.moonats.v1.3.systemrecoveryeventmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "otc.retransmission.moonats.v1.3.topofbookmessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.trade_message = ProtoField.new("Trade Message", "otc.retransmission.moonats.v1.3.trademessage", ftypes.STRING)
omi_otc_retransmission_moonats_v1_3.fields.trading_session_message = ProtoField.new("Trading Session Message", "otc.retransmission.moonats.v1.3.tradingsessionmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Otc Retransmission MoonAts 1.3 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.security_flags = true

-- Register Otc Retransmission MoonAts 1.3 Show Options
omi_otc_retransmission_moonats_v1_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_otc_retransmission_moonats_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_otc_retransmission_moonats_v1_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_otc_retransmission_moonats_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_otc_retransmission_moonats_v1_3.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")


-- Handle changed preferences
function omi_otc_retransmission_moonats_v1_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_otc_retransmission_moonats_v1_3.prefs.show_application_messages then
    show.application_messages = omi_otc_retransmission_moonats_v1_3.prefs.show_application_messages
  end
  if show.message ~= omi_otc_retransmission_moonats_v1_3.prefs.show_message then
    show.message = omi_otc_retransmission_moonats_v1_3.prefs.show_message
  end
  if show.message_header ~= omi_otc_retransmission_moonats_v1_3.prefs.show_message_header then
    show.message_header = omi_otc_retransmission_moonats_v1_3.prefs.show_message_header
  end
  if show.packet ~= omi_otc_retransmission_moonats_v1_3.prefs.show_packet then
    show.packet = omi_otc_retransmission_moonats_v1_3.prefs.show_packet
  end
  if show.security_flags ~= omi_otc_retransmission_moonats_v1_3.prefs.show_security_flags then
    show.security_flags = omi_otc_retransmission_moonats_v1_3.prefs.show_security_flags
  end
end


-----------------------------------------------------------------------
-- Otc Retransmission MoonAts 1.3 Fields
-----------------------------------------------------------------------

-- Ask Price
otc_retransmission_moonats_v1_3.ask_price = {}

-- Size: Ask Price
otc_retransmission_moonats_v1_3.ask_price.size = 8

-- Display: Ask Price
otc_retransmission_moonats_v1_3.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
otc_retransmission_moonats_v1_3.ask_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Ask Price
otc_retransmission_moonats_v1_3.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_retransmission_moonats_v1_3.ask_price.translate(raw)
  local display = otc_retransmission_moonats_v1_3.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
otc_retransmission_moonats_v1_3.ask_volume = {}

-- Size: Ask Volume
otc_retransmission_moonats_v1_3.ask_volume.size = 4

-- Display: Ask Volume
otc_retransmission_moonats_v1_3.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
otc_retransmission_moonats_v1_3.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.ask_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Asset Class
otc_retransmission_moonats_v1_3.asset_class = {}

-- Size: Asset Class
otc_retransmission_moonats_v1_3.asset_class.size = 1

-- Display: Asset Class
otc_retransmission_moonats_v1_3.asset_class.display = function(value)
  if value == 1 then
    return "Asset Class: Equity (1)"
  end
  if value == 2 then
    return "Asset Class: Fixed Income (2)"
  end

  return "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otc_retransmission_moonats_v1_3.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Bid Price
otc_retransmission_moonats_v1_3.bid_price = {}

-- Size: Bid Price
otc_retransmission_moonats_v1_3.bid_price.size = 8

-- Display: Bid Price
otc_retransmission_moonats_v1_3.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
otc_retransmission_moonats_v1_3.bid_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Bid Price
otc_retransmission_moonats_v1_3.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_retransmission_moonats_v1_3.bid_price.translate(raw)
  local display = otc_retransmission_moonats_v1_3.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Volume
otc_retransmission_moonats_v1_3.bid_volume = {}

-- Size: Bid Volume
otc_retransmission_moonats_v1_3.bid_volume.size = 4

-- Display: Bid Volume
otc_retransmission_moonats_v1_3.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
otc_retransmission_moonats_v1_3.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.bid_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Client Identifier
otc_retransmission_moonats_v1_3.client_identifier = {}

-- Size: Client Identifier
otc_retransmission_moonats_v1_3.client_identifier.size = 4

-- Display: Client Identifier
otc_retransmission_moonats_v1_3.client_identifier.display = function(value)
  return "Client Identifier: "..value
end

-- Dissect: Client Identifier
otc_retransmission_moonats_v1_3.client_identifier.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.client_identifier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.client_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.client_identifier, range, value, display)

  return offset + length, value
end

-- Current Inside Closing Price
otc_retransmission_moonats_v1_3.current_inside_closing_price = {}

-- Size: Current Inside Closing Price
otc_retransmission_moonats_v1_3.current_inside_closing_price.size = 8

-- Display: Current Inside Closing Price
otc_retransmission_moonats_v1_3.current_inside_closing_price.display = function(value)
  return "Current Inside Closing Price: "..value
end

-- Translate: Current Inside Closing Price
otc_retransmission_moonats_v1_3.current_inside_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Current Inside Closing Price
otc_retransmission_moonats_v1_3.current_inside_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.current_inside_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_retransmission_moonats_v1_3.current_inside_closing_price.translate(raw)
  local display = otc_retransmission_moonats_v1_3.current_inside_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.current_inside_closing_price, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Quantity
otc_retransmission_moonats_v1_3.current_inside_imbalance_quantity = {}

-- Size: Current Inside Imbalance Quantity
otc_retransmission_moonats_v1_3.current_inside_imbalance_quantity.size = 4

-- Display: Current Inside Imbalance Quantity
otc_retransmission_moonats_v1_3.current_inside_imbalance_quantity.display = function(value)
  return "Current Inside Imbalance Quantity: "..value
end

-- Dissect: Current Inside Imbalance Quantity
otc_retransmission_moonats_v1_3.current_inside_imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.current_inside_imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.current_inside_imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.current_inside_imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Side
otc_retransmission_moonats_v1_3.current_inside_imbalance_side = {}

-- Size: Current Inside Imbalance Side
otc_retransmission_moonats_v1_3.current_inside_imbalance_side.size = 1

-- Display: Current Inside Imbalance Side
otc_retransmission_moonats_v1_3.current_inside_imbalance_side.display = function(value)
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
otc_retransmission_moonats_v1_3.current_inside_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.current_inside_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.current_inside_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.current_inside_imbalance_side, range, value, display)

  return offset + length, value
end

-- Current Inside Paired Shares
otc_retransmission_moonats_v1_3.current_inside_paired_shares = {}

-- Size: Current Inside Paired Shares
otc_retransmission_moonats_v1_3.current_inside_paired_shares.size = 4

-- Display: Current Inside Paired Shares
otc_retransmission_moonats_v1_3.current_inside_paired_shares.display = function(value)
  return "Current Inside Paired Shares: "..value
end

-- Dissect: Current Inside Paired Shares
otc_retransmission_moonats_v1_3.current_inside_paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.current_inside_paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.current_inside_paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.current_inside_paired_shares, range, value, display)

  return offset + length, value
end

-- Deprecated
otc_retransmission_moonats_v1_3.deprecated = {}

-- Size: Deprecated
otc_retransmission_moonats_v1_3.deprecated.size = 4

-- Display: Deprecated
otc_retransmission_moonats_v1_3.deprecated.display = function(value)
  return "Deprecated: "..value
end

-- Dissect: Deprecated
otc_retransmission_moonats_v1_3.deprecated.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.deprecated.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.deprecated.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.deprecated, range, value, display)

  return offset + length, value
end

-- Enhanced Spin Status
otc_retransmission_moonats_v1_3.enhanced_spin_status = {}

-- Size: Enhanced Spin Status
otc_retransmission_moonats_v1_3.enhanced_spin_status.size = 1

-- Display: Enhanced Spin Status
otc_retransmission_moonats_v1_3.enhanced_spin_status.display = function(value)
  if value == 83 then
    return "Enhanced Spin Status: Start Of Spin (83)"
  end
  if value == 69 then
    return "Enhanced Spin Status: End Of Spin (69)"
  end

  return "Enhanced Spin Status: Unknown("..value..")"
end

-- Dissect: Enhanced Spin Status
otc_retransmission_moonats_v1_3.enhanced_spin_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.enhanced_spin_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.enhanced_spin_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.enhanced_spin_status, range, value, display)

  return offset + length, value
end

-- Executed Quantity
otc_retransmission_moonats_v1_3.executed_quantity = {}

-- Size: Executed Quantity
otc_retransmission_moonats_v1_3.executed_quantity.size = 4

-- Display: Executed Quantity
otc_retransmission_moonats_v1_3.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
otc_retransmission_moonats_v1_3.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
otc_retransmission_moonats_v1_3.execution_id = {}

-- Size: Execution Id
otc_retransmission_moonats_v1_3.execution_id.size = 8

-- Display: Execution Id
otc_retransmission_moonats_v1_3.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
otc_retransmission_moonats_v1_3.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.execution_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_retransmission_moonats_v1_3.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Firm Id
otc_retransmission_moonats_v1_3.firm_id = {}

-- Size: Firm Id
otc_retransmission_moonats_v1_3.firm_id.size = 4

-- Display: Firm Id
otc_retransmission_moonats_v1_3.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
otc_retransmission_moonats_v1_3.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Full Closing Price
otc_retransmission_moonats_v1_3.full_closing_price = {}

-- Size: Full Closing Price
otc_retransmission_moonats_v1_3.full_closing_price.size = 8

-- Display: Full Closing Price
otc_retransmission_moonats_v1_3.full_closing_price.display = function(value)
  return "Full Closing Price: "..value
end

-- Translate: Full Closing Price
otc_retransmission_moonats_v1_3.full_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Full Closing Price
otc_retransmission_moonats_v1_3.full_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.full_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_retransmission_moonats_v1_3.full_closing_price.translate(raw)
  local display = otc_retransmission_moonats_v1_3.full_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.full_closing_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
otc_retransmission_moonats_v1_3.last_seq_num = {}

-- Size: Last Seq Num
otc_retransmission_moonats_v1_3.last_seq_num.size = 4

-- Display: Last Seq Num
otc_retransmission_moonats_v1_3.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
otc_retransmission_moonats_v1_3.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otc_retransmission_moonats_v1_3.last_update_milli = {}

-- Size: Last Update Milli
otc_retransmission_moonats_v1_3.last_update_milli.size = 8

-- Display: Last Update Milli
otc_retransmission_moonats_v1_3.last_update_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Last Update Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Last Update Milli
otc_retransmission_moonats_v1_3.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_retransmission_moonats_v1_3.last_update_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.last_update_milli, range, value, display)

  return offset + length, value
end

-- Login Status
otc_retransmission_moonats_v1_3.login_status = {}

-- Size: Login Status
otc_retransmission_moonats_v1_3.login_status.size = 1

-- Display: Login Status
otc_retransmission_moonats_v1_3.login_status.display = function(value)
  if value == 89 then
    return "Login Status: Accepted (89)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
otc_retransmission_moonats_v1_3.login_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.login_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.login_status, range, value, display)

  return offset + length, value
end

-- Message Size
otc_retransmission_moonats_v1_3.message_size = {}

-- Size: Message Size
otc_retransmission_moonats_v1_3.message_size.size = 2

-- Display: Message Size
otc_retransmission_moonats_v1_3.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otc_retransmission_moonats_v1_3.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
otc_retransmission_moonats_v1_3.message_type = {}

-- Size: Message Type
otc_retransmission_moonats_v1_3.message_type.size = 1

-- Display: Message Type
otc_retransmission_moonats_v1_3.message_type.display = function(value)
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
  if value == 27 then
    return "Message Type: Top Of Book Message (27)"
  end
  if value == 28 then
    return "Message Type: Imbalance Message (28)"
  end
  if value == 74 then
    return "Message Type: System Recovery Event Message (74)"
  end
  if value == 108 then
    return "Message Type: Login Request Message (108)"
  end
  if value == 97 then
    return "Message Type: Login Response Message (97)"
  end
  if value == 114 then
    return "Message Type: Retransmission Request Message (114)"
  end
  if value == 98 then
    return "Message Type: Retransmission Response Message (98)"
  end
  if value == 115 then
    return "Message Type: Spin Request Message (115)"
  end
  if value == 99 then
    return "Message Type: Spin Response Message (99)"
  end
  if value == 116 then
    return "Message Type: Enhanced Spin Request Message (116)"
  end
  if value == 100 then
    return "Message Type: Enhanced Spin Response Message (100)"
  end
  if value == 104 then
    return "Message Type: Heartbeat Message (104)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
otc_retransmission_moonats_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Moc Shares Unmatched
otc_retransmission_moonats_v1_3.moc_shares_unmatched = {}

-- Size: Moc Shares Unmatched
otc_retransmission_moonats_v1_3.moc_shares_unmatched.size = 1

-- Display: Moc Shares Unmatched
otc_retransmission_moonats_v1_3.moc_shares_unmatched.display = function(value)
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
otc_retransmission_moonats_v1_3.moc_shares_unmatched.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.moc_shares_unmatched.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.moc_shares_unmatched.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.moc_shares_unmatched, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
otc_retransmission_moonats_v1_3.next_sequence_number = {}

-- Size: Next Sequence Number
otc_retransmission_moonats_v1_3.next_sequence_number.size = 4

-- Display: Next Sequence Number
otc_retransmission_moonats_v1_3.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
otc_retransmission_moonats_v1_3.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Number Of Messages
otc_retransmission_moonats_v1_3.number_of_messages = {}

-- Size: Number Of Messages
otc_retransmission_moonats_v1_3.number_of_messages.size = 4

-- Display: Number Of Messages
otc_retransmission_moonats_v1_3.number_of_messages.display = function(value)
  return "Number Of Messages: "..value
end

-- Dissect: Number Of Messages
otc_retransmission_moonats_v1_3.number_of_messages.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.number_of_messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.number_of_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.number_of_messages, range, value, display)

  return offset + length, value
end

-- Ocio Only Closing Price
otc_retransmission_moonats_v1_3.ocio_only_closing_price = {}

-- Size: Ocio Only Closing Price
otc_retransmission_moonats_v1_3.ocio_only_closing_price.size = 8

-- Display: Ocio Only Closing Price
otc_retransmission_moonats_v1_3.ocio_only_closing_price.display = function(value)
  return "Ocio Only Closing Price: "..value
end

-- Translate: Ocio Only Closing Price
otc_retransmission_moonats_v1_3.ocio_only_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Ocio Only Closing Price
otc_retransmission_moonats_v1_3.ocio_only_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.ocio_only_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_retransmission_moonats_v1_3.ocio_only_closing_price.translate(raw)
  local display = otc_retransmission_moonats_v1_3.ocio_only_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.ocio_only_closing_price, range, value, display)

  return offset + length, value
end

-- Order Flags
otc_retransmission_moonats_v1_3.order_flags = {}

-- Size: Order Flags
otc_retransmission_moonats_v1_3.order_flags.size = 2

-- Display: Order Flags
otc_retransmission_moonats_v1_3.order_flags.display = function(value)
  return "Order Flags: "..value
end

-- Dissect: Order Flags
otc_retransmission_moonats_v1_3.order_flags.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.order_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.order_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.order_flags, range, value, display)

  return offset + length, value
end

-- Order Id
otc_retransmission_moonats_v1_3.order_id = {}

-- Size: Order Id
otc_retransmission_moonats_v1_3.order_id.size = 14

-- Display: Order Id
otc_retransmission_moonats_v1_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
otc_retransmission_moonats_v1_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Password
otc_retransmission_moonats_v1_3.password = {}

-- Size: Password
otc_retransmission_moonats_v1_3.password.size = 16

-- Display: Password
otc_retransmission_moonats_v1_3.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
otc_retransmission_moonats_v1_3.password.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.password, range, value, display)

  return offset + length, value
end

-- Price
otc_retransmission_moonats_v1_3.price = {}

-- Size: Price
otc_retransmission_moonats_v1_3.price.size = 8

-- Display: Price
otc_retransmission_moonats_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
otc_retransmission_moonats_v1_3.price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Price
otc_retransmission_moonats_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otc_retransmission_moonats_v1_3.price.translate(raw)
  local display = otc_retransmission_moonats_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
otc_retransmission_moonats_v1_3.quantity = {}

-- Size: Quantity
otc_retransmission_moonats_v1_3.quantity.size = 4

-- Display: Quantity
otc_retransmission_moonats_v1_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
otc_retransmission_moonats_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Recovery Start Time
otc_retransmission_moonats_v1_3.recovery_start_time = {}

-- Size: Recovery Start Time
otc_retransmission_moonats_v1_3.recovery_start_time.size = 8

-- Display: Recovery Start Time
otc_retransmission_moonats_v1_3.recovery_start_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Recovery Start Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Recovery Start Time
otc_retransmission_moonats_v1_3.recovery_start_time.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.recovery_start_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_retransmission_moonats_v1_3.recovery_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.recovery_start_time, range, value, display)

  return offset + length, value
end

-- Recovery Type
otc_retransmission_moonats_v1_3.recovery_type = {}

-- Size: Recovery Type
otc_retransmission_moonats_v1_3.recovery_type.size = 1

-- Display: Recovery Type
otc_retransmission_moonats_v1_3.recovery_type.display = function(value)
  if value == 83 then
    return "Recovery Type: Scheduling Start (83)"
  end
  if value == 66 then
    return "Recovery Type: Recovery Begins (66)"
  end

  return "Recovery Type: Unknown("..value..")"
end

-- Dissect: Recovery Type
otc_retransmission_moonats_v1_3.recovery_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.recovery_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.recovery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.recovery_type, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
otc_retransmission_moonats_v1_3.remaining_quantity = {}

-- Size: Remaining Quantity
otc_retransmission_moonats_v1_3.remaining_quantity.size = 4

-- Display: Remaining Quantity
otc_retransmission_moonats_v1_3.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
otc_retransmission_moonats_v1_3.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reporting Status
otc_retransmission_moonats_v1_3.reporting_status = {}

-- Size: Reporting Status
otc_retransmission_moonats_v1_3.reporting_status.size = 1

-- Display: Reporting Status
otc_retransmission_moonats_v1_3.reporting_status.display = function(value)
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
otc_retransmission_moonats_v1_3.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Reserved Binary Long 8
otc_retransmission_moonats_v1_3.reserved_binary_long_8 = {}

-- Size: Reserved Binary Long 8
otc_retransmission_moonats_v1_3.reserved_binary_long_8.size = 8

-- Display: Reserved Binary Long 8
otc_retransmission_moonats_v1_3.reserved_binary_long_8.display = function(value)
  return "Reserved Binary Long 8: "..value
end

-- Dissect: Reserved Binary Long 8
otc_retransmission_moonats_v1_3.reserved_binary_long_8.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.reserved_binary_long_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_retransmission_moonats_v1_3.reserved_binary_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.reserved_binary_long_8, range, value, display)

  return offset + length, value
end

-- Retran Via Tcp
otc_retransmission_moonats_v1_3.retran_via_tcp = {}

-- Size: Retran Via Tcp
otc_retransmission_moonats_v1_3.retran_via_tcp.size = 1

-- Display: Retran Via Tcp
otc_retransmission_moonats_v1_3.retran_via_tcp.display = function(value)
  if value == 89 then
    return "Retran Via Tcp: Same Tcp Channel (89)"
  end

  return "Retran Via Tcp: Unknown("..value..")"
end

-- Dissect: Retran Via Tcp
otc_retransmission_moonats_v1_3.retran_via_tcp.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.retran_via_tcp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.retran_via_tcp.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.retran_via_tcp, range, value, display)

  return offset + length, value
end

-- Retransmission Status
otc_retransmission_moonats_v1_3.retransmission_status = {}

-- Size: Retransmission Status
otc_retransmission_moonats_v1_3.retransmission_status.size = 1

-- Display: Retransmission Status
otc_retransmission_moonats_v1_3.retransmission_status.display = function(value)
  if value == 89 then
    return "Retransmission Status: Will Follow (89)"
  end
  if value == 78 then
    return "Retransmission Status: Request Ignored (78)"
  end

  return "Retransmission Status: Unknown("..value..")"
end

-- Dissect: Retransmission Status
otc_retransmission_moonats_v1_3.retransmission_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.retransmission_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.retransmission_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.retransmission_status, range, value, display)

  return offset + length, value
end

-- Security Action
otc_retransmission_moonats_v1_3.security_action = {}

-- Size: Security Action
otc_retransmission_moonats_v1_3.security_action.size = 1

-- Display: Security Action
otc_retransmission_moonats_v1_3.security_action.display = function(value)
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
otc_retransmission_moonats_v1_3.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.security_action, range, value, display)

  return offset + length, value
end

-- Security Id
otc_retransmission_moonats_v1_3.security_id = {}

-- Size: Security Id
otc_retransmission_moonats_v1_3.security_id.size = 4

-- Display: Security Id
otc_retransmission_moonats_v1_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otc_retransmission_moonats_v1_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
otc_retransmission_moonats_v1_3.security_status = {}

-- Size: Security Status
otc_retransmission_moonats_v1_3.security_status.size = 1

-- Display: Security Status
otc_retransmission_moonats_v1_3.security_status.display = function(value)
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
otc_retransmission_moonats_v1_3.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.security_status, range, value, display)

  return offset + length, value
end

-- Session Time
otc_retransmission_moonats_v1_3.session_time = {}

-- Size: Session Time
otc_retransmission_moonats_v1_3.session_time.size = 8

-- Display: Session Time
otc_retransmission_moonats_v1_3.session_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Session Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Session Time
otc_retransmission_moonats_v1_3.session_time.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.session_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_retransmission_moonats_v1_3.session_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.session_time, range, value, display)

  return offset + length, value
end

-- Side Indicator
otc_retransmission_moonats_v1_3.side_indicator = {}

-- Size: Side Indicator
otc_retransmission_moonats_v1_3.side_indicator.size = 1

-- Display: Side Indicator
otc_retransmission_moonats_v1_3.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
otc_retransmission_moonats_v1_3.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otc_retransmission_moonats_v1_3.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otc_retransmission_moonats_v1_3.spin_end_time_milli.size = 8

-- Display: Spin End Time Milli
otc_retransmission_moonats_v1_3.spin_end_time_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Spin End Time Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Spin End Time Milli
otc_retransmission_moonats_v1_3.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_retransmission_moonats_v1_3.spin_end_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.spin_end_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Last Seq Num
otc_retransmission_moonats_v1_3.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otc_retransmission_moonats_v1_3.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otc_retransmission_moonats_v1_3.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otc_retransmission_moonats_v1_3.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otc_retransmission_moonats_v1_3.spin_msg_ct = {}

-- Size: Spin Msg Ct
otc_retransmission_moonats_v1_3.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otc_retransmission_moonats_v1_3.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otc_retransmission_moonats_v1_3.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Start Time Milli
otc_retransmission_moonats_v1_3.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otc_retransmission_moonats_v1_3.spin_start_time_milli.size = 8

-- Display: Spin Start Time Milli
otc_retransmission_moonats_v1_3.spin_start_time_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Spin Start Time Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Spin Start Time Milli
otc_retransmission_moonats_v1_3.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otc_retransmission_moonats_v1_3.spin_start_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.spin_start_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Status
otc_retransmission_moonats_v1_3.spin_status = {}

-- Size: Spin Status
otc_retransmission_moonats_v1_3.spin_status.size = 1

-- Display: Spin Status
otc_retransmission_moonats_v1_3.spin_status.display = function(value)
  if value == 83 then
    return "Spin Status: Start Of Spin (83)"
  end
  if value == 69 then
    return "Spin Status: End Of Spin (69)"
  end

  return "Spin Status: Unknown("..value..")"
end

-- Dissect: Spin Status
otc_retransmission_moonats_v1_3.spin_status.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.spin_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.spin_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.spin_status, range, value, display)

  return offset + length, value
end

-- Spin Type
otc_retransmission_moonats_v1_3.spin_type = {}

-- Size: Spin Type
otc_retransmission_moonats_v1_3.spin_type.size = 1

-- Display: Spin Type
otc_retransmission_moonats_v1_3.spin_type.display = function(value)
  if value == 1 then
    return "Spin Type: Reference (1)"
  end

  return "Spin Type: Unknown("..value..")"
end

-- Dissect: Spin Type
otc_retransmission_moonats_v1_3.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.spin_type, range, value, display)

  return offset + length, value
end

-- Start Sequence
otc_retransmission_moonats_v1_3.start_sequence = {}

-- Size: Start Sequence
otc_retransmission_moonats_v1_3.start_sequence.size = 4

-- Display: Start Sequence
otc_retransmission_moonats_v1_3.start_sequence.display = function(value)
  return "Start Sequence: "..value
end

-- Dissect: Start Sequence
otc_retransmission_moonats_v1_3.start_sequence.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.start_sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.start_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.start_sequence, range, value, display)

  return offset + length, value
end

-- Symbol
otc_retransmission_moonats_v1_3.symbol = {}

-- Size: Symbol
otc_retransmission_moonats_v1_3.symbol.size = 14

-- Display: Symbol
otc_retransmission_moonats_v1_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otc_retransmission_moonats_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tier
otc_retransmission_moonats_v1_3.tier = {}

-- Size: Tier
otc_retransmission_moonats_v1_3.tier.size = 1

-- Display: Tier
otc_retransmission_moonats_v1_3.tier.display = function(value)
  if value == 0 then
    return "Tier: No Tier (0)"
  end

  return "Tier: Unknown("..value..")"
end

-- Dissect: Tier
otc_retransmission_moonats_v1_3.tier.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.tier, range, value, display)

  return offset + length, value
end

-- Time
otc_retransmission_moonats_v1_3.time = {}

-- Size: Time
otc_retransmission_moonats_v1_3.time.size = 4

-- Display: Time
otc_retransmission_moonats_v1_3.time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otc_retransmission_moonats_v1_3.time_format == 0 then
    return "Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otc_retransmission_moonats_v1_3.time_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otc_retransmission_moonats_v1_3.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Time
otc_retransmission_moonats_v1_3.time.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.time, range, value, display)

  return offset + length, value
end

-- Trading Session
otc_retransmission_moonats_v1_3.trading_session = {}

-- Size: Trading Session
otc_retransmission_moonats_v1_3.trading_session.size = 1

-- Display: Trading Session
otc_retransmission_moonats_v1_3.trading_session.display = function(value)
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
otc_retransmission_moonats_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.trading_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Unsolicited
otc_retransmission_moonats_v1_3.unsolicited = {}

-- Size: Unsolicited
otc_retransmission_moonats_v1_3.unsolicited.size = 1

-- Display: Unsolicited
otc_retransmission_moonats_v1_3.unsolicited.display = function(value)
  if value == "Y" then
    return "Unsolicited: Unsolicited (Y)"
  end
  if value == "N" then
    return "Unsolicited: Not Unsolicited (N)"
  end

  return "Unsolicited: Unknown("..value..")"
end

-- Dissect: Unsolicited
otc_retransmission_moonats_v1_3.unsolicited.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.unsolicited.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.unsolicited.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.unsolicited, range, value, display)

  return offset + length, value
end

-- User Id
otc_retransmission_moonats_v1_3.user_id = {}

-- Size: User Id
otc_retransmission_moonats_v1_3.user_id.size = 16

-- Display: User Id
otc_retransmission_moonats_v1_3.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
otc_retransmission_moonats_v1_3.user_id.dissect = function(buffer, offset, packet, parent)
  local length = otc_retransmission_moonats_v1_3.user_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otc_retransmission_moonats_v1_3.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_retransmission_moonats_v1_3.fields.user_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Otc Retransmission MoonAts 1.3
-----------------------------------------------------------------------

-- Heartbeat Message
otc_retransmission_moonats_v1_3.heartbeat_message = {}

-- Size: Heartbeat Message
otc_retransmission_moonats_v1_3.heartbeat_message.size =
  otc_retransmission_moonats_v1_3.client_identifier.size

-- Display: Heartbeat Message
otc_retransmission_moonats_v1_3.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
otc_retransmission_moonats_v1_3.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otc_retransmission_moonats_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
otc_retransmission_moonats_v1_3.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.heartbeat_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhanced Spin Response Message
otc_retransmission_moonats_v1_3.enhanced_spin_response_message = {}

-- Size: Enhanced Spin Response Message
otc_retransmission_moonats_v1_3.enhanced_spin_response_message.size =
  otc_retransmission_moonats_v1_3.client_identifier.size + 
  otc_retransmission_moonats_v1_3.enhanced_spin_status.size + 
  otc_retransmission_moonats_v1_3.last_seq_num.size

-- Display: Enhanced Spin Response Message
otc_retransmission_moonats_v1_3.enhanced_spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Spin Response Message
otc_retransmission_moonats_v1_3.enhanced_spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otc_retransmission_moonats_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  -- Enhanced Spin Status: Binary Byte
  index, enhanced_spin_status = otc_retransmission_moonats_v1_3.enhanced_spin_status.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary Integer
  index, last_seq_num = otc_retransmission_moonats_v1_3.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Spin Response Message
otc_retransmission_moonats_v1_3.enhanced_spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.enhanced_spin_response_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.enhanced_spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.enhanced_spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.enhanced_spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhanced Spin Request Message
otc_retransmission_moonats_v1_3.enhanced_spin_request_message = {}

-- Size: Enhanced Spin Request Message
otc_retransmission_moonats_v1_3.enhanced_spin_request_message.size =
  otc_retransmission_moonats_v1_3.client_identifier.size

-- Display: Enhanced Spin Request Message
otc_retransmission_moonats_v1_3.enhanced_spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Spin Request Message
otc_retransmission_moonats_v1_3.enhanced_spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otc_retransmission_moonats_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Spin Request Message
otc_retransmission_moonats_v1_3.enhanced_spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.enhanced_spin_request_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.enhanced_spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.enhanced_spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.enhanced_spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
otc_retransmission_moonats_v1_3.spin_response_message = {}

-- Size: Spin Response Message
otc_retransmission_moonats_v1_3.spin_response_message.size =
  otc_retransmission_moonats_v1_3.client_identifier.size + 
  otc_retransmission_moonats_v1_3.spin_status.size

-- Display: Spin Response Message
otc_retransmission_moonats_v1_3.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
otc_retransmission_moonats_v1_3.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otc_retransmission_moonats_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  -- Spin Status: Binary Byte
  index, spin_status = otc_retransmission_moonats_v1_3.spin_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
otc_retransmission_moonats_v1_3.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.spin_response_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
otc_retransmission_moonats_v1_3.spin_request_message = {}

-- Size: Spin Request Message
otc_retransmission_moonats_v1_3.spin_request_message.size =
  otc_retransmission_moonats_v1_3.client_identifier.size

-- Display: Spin Request Message
otc_retransmission_moonats_v1_3.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
otc_retransmission_moonats_v1_3.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otc_retransmission_moonats_v1_3.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
otc_retransmission_moonats_v1_3.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.spin_request_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Response Message
otc_retransmission_moonats_v1_3.retransmission_response_message = {}

-- Size: Retransmission Response Message
otc_retransmission_moonats_v1_3.retransmission_response_message.size =
  otc_retransmission_moonats_v1_3.start_sequence.size + 
  otc_retransmission_moonats_v1_3.number_of_messages.size + 
  otc_retransmission_moonats_v1_3.retransmission_status.size

-- Display: Retransmission Response Message
otc_retransmission_moonats_v1_3.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
otc_retransmission_moonats_v1_3.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence: Binary Integer
  index, start_sequence = otc_retransmission_moonats_v1_3.start_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Messages: Binary Integer
  index, number_of_messages = otc_retransmission_moonats_v1_3.number_of_messages.dissect(buffer, index, packet, parent)

  -- Retransmission Status: Binary Byte
  index, retransmission_status = otc_retransmission_moonats_v1_3.retransmission_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
otc_retransmission_moonats_v1_3.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.retransmission_response_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
otc_retransmission_moonats_v1_3.retransmission_request_message = {}

-- Size: Retransmission Request Message
otc_retransmission_moonats_v1_3.retransmission_request_message.size =
  otc_retransmission_moonats_v1_3.start_sequence.size + 
  otc_retransmission_moonats_v1_3.number_of_messages.size + 
  otc_retransmission_moonats_v1_3.retran_via_tcp.size

-- Display: Retransmission Request Message
otc_retransmission_moonats_v1_3.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
otc_retransmission_moonats_v1_3.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence: Binary Integer
  index, start_sequence = otc_retransmission_moonats_v1_3.start_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Messages: Binary Integer
  index, number_of_messages = otc_retransmission_moonats_v1_3.number_of_messages.dissect(buffer, index, packet, parent)

  -- Retran Via Tcp: Binary Byte
  index, retran_via_tcp = otc_retransmission_moonats_v1_3.retran_via_tcp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
otc_retransmission_moonats_v1_3.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.retransmission_request_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
otc_retransmission_moonats_v1_3.login_response_message = {}

-- Size: Login Response Message
otc_retransmission_moonats_v1_3.login_response_message.size =
  otc_retransmission_moonats_v1_3.user_id.size + 
  otc_retransmission_moonats_v1_3.login_status.size

-- Display: Login Response Message
otc_retransmission_moonats_v1_3.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
otc_retransmission_moonats_v1_3.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Printable ASCII
  index, user_id = otc_retransmission_moonats_v1_3.user_id.dissect(buffer, index, packet, parent)

  -- Login Status: Binary Byte
  index, login_status = otc_retransmission_moonats_v1_3.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
otc_retransmission_moonats_v1_3.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.login_response_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
otc_retransmission_moonats_v1_3.login_request_message = {}

-- Size: Login Request Message
otc_retransmission_moonats_v1_3.login_request_message.size =
  otc_retransmission_moonats_v1_3.user_id.size + 
  otc_retransmission_moonats_v1_3.password.size

-- Display: Login Request Message
otc_retransmission_moonats_v1_3.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
otc_retransmission_moonats_v1_3.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Printable ASCII
  index, user_id = otc_retransmission_moonats_v1_3.user_id.dissect(buffer, index, packet, parent)

  -- Password: Printable ASCII
  index, password = otc_retransmission_moonats_v1_3.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
otc_retransmission_moonats_v1_3.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.login_request_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- System Recovery Event Message
otc_retransmission_moonats_v1_3.system_recovery_event_message = {}

-- Size: System Recovery Event Message
otc_retransmission_moonats_v1_3.system_recovery_event_message.size =
  otc_retransmission_moonats_v1_3.deprecated.size + 
  otc_retransmission_moonats_v1_3.recovery_type.size + 
  otc_retransmission_moonats_v1_3.next_sequence_number.size + 
  otc_retransmission_moonats_v1_3.recovery_start_time.size

-- Display: System Recovery Event Message
otc_retransmission_moonats_v1_3.system_recovery_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Recovery Event Message
otc_retransmission_moonats_v1_3.system_recovery_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Deprecated: Binary Integer
  index, deprecated = otc_retransmission_moonats_v1_3.deprecated.dissect(buffer, index, packet, parent)

  -- Recovery Type: Binary Byte
  index, recovery_type = otc_retransmission_moonats_v1_3.recovery_type.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Binary Integer
  index, next_sequence_number = otc_retransmission_moonats_v1_3.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Recovery Start Time: Binary Long
  index, recovery_start_time = otc_retransmission_moonats_v1_3.recovery_start_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Recovery Event Message
otc_retransmission_moonats_v1_3.system_recovery_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.system_recovery_event_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.system_recovery_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.system_recovery_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.system_recovery_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
otc_retransmission_moonats_v1_3.imbalance_message = {}

-- Size: Imbalance Message
otc_retransmission_moonats_v1_3.imbalance_message.size =
  otc_retransmission_moonats_v1_3.time.size + 
  otc_retransmission_moonats_v1_3.symbol.size + 
  otc_retransmission_moonats_v1_3.current_inside_paired_shares.size + 
  otc_retransmission_moonats_v1_3.current_inside_closing_price.size + 
  otc_retransmission_moonats_v1_3.current_inside_imbalance_quantity.size + 
  otc_retransmission_moonats_v1_3.current_inside_imbalance_side.size + 
  otc_retransmission_moonats_v1_3.full_closing_price.size + 
  otc_retransmission_moonats_v1_3.ocio_only_closing_price.size + 
  otc_retransmission_moonats_v1_3.moc_shares_unmatched.size

-- Display: Imbalance Message
otc_retransmission_moonats_v1_3.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
otc_retransmission_moonats_v1_3.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_retransmission_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otc_retransmission_moonats_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Current Inside Paired Shares: Binary Integer
  index, current_inside_paired_shares = otc_retransmission_moonats_v1_3.current_inside_paired_shares.dissect(buffer, index, packet, parent)

  -- Current Inside Closing Price: Binary Long Price
  index, current_inside_closing_price = otc_retransmission_moonats_v1_3.current_inside_closing_price.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Quantity: Binary Integer
  index, current_inside_imbalance_quantity = otc_retransmission_moonats_v1_3.current_inside_imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Side: Printable ASCII
  index, current_inside_imbalance_side = otc_retransmission_moonats_v1_3.current_inside_imbalance_side.dissect(buffer, index, packet, parent)

  -- Full Closing Price: Binary Long Price
  index, full_closing_price = otc_retransmission_moonats_v1_3.full_closing_price.dissect(buffer, index, packet, parent)

  -- Ocio Only Closing Price: Binary Long Price
  index, ocio_only_closing_price = otc_retransmission_moonats_v1_3.ocio_only_closing_price.dissect(buffer, index, packet, parent)

  -- Moc Shares Unmatched: Printable ASCII
  index, moc_shares_unmatched = otc_retransmission_moonats_v1_3.moc_shares_unmatched.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
otc_retransmission_moonats_v1_3.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.imbalance_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Book Message
otc_retransmission_moonats_v1_3.top_of_book_message = {}

-- Size: Top Of Book Message
otc_retransmission_moonats_v1_3.top_of_book_message.size =
  otc_retransmission_moonats_v1_3.time.size + 
  otc_retransmission_moonats_v1_3.symbol.size + 
  otc_retransmission_moonats_v1_3.ask_price.size + 
  otc_retransmission_moonats_v1_3.ask_volume.size + 
  otc_retransmission_moonats_v1_3.bid_price.size + 
  otc_retransmission_moonats_v1_3.bid_volume.size + 
  otc_retransmission_moonats_v1_3.unsolicited.size

-- Display: Top Of Book Message
otc_retransmission_moonats_v1_3.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
otc_retransmission_moonats_v1_3.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_retransmission_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otc_retransmission_moonats_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary Long Price
  index, ask_price = otc_retransmission_moonats_v1_3.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: Binary Integer
  index, ask_volume = otc_retransmission_moonats_v1_3.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary Long Price
  index, bid_price = otc_retransmission_moonats_v1_3.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: Binary Integer
  index, bid_volume = otc_retransmission_moonats_v1_3.bid_volume.dissect(buffer, index, packet, parent)

  -- Unsolicited: Printable ASCII
  index, unsolicited = otc_retransmission_moonats_v1_3.unsolicited.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
otc_retransmission_moonats_v1_3.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.top_of_book_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
otc_retransmission_moonats_v1_3.trade_message = {}

-- Size: Trade Message
otc_retransmission_moonats_v1_3.trade_message.size =
  otc_retransmission_moonats_v1_3.time.size + 
  otc_retransmission_moonats_v1_3.side_indicator.size + 
  otc_retransmission_moonats_v1_3.quantity.size + 
  otc_retransmission_moonats_v1_3.symbol.size + 
  otc_retransmission_moonats_v1_3.price.size + 
  otc_retransmission_moonats_v1_3.execution_id.size + 
  otc_retransmission_moonats_v1_3.reserved_binary_long_8.size

-- Display: Trade Message
otc_retransmission_moonats_v1_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
otc_retransmission_moonats_v1_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_retransmission_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otc_retransmission_moonats_v1_3.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otc_retransmission_moonats_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otc_retransmission_moonats_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otc_retransmission_moonats_v1_3.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otc_retransmission_moonats_v1_3.execution_id.dissect(buffer, index, packet, parent)

  -- Reserved Binary Long 8: Binary Long
  index, reserved_binary_long_8 = otc_retransmission_moonats_v1_3.reserved_binary_long_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
otc_retransmission_moonats_v1_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.trade_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution With Price Message
otc_retransmission_moonats_v1_3.order_execution_with_price_message = {}

-- Size: Order Execution With Price Message
otc_retransmission_moonats_v1_3.order_execution_with_price_message.size =
  otc_retransmission_moonats_v1_3.time.size + 
  otc_retransmission_moonats_v1_3.order_id.size + 
  otc_retransmission_moonats_v1_3.executed_quantity.size + 
  otc_retransmission_moonats_v1_3.remaining_quantity.size + 
  otc_retransmission_moonats_v1_3.execution_id.size + 
  otc_retransmission_moonats_v1_3.price.size

-- Display: Order Execution With Price Message
otc_retransmission_moonats_v1_3.order_execution_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution With Price Message
otc_retransmission_moonats_v1_3.order_execution_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_retransmission_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_retransmission_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otc_retransmission_moonats_v1_3.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otc_retransmission_moonats_v1_3.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otc_retransmission_moonats_v1_3.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otc_retransmission_moonats_v1_3.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution With Price Message
otc_retransmission_moonats_v1_3.order_execution_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.order_execution_with_price_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.order_execution_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.order_execution_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.order_execution_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
otc_retransmission_moonats_v1_3.order_execution_message = {}

-- Size: Order Execution Message
otc_retransmission_moonats_v1_3.order_execution_message.size =
  otc_retransmission_moonats_v1_3.time.size + 
  otc_retransmission_moonats_v1_3.order_id.size + 
  otc_retransmission_moonats_v1_3.executed_quantity.size + 
  otc_retransmission_moonats_v1_3.remaining_quantity.size + 
  otc_retransmission_moonats_v1_3.execution_id.size

-- Display: Order Execution Message
otc_retransmission_moonats_v1_3.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
otc_retransmission_moonats_v1_3.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_retransmission_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_retransmission_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otc_retransmission_moonats_v1_3.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otc_retransmission_moonats_v1_3.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otc_retransmission_moonats_v1_3.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
otc_retransmission_moonats_v1_3.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.order_execution_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
otc_retransmission_moonats_v1_3.order_delete_message = {}

-- Size: Order Delete Message
otc_retransmission_moonats_v1_3.order_delete_message.size =
  otc_retransmission_moonats_v1_3.time.size + 
  otc_retransmission_moonats_v1_3.order_id.size

-- Display: Order Delete Message
otc_retransmission_moonats_v1_3.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
otc_retransmission_moonats_v1_3.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_retransmission_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_retransmission_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
otc_retransmission_moonats_v1_3.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.order_delete_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Update Message
otc_retransmission_moonats_v1_3.order_update_message = {}

-- Size: Order Update Message
otc_retransmission_moonats_v1_3.order_update_message.size =
  otc_retransmission_moonats_v1_3.time.size + 
  otc_retransmission_moonats_v1_3.order_id.size + 
  otc_retransmission_moonats_v1_3.quantity.size + 
  otc_retransmission_moonats_v1_3.price.size + 
  otc_retransmission_moonats_v1_3.order_flags.size

-- Display: Order Update Message
otc_retransmission_moonats_v1_3.order_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Message
otc_retransmission_moonats_v1_3.order_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_retransmission_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_retransmission_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otc_retransmission_moonats_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otc_retransmission_moonats_v1_3.price.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otc_retransmission_moonats_v1_3.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
otc_retransmission_moonats_v1_3.order_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.order_update_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.order_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.order_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.order_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
otc_retransmission_moonats_v1_3.order_add_message = {}

-- Size: Order Add Message
otc_retransmission_moonats_v1_3.order_add_message.size =
  otc_retransmission_moonats_v1_3.time.size + 
  otc_retransmission_moonats_v1_3.order_id.size + 
  otc_retransmission_moonats_v1_3.side_indicator.size + 
  otc_retransmission_moonats_v1_3.quantity.size + 
  otc_retransmission_moonats_v1_3.symbol.size + 
  otc_retransmission_moonats_v1_3.price.size + 
  otc_retransmission_moonats_v1_3.firm_id.size + 
  otc_retransmission_moonats_v1_3.unsolicited.size + 
  otc_retransmission_moonats_v1_3.order_flags.size

-- Display: Order Add Message
otc_retransmission_moonats_v1_3.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
otc_retransmission_moonats_v1_3.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otc_retransmission_moonats_v1_3.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otc_retransmission_moonats_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otc_retransmission_moonats_v1_3.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otc_retransmission_moonats_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otc_retransmission_moonats_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otc_retransmission_moonats_v1_3.price.dissect(buffer, index, packet, parent)

  -- Firm Id: Printable ASCII
  index, firm_id = otc_retransmission_moonats_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Unsolicited: Printable ASCII
  index, unsolicited = otc_retransmission_moonats_v1_3.unsolicited.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otc_retransmission_moonats_v1_3.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
otc_retransmission_moonats_v1_3.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.order_add_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Flags
otc_retransmission_moonats_v1_3.security_flags = {}

-- Size: Security Flags
otc_retransmission_moonats_v1_3.security_flags.size = 2

-- Display: Security Flags
otc_retransmission_moonats_v1_3.security_flags.display = function(range, value, packet, parent)
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
otc_retransmission_moonats_v1_3.security_flags.bits = function(range, value, packet, parent)

  -- Piggyback Flag: 1 Bit
  parent:add(omi_otc_retransmission_moonats_v1_3.fields.piggyback_flag, range, value)

  -- Caveat Flag: 1 Bit
  parent:add(omi_otc_retransmission_moonats_v1_3.fields.caveat_flag, range, value)

  -- Qib Only 144 A: 1 Bit
  parent:add(omi_otc_retransmission_moonats_v1_3.fields.qib_only_144_a, range, value)

  -- Unsolicited Only Flag: 1 Bit
  parent:add(omi_otc_retransmission_moonats_v1_3.fields.unsolicited_only_flag, range, value)

  -- Closing Cross Auction: 1 Bit
  parent:add(omi_otc_retransmission_moonats_v1_3.fields.closing_cross_auction, range, value)

  -- Reserved 11: 11 Bit
  parent:add(omi_otc_retransmission_moonats_v1_3.fields.reserved_11, range, value)
end

-- Dissect: Security Flags
otc_retransmission_moonats_v1_3.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otc_retransmission_moonats_v1_3.security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otc_retransmission_moonats_v1_3.security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otc_retransmission_moonats_v1_3.fields.security_flags, range, display)

  if show.security_flags then
    otc_retransmission_moonats_v1_3.security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Message
otc_retransmission_moonats_v1_3.security_message = {}

-- Size: Security Message
otc_retransmission_moonats_v1_3.security_message.size =
  otc_retransmission_moonats_v1_3.symbol.size + 
  otc_retransmission_moonats_v1_3.last_update_milli.size + 
  otc_retransmission_moonats_v1_3.security_action.size + 
  otc_retransmission_moonats_v1_3.asset_class.size + 
  otc_retransmission_moonats_v1_3.security_id.size + 
  otc_retransmission_moonats_v1_3.security_flags.size + 
  otc_retransmission_moonats_v1_3.tier.size + 
  otc_retransmission_moonats_v1_3.reporting_status.size + 
  otc_retransmission_moonats_v1_3.security_status.size

-- Display: Security Message
otc_retransmission_moonats_v1_3.security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Message
otc_retransmission_moonats_v1_3.security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Printable ASCII
  index, symbol = otc_retransmission_moonats_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Binary Long
  index, last_update_milli = otc_retransmission_moonats_v1_3.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Binary Integer
  index, security_action = otc_retransmission_moonats_v1_3.security_action.dissect(buffer, index, packet, parent)

  -- Asset Class: Binary Byte
  index, asset_class = otc_retransmission_moonats_v1_3.asset_class.dissect(buffer, index, packet, parent)

  -- Security Id: Binary Integer
  index, security_id = otc_retransmission_moonats_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 6 fields
  index, security_flags = otc_retransmission_moonats_v1_3.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Binary Byte
  index, tier = otc_retransmission_moonats_v1_3.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: Printable ASCII
  index, reporting_status = otc_retransmission_moonats_v1_3.reporting_status.dissect(buffer, index, packet, parent)

  -- Security Status: Printable ASCII
  index, security_status = otc_retransmission_moonats_v1_3.security_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
otc_retransmission_moonats_v1_3.security_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.security_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.security_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Message
otc_retransmission_moonats_v1_3.trading_session_message = {}

-- Size: Trading Session Message
otc_retransmission_moonats_v1_3.trading_session_message.size =
  otc_retransmission_moonats_v1_3.session_time.size + 
  otc_retransmission_moonats_v1_3.trading_session.size

-- Display: Trading Session Message
otc_retransmission_moonats_v1_3.trading_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Message
otc_retransmission_moonats_v1_3.trading_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Time: Binary Long
  index, session_time = otc_retransmission_moonats_v1_3.session_time.dissect(buffer, index, packet, parent)

  -- Trading Session: Binary Byte
  index, trading_session = otc_retransmission_moonats_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Message
otc_retransmission_moonats_v1_3.trading_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.trading_session_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.trading_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.trading_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.trading_session_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Spin Message
otc_retransmission_moonats_v1_3.end_of_spin_message = {}

-- Size: End Of Spin Message
otc_retransmission_moonats_v1_3.end_of_spin_message.size =
  otc_retransmission_moonats_v1_3.spin_type.size + 
  otc_retransmission_moonats_v1_3.spin_msg_ct.size + 
  otc_retransmission_moonats_v1_3.spin_end_time_milli.size + 
  otc_retransmission_moonats_v1_3.spin_last_seq_num.size

-- Display: End Of Spin Message
otc_retransmission_moonats_v1_3.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otc_retransmission_moonats_v1_3.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otc_retransmission_moonats_v1_3.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: Binary Integer
  index, spin_msg_ct = otc_retransmission_moonats_v1_3.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: Binary Long
  index, spin_end_time_milli = otc_retransmission_moonats_v1_3.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otc_retransmission_moonats_v1_3.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otc_retransmission_moonats_v1_3.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.end_of_spin_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Spin Message
otc_retransmission_moonats_v1_3.start_of_spin_message = {}

-- Size: Start Of Spin Message
otc_retransmission_moonats_v1_3.start_of_spin_message.size =
  otc_retransmission_moonats_v1_3.spin_type.size + 
  otc_retransmission_moonats_v1_3.spin_start_time_milli.size + 
  otc_retransmission_moonats_v1_3.spin_last_seq_num.size

-- Display: Start Of Spin Message
otc_retransmission_moonats_v1_3.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otc_retransmission_moonats_v1_3.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otc_retransmission_moonats_v1_3.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: Binary Long
  index, spin_start_time_milli = otc_retransmission_moonats_v1_3.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otc_retransmission_moonats_v1_3.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otc_retransmission_moonats_v1_3.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.start_of_spin_message, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otc_retransmission_moonats_v1_3.payload = {}

-- Dissect: Payload
otc_retransmission_moonats_v1_3.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Spin Message
  if message_type == 11 then
    return otc_retransmission_moonats_v1_3.start_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Spin Message
  if message_type == 12 then
    return otc_retransmission_moonats_v1_3.end_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Message
  if message_type == 20 then
    return otc_retransmission_moonats_v1_3.trading_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Message
  if message_type == 9 then
    return otc_retransmission_moonats_v1_3.security_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add Message
  if message_type == 21 then
    return otc_retransmission_moonats_v1_3.order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Update Message
  if message_type == 22 then
    return otc_retransmission_moonats_v1_3.order_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == 23 then
    return otc_retransmission_moonats_v1_3.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 24 then
    return otc_retransmission_moonats_v1_3.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution With Price Message
  if message_type == 25 then
    return otc_retransmission_moonats_v1_3.order_execution_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 26 then
    return otc_retransmission_moonats_v1_3.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 27 then
    return otc_retransmission_moonats_v1_3.top_of_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 28 then
    return otc_retransmission_moonats_v1_3.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Recovery Event Message
  if message_type == 74 then
    return otc_retransmission_moonats_v1_3.system_recovery_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Message
  if message_type == 108 then
    return otc_retransmission_moonats_v1_3.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 97 then
    return otc_retransmission_moonats_v1_3.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 114 then
    return otc_retransmission_moonats_v1_3.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Response Message
  if message_type == 98 then
    return otc_retransmission_moonats_v1_3.retransmission_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 115 then
    return otc_retransmission_moonats_v1_3.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 99 then
    return otc_retransmission_moonats_v1_3.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Spin Request Message
  if message_type == 116 then
    return otc_retransmission_moonats_v1_3.enhanced_spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Spin Response Message
  if message_type == 100 then
    return otc_retransmission_moonats_v1_3.enhanced_spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 104 then
    return otc_retransmission_moonats_v1_3.heartbeat_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
otc_retransmission_moonats_v1_3.message_header = {}

-- Size: Message Header
otc_retransmission_moonats_v1_3.message_header.size =
  otc_retransmission_moonats_v1_3.message_size.size + 
  otc_retransmission_moonats_v1_3.message_type.size

-- Display: Message Header
otc_retransmission_moonats_v1_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otc_retransmission_moonats_v1_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otc_retransmission_moonats_v1_3.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, message_type = otc_retransmission_moonats_v1_3.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otc_retransmission_moonats_v1_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.message_header, buffer(offset, 0))
    local index = otc_retransmission_moonats_v1_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_retransmission_moonats_v1_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_retransmission_moonats_v1_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otc_retransmission_moonats_v1_3.message = {}

-- Display: Message
otc_retransmission_moonats_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otc_retransmission_moonats_v1_3.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = otc_retransmission_moonats_v1_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 22 branches
  index = otc_retransmission_moonats_v1_3.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otc_retransmission_moonats_v1_3.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_otc_retransmission_moonats_v1_3.fields.message, buffer(offset, 0))
    local current = otc_retransmission_moonats_v1_3.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = otc_retransmission_moonats_v1_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otc_retransmission_moonats_v1_3.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
otc_retransmission_moonats_v1_3.packet = {}

-- Verify required size of Tcp packet
otc_retransmission_moonats_v1_3.packet.requiredsize = function(buffer)
  return buffer:len() >= otc_retransmission_moonats_v1_3.message_header.size
end

-- Dissect Packet
otc_retransmission_moonats_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = otc_retransmission_moonats_v1_3.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otc_retransmission_moonats_v1_3.init()
end

-- Dissector for Otc Retransmission MoonAts 1.3
function omi_otc_retransmission_moonats_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otc_retransmission_moonats_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_otc_retransmission_moonats_v1_3, buffer(), omi_otc_retransmission_moonats_v1_3.description, "("..buffer:len().." Bytes)")
  return otc_retransmission_moonats_v1_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Otc Retransmission MoonAts 1.3 (Tcp)
local function omi_otc_retransmission_moonats_v1_3_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otc_retransmission_moonats_v1_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otc_retransmission_moonats_v1_3
  omi_otc_retransmission_moonats_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Otc Retransmission MoonAts 1.3
omi_otc_retransmission_moonats_v1_3:register_heuristic("tcp", omi_otc_retransmission_moonats_v1_3_tcp_heuristic)

-- Register Otc Retransmission MoonAts 1.3 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_otc_retransmission_moonats_v1_3)

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
