-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- OtcMarkets LinkNqb Retransmission Link 1.18 Protocol
local omi_otcmarkets_linknqb_retransmission_link_v1_18 = Proto("Omi.OtcMarkets.LinkNqb.Retransmission.Link.v1.18", "OtcMarkets LinkNqb Retransmission Link 1.18")

-- Protocol table
local otcmarkets_linknqb_retransmission_link_v1_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- OtcMarkets LinkNqb Retransmission Link 1.18 Fields
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.ask_price = ProtoField.new("Ask Price", "otcmarkets.linknqb.retransmission.link.v1.18.askprice", ftypes.DOUBLE)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.ask_volume = ProtoField.new("Ask Volume", "otcmarkets.linknqb.retransmission.link.v1.18.askvolume", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.asset_class = ProtoField.new("Asset Class", "otcmarkets.linknqb.retransmission.link.v1.18.assetclass", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.bid_price = ProtoField.new("Bid Price", "otcmarkets.linknqb.retransmission.link.v1.18.bidprice", ftypes.DOUBLE)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.bid_volume = ProtoField.new("Bid Volume", "otcmarkets.linknqb.retransmission.link.v1.18.bidvolume", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.caveat_flag = ProtoField.new("Caveat Flag", "otcmarkets.linknqb.retransmission.link.v1.18.caveatflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.client_identifier = ProtoField.new("Client Identifier", "otcmarkets.linknqb.retransmission.link.v1.18.clientidentifier", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.closing_cross_auction = ProtoField.new("Closing Cross Auction", "otcmarkets.linknqb.retransmission.link.v1.18.closingcrossauction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.current_inside_closing_price = ProtoField.new("Current Inside Closing Price", "otcmarkets.linknqb.retransmission.link.v1.18.currentinsideclosingprice", ftypes.DOUBLE)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.current_inside_imbalance_quantity = ProtoField.new("Current Inside Imbalance Quantity", "otcmarkets.linknqb.retransmission.link.v1.18.currentinsideimbalancequantity", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.current_inside_imbalance_side = ProtoField.new("Current Inside Imbalance Side", "otcmarkets.linknqb.retransmission.link.v1.18.currentinsideimbalanceside", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.current_inside_paired_shares = ProtoField.new("Current Inside Paired Shares", "otcmarkets.linknqb.retransmission.link.v1.18.currentinsidepairedshares", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.deprecated = ProtoField.new("Deprecated", "otcmarkets.linknqb.retransmission.link.v1.18.deprecated", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.enhanced_spin_status = ProtoField.new("Enhanced Spin Status", "otcmarkets.linknqb.retransmission.link.v1.18.enhancedspinstatus", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.executed_quantity = ProtoField.new("Executed Quantity", "otcmarkets.linknqb.retransmission.link.v1.18.executedquantity", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.execution_id = ProtoField.new("Execution Id", "otcmarkets.linknqb.retransmission.link.v1.18.executionid", ftypes.UINT64)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.firm_id = ProtoField.new("Firm Id", "otcmarkets.linknqb.retransmission.link.v1.18.firmid", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.full_closing_price = ProtoField.new("Full Closing Price", "otcmarkets.linknqb.retransmission.link.v1.18.fullclosingprice", ftypes.DOUBLE)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.last_seq_num = ProtoField.new("Last Seq Num", "otcmarkets.linknqb.retransmission.link.v1.18.lastseqnum", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.last_update_milli = ProtoField.new("Last Update Milli", "otcmarkets.linknqb.retransmission.link.v1.18.lastupdatemilli", ftypes.UINT64)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.login_status = ProtoField.new("Login Status", "otcmarkets.linknqb.retransmission.link.v1.18.loginstatus", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.message = ProtoField.new("Message", "otcmarkets.linknqb.retransmission.link.v1.18.message", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.message_header = ProtoField.new("Message Header", "otcmarkets.linknqb.retransmission.link.v1.18.messageheader", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.message_size = ProtoField.new("Message Size", "otcmarkets.linknqb.retransmission.link.v1.18.messagesize", ftypes.UINT16)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.message_type = ProtoField.new("Message Type", "otcmarkets.linknqb.retransmission.link.v1.18.messagetype", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.moc_shares_unmatched = ProtoField.new("Moc Shares Unmatched", "otcmarkets.linknqb.retransmission.link.v1.18.mocsharesunmatched", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "otcmarkets.linknqb.retransmission.link.v1.18.nextsequencenumber", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.number_of_messages = ProtoField.new("Number Of Messages", "otcmarkets.linknqb.retransmission.link.v1.18.numberofmessages", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.ocio_only_closing_price = ProtoField.new("Ocio Only Closing Price", "otcmarkets.linknqb.retransmission.link.v1.18.ocioonlyclosingprice", ftypes.DOUBLE)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_flags = ProtoField.new("Order Flags", "otcmarkets.linknqb.retransmission.link.v1.18.orderflags", ftypes.UINT16)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_id = ProtoField.new("Order Id", "otcmarkets.linknqb.retransmission.link.v1.18.orderid", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.packet = ProtoField.new("Packet", "otcmarkets.linknqb.retransmission.link.v1.18.packet", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.password = ProtoField.new("Password", "otcmarkets.linknqb.retransmission.link.v1.18.password", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.piggyback_flag = ProtoField.new("Piggyback Flag", "otcmarkets.linknqb.retransmission.link.v1.18.piggybackflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.price = ProtoField.new("Price", "otcmarkets.linknqb.retransmission.link.v1.18.price", ftypes.DOUBLE)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.qib_only_144_a = ProtoField.new("Qib Only 144 A", "otcmarkets.linknqb.retransmission.link.v1.18.qibonly144a", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.quantity = ProtoField.new("Quantity", "otcmarkets.linknqb.retransmission.link.v1.18.quantity", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.recovery_start_time = ProtoField.new("Recovery Start Time", "otcmarkets.linknqb.retransmission.link.v1.18.recoverystarttime", ftypes.UINT64)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.recovery_type = ProtoField.new("Recovery Type", "otcmarkets.linknqb.retransmission.link.v1.18.recoverytype", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "otcmarkets.linknqb.retransmission.link.v1.18.remainingquantity", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.reporting_status = ProtoField.new("Reporting Status", "otcmarkets.linknqb.retransmission.link.v1.18.reportingstatus", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.reserved_11 = ProtoField.new("Reserved 11", "otcmarkets.linknqb.retransmission.link.v1.18.reserved11", ftypes.UINT16, nil, base.DEC, 0xFFE0)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.reserved_binary_long_8 = ProtoField.new("Reserved Binary Long 8", "otcmarkets.linknqb.retransmission.link.v1.18.reservedbinarylong8", ftypes.UINT64)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.retran_via_tcp = ProtoField.new("Retran Via Tcp", "otcmarkets.linknqb.retransmission.link.v1.18.retranviatcp", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.retransmission_status = ProtoField.new("Retransmission Status", "otcmarkets.linknqb.retransmission.link.v1.18.retransmissionstatus", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_action = ProtoField.new("Security Action", "otcmarkets.linknqb.retransmission.link.v1.18.securityaction", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_flags = ProtoField.new("Security Flags", "otcmarkets.linknqb.retransmission.link.v1.18.securityflags", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_id = ProtoField.new("Security Id", "otcmarkets.linknqb.retransmission.link.v1.18.securityid", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_status = ProtoField.new("Security Status", "otcmarkets.linknqb.retransmission.link.v1.18.securitystatus", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.session_time = ProtoField.new("Session Time", "otcmarkets.linknqb.retransmission.link.v1.18.sessiontime", ftypes.UINT64)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.side_indicator = ProtoField.new("Side Indicator", "otcmarkets.linknqb.retransmission.link.v1.18.sideindicator", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_end_time_milli = ProtoField.new("Spin End Time Milli", "otcmarkets.linknqb.retransmission.link.v1.18.spinendtimemilli", ftypes.UINT64)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_last_seq_num = ProtoField.new("Spin Last Seq Num", "otcmarkets.linknqb.retransmission.link.v1.18.spinlastseqnum", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_msg_ct = ProtoField.new("Spin Msg Ct", "otcmarkets.linknqb.retransmission.link.v1.18.spinmsgct", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_start_time_milli = ProtoField.new("Spin Start Time Milli", "otcmarkets.linknqb.retransmission.link.v1.18.spinstarttimemilli", ftypes.UINT64)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_status = ProtoField.new("Spin Status", "otcmarkets.linknqb.retransmission.link.v1.18.spinstatus", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_type = ProtoField.new("Spin Type", "otcmarkets.linknqb.retransmission.link.v1.18.spintype", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.start_sequence = ProtoField.new("Start Sequence", "otcmarkets.linknqb.retransmission.link.v1.18.startsequence", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.symbol = ProtoField.new("Symbol", "otcmarkets.linknqb.retransmission.link.v1.18.symbol", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.tier = ProtoField.new("Tier", "otcmarkets.linknqb.retransmission.link.v1.18.tier", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.time = ProtoField.new("Time", "otcmarkets.linknqb.retransmission.link.v1.18.time", ftypes.UINT32)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.trading_session = ProtoField.new("Trading Session", "otcmarkets.linknqb.retransmission.link.v1.18.tradingsession", ftypes.UINT8)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.unsolicited = ProtoField.new("Unsolicited", "otcmarkets.linknqb.retransmission.link.v1.18.unsolicited", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.unsolicited_only_flag = ProtoField.new("Unsolicited Only Flag", "otcmarkets.linknqb.retransmission.link.v1.18.unsolicitedonlyflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.user_id = ProtoField.new("User Id", "otcmarkets.linknqb.retransmission.link.v1.18.userid", ftypes.STRING)

-- OtcMarkets LinkNqb Link Retransmission 1.18 Application Messages
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.end_of_spin_message = ProtoField.new("End Of Spin Message", "otcmarkets.linknqb.retransmission.link.v1.18.endofspinmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.enhanced_spin_request_message = ProtoField.new("Enhanced Spin Request Message", "otcmarkets.linknqb.retransmission.link.v1.18.enhancedspinrequestmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.enhanced_spin_response_message = ProtoField.new("Enhanced Spin Response Message", "otcmarkets.linknqb.retransmission.link.v1.18.enhancedspinresponsemessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "otcmarkets.linknqb.retransmission.link.v1.18.heartbeatmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.imbalance_message = ProtoField.new("Imbalance Message", "otcmarkets.linknqb.retransmission.link.v1.18.imbalancemessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.login_request_message = ProtoField.new("Login Request Message", "otcmarkets.linknqb.retransmission.link.v1.18.loginrequestmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.login_response_message = ProtoField.new("Login Response Message", "otcmarkets.linknqb.retransmission.link.v1.18.loginresponsemessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_add_message = ProtoField.new("Order Add Message", "otcmarkets.linknqb.retransmission.link.v1.18.orderaddmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_delete_message = ProtoField.new("Order Delete Message", "otcmarkets.linknqb.retransmission.link.v1.18.orderdeletemessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_execution_message = ProtoField.new("Order Execution Message", "otcmarkets.linknqb.retransmission.link.v1.18.orderexecutionmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_execution_with_price_message = ProtoField.new("Order Execution With Price Message", "otcmarkets.linknqb.retransmission.link.v1.18.orderexecutionwithpricemessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_update_message = ProtoField.new("Order Update Message", "otcmarkets.linknqb.retransmission.link.v1.18.orderupdatemessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "otcmarkets.linknqb.retransmission.link.v1.18.retransmissionrequestmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "otcmarkets.linknqb.retransmission.link.v1.18.retransmissionresponsemessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_message = ProtoField.new("Security Message", "otcmarkets.linknqb.retransmission.link.v1.18.securitymessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_request_message = ProtoField.new("Spin Request Message", "otcmarkets.linknqb.retransmission.link.v1.18.spinrequestmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_response_message = ProtoField.new("Spin Response Message", "otcmarkets.linknqb.retransmission.link.v1.18.spinresponsemessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.start_of_spin_message = ProtoField.new("Start Of Spin Message", "otcmarkets.linknqb.retransmission.link.v1.18.startofspinmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.system_recovery_event_message = ProtoField.new("System Recovery Event Message", "otcmarkets.linknqb.retransmission.link.v1.18.systemrecoveryeventmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "otcmarkets.linknqb.retransmission.link.v1.18.topofbookmessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.trade_message = ProtoField.new("Trade Message", "otcmarkets.linknqb.retransmission.link.v1.18.trademessage", ftypes.STRING)
omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.trading_session_message = ProtoField.new("Trading Session Message", "otcmarkets.linknqb.retransmission.link.v1.18.tradingsessionmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- OtcMarkets LinkNqb Retransmission Link 1.18 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.security_flags = true

-- Register OtcMarkets LinkNqb Retransmission Link 1.18 Show Options
omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_security_flags = Pref.bool("Show Security Flags", show.security_flags, "Parse and add Security Flags to protocol tree")


-- Handle changed preferences
function omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_application_messages then
    show.application_messages = omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_application_messages
  end
  if show.message ~= omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_message then
    show.message = omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_message
  end
  if show.message_header ~= omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_message_header then
    show.message_header = omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_message_header
  end
  if show.packet ~= omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_packet then
    show.packet = omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_packet
  end
  if show.security_flags ~= omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_security_flags then
    show.security_flags = omi_otcmarkets_linknqb_retransmission_link_v1_18.prefs.show_security_flags
  end
end


-----------------------------------------------------------------------
-- OtcMarkets LinkNqb Retransmission Link 1.18 Fields
-----------------------------------------------------------------------

-- Ask Price
otcmarkets_linknqb_retransmission_link_v1_18.ask_price = {}

-- Size: Ask Price
otcmarkets_linknqb_retransmission_link_v1_18.ask_price.size = 8

-- Display: Ask Price
otcmarkets_linknqb_retransmission_link_v1_18.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
otcmarkets_linknqb_retransmission_link_v1_18.ask_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Ask Price
otcmarkets_linknqb_retransmission_link_v1_18.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_retransmission_link_v1_18.ask_price.translate(raw)
  local display = otcmarkets_linknqb_retransmission_link_v1_18.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
otcmarkets_linknqb_retransmission_link_v1_18.ask_volume = {}

-- Size: Ask Volume
otcmarkets_linknqb_retransmission_link_v1_18.ask_volume.size = 4

-- Display: Ask Volume
otcmarkets_linknqb_retransmission_link_v1_18.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
otcmarkets_linknqb_retransmission_link_v1_18.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.ask_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Asset Class
otcmarkets_linknqb_retransmission_link_v1_18.asset_class = {}

-- Size: Asset Class
otcmarkets_linknqb_retransmission_link_v1_18.asset_class.size = 1

-- Display: Asset Class
otcmarkets_linknqb_retransmission_link_v1_18.asset_class.display = function(value)
  if value == 1 then
    return "Asset Class: Equity (1)"
  end
  if value == 2 then
    return "Asset Class: Fixed Income (2)"
  end

  return "Asset Class: Unknown("..value..")"
end

-- Dissect: Asset Class
otcmarkets_linknqb_retransmission_link_v1_18.asset_class.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.asset_class.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.asset_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.asset_class, range, value, display)

  return offset + length, value
end

-- Bid Price
otcmarkets_linknqb_retransmission_link_v1_18.bid_price = {}

-- Size: Bid Price
otcmarkets_linknqb_retransmission_link_v1_18.bid_price.size = 8

-- Display: Bid Price
otcmarkets_linknqb_retransmission_link_v1_18.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
otcmarkets_linknqb_retransmission_link_v1_18.bid_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Bid Price
otcmarkets_linknqb_retransmission_link_v1_18.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_retransmission_link_v1_18.bid_price.translate(raw)
  local display = otcmarkets_linknqb_retransmission_link_v1_18.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Volume
otcmarkets_linknqb_retransmission_link_v1_18.bid_volume = {}

-- Size: Bid Volume
otcmarkets_linknqb_retransmission_link_v1_18.bid_volume.size = 4

-- Display: Bid Volume
otcmarkets_linknqb_retransmission_link_v1_18.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
otcmarkets_linknqb_retransmission_link_v1_18.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.bid_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Client Identifier
otcmarkets_linknqb_retransmission_link_v1_18.client_identifier = {}

-- Size: Client Identifier
otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.size = 4

-- Display: Client Identifier
otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.display = function(value)
  return "Client Identifier: "..value
end

-- Dissect: Client Identifier
otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.client_identifier, range, value, display)

  return offset + length, value
end

-- Current Inside Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price = {}

-- Size: Current Inside Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price.size = 8

-- Display: Current Inside Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price.display = function(value)
  return "Current Inside Closing Price: "..value
end

-- Translate: Current Inside Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Current Inside Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price.translate(raw)
  local display = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.current_inside_closing_price, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Quantity
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_quantity = {}

-- Size: Current Inside Imbalance Quantity
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_quantity.size = 4

-- Display: Current Inside Imbalance Quantity
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_quantity.display = function(value)
  return "Current Inside Imbalance Quantity: "..value
end

-- Dissect: Current Inside Imbalance Quantity
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.current_inside_imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Current Inside Imbalance Side
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_side = {}

-- Size: Current Inside Imbalance Side
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_side.size = 1

-- Display: Current Inside Imbalance Side
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_side.display = function(value)
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
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.current_inside_imbalance_side, range, value, display)

  return offset + length, value
end

-- Current Inside Paired Shares
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_paired_shares = {}

-- Size: Current Inside Paired Shares
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_paired_shares.size = 4

-- Display: Current Inside Paired Shares
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_paired_shares.display = function(value)
  return "Current Inside Paired Shares: "..value
end

-- Dissect: Current Inside Paired Shares
otcmarkets_linknqb_retransmission_link_v1_18.current_inside_paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.current_inside_paired_shares, range, value, display)

  return offset + length, value
end

-- Deprecated
otcmarkets_linknqb_retransmission_link_v1_18.deprecated = {}

-- Size: Deprecated
otcmarkets_linknqb_retransmission_link_v1_18.deprecated.size = 4

-- Display: Deprecated
otcmarkets_linknqb_retransmission_link_v1_18.deprecated.display = function(value)
  return "Deprecated: "..value
end

-- Dissect: Deprecated
otcmarkets_linknqb_retransmission_link_v1_18.deprecated.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.deprecated.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.deprecated.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.deprecated, range, value, display)

  return offset + length, value
end

-- Enhanced Spin Status
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_status = {}

-- Size: Enhanced Spin Status
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_status.size = 1

-- Display: Enhanced Spin Status
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_status.display = function(value)
  if value == 83 then
    return "Enhanced Spin Status: Start Of Spin (83)"
  end
  if value == 69 then
    return "Enhanced Spin Status: End Of Spin (69)"
  end

  return "Enhanced Spin Status: Unknown("..value..")"
end

-- Dissect: Enhanced Spin Status
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.enhanced_spin_status, range, value, display)

  return offset + length, value
end

-- Executed Quantity
otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity = {}

-- Size: Executed Quantity
otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity.size = 4

-- Display: Executed Quantity
otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
otcmarkets_linknqb_retransmission_link_v1_18.execution_id = {}

-- Size: Execution Id
otcmarkets_linknqb_retransmission_link_v1_18.execution_id.size = 8

-- Display: Execution Id
otcmarkets_linknqb_retransmission_link_v1_18.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
otcmarkets_linknqb_retransmission_link_v1_18.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.execution_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Firm Id
otcmarkets_linknqb_retransmission_link_v1_18.firm_id = {}

-- Size: Firm Id
otcmarkets_linknqb_retransmission_link_v1_18.firm_id.size = 4

-- Display: Firm Id
otcmarkets_linknqb_retransmission_link_v1_18.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
otcmarkets_linknqb_retransmission_link_v1_18.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Full Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price = {}

-- Size: Full Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price.size = 8

-- Display: Full Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price.display = function(value)
  return "Full Closing Price: "..value
end

-- Translate: Full Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Full Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price.translate(raw)
  local display = otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.full_closing_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
otcmarkets_linknqb_retransmission_link_v1_18.last_seq_num = {}

-- Size: Last Seq Num
otcmarkets_linknqb_retransmission_link_v1_18.last_seq_num.size = 4

-- Display: Last Seq Num
otcmarkets_linknqb_retransmission_link_v1_18.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
otcmarkets_linknqb_retransmission_link_v1_18.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Update Milli
otcmarkets_linknqb_retransmission_link_v1_18.last_update_milli = {}

-- Size: Last Update Milli
otcmarkets_linknqb_retransmission_link_v1_18.last_update_milli.size = 8

-- Display: Last Update Milli
otcmarkets_linknqb_retransmission_link_v1_18.last_update_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Last Update Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Last Update Milli
otcmarkets_linknqb_retransmission_link_v1_18.last_update_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.last_update_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.last_update_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.last_update_milli, range, value, display)

  return offset + length, value
end

-- Login Status
otcmarkets_linknqb_retransmission_link_v1_18.login_status = {}

-- Size: Login Status
otcmarkets_linknqb_retransmission_link_v1_18.login_status.size = 1

-- Display: Login Status
otcmarkets_linknqb_retransmission_link_v1_18.login_status.display = function(value)
  if value == 89 then
    return "Login Status: Accepted (89)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
otcmarkets_linknqb_retransmission_link_v1_18.login_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.login_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.login_status, range, value, display)

  return offset + length, value
end

-- Message Size
otcmarkets_linknqb_retransmission_link_v1_18.message_size = {}

-- Size: Message Size
otcmarkets_linknqb_retransmission_link_v1_18.message_size.size = 2

-- Display: Message Size
otcmarkets_linknqb_retransmission_link_v1_18.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otcmarkets_linknqb_retransmission_link_v1_18.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
otcmarkets_linknqb_retransmission_link_v1_18.message_type = {}

-- Size: Message Type
otcmarkets_linknqb_retransmission_link_v1_18.message_type.size = 1

-- Display: Message Type
otcmarkets_linknqb_retransmission_link_v1_18.message_type.display = function(value)
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
otcmarkets_linknqb_retransmission_link_v1_18.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.message_type, range, value, display)

  return offset + length, value
end

-- Moc Shares Unmatched
otcmarkets_linknqb_retransmission_link_v1_18.moc_shares_unmatched = {}

-- Size: Moc Shares Unmatched
otcmarkets_linknqb_retransmission_link_v1_18.moc_shares_unmatched.size = 1

-- Display: Moc Shares Unmatched
otcmarkets_linknqb_retransmission_link_v1_18.moc_shares_unmatched.display = function(value)
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
otcmarkets_linknqb_retransmission_link_v1_18.moc_shares_unmatched.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.moc_shares_unmatched.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.moc_shares_unmatched.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.moc_shares_unmatched, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
otcmarkets_linknqb_retransmission_link_v1_18.next_sequence_number = {}

-- Size: Next Sequence Number
otcmarkets_linknqb_retransmission_link_v1_18.next_sequence_number.size = 4

-- Display: Next Sequence Number
otcmarkets_linknqb_retransmission_link_v1_18.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
otcmarkets_linknqb_retransmission_link_v1_18.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Number Of Messages
otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages = {}

-- Size: Number Of Messages
otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages.size = 4

-- Display: Number Of Messages
otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages.display = function(value)
  return "Number Of Messages: "..value
end

-- Dissect: Number Of Messages
otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.number_of_messages, range, value, display)

  return offset + length, value
end

-- Ocio Only Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price = {}

-- Size: Ocio Only Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price.size = 8

-- Display: Ocio Only Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price.display = function(value)
  return "Ocio Only Closing Price: "..value
end

-- Translate: Ocio Only Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Ocio Only Closing Price
otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price.translate(raw)
  local display = otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.ocio_only_closing_price, range, value, display)

  return offset + length, value
end

-- Order Flags
otcmarkets_linknqb_retransmission_link_v1_18.order_flags = {}

-- Size: Order Flags
otcmarkets_linknqb_retransmission_link_v1_18.order_flags.size = 2

-- Display: Order Flags
otcmarkets_linknqb_retransmission_link_v1_18.order_flags.display = function(value)
  return "Order Flags: "..value
end

-- Dissect: Order Flags
otcmarkets_linknqb_retransmission_link_v1_18.order_flags.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.order_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.order_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_flags, range, value, display)

  return offset + length, value
end

-- Order Id
otcmarkets_linknqb_retransmission_link_v1_18.order_id = {}

-- Size: Order Id
otcmarkets_linknqb_retransmission_link_v1_18.order_id.size = 14

-- Display: Order Id
otcmarkets_linknqb_retransmission_link_v1_18.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
otcmarkets_linknqb_retransmission_link_v1_18.order_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_id, range, value, display)

  return offset + length, value
end

-- Password
otcmarkets_linknqb_retransmission_link_v1_18.password = {}

-- Size: Password
otcmarkets_linknqb_retransmission_link_v1_18.password.size = 16

-- Display: Password
otcmarkets_linknqb_retransmission_link_v1_18.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
otcmarkets_linknqb_retransmission_link_v1_18.password.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.password, range, value, display)

  return offset + length, value
end

-- Price
otcmarkets_linknqb_retransmission_link_v1_18.price = {}

-- Size: Price
otcmarkets_linknqb_retransmission_link_v1_18.price.size = 8

-- Display: Price
otcmarkets_linknqb_retransmission_link_v1_18.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
otcmarkets_linknqb_retransmission_link_v1_18.price.translate = function(raw)
  return raw:tonumber()*1000000
end

-- Dissect: Price
otcmarkets_linknqb_retransmission_link_v1_18.price.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = otcmarkets_linknqb_retransmission_link_v1_18.price.translate(raw)
  local display = otcmarkets_linknqb_retransmission_link_v1_18.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
otcmarkets_linknqb_retransmission_link_v1_18.quantity = {}

-- Size: Quantity
otcmarkets_linknqb_retransmission_link_v1_18.quantity.size = 4

-- Display: Quantity
otcmarkets_linknqb_retransmission_link_v1_18.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
otcmarkets_linknqb_retransmission_link_v1_18.quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.quantity, range, value, display)

  return offset + length, value
end

-- Recovery Start Time
otcmarkets_linknqb_retransmission_link_v1_18.recovery_start_time = {}

-- Size: Recovery Start Time
otcmarkets_linknqb_retransmission_link_v1_18.recovery_start_time.size = 8

-- Display: Recovery Start Time
otcmarkets_linknqb_retransmission_link_v1_18.recovery_start_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Recovery Start Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Recovery Start Time
otcmarkets_linknqb_retransmission_link_v1_18.recovery_start_time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.recovery_start_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.recovery_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.recovery_start_time, range, value, display)

  return offset + length, value
end

-- Recovery Type
otcmarkets_linknqb_retransmission_link_v1_18.recovery_type = {}

-- Size: Recovery Type
otcmarkets_linknqb_retransmission_link_v1_18.recovery_type.size = 1

-- Display: Recovery Type
otcmarkets_linknqb_retransmission_link_v1_18.recovery_type.display = function(value)
  if value == 83 then
    return "Recovery Type: Scheduling Start (83)"
  end
  if value == 66 then
    return "Recovery Type: Recovery Begins (66)"
  end

  return "Recovery Type: Unknown("..value..")"
end

-- Dissect: Recovery Type
otcmarkets_linknqb_retransmission_link_v1_18.recovery_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.recovery_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.recovery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.recovery_type, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity = {}

-- Size: Remaining Quantity
otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity.size = 4

-- Display: Remaining Quantity
otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reporting Status
otcmarkets_linknqb_retransmission_link_v1_18.reporting_status = {}

-- Size: Reporting Status
otcmarkets_linknqb_retransmission_link_v1_18.reporting_status.size = 1

-- Display: Reporting Status
otcmarkets_linknqb_retransmission_link_v1_18.reporting_status.display = function(value)
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
otcmarkets_linknqb_retransmission_link_v1_18.reporting_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.reporting_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.reporting_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.reporting_status, range, value, display)

  return offset + length, value
end

-- Reserved Binary Long 8
otcmarkets_linknqb_retransmission_link_v1_18.reserved_binary_long_8 = {}

-- Size: Reserved Binary Long 8
otcmarkets_linknqb_retransmission_link_v1_18.reserved_binary_long_8.size = 8

-- Display: Reserved Binary Long 8
otcmarkets_linknqb_retransmission_link_v1_18.reserved_binary_long_8.display = function(value)
  return "Reserved Binary Long 8: "..value
end

-- Dissect: Reserved Binary Long 8
otcmarkets_linknqb_retransmission_link_v1_18.reserved_binary_long_8.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.reserved_binary_long_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.reserved_binary_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.reserved_binary_long_8, range, value, display)

  return offset + length, value
end

-- Retran Via Tcp
otcmarkets_linknqb_retransmission_link_v1_18.retran_via_tcp = {}

-- Size: Retran Via Tcp
otcmarkets_linknqb_retransmission_link_v1_18.retran_via_tcp.size = 1

-- Display: Retran Via Tcp
otcmarkets_linknqb_retransmission_link_v1_18.retran_via_tcp.display = function(value)
  if value == 89 then
    return "Retran Via Tcp: Same Tcp Channel (89)"
  end

  return "Retran Via Tcp: Unknown("..value..")"
end

-- Dissect: Retran Via Tcp
otcmarkets_linknqb_retransmission_link_v1_18.retran_via_tcp.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.retran_via_tcp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.retran_via_tcp.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.retran_via_tcp, range, value, display)

  return offset + length, value
end

-- Retransmission Status
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_status = {}

-- Size: Retransmission Status
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_status.size = 1

-- Display: Retransmission Status
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_status.display = function(value)
  if value == 89 then
    return "Retransmission Status: Will Follow (89)"
  end
  if value == 78 then
    return "Retransmission Status: Request Ignored (78)"
  end

  return "Retransmission Status: Unknown("..value..")"
end

-- Dissect: Retransmission Status
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.retransmission_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.retransmission_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.retransmission_status, range, value, display)

  return offset + length, value
end

-- Security Action
otcmarkets_linknqb_retransmission_link_v1_18.security_action = {}

-- Size: Security Action
otcmarkets_linknqb_retransmission_link_v1_18.security_action.size = 1

-- Display: Security Action
otcmarkets_linknqb_retransmission_link_v1_18.security_action.display = function(value)
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
otcmarkets_linknqb_retransmission_link_v1_18.security_action.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.security_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.security_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_action, range, value, display)

  return offset + length, value
end

-- Security Id
otcmarkets_linknqb_retransmission_link_v1_18.security_id = {}

-- Size: Security Id
otcmarkets_linknqb_retransmission_link_v1_18.security_id.size = 4

-- Display: Security Id
otcmarkets_linknqb_retransmission_link_v1_18.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
otcmarkets_linknqb_retransmission_link_v1_18.security_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Status
otcmarkets_linknqb_retransmission_link_v1_18.security_status = {}

-- Size: Security Status
otcmarkets_linknqb_retransmission_link_v1_18.security_status.size = 1

-- Display: Security Status
otcmarkets_linknqb_retransmission_link_v1_18.security_status.display = function(value)
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
otcmarkets_linknqb_retransmission_link_v1_18.security_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_status, range, value, display)

  return offset + length, value
end

-- Session Time
otcmarkets_linknqb_retransmission_link_v1_18.session_time = {}

-- Size: Session Time
otcmarkets_linknqb_retransmission_link_v1_18.session_time.size = 8

-- Display: Session Time
otcmarkets_linknqb_retransmission_link_v1_18.session_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Session Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Session Time
otcmarkets_linknqb_retransmission_link_v1_18.session_time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.session_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.session_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.session_time, range, value, display)

  return offset + length, value
end

-- Side Indicator
otcmarkets_linknqb_retransmission_link_v1_18.side_indicator = {}

-- Size: Side Indicator
otcmarkets_linknqb_retransmission_link_v1_18.side_indicator.size = 1

-- Display: Side Indicator
otcmarkets_linknqb_retransmission_link_v1_18.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
otcmarkets_linknqb_retransmission_link_v1_18.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin End Time Milli
otcmarkets_linknqb_retransmission_link_v1_18.spin_end_time_milli = {}

-- Size: Spin End Time Milli
otcmarkets_linknqb_retransmission_link_v1_18.spin_end_time_milli.size = 8

-- Display: Spin End Time Milli
otcmarkets_linknqb_retransmission_link_v1_18.spin_end_time_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Spin End Time Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Spin End Time Milli
otcmarkets_linknqb_retransmission_link_v1_18.spin_end_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.spin_end_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.spin_end_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_end_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Last Seq Num
otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num = {}

-- Size: Spin Last Seq Num
otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num.size = 4

-- Display: Spin Last Seq Num
otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num.display = function(value)
  return "Spin Last Seq Num: "..value
end

-- Dissect: Spin Last Seq Num
otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_last_seq_num, range, value, display)

  return offset + length, value
end

-- Spin Msg Ct
otcmarkets_linknqb_retransmission_link_v1_18.spin_msg_ct = {}

-- Size: Spin Msg Ct
otcmarkets_linknqb_retransmission_link_v1_18.spin_msg_ct.size = 4

-- Display: Spin Msg Ct
otcmarkets_linknqb_retransmission_link_v1_18.spin_msg_ct.display = function(value)
  return "Spin Msg Ct: "..value
end

-- Dissect: Spin Msg Ct
otcmarkets_linknqb_retransmission_link_v1_18.spin_msg_ct.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.spin_msg_ct.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.spin_msg_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_msg_ct, range, value, display)

  return offset + length, value
end

-- Spin Start Time Milli
otcmarkets_linknqb_retransmission_link_v1_18.spin_start_time_milli = {}

-- Size: Spin Start Time Milli
otcmarkets_linknqb_retransmission_link_v1_18.spin_start_time_milli.size = 8

-- Display: Spin Start Time Milli
otcmarkets_linknqb_retransmission_link_v1_18.spin_start_time_milli.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Spin Start Time Milli: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Spin Start Time Milli
otcmarkets_linknqb_retransmission_link_v1_18.spin_start_time_milli.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.spin_start_time_milli.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.spin_start_time_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_start_time_milli, range, value, display)

  return offset + length, value
end

-- Spin Status
otcmarkets_linknqb_retransmission_link_v1_18.spin_status = {}

-- Size: Spin Status
otcmarkets_linknqb_retransmission_link_v1_18.spin_status.size = 1

-- Display: Spin Status
otcmarkets_linknqb_retransmission_link_v1_18.spin_status.display = function(value)
  if value == 83 then
    return "Spin Status: Start Of Spin (83)"
  end
  if value == 69 then
    return "Spin Status: End Of Spin (69)"
  end

  return "Spin Status: Unknown("..value..")"
end

-- Dissect: Spin Status
otcmarkets_linknqb_retransmission_link_v1_18.spin_status.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.spin_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.spin_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_status, range, value, display)

  return offset + length, value
end

-- Spin Type
otcmarkets_linknqb_retransmission_link_v1_18.spin_type = {}

-- Size: Spin Type
otcmarkets_linknqb_retransmission_link_v1_18.spin_type.size = 1

-- Display: Spin Type
otcmarkets_linknqb_retransmission_link_v1_18.spin_type.display = function(value)
  if value == 1 then
    return "Spin Type: Reference (1)"
  end

  return "Spin Type: Unknown("..value..")"
end

-- Dissect: Spin Type
otcmarkets_linknqb_retransmission_link_v1_18.spin_type.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.spin_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.spin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_type, range, value, display)

  return offset + length, value
end

-- Start Sequence
otcmarkets_linknqb_retransmission_link_v1_18.start_sequence = {}

-- Size: Start Sequence
otcmarkets_linknqb_retransmission_link_v1_18.start_sequence.size = 4

-- Display: Start Sequence
otcmarkets_linknqb_retransmission_link_v1_18.start_sequence.display = function(value)
  return "Start Sequence: "..value
end

-- Dissect: Start Sequence
otcmarkets_linknqb_retransmission_link_v1_18.start_sequence.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.start_sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.start_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.start_sequence, range, value, display)

  return offset + length, value
end

-- Symbol
otcmarkets_linknqb_retransmission_link_v1_18.symbol = {}

-- Size: Symbol
otcmarkets_linknqb_retransmission_link_v1_18.symbol.size = 14

-- Display: Symbol
otcmarkets_linknqb_retransmission_link_v1_18.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
otcmarkets_linknqb_retransmission_link_v1_18.symbol.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tier
otcmarkets_linknqb_retransmission_link_v1_18.tier = {}

-- Size: Tier
otcmarkets_linknqb_retransmission_link_v1_18.tier.size = 1

-- Display: Tier
otcmarkets_linknqb_retransmission_link_v1_18.tier.display = function(value)
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
otcmarkets_linknqb_retransmission_link_v1_18.tier.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.tier, range, value, display)

  return offset + length, value
end

-- Time
otcmarkets_linknqb_retransmission_link_v1_18.time = {}

-- Size: Time
otcmarkets_linknqb_retransmission_link_v1_18.time.size = 4

-- Display: Time
otcmarkets_linknqb_retransmission_link_v1_18.time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if otcmarkets_linknqb_retransmission_link_v1_18.time_format == 0 then
    return "Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if otcmarkets_linknqb_retransmission_link_v1_18.time_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = otcmarkets_linknqb_retransmission_link_v1_18.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Time
otcmarkets_linknqb_retransmission_link_v1_18.time.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.time, range, value, display)

  return offset + length, value
end

-- Trading Session
otcmarkets_linknqb_retransmission_link_v1_18.trading_session = {}

-- Size: Trading Session
otcmarkets_linknqb_retransmission_link_v1_18.trading_session.size = 1

-- Display: Trading Session
otcmarkets_linknqb_retransmission_link_v1_18.trading_session.display = function(value)
  if value == 1 then
    return "Trading Session: Order Acceptance (1)"
  end
  if value == 2 then
    return "Trading Session: Pre Market Open (2)"
  end
  if value == 3 then
    return "Trading Session: Market Open (3)"
  end
  if value == 4 then
    return "Trading Session: After Hours (4)"
  end
  if value == 5 then
    return "Trading Session: Market Close (5)"
  end

  return "Trading Session: Unknown("..value..")"
end

-- Dissect: Trading Session
otcmarkets_linknqb_retransmission_link_v1_18.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.trading_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Unsolicited
otcmarkets_linknqb_retransmission_link_v1_18.unsolicited = {}

-- Size: Unsolicited
otcmarkets_linknqb_retransmission_link_v1_18.unsolicited.size = 1

-- Display: Unsolicited
otcmarkets_linknqb_retransmission_link_v1_18.unsolicited.display = function(value)
  if value == "Y" then
    return "Unsolicited: Unsolicited (Y)"
  end
  if value == "N" then
    return "Unsolicited: Not Unsolicited (N)"
  end

  return "Unsolicited: Unknown("..value..")"
end

-- Dissect: Unsolicited
otcmarkets_linknqb_retransmission_link_v1_18.unsolicited.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.unsolicited.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.unsolicited.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.unsolicited, range, value, display)

  return offset + length, value
end

-- User Id
otcmarkets_linknqb_retransmission_link_v1_18.user_id = {}

-- Size: User Id
otcmarkets_linknqb_retransmission_link_v1_18.user_id.size = 16

-- Display: User Id
otcmarkets_linknqb_retransmission_link_v1_18.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
otcmarkets_linknqb_retransmission_link_v1_18.user_id.dissect = function(buffer, offset, packet, parent)
  local length = otcmarkets_linknqb_retransmission_link_v1_18.user_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.user_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect OtcMarkets LinkNqb Retransmission Link 1.18
-----------------------------------------------------------------------

-- Heartbeat Message
otcmarkets_linknqb_retransmission_link_v1_18.heartbeat_message = {}

-- Size: Heartbeat Message
otcmarkets_linknqb_retransmission_link_v1_18.heartbeat_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.size

-- Display: Heartbeat Message
otcmarkets_linknqb_retransmission_link_v1_18.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
otcmarkets_linknqb_retransmission_link_v1_18.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
otcmarkets_linknqb_retransmission_link_v1_18.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.heartbeat_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhanced Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_response_message = {}

-- Size: Enhanced Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_response_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_status.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.last_seq_num.size

-- Display: Enhanced Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.dissect(buffer, index, packet, parent)

  -- Enhanced Spin Status: Binary Byte
  index, enhanced_spin_status = otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_status.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary Integer
  index, last_seq_num = otcmarkets_linknqb_retransmission_link_v1_18.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.enhanced_spin_response_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhanced Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_request_message = {}

-- Size: Enhanced Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_request_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.size

-- Display: Enhanced Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.enhanced_spin_request_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_response_message = {}

-- Size: Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_response_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.spin_status.size

-- Display: Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.dissect(buffer, index, packet, parent)

  -- Spin Status: Binary Byte
  index, spin_status = otcmarkets_linknqb_retransmission_link_v1_18.spin_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_response_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_request_message = {}

-- Size: Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_request_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.size

-- Display: Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Binary Integer
  index, client_identifier = otcmarkets_linknqb_retransmission_link_v1_18.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
otcmarkets_linknqb_retransmission_link_v1_18.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.spin_request_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Response Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_response_message = {}

-- Size: Retransmission Response Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_response_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.start_sequence.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.retransmission_status.size

-- Display: Retransmission Response Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence: Binary Integer
  index, start_sequence = otcmarkets_linknqb_retransmission_link_v1_18.start_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Messages: Binary Integer
  index, number_of_messages = otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages.dissect(buffer, index, packet, parent)

  -- Retransmission Status: Binary Byte
  index, retransmission_status = otcmarkets_linknqb_retransmission_link_v1_18.retransmission_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.retransmission_response_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_request_message = {}

-- Size: Retransmission Request Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_request_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.start_sequence.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.retran_via_tcp.size

-- Display: Retransmission Request Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence: Binary Integer
  index, start_sequence = otcmarkets_linknqb_retransmission_link_v1_18.start_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Messages: Binary Integer
  index, number_of_messages = otcmarkets_linknqb_retransmission_link_v1_18.number_of_messages.dissect(buffer, index, packet, parent)

  -- Retran Via Tcp: Binary Byte
  index, retran_via_tcp = otcmarkets_linknqb_retransmission_link_v1_18.retran_via_tcp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
otcmarkets_linknqb_retransmission_link_v1_18.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.retransmission_request_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
otcmarkets_linknqb_retransmission_link_v1_18.login_response_message = {}

-- Size: Login Response Message
otcmarkets_linknqb_retransmission_link_v1_18.login_response_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.user_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.login_status.size

-- Display: Login Response Message
otcmarkets_linknqb_retransmission_link_v1_18.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
otcmarkets_linknqb_retransmission_link_v1_18.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Printable ASCII
  index, user_id = otcmarkets_linknqb_retransmission_link_v1_18.user_id.dissect(buffer, index, packet, parent)

  -- Login Status: Binary Byte
  index, login_status = otcmarkets_linknqb_retransmission_link_v1_18.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
otcmarkets_linknqb_retransmission_link_v1_18.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.login_response_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
otcmarkets_linknqb_retransmission_link_v1_18.login_request_message = {}

-- Size: Login Request Message
otcmarkets_linknqb_retransmission_link_v1_18.login_request_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.user_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.password.size

-- Display: Login Request Message
otcmarkets_linknqb_retransmission_link_v1_18.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
otcmarkets_linknqb_retransmission_link_v1_18.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Printable ASCII
  index, user_id = otcmarkets_linknqb_retransmission_link_v1_18.user_id.dissect(buffer, index, packet, parent)

  -- Password: Printable ASCII
  index, password = otcmarkets_linknqb_retransmission_link_v1_18.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
otcmarkets_linknqb_retransmission_link_v1_18.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.login_request_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- System Recovery Event Message
otcmarkets_linknqb_retransmission_link_v1_18.system_recovery_event_message = {}

-- Size: System Recovery Event Message
otcmarkets_linknqb_retransmission_link_v1_18.system_recovery_event_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.deprecated.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.recovery_type.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.next_sequence_number.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.recovery_start_time.size

-- Display: System Recovery Event Message
otcmarkets_linknqb_retransmission_link_v1_18.system_recovery_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Recovery Event Message
otcmarkets_linknqb_retransmission_link_v1_18.system_recovery_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Deprecated: Binary Integer
  index, deprecated = otcmarkets_linknqb_retransmission_link_v1_18.deprecated.dissect(buffer, index, packet, parent)

  -- Recovery Type: Binary Byte
  index, recovery_type = otcmarkets_linknqb_retransmission_link_v1_18.recovery_type.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Binary Integer
  index, next_sequence_number = otcmarkets_linknqb_retransmission_link_v1_18.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Recovery Start Time: Binary Long
  index, recovery_start_time = otcmarkets_linknqb_retransmission_link_v1_18.recovery_start_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Recovery Event Message
otcmarkets_linknqb_retransmission_link_v1_18.system_recovery_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.system_recovery_event_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.system_recovery_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.system_recovery_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.system_recovery_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
otcmarkets_linknqb_retransmission_link_v1_18.imbalance_message = {}

-- Size: Imbalance Message
otcmarkets_linknqb_retransmission_link_v1_18.imbalance_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.time.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.symbol.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.current_inside_paired_shares.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_quantity.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_side.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.moc_shares_unmatched.size

-- Display: Imbalance Message
otcmarkets_linknqb_retransmission_link_v1_18.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
otcmarkets_linknqb_retransmission_link_v1_18.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_retransmission_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_linknqb_retransmission_link_v1_18.symbol.dissect(buffer, index, packet, parent)

  -- Current Inside Paired Shares: Binary Integer
  index, current_inside_paired_shares = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_paired_shares.dissect(buffer, index, packet, parent)

  -- Current Inside Closing Price: Binary Long Price
  index, current_inside_closing_price = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_closing_price.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Quantity: Binary Integer
  index, current_inside_imbalance_quantity = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Current Inside Imbalance Side: Printable ASCII
  index, current_inside_imbalance_side = otcmarkets_linknqb_retransmission_link_v1_18.current_inside_imbalance_side.dissect(buffer, index, packet, parent)

  -- Full Closing Price: Binary Long Price
  index, full_closing_price = otcmarkets_linknqb_retransmission_link_v1_18.full_closing_price.dissect(buffer, index, packet, parent)

  -- Ocio Only Closing Price: Binary Long Price
  index, ocio_only_closing_price = otcmarkets_linknqb_retransmission_link_v1_18.ocio_only_closing_price.dissect(buffer, index, packet, parent)

  -- Moc Shares Unmatched: Printable ASCII
  index, moc_shares_unmatched = otcmarkets_linknqb_retransmission_link_v1_18.moc_shares_unmatched.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
otcmarkets_linknqb_retransmission_link_v1_18.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.imbalance_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Book Message
otcmarkets_linknqb_retransmission_link_v1_18.top_of_book_message = {}

-- Size: Top Of Book Message
otcmarkets_linknqb_retransmission_link_v1_18.top_of_book_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.time.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.symbol.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.ask_price.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.ask_volume.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.bid_price.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.bid_volume.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.unsolicited.size

-- Display: Top Of Book Message
otcmarkets_linknqb_retransmission_link_v1_18.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
otcmarkets_linknqb_retransmission_link_v1_18.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_retransmission_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_linknqb_retransmission_link_v1_18.symbol.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary Long Price
  index, ask_price = otcmarkets_linknqb_retransmission_link_v1_18.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: Binary Integer
  index, ask_volume = otcmarkets_linknqb_retransmission_link_v1_18.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary Long Price
  index, bid_price = otcmarkets_linknqb_retransmission_link_v1_18.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: Binary Integer
  index, bid_volume = otcmarkets_linknqb_retransmission_link_v1_18.bid_volume.dissect(buffer, index, packet, parent)

  -- Unsolicited: Printable ASCII
  index, unsolicited = otcmarkets_linknqb_retransmission_link_v1_18.unsolicited.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
otcmarkets_linknqb_retransmission_link_v1_18.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.top_of_book_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
otcmarkets_linknqb_retransmission_link_v1_18.trade_message = {}

-- Size: Trade Message
otcmarkets_linknqb_retransmission_link_v1_18.trade_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.time.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.side_indicator.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.quantity.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.symbol.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.price.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.execution_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.reserved_binary_long_8.size

-- Display: Trade Message
otcmarkets_linknqb_retransmission_link_v1_18.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
otcmarkets_linknqb_retransmission_link_v1_18.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_retransmission_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otcmarkets_linknqb_retransmission_link_v1_18.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_linknqb_retransmission_link_v1_18.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_linknqb_retransmission_link_v1_18.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_linknqb_retransmission_link_v1_18.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_linknqb_retransmission_link_v1_18.execution_id.dissect(buffer, index, packet, parent)

  -- Reserved Binary Long 8: Binary Long
  index, reserved_binary_long_8 = otcmarkets_linknqb_retransmission_link_v1_18.reserved_binary_long_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
otcmarkets_linknqb_retransmission_link_v1_18.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.trade_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution With Price Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_with_price_message = {}

-- Size: Order Execution With Price Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_with_price_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.time.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.order_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.execution_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.price.size

-- Display: Order Execution With Price Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution With Price Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_retransmission_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_retransmission_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_linknqb_retransmission_link_v1_18.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_linknqb_retransmission_link_v1_18.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution With Price Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_execution_with_price_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.order_execution_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.order_execution_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.order_execution_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_message = {}

-- Size: Order Execution Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.time.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.order_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.execution_id.size

-- Display: Order Execution Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_retransmission_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_retransmission_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary Integer
  index, executed_quantity = otcmarkets_linknqb_retransmission_link_v1_18.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary Integer
  index, remaining_quantity = otcmarkets_linknqb_retransmission_link_v1_18.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary Long
  index, execution_id = otcmarkets_linknqb_retransmission_link_v1_18.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
otcmarkets_linknqb_retransmission_link_v1_18.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_execution_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
otcmarkets_linknqb_retransmission_link_v1_18.order_delete_message = {}

-- Size: Order Delete Message
otcmarkets_linknqb_retransmission_link_v1_18.order_delete_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.time.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.order_id.size

-- Display: Order Delete Message
otcmarkets_linknqb_retransmission_link_v1_18.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
otcmarkets_linknqb_retransmission_link_v1_18.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_retransmission_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_retransmission_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
otcmarkets_linknqb_retransmission_link_v1_18.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_delete_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Update Message
otcmarkets_linknqb_retransmission_link_v1_18.order_update_message = {}

-- Size: Order Update Message
otcmarkets_linknqb_retransmission_link_v1_18.order_update_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.time.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.order_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.quantity.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.price.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.order_flags.size

-- Display: Order Update Message
otcmarkets_linknqb_retransmission_link_v1_18.order_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Update Message
otcmarkets_linknqb_retransmission_link_v1_18.order_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_retransmission_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_retransmission_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_linknqb_retransmission_link_v1_18.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_linknqb_retransmission_link_v1_18.price.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otcmarkets_linknqb_retransmission_link_v1_18.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Update Message
otcmarkets_linknqb_retransmission_link_v1_18.order_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_update_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.order_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.order_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.order_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
otcmarkets_linknqb_retransmission_link_v1_18.order_add_message = {}

-- Size: Order Add Message
otcmarkets_linknqb_retransmission_link_v1_18.order_add_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.time.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.order_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.side_indicator.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.quantity.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.symbol.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.price.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.firm_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.unsolicited.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.order_flags.size

-- Display: Order Add Message
otcmarkets_linknqb_retransmission_link_v1_18.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
otcmarkets_linknqb_retransmission_link_v1_18.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary Integer
  index, time = otcmarkets_linknqb_retransmission_link_v1_18.time.dissect(buffer, index, packet, parent)

  -- Order Id: Printable ASCII
  index, order_id = otcmarkets_linknqb_retransmission_link_v1_18.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Printable ASCII
  index, side_indicator = otcmarkets_linknqb_retransmission_link_v1_18.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary Integer
  index, quantity = otcmarkets_linknqb_retransmission_link_v1_18.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_linknqb_retransmission_link_v1_18.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = otcmarkets_linknqb_retransmission_link_v1_18.price.dissect(buffer, index, packet, parent)

  -- Firm Id: Printable ASCII
  index, firm_id = otcmarkets_linknqb_retransmission_link_v1_18.firm_id.dissect(buffer, index, packet, parent)

  -- Unsolicited: Printable ASCII
  index, unsolicited = otcmarkets_linknqb_retransmission_link_v1_18.unsolicited.dissect(buffer, index, packet, parent)

  -- Order Flags: Binary Short Integer
  index, order_flags = otcmarkets_linknqb_retransmission_link_v1_18.order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
otcmarkets_linknqb_retransmission_link_v1_18.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.order_add_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Flags
otcmarkets_linknqb_retransmission_link_v1_18.security_flags = {}

-- Size: Security Flags
otcmarkets_linknqb_retransmission_link_v1_18.security_flags.size = 2

-- Display: Security Flags
otcmarkets_linknqb_retransmission_link_v1_18.security_flags.display = function(range, value, packet, parent)
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
otcmarkets_linknqb_retransmission_link_v1_18.security_flags.bits = function(range, value, packet, parent)

  -- Piggyback Flag: 1 Bit
  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.piggyback_flag, range, value)

  -- Caveat Flag: 1 Bit
  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.caveat_flag, range, value)

  -- Qib Only 144 A: 1 Bit
  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.qib_only_144_a, range, value)

  -- Unsolicited Only Flag: 1 Bit
  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.unsolicited_only_flag, range, value)

  -- Closing Cross Auction: 1 Bit
  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.closing_cross_auction, range, value)

  -- Reserved 11: 11 Bit
  parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.reserved_11, range, value)
end

-- Dissect: Security Flags
otcmarkets_linknqb_retransmission_link_v1_18.security_flags.dissect = function(buffer, offset, packet, parent)
  local size = otcmarkets_linknqb_retransmission_link_v1_18.security_flags.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = otcmarkets_linknqb_retransmission_link_v1_18.security_flags.display(range, value, packet, parent)
  local element = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_flags, range, display)

  if show.security_flags then
    otcmarkets_linknqb_retransmission_link_v1_18.security_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Message
otcmarkets_linknqb_retransmission_link_v1_18.security_message = {}

-- Size: Security Message
otcmarkets_linknqb_retransmission_link_v1_18.security_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.symbol.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.last_update_milli.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.security_action.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.asset_class.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.security_id.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.security_flags.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.tier.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.reporting_status.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.security_status.size

-- Display: Security Message
otcmarkets_linknqb_retransmission_link_v1_18.security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Message
otcmarkets_linknqb_retransmission_link_v1_18.security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Printable ASCII
  index, symbol = otcmarkets_linknqb_retransmission_link_v1_18.symbol.dissect(buffer, index, packet, parent)

  -- Last Update Milli: Binary Long
  index, last_update_milli = otcmarkets_linknqb_retransmission_link_v1_18.last_update_milli.dissect(buffer, index, packet, parent)

  -- Security Action: Binary Integer
  index, security_action = otcmarkets_linknqb_retransmission_link_v1_18.security_action.dissect(buffer, index, packet, parent)

  -- Asset Class: Binary Byte
  index, asset_class = otcmarkets_linknqb_retransmission_link_v1_18.asset_class.dissect(buffer, index, packet, parent)

  -- Security Id: Binary Integer
  index, security_id = otcmarkets_linknqb_retransmission_link_v1_18.security_id.dissect(buffer, index, packet, parent)

  -- Security Flags: Struct of 6 fields
  index, security_flags = otcmarkets_linknqb_retransmission_link_v1_18.security_flags.dissect(buffer, index, packet, parent)

  -- Tier: Binary Byte
  index, tier = otcmarkets_linknqb_retransmission_link_v1_18.tier.dissect(buffer, index, packet, parent)

  -- Reporting Status: Printable ASCII
  index, reporting_status = otcmarkets_linknqb_retransmission_link_v1_18.reporting_status.dissect(buffer, index, packet, parent)

  -- Security Status: Printable ASCII
  index, security_status = otcmarkets_linknqb_retransmission_link_v1_18.security_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Message
otcmarkets_linknqb_retransmission_link_v1_18.security_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.security_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.security_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Message
otcmarkets_linknqb_retransmission_link_v1_18.trading_session_message = {}

-- Size: Trading Session Message
otcmarkets_linknqb_retransmission_link_v1_18.trading_session_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.session_time.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.trading_session.size

-- Display: Trading Session Message
otcmarkets_linknqb_retransmission_link_v1_18.trading_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Message
otcmarkets_linknqb_retransmission_link_v1_18.trading_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Time: Binary Long
  index, session_time = otcmarkets_linknqb_retransmission_link_v1_18.session_time.dissect(buffer, index, packet, parent)

  -- Trading Session: Binary Byte
  index, trading_session = otcmarkets_linknqb_retransmission_link_v1_18.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Message
otcmarkets_linknqb_retransmission_link_v1_18.trading_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.trading_session_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.trading_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.trading_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.trading_session_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.end_of_spin_message = {}

-- Size: End Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.end_of_spin_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.spin_type.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.spin_msg_ct.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.spin_end_time_milli.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num.size

-- Display: End Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.end_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.end_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otcmarkets_linknqb_retransmission_link_v1_18.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Msg Ct: Binary Integer
  index, spin_msg_ct = otcmarkets_linknqb_retransmission_link_v1_18.spin_msg_ct.dissect(buffer, index, packet, parent)

  -- Spin End Time Milli: Binary Long
  index, spin_end_time_milli = otcmarkets_linknqb_retransmission_link_v1_18.spin_end_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.end_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.end_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.end_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.end_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.end_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.start_of_spin_message = {}

-- Size: Start Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.start_of_spin_message.size =
  otcmarkets_linknqb_retransmission_link_v1_18.spin_type.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.spin_start_time_milli.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num.size

-- Display: Start Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.start_of_spin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.start_of_spin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spin Type: Binary Byte
  index, spin_type = otcmarkets_linknqb_retransmission_link_v1_18.spin_type.dissect(buffer, index, packet, parent)

  -- Spin Start Time Milli: Binary Long
  index, spin_start_time_milli = otcmarkets_linknqb_retransmission_link_v1_18.spin_start_time_milli.dissect(buffer, index, packet, parent)

  -- Spin Last Seq Num: Binary Integer
  index, spin_last_seq_num = otcmarkets_linknqb_retransmission_link_v1_18.spin_last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Spin Message
otcmarkets_linknqb_retransmission_link_v1_18.start_of_spin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.start_of_spin_message, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.start_of_spin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.start_of_spin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.start_of_spin_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
otcmarkets_linknqb_retransmission_link_v1_18.payload = {}

-- Dissect: Payload
otcmarkets_linknqb_retransmission_link_v1_18.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Start Of Spin Message
  if message_type == 11 then
    return otcmarkets_linknqb_retransmission_link_v1_18.start_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Spin Message
  if message_type == 12 then
    return otcmarkets_linknqb_retransmission_link_v1_18.end_of_spin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Message
  if message_type == 20 then
    return otcmarkets_linknqb_retransmission_link_v1_18.trading_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Message
  if message_type == 9 then
    return otcmarkets_linknqb_retransmission_link_v1_18.security_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add Message
  if message_type == 21 then
    return otcmarkets_linknqb_retransmission_link_v1_18.order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Update Message
  if message_type == 22 then
    return otcmarkets_linknqb_retransmission_link_v1_18.order_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == 23 then
    return otcmarkets_linknqb_retransmission_link_v1_18.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 24 then
    return otcmarkets_linknqb_retransmission_link_v1_18.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution With Price Message
  if message_type == 25 then
    return otcmarkets_linknqb_retransmission_link_v1_18.order_execution_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 26 then
    return otcmarkets_linknqb_retransmission_link_v1_18.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 27 then
    return otcmarkets_linknqb_retransmission_link_v1_18.top_of_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 28 then
    return otcmarkets_linknqb_retransmission_link_v1_18.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Recovery Event Message
  if message_type == 74 then
    return otcmarkets_linknqb_retransmission_link_v1_18.system_recovery_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Message
  if message_type == 108 then
    return otcmarkets_linknqb_retransmission_link_v1_18.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 97 then
    return otcmarkets_linknqb_retransmission_link_v1_18.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 114 then
    return otcmarkets_linknqb_retransmission_link_v1_18.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Response Message
  if message_type == 98 then
    return otcmarkets_linknqb_retransmission_link_v1_18.retransmission_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 115 then
    return otcmarkets_linknqb_retransmission_link_v1_18.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 99 then
    return otcmarkets_linknqb_retransmission_link_v1_18.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Spin Request Message
  if message_type == 116 then
    return otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Spin Response Message
  if message_type == 100 then
    return otcmarkets_linknqb_retransmission_link_v1_18.enhanced_spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == 104 then
    return otcmarkets_linknqb_retransmission_link_v1_18.heartbeat_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
otcmarkets_linknqb_retransmission_link_v1_18.message_header = {}

-- Size: Message Header
otcmarkets_linknqb_retransmission_link_v1_18.message_header.size =
  otcmarkets_linknqb_retransmission_link_v1_18.message_size.size + 
  otcmarkets_linknqb_retransmission_link_v1_18.message_type.size

-- Display: Message Header
otcmarkets_linknqb_retransmission_link_v1_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otcmarkets_linknqb_retransmission_link_v1_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otcmarkets_linknqb_retransmission_link_v1_18.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, message_type = otcmarkets_linknqb_retransmission_link_v1_18.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otcmarkets_linknqb_retransmission_link_v1_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.message_header, buffer(offset, 0))
    local index = otcmarkets_linknqb_retransmission_link_v1_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otcmarkets_linknqb_retransmission_link_v1_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otcmarkets_linknqb_retransmission_link_v1_18.message = {}

-- Display: Message
otcmarkets_linknqb_retransmission_link_v1_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otcmarkets_linknqb_retransmission_link_v1_18.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = otcmarkets_linknqb_retransmission_link_v1_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 22 branches
  index = otcmarkets_linknqb_retransmission_link_v1_18.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
otcmarkets_linknqb_retransmission_link_v1_18.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18.fields.message, buffer(offset, 0))
    local current = otcmarkets_linknqb_retransmission_link_v1_18.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = otcmarkets_linknqb_retransmission_link_v1_18.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otcmarkets_linknqb_retransmission_link_v1_18.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
otcmarkets_linknqb_retransmission_link_v1_18.packet = {}

-- Verify required size of Tcp packet
otcmarkets_linknqb_retransmission_link_v1_18.packet.requiredsize = function(buffer)
  return buffer:len() >= otcmarkets_linknqb_retransmission_link_v1_18.message_header.size
end

-- Dissect Packet
otcmarkets_linknqb_retransmission_link_v1_18.packet.dissect = function(buffer, packet, parent)
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
    index, message = otcmarkets_linknqb_retransmission_link_v1_18.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otcmarkets_linknqb_retransmission_link_v1_18.init()
end

-- Dissector for OtcMarkets LinkNqb Retransmission Link 1.18
function omi_otcmarkets_linknqb_retransmission_link_v1_18.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otcmarkets_linknqb_retransmission_link_v1_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_otcmarkets_linknqb_retransmission_link_v1_18, buffer(), omi_otcmarkets_linknqb_retransmission_link_v1_18.description, "("..buffer:len().." Bytes)")
  return otcmarkets_linknqb_retransmission_link_v1_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for OtcMarkets LinkNqb Retransmission Link 1.18 (Tcp)
local function omi_otcmarkets_linknqb_retransmission_link_v1_18_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otcmarkets_linknqb_retransmission_link_v1_18.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otcmarkets_linknqb_retransmission_link_v1_18
  omi_otcmarkets_linknqb_retransmission_link_v1_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for OtcMarkets LinkNqb Retransmission Link 1.18
omi_otcmarkets_linknqb_retransmission_link_v1_18:register_heuristic("tcp", omi_otcmarkets_linknqb_retransmission_link_v1_18_tcp_heuristic)

-- Register OtcMarkets LinkNqb Retransmission Link 1.18 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_otcmarkets_linknqb_retransmission_link_v1_18)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: OTC Markets Group
--   Version: 1.18
--   Date: Friday, May 1, 2026
--   Specification: OTC-Link-NQB-MD-Specification.pdf
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
