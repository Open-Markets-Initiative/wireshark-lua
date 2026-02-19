-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis Equities TradingProtocol Atp 4.0 Protocol
local omi_aquis_equities_tradingprotocol_atp_v4_0 = Proto("Aquis.Equities.TradingProtocol.Atp.v4.0.Lua", "Aquis Equities TradingProtocol Atp 4.0")

-- Protocol table
local aquis_equities_tradingprotocol_atp_v4_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis Equities TradingProtocol Atp 4.0 Fields
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.account = ProtoField.new("Account", "aquis.equities.tradingprotocol.atp.v4.0.account", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.algo_trade_flag = ProtoField.new("Algo Trade Flag", "aquis.equities.tradingprotocol.atp.v4.0.algotradeflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.atp_seq_no = ProtoField.new("Atp Seq No", "aquis.equities.tradingprotocol.atp.v4.0.atpseqno", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.blotter_blacklist = ProtoField.new("Blotter Blacklist", "aquis.equities.tradingprotocol.atp.v4.0.blotterblacklist", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ccp_code = ProtoField.new("Ccp Code", "aquis.equities.tradingprotocol.atp.v4.0.ccpcode", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.client_seq_no = ProtoField.new("Client Seq No", "aquis.equities.tradingprotocol.atp.v4.0.clientseqno", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.dark_flag = ProtoField.new("Dark Flag", "aquis.equities.tradingprotocol.atp.v4.0.darkflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.dea_flag = ProtoField.new("Dea Flag", "aquis.equities.tradingprotocol.atp.v4.0.deaflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.designated_order_id = ProtoField.new("Designated Order Id", "aquis.equities.tradingprotocol.atp.v4.0.designatedorderid", ftypes.UINT64)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.display_quantity = ProtoField.new("Display Quantity", "aquis.equities.tradingprotocol.atp.v4.0.displayquantity", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.extended_order_flags = ProtoField.new("Extended Order Flags", "aquis.equities.tradingprotocol.atp.v4.0.extendedorderflags", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.flags = ProtoField.new("Flags", "aquis.equities.tradingprotocol.atp.v4.0.flags", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.inactivity_timeout = ProtoField.new("Inactivity Timeout", "aquis.equities.tradingprotocol.atp.v4.0.inactivitytimeout", ftypes.UINT16)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_extended_flags = ProtoField.new("Ioi Extended Flags", "aquis.equities.tradingprotocol.atp.v4.0.ioiextendedflags", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_order_type = ProtoField.new("Ioi Order Type", "aquis.equities.tradingprotocol.atp.v4.0.ioiordertype", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.liq_indicator = ProtoField.new("Liq Indicator", "aquis.equities.tradingprotocol.atp.v4.0.liqindicator", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.liq_prov = ProtoField.new("Liq Prov", "aquis.equities.tradingprotocol.atp.v4.0.liqprov", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.lis = ProtoField.new("Lis", "aquis.equities.tradingprotocol.atp.v4.0.lis", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.lis_only = ProtoField.new("Lis Only", "aquis.equities.tradingprotocol.atp.v4.0.lisonly", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.logout_reason_code = ProtoField.new("Logout Reason Code", "aquis.equities.tradingprotocol.atp.v4.0.logoutreasoncode", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.market_data_id = ProtoField.new("Market Data Id", "aquis.equities.tradingprotocol.atp.v4.0.marketdataid", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.message = ProtoField.new("Message", "aquis.equities.tradingprotocol.atp.v4.0.message", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.message_header = ProtoField.new("Message Header", "aquis.equities.tradingprotocol.atp.v4.0.messageheader", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.min_qty = ProtoField.new("Min Qty", "aquis.equities.tradingprotocol.atp.v4.0.minqty", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.msg_length = ProtoField.new("Msg Length", "aquis.equities.tradingprotocol.atp.v4.0.msglength", ftypes.UINT16)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.msg_seq_no = ProtoField.new("Msg Seq No", "aquis.equities.tradingprotocol.atp.v4.0.msgseqno", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.msg_type = ProtoField.new("Msg Type", "aquis.equities.tradingprotocol.atp.v4.0.msgtype", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.new_aqx_ord_id = ProtoField.new("New Aqx Ord Id", "aquis.equities.tradingprotocol.atp.v4.0.newaqxordid", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.optim_x_universe = ProtoField.new("Optim X Universe", "aquis.equities.tradingprotocol.atp.v4.0.optimxuniverse", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_add_response_flags = ProtoField.new("Order Add Response Flags", "aquis.equities.tradingprotocol.atp.v4.0.orderaddresponseflags", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_capacity = ProtoField.new("Order Capacity", "aquis.equities.tradingprotocol.atp.v4.0.ordercapacity", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_modify_response_flags_u_81 = ProtoField.new("Order Modify Response Flags U 81", "aquis.equities.tradingprotocol.atp.v4.0.ordermodifyresponseflagsu81", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_ref = ProtoField.new("Order Ref", "aquis.equities.tradingprotocol.atp.v4.0.orderref", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_status = ProtoField.new("Order Status", "aquis.equities.tradingprotocol.atp.v4.0.orderstatus", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_type = ProtoField.new("Order Type", "aquis.equities.tradingprotocol.atp.v4.0.ordertype", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.orig_aqx_ord_id = ProtoField.new("Orig Aqx Ord Id", "aquis.equities.tradingprotocol.atp.v4.0.origaqxordid", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.packet = ProtoField.new("Packet", "aquis.equities.tradingprotocol.atp.v4.0.packet", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.party_role = ProtoField.new("Party Role", "aquis.equities.tradingprotocol.atp.v4.0.partyrole", ftypes.UINT8, nil, base.DEC, 0x0F)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.party_role_qualifier = ProtoField.new("Party Role Qualifier", "aquis.equities.tradingprotocol.atp.v4.0.partyrolequalifier", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.password = ProtoField.new("Password", "aquis.equities.tradingprotocol.atp.v4.0.password", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.payload = ProtoField.new("Payload", "aquis.equities.tradingprotocol.atp.v4.0.payload", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.peg_difference = ProtoField.new("Peg Difference", "aquis.equities.tradingprotocol.atp.v4.0.pegdifference", ftypes.INT64)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.price = ProtoField.new("Price", "aquis.equities.tradingprotocol.atp.v4.0.price", ftypes.UINT64)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.protocol_version = ProtoField.new("Protocol Version", "aquis.equities.tradingprotocol.atp.v4.0.protocolversion", ftypes.UINT16)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.quantity = ProtoField.new("Quantity", "aquis.equities.tradingprotocol.atp.v4.0.quantity", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reason_code = ProtoField.new("Reason Code", "aquis.equities.tradingprotocol.atp.v4.0.reasoncode", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reason_text = ProtoField.new("Reason Text", "aquis.equities.tradingprotocol.atp.v4.0.reasontext", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.request_ref = ProtoField.new("Request Ref", "aquis.equities.tradingprotocol.atp.v4.0.requestref", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_1 = ProtoField.new("Reserved 1", "aquis.equities.tradingprotocol.atp.v4.0.reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_2 = ProtoField.new("Reserved 2", "aquis.equities.tradingprotocol.atp.v4.0.reserved2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_5 = ProtoField.new("Reserved 5", "aquis.equities.tradingprotocol.atp.v4.0.reserved5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_6 = ProtoField.new("Reserved 6", "aquis.equities.tradingprotocol.atp.v4.0.reserved6", ftypes.UINT8, nil, base.DEC, 0x3F)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_u_162 = ProtoField.new("Reserved U 162", "aquis.equities.tradingprotocol.atp.v4.0.reservedu162", ftypes.UINT16)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_u_648 = ProtoField.new("Reserved U 648", "aquis.equities.tradingprotocol.atp.v4.0.reservedu648", ftypes.UINT64)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.result_code = ProtoField.new("Result Code", "aquis.equities.tradingprotocol.atp.v4.0.resultcode", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.routetolit = ProtoField.new("Routetolit", "aquis.equities.tradingprotocol.atp.v4.0.routetolit", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.routing = ProtoField.new("Routing", "aquis.equities.tradingprotocol.atp.v4.0.routing", ftypes.UINT8, nil, base.DEC, 0x38)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.security_id_u_162 = ProtoField.new("Security Id U 162", "aquis.equities.tradingprotocol.atp.v4.0.securityidu162", ftypes.UINT16)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.security_id_u_324 = ProtoField.new("Security Id U 324", "aquis.equities.tradingprotocol.atp.v4.0.securityidu324", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.sender_id = ProtoField.new("Sender Id", "aquis.equities.tradingprotocol.atp.v4.0.senderid", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.short_code_1 = ProtoField.new("Short Code 1", "aquis.equities.tradingprotocol.atp.v4.0.shortcode1", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.short_code_2 = ProtoField.new("Short Code 2", "aquis.equities.tradingprotocol.atp.v4.0.shortcode2", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.short_code_3 = ProtoField.new("Short Code 3", "aquis.equities.tradingprotocol.atp.v4.0.shortcode3", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.side = ProtoField.new("Side", "aquis.equities.tradingprotocol.atp.v4.0.side", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.status = ProtoField.new("Status", "aquis.equities.tradingprotocol.atp.v4.0.status", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.stp_enable = ProtoField.new("Stp Enable", "aquis.equities.tradingprotocol.atp.v4.0.stpenable", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.table_select_1 = ProtoField.new("Table Select 1", "aquis.equities.tradingprotocol.atp.v4.0.tableselect1", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.table_select_2 = ProtoField.new("Table Select 2", "aquis.equities.tradingprotocol.atp.v4.0.tableselect2", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.table_select_3 = ProtoField.new("Table Select 3", "aquis.equities.tradingprotocol.atp.v4.0.tableselect3", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.time_in_force = ProtoField.new("Time In Force", "aquis.equities.tradingprotocol.atp.v4.0.timeinforce", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.timestamp = ProtoField.new("Timestamp", "aquis.equities.tradingprotocol.atp.v4.0.timestamp", ftypes.UINT64)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_capture_flags = ProtoField.new("Trade Capture Flags", "aquis.equities.tradingprotocol.atp.v4.0.tradecaptureflags", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_capture_type = ProtoField.new("Trade Capture Type", "aquis.equities.tradingprotocol.atp.v4.0.tradecapturetype", ftypes.UINT8)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_flags = ProtoField.new("Trade Flags", "aquis.equities.tradingprotocol.atp.v4.0.tradeflags", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_ref = ProtoField.new("Trade Ref", "aquis.equities.tradingprotocol.atp.v4.0.traderef", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.traded_quantity = ProtoField.new("Traded Quantity", "aquis.equities.tradingprotocol.atp.v4.0.tradedquantity", ftypes.UINT32)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.user_tag = ProtoField.new("User Tag", "aquis.equities.tradingprotocol.atp.v4.0.usertag", ftypes.UINT64)

-- Aquis Equities Atp TradingProtocol 4.0 Application Messages
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.iceberg_order_refresh_message = ProtoField.new("Iceberg Order Refresh Message", "aquis.equities.tradingprotocol.atp.v4.0.icebergorderrefreshmessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_add_message = ProtoField.new("Ioi Add Message", "aquis.equities.tradingprotocol.atp.v4.0.ioiaddmessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_firmup = ProtoField.new("Ioi Firmup", "aquis.equities.tradingprotocol.atp.v4.0.ioifirmup", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_invite_message = ProtoField.new("Ioi Invite Message", "aquis.equities.tradingprotocol.atp.v4.0.ioiinvitemessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.login_message = ProtoField.new("Login Message", "aquis.equities.tradingprotocol.atp.v4.0.loginmessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.login_response_message = ProtoField.new("Login Response Message", "aquis.equities.tradingprotocol.atp.v4.0.loginresponsemessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.logout_message = ProtoField.new("Logout Message", "aquis.equities.tradingprotocol.atp.v4.0.logoutmessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_add_extended_message = ProtoField.new("Order Add Extended Message", "aquis.equities.tradingprotocol.atp.v4.0.orderaddextendedmessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_add_message = ProtoField.new("Order Add Message", "aquis.equities.tradingprotocol.atp.v4.0.orderaddmessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_add_response_message = ProtoField.new("Order Add Response Message", "aquis.equities.tradingprotocol.atp.v4.0.orderaddresponsemessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "aquis.equities.tradingprotocol.atp.v4.0.ordercancelmessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_cancel_response_message = ProtoField.new("Order Cancel Response Message", "aquis.equities.tradingprotocol.atp.v4.0.ordercancelresponsemessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_modify_extended_message = ProtoField.new("Order Modify Extended Message", "aquis.equities.tradingprotocol.atp.v4.0.ordermodifyextendedmessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_modify_message = ProtoField.new("Order Modify Message", "aquis.equities.tradingprotocol.atp.v4.0.ordermodifymessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_modify_response_message = ProtoField.new("Order Modify Response Message", "aquis.equities.tradingprotocol.atp.v4.0.ordermodifyresponsemessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "aquis.equities.tradingprotocol.atp.v4.0.tradebustmessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_capture_message = ProtoField.new("Trade Capture Message", "aquis.equities.tradingprotocol.atp.v4.0.tradecapturemessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_capture_response_message = ProtoField.new("Trade Capture Response Message", "aquis.equities.tradingprotocol.atp.v4.0.tradecaptureresponsemessage", ftypes.STRING)
omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_message = ProtoField.new("Trade Message", "aquis.equities.tradingprotocol.atp.v4.0.trademessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis Equities TradingProtocol Atp 4.0 Element Dissection Options
show.extended_order_flags = true
show.flags = true
show.iceberg_order_refresh_message = true
show.ioi_add_message = true
show.ioi_extended_flags = true
show.ioi_firmup = true
show.ioi_invite_message = true
show.login_message = true
show.login_response_message = true
show.logout_message = true
show.message = true
show.message_header = true
show.order_add_extended_message = true
show.order_add_message = true
show.order_add_response_flags = true
show.order_add_response_message = true
show.order_cancel_message = true
show.order_cancel_response_message = true
show.order_modify_extended_message = true
show.order_modify_message = true
show.order_modify_response_message = true
show.packet = true
show.status = true
show.table_select_1 = true
show.table_select_2 = true
show.table_select_3 = true
show.trade_bust_message = true
show.trade_capture_flags = true
show.trade_capture_message = true
show.trade_capture_response_message = true
show.trade_flags = true
show.trade_message = true
show.payload = false

-- Register Aquis Equities TradingProtocol Atp 4.0 Show Options
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_extended_order_flags = Pref.bool("Show Extended Order Flags", show.extended_order_flags, "Parse and add Extended Order Flags to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_flags = Pref.bool("Show Flags", show.flags, "Parse and add Flags to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_iceberg_order_refresh_message = Pref.bool("Show Iceberg Order Refresh Message", show.iceberg_order_refresh_message, "Parse and add Iceberg Order Refresh Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_add_message = Pref.bool("Show Ioi Add Message", show.ioi_add_message, "Parse and add Ioi Add Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_extended_flags = Pref.bool("Show Ioi Extended Flags", show.ioi_extended_flags, "Parse and add Ioi Extended Flags to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_firmup = Pref.bool("Show Ioi Firmup", show.ioi_firmup, "Parse and add Ioi Firmup to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_invite_message = Pref.bool("Show Ioi Invite Message", show.ioi_invite_message, "Parse and add Ioi Invite Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_login_message = Pref.bool("Show Login Message", show.login_message, "Parse and add Login Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_login_response_message = Pref.bool("Show Login Response Message", show.login_response_message, "Parse and add Login Response Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_extended_message = Pref.bool("Show Order Add Extended Message", show.order_add_extended_message, "Parse and add Order Add Extended Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_message = Pref.bool("Show Order Add Message", show.order_add_message, "Parse and add Order Add Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_response_flags = Pref.bool("Show Order Add Response Flags", show.order_add_response_flags, "Parse and add Order Add Response Flags to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_response_message = Pref.bool("Show Order Add Response Message", show.order_add_response_message, "Parse and add Order Add Response Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_cancel_response_message = Pref.bool("Show Order Cancel Response Message", show.order_cancel_response_message, "Parse and add Order Cancel Response Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_modify_extended_message = Pref.bool("Show Order Modify Extended Message", show.order_modify_extended_message, "Parse and add Order Modify Extended Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_modify_message = Pref.bool("Show Order Modify Message", show.order_modify_message, "Parse and add Order Modify Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_modify_response_message = Pref.bool("Show Order Modify Response Message", show.order_modify_response_message, "Parse and add Order Modify Response Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_status = Pref.bool("Show Status", show.status, "Parse and add Status to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_table_select_1 = Pref.bool("Show Table Select 1", show.table_select_1, "Parse and add Table Select 1 to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_table_select_2 = Pref.bool("Show Table Select 2", show.table_select_2, "Parse and add Table Select 2 to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_table_select_3 = Pref.bool("Show Table Select 3", show.table_select_3, "Parse and add Table Select 3 to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_bust_message = Pref.bool("Show Trade Bust Message", show.trade_bust_message, "Parse and add Trade Bust Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_capture_flags = Pref.bool("Show Trade Capture Flags", show.trade_capture_flags, "Parse and add Trade Capture Flags to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_capture_message = Pref.bool("Show Trade Capture Message", show.trade_capture_message, "Parse and add Trade Capture Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_capture_response_message = Pref.bool("Show Trade Capture Response Message", show.trade_capture_response_message, "Parse and add Trade Capture Response Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_aquis_equities_tradingprotocol_atp_v4_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.extended_order_flags ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_extended_order_flags then
    show.extended_order_flags = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_extended_order_flags
    changed = true
  end
  if show.flags ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_flags then
    show.flags = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_flags
    changed = true
  end
  if show.iceberg_order_refresh_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_iceberg_order_refresh_message then
    show.iceberg_order_refresh_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_iceberg_order_refresh_message
    changed = true
  end
  if show.ioi_add_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_add_message then
    show.ioi_add_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_add_message
    changed = true
  end
  if show.ioi_extended_flags ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_extended_flags then
    show.ioi_extended_flags = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_extended_flags
    changed = true
  end
  if show.ioi_firmup ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_firmup then
    show.ioi_firmup = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_firmup
    changed = true
  end
  if show.ioi_invite_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_invite_message then
    show.ioi_invite_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_ioi_invite_message
    changed = true
  end
  if show.login_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_login_message then
    show.login_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_login_message
    changed = true
  end
  if show.login_response_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_login_response_message then
    show.login_response_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_login_response_message
    changed = true
  end
  if show.logout_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_logout_message then
    show.logout_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_logout_message
    changed = true
  end
  if show.message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_message then
    show.message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_message_header then
    show.message_header = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_message_header
    changed = true
  end
  if show.order_add_extended_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_extended_message then
    show.order_add_extended_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_extended_message
    changed = true
  end
  if show.order_add_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_message then
    show.order_add_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_message
    changed = true
  end
  if show.order_add_response_flags ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_response_flags then
    show.order_add_response_flags = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_response_flags
    changed = true
  end
  if show.order_add_response_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_response_message then
    show.order_add_response_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_add_response_message
    changed = true
  end
  if show.order_cancel_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_cancel_message then
    show.order_cancel_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_cancel_message
    changed = true
  end
  if show.order_cancel_response_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_cancel_response_message then
    show.order_cancel_response_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_cancel_response_message
    changed = true
  end
  if show.order_modify_extended_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_modify_extended_message then
    show.order_modify_extended_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_modify_extended_message
    changed = true
  end
  if show.order_modify_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_modify_message then
    show.order_modify_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_modify_message
    changed = true
  end
  if show.order_modify_response_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_modify_response_message then
    show.order_modify_response_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_order_modify_response_message
    changed = true
  end
  if show.packet ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_packet then
    show.packet = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_packet
    changed = true
  end
  if show.status ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_status then
    show.status = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_status
    changed = true
  end
  if show.table_select_1 ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_table_select_1 then
    show.table_select_1 = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_table_select_1
    changed = true
  end
  if show.table_select_2 ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_table_select_2 then
    show.table_select_2 = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_table_select_2
    changed = true
  end
  if show.table_select_3 ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_table_select_3 then
    show.table_select_3 = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_table_select_3
    changed = true
  end
  if show.trade_bust_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_bust_message then
    show.trade_bust_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_bust_message
    changed = true
  end
  if show.trade_capture_flags ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_capture_flags then
    show.trade_capture_flags = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_capture_flags
    changed = true
  end
  if show.trade_capture_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_capture_message then
    show.trade_capture_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_capture_message
    changed = true
  end
  if show.trade_capture_response_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_capture_response_message then
    show.trade_capture_response_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_capture_response_message
    changed = true
  end
  if show.trade_flags ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_flags then
    show.trade_flags = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_flags
    changed = true
  end
  if show.trade_message ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_message then
    show.trade_message = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_payload then
    show.payload = omi_aquis_equities_tradingprotocol_atp_v4_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Aquis Equities TradingProtocol Atp 4.0
-----------------------------------------------------------------------

-- User Tag
aquis_equities_tradingprotocol_atp_v4_0.user_tag = {}

-- Size: User Tag
aquis_equities_tradingprotocol_atp_v4_0.user_tag.size = 8

-- Display: User Tag
aquis_equities_tradingprotocol_atp_v4_0.user_tag.display = function(value)
  return "User Tag: "..value
end

-- Dissect: User Tag
aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.user_tag.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_tradingprotocol_atp_v4_0.user_tag.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.user_tag, range, value, display)

  return offset + length, value
end

-- Min Qty
aquis_equities_tradingprotocol_atp_v4_0.min_qty = {}

-- Size: Min Qty
aquis_equities_tradingprotocol_atp_v4_0.min_qty.size = 4

-- Display: Min Qty
aquis_equities_tradingprotocol_atp_v4_0.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
aquis_equities_tradingprotocol_atp_v4_0.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Quantity
aquis_equities_tradingprotocol_atp_v4_0.quantity = {}

-- Size: Quantity
aquis_equities_tradingprotocol_atp_v4_0.quantity.size = 4

-- Display: Quantity
aquis_equities_tradingprotocol_atp_v4_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Price
aquis_equities_tradingprotocol_atp_v4_0.price = {}

-- Size: Price
aquis_equities_tradingprotocol_atp_v4_0.price.size = 8

-- Display: Price
aquis_equities_tradingprotocol_atp_v4_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
aquis_equities_tradingprotocol_atp_v4_0.price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_tradingprotocol_atp_v4_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.price, range, value, display)

  return offset + length, value
end

-- Order Ref
aquis_equities_tradingprotocol_atp_v4_0.order_ref = {}

-- Size: Order Ref
aquis_equities_tradingprotocol_atp_v4_0.order_ref.size = 4

-- Display: Order Ref
aquis_equities_tradingprotocol_atp_v4_0.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Ioi Firmup
aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup = {}

-- Size: Ioi Firmup
aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.min_qty.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size

-- Display: Ioi Firmup
aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ioi Firmup
aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = aquis_equities_tradingprotocol_atp_v4_0.min_qty.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ioi Firmup
aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup.dissect = function(buffer, offset, packet, parent)
  if show.ioi_firmup then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_firmup, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp
aquis_equities_tradingprotocol_atp_v4_0.timestamp = {}

-- Size: Timestamp
aquis_equities_tradingprotocol_atp_v4_0.timestamp.size = 8

-- Display: Timestamp
aquis_equities_tradingprotocol_atp_v4_0.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
aquis_equities_tradingprotocol_atp_v4_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_tradingprotocol_atp_v4_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Ioi Invite Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message = {}

-- Size: Ioi Invite Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.min_qty.size + 
  aquis_equities_tradingprotocol_atp_v4_0.timestamp.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size

-- Display: Ioi Invite Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ioi Invite Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = aquis_equities_tradingprotocol_atp_v4_0.min_qty.dissect(buffer, index, packet, parent)

  -- Timestamp: time
  index, timestamp = aquis_equities_tradingprotocol_atp_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ioi Invite Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message.dissect = function(buffer, offset, packet, parent)
  if show.ioi_invite_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_invite_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message.fields(buffer, offset, packet, parent)
  end
end

-- Blotter Blacklist
aquis_equities_tradingprotocol_atp_v4_0.blotter_blacklist = {}

-- Size: Blotter Blacklist
aquis_equities_tradingprotocol_atp_v4_0.blotter_blacklist.size = 50

-- Display: Blotter Blacklist
aquis_equities_tradingprotocol_atp_v4_0.blotter_blacklist.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Blotter Blacklist: No Value"
  end

  return "Blotter Blacklist: "..value
end

-- Dissect: Blotter Blacklist
aquis_equities_tradingprotocol_atp_v4_0.blotter_blacklist.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.blotter_blacklist.size
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

  local display = aquis_equities_tradingprotocol_atp_v4_0.blotter_blacklist.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.blotter_blacklist, range, value, display)

  return offset + length, value
end

-- Optim X Universe
aquis_equities_tradingprotocol_atp_v4_0.optim_x_universe = {}

-- Size: Optim X Universe
aquis_equities_tradingprotocol_atp_v4_0.optim_x_universe.size = 1

-- Display: Optim X Universe
aquis_equities_tradingprotocol_atp_v4_0.optim_x_universe.display = function(value)
  if value == 0 then
    return "Optim X Universe: Off (0)"
  end
  if value == 1 then
    return "Optim X Universe: Show To All Optim X Clients (1)"
  end
  if value == 2 then
    return "Optim X Universe: Show To Current Broker Clients Only (2)"
  end

  return "Optim X Universe: Unknown("..value..")"
end

-- Dissect: Optim X Universe
aquis_equities_tradingprotocol_atp_v4_0.optim_x_universe.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.optim_x_universe.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.optim_x_universe.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.optim_x_universe, range, value, display)

  return offset + length, value
end

-- Ioi Extended Flags
aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags = {}

-- Size: Ioi Extended Flags
aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags.size = 1

-- Display: Ioi Extended Flags
aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Stp Enable flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Stp Enable"
  end
  -- Is Lis Only flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Lis Only"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Ioi Extended Flags
aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags.bits = function(range, value, packet, parent)

  -- Stp Enable: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.stp_enable, range, value)

  -- Lis Only: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.lis_only, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_6, range, value)
end

-- Dissect: Ioi Extended Flags
aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_extended_flags, range, display)

  if show.ioi_extended_flags then
    aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Short Code 3
aquis_equities_tradingprotocol_atp_v4_0.short_code_3 = {}

-- Size: Short Code 3
aquis_equities_tradingprotocol_atp_v4_0.short_code_3.size = 4

-- Display: Short Code 3
aquis_equities_tradingprotocol_atp_v4_0.short_code_3.display = function(value)
  if value == 0 then
    return "Short Code 3: None (0)"
  end
  if value == 1 then
    return "Short Code 3: Aggregated (1)"
  end
  if value == 2 then
    return "Short Code 3: Pending Allocation (2)"
  end
  if value == 3 then
    return "Short Code 3: Client (3)"
  end

  return "Short Code 3: Unknown("..value..")"
end

-- Dissect: Short Code 3
aquis_equities_tradingprotocol_atp_v4_0.short_code_3.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.short_code_3.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.short_code_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.short_code_3, range, value, display)

  return offset + length, value
end

-- Table Select 3
aquis_equities_tradingprotocol_atp_v4_0.table_select_3 = {}

-- Size: Table Select 3
aquis_equities_tradingprotocol_atp_v4_0.table_select_3.size = 1

-- Display: Table Select 3
aquis_equities_tradingprotocol_atp_v4_0.table_select_3.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Table Select 3
aquis_equities_tradingprotocol_atp_v4_0.table_select_3.bits = function(range, value, packet, parent)

  -- Party Role: 4 Bit Enum with 4 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.party_role, range, value)

  -- Party Role Qualifier: 4 Bit Enum with 4 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.party_role_qualifier, range, value)
end

-- Dissect: Table Select 3
aquis_equities_tradingprotocol_atp_v4_0.table_select_3.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.table_select_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.table_select_3.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.table_select_3, range, display)

  if show.table_select_3 then
    aquis_equities_tradingprotocol_atp_v4_0.table_select_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Short Code 2
aquis_equities_tradingprotocol_atp_v4_0.short_code_2 = {}

-- Size: Short Code 2
aquis_equities_tradingprotocol_atp_v4_0.short_code_2.size = 4

-- Display: Short Code 2
aquis_equities_tradingprotocol_atp_v4_0.short_code_2.display = function(value)
  if value == 0 then
    return "Short Code 2: None (0)"
  end
  if value == 1 then
    return "Short Code 2: Aggregated (1)"
  end
  if value == 2 then
    return "Short Code 2: Pending Allocation (2)"
  end
  if value == 3 then
    return "Short Code 2: Client (3)"
  end

  return "Short Code 2: Unknown("..value..")"
end

-- Dissect: Short Code 2
aquis_equities_tradingprotocol_atp_v4_0.short_code_2.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.short_code_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.short_code_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.short_code_2, range, value, display)

  return offset + length, value
end

-- Table Select 2
aquis_equities_tradingprotocol_atp_v4_0.table_select_2 = {}

-- Size: Table Select 2
aquis_equities_tradingprotocol_atp_v4_0.table_select_2.size = 1

-- Display: Table Select 2
aquis_equities_tradingprotocol_atp_v4_0.table_select_2.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Table Select 2
aquis_equities_tradingprotocol_atp_v4_0.table_select_2.bits = function(range, value, packet, parent)

  -- Party Role: 4 Bit Enum with 4 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.party_role, range, value)

  -- Party Role Qualifier: 4 Bit Enum with 4 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.party_role_qualifier, range, value)
end

-- Dissect: Table Select 2
aquis_equities_tradingprotocol_atp_v4_0.table_select_2.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.table_select_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.table_select_2.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.table_select_2, range, display)

  if show.table_select_2 then
    aquis_equities_tradingprotocol_atp_v4_0.table_select_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Short Code 1
aquis_equities_tradingprotocol_atp_v4_0.short_code_1 = {}

-- Size: Short Code 1
aquis_equities_tradingprotocol_atp_v4_0.short_code_1.size = 4

-- Display: Short Code 1
aquis_equities_tradingprotocol_atp_v4_0.short_code_1.display = function(value)
  if value == 0 then
    return "Short Code 1: None (0)"
  end
  if value == 1 then
    return "Short Code 1: Aggregated (1)"
  end
  if value == 2 then
    return "Short Code 1: Pending Allocation (2)"
  end
  if value == 3 then
    return "Short Code 1: Client (3)"
  end

  return "Short Code 1: Unknown("..value..")"
end

-- Dissect: Short Code 1
aquis_equities_tradingprotocol_atp_v4_0.short_code_1.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.short_code_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.short_code_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.short_code_1, range, value, display)

  return offset + length, value
end

-- Table Select 1
aquis_equities_tradingprotocol_atp_v4_0.table_select_1 = {}

-- Size: Table Select 1
aquis_equities_tradingprotocol_atp_v4_0.table_select_1.size = 1

-- Display: Table Select 1
aquis_equities_tradingprotocol_atp_v4_0.table_select_1.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Table Select 1
aquis_equities_tradingprotocol_atp_v4_0.table_select_1.bits = function(range, value, packet, parent)

  -- Party Role: 4 Bit Enum with 4 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.party_role, range, value)

  -- Party Role Qualifier: 4 Bit Enum with 4 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.party_role_qualifier, range, value)
end

-- Dissect: Table Select 1
aquis_equities_tradingprotocol_atp_v4_0.table_select_1.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.table_select_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.table_select_1.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.table_select_1, range, display)

  if show.table_select_1 then
    aquis_equities_tradingprotocol_atp_v4_0.table_select_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Flags
aquis_equities_tradingprotocol_atp_v4_0.flags = {}

-- Size: Flags
aquis_equities_tradingprotocol_atp_v4_0.flags.size = 1

-- Display: Flags
aquis_equities_tradingprotocol_atp_v4_0.flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Liq Prov flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Liq Prov"
  end
  -- Is Algo Trade Flag flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Algo Trade Flag"
  end
  -- Is Dea Flag flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Dea Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
aquis_equities_tradingprotocol_atp_v4_0.flags.bits = function(range, value, packet, parent)

  -- Liq Prov: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.liq_prov, range, value)

  -- Algo Trade Flag: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.algo_trade_flag, range, value)

  -- Dea Flag: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.dea_flag, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_5, range, value)
end

-- Dissect: Flags
aquis_equities_tradingprotocol_atp_v4_0.flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.flags, range, display)

  if show.flags then
    aquis_equities_tradingprotocol_atp_v4_0.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Account
aquis_equities_tradingprotocol_atp_v4_0.account = {}

-- Size: Account
aquis_equities_tradingprotocol_atp_v4_0.account.size = 1

-- Display: Account
aquis_equities_tradingprotocol_atp_v4_0.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
aquis_equities_tradingprotocol_atp_v4_0.account.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.account.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.account, range, value, display)

  return offset + length, value
end

-- Order Capacity
aquis_equities_tradingprotocol_atp_v4_0.order_capacity = {}

-- Size: Order Capacity
aquis_equities_tradingprotocol_atp_v4_0.order_capacity.size = 1

-- Display: Order Capacity
aquis_equities_tradingprotocol_atp_v4_0.order_capacity.display = function(value)
  if value == 1 then
    return "Order Capacity: Aotc (1)"
  end
  if value == 2 then
    return "Order Capacity: Deal (2)"
  end
  if value == 3 then
    return "Order Capacity: Mtch (3)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
aquis_equities_tradingprotocol_atp_v4_0.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.order_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Side
aquis_equities_tradingprotocol_atp_v4_0.side = {}

-- Size: Side
aquis_equities_tradingprotocol_atp_v4_0.side.size = 1

-- Display: Side
aquis_equities_tradingprotocol_atp_v4_0.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
aquis_equities_tradingprotocol_atp_v4_0.side.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.side, range, value, display)

  return offset + length, value
end

-- Time In Force
aquis_equities_tradingprotocol_atp_v4_0.time_in_force = {}

-- Size: Time In Force
aquis_equities_tradingprotocol_atp_v4_0.time_in_force.size = 1

-- Display: Time In Force
aquis_equities_tradingprotocol_atp_v4_0.time_in_force.display = function(value)
  if value == 1 then
    return "Time In Force: Day (1)"
  end
  if value == 2 then
    return "Time In Force: Fill Or Kill (2)"
  end
  if value == 3 then
    return "Time In Force: Immediate Or Cancel (3)"
  end
  if value == 9 then
    return "Time In Force: Good For Auction (9)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
aquis_equities_tradingprotocol_atp_v4_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Ioi Order Type
aquis_equities_tradingprotocol_atp_v4_0.ioi_order_type = {}

-- Size: Ioi Order Type
aquis_equities_tradingprotocol_atp_v4_0.ioi_order_type.size = 1

-- Display: Ioi Order Type
aquis_equities_tradingprotocol_atp_v4_0.ioi_order_type.display = function(value)
  if value == 12 then
    return "Ioi Order Type: Mid Pegged (12)"
  end
  if value == 17 then
    return "Ioi Order Type: Aquis Vwap Match (17)"
  end
  if value == 18 then
    return "Ioi Order Type: Targeted Aquis Vwap Match (18)"
  end

  return "Ioi Order Type: Unknown("..value..")"
end

-- Dissect: Ioi Order Type
aquis_equities_tradingprotocol_atp_v4_0.ioi_order_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.ioi_order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.ioi_order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_order_type, range, value, display)

  return offset + length, value
end

-- Security Id U 162
aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162 = {}

-- Size: Security Id U 162
aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.size = 2

-- Display: Security Id U 162
aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.display = function(value)
  return "Security Id U 162: "..value
end

-- Dissect: Security Id U 162
aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.security_id_u_162, range, value, display)

  return offset + length, value
end

-- Ioi Add Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message = {}

-- Size: Ioi Add Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.size + 
  aquis_equities_tradingprotocol_atp_v4_0.ioi_order_type.size + 
  aquis_equities_tradingprotocol_atp_v4_0.time_in_force.size + 
  aquis_equities_tradingprotocol_atp_v4_0.side.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.order_capacity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.account.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size + 
  aquis_equities_tradingprotocol_atp_v4_0.flags.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.min_qty.size + 
  aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags.size + 
  aquis_equities_tradingprotocol_atp_v4_0.optim_x_universe.size + 
  aquis_equities_tradingprotocol_atp_v4_0.blotter_blacklist.size

-- Display: Ioi Add Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ioi Add Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id U 162: u16
  index, security_id_u_162 = aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.dissect(buffer, index, packet, parent)

  -- Ioi Order Type: u8
  index, ioi_order_type = aquis_equities_tradingprotocol_atp_v4_0.ioi_order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: u8
  index, time_in_force = aquis_equities_tradingprotocol_atp_v4_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_tradingprotocol_atp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Order Capacity: u8
  index, order_capacity = aquis_equities_tradingprotocol_atp_v4_0.order_capacity.dissect(buffer, index, packet, parent)

  -- Account: u8
  index, account = aquis_equities_tradingprotocol_atp_v4_0.account.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 4 fields
  index, flags = aquis_equities_tradingprotocol_atp_v4_0.flags.dissect(buffer, index, packet, parent)

  -- Table Select 1: Struct of 2 fields
  index, table_select_1 = aquis_equities_tradingprotocol_atp_v4_0.table_select_1.dissect(buffer, index, packet, parent)

  -- Short Code 1: u32
  index, short_code_1 = aquis_equities_tradingprotocol_atp_v4_0.short_code_1.dissect(buffer, index, packet, parent)

  -- Table Select 2: Struct of 2 fields
  index, table_select_2 = aquis_equities_tradingprotocol_atp_v4_0.table_select_2.dissect(buffer, index, packet, parent)

  -- Short Code 2: u32
  index, short_code_2 = aquis_equities_tradingprotocol_atp_v4_0.short_code_2.dissect(buffer, index, packet, parent)

  -- Table Select 3: Struct of 2 fields
  index, table_select_3 = aquis_equities_tradingprotocol_atp_v4_0.table_select_3.dissect(buffer, index, packet, parent)

  -- Short Code 3: u32
  index, short_code_3 = aquis_equities_tradingprotocol_atp_v4_0.short_code_3.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = aquis_equities_tradingprotocol_atp_v4_0.min_qty.dissect(buffer, index, packet, parent)

  -- Ioi Extended Flags: Struct of 3 fields
  index, ioi_extended_flags = aquis_equities_tradingprotocol_atp_v4_0.ioi_extended_flags.dissect(buffer, index, packet, parent)

  -- Optim X Universe: u8
  index, optim_x_universe = aquis_equities_tradingprotocol_atp_v4_0.optim_x_universe.dissect(buffer, index, packet, parent)

  -- Blotter Blacklist: char(50)
  index, blotter_blacklist = aquis_equities_tradingprotocol_atp_v4_0.blotter_blacklist.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ioi Add Message
aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message.dissect = function(buffer, offset, packet, parent)
  if show.ioi_add_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ioi_add_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Ref
aquis_equities_tradingprotocol_atp_v4_0.trade_ref = {}

-- Size: Trade Ref
aquis_equities_tradingprotocol_atp_v4_0.trade_ref.size = 4

-- Display: Trade Ref
aquis_equities_tradingprotocol_atp_v4_0.trade_ref.display = function(value)
  return "Trade Ref: "..value
end

-- Dissect: Trade Ref
aquis_equities_tradingprotocol_atp_v4_0.trade_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.trade_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.trade_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_ref, range, value, display)

  return offset + length, value
end

-- Trade Bust Message
aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message = {}

-- Size: Trade Bust Message
aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.side.size + 
  aquis_equities_tradingprotocol_atp_v4_0.trade_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.timestamp.size

-- Display: Trade Bust Message
aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_tradingprotocol_atp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_equities_tradingprotocol_atp_v4_0.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: time
  index, timestamp = aquis_equities_tradingprotocol_atp_v4_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_bust_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_bust_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_flags = {}

-- Size: Trade Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_flags.size = 1

-- Display: Trade Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Lis flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Lis"
  end
  -- Is Dark Flag flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Dark Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_flags.bits = function(range, value, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_6, range, value)

  -- Lis: 1 Bit Enum with 2 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.lis, range, value)

  -- Dark Flag: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.dark_flag, range, value)
end

-- Dissect: Trade Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_flags, range, display)

  if show.trade_flags then
    aquis_equities_tradingprotocol_atp_v4_0.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Liq Indicator
aquis_equities_tradingprotocol_atp_v4_0.liq_indicator = {}

-- Size: Liq Indicator
aquis_equities_tradingprotocol_atp_v4_0.liq_indicator.size = 1

-- Display: Liq Indicator
aquis_equities_tradingprotocol_atp_v4_0.liq_indicator.display = function(value)
  if value == 1 then
    return "Liq Indicator: Added Liquidity (1)"
  end
  if value == 2 then
    return "Liq Indicator: Removed Liquidity (2)"
  end
  if value == 3 then
    return "Liq Indicator: Removed Liquidity Hidden Quantity (3)"
  end
  if value == 4 then
    return "Liq Indicator: Auction Ma C (4)"
  end
  if value == 6 then
    return "Liq Indicator: Auction On Demand (6)"
  end

  return "Liq Indicator: Unknown("..value..")"
end

-- Dissect: Liq Indicator
aquis_equities_tradingprotocol_atp_v4_0.liq_indicator.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.liq_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.liq_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.liq_indicator, range, value, display)

  return offset + length, value
end

-- Ccp Code
aquis_equities_tradingprotocol_atp_v4_0.ccp_code = {}

-- Size: Ccp Code
aquis_equities_tradingprotocol_atp_v4_0.ccp_code.size = 1

-- Display: Ccp Code
aquis_equities_tradingprotocol_atp_v4_0.ccp_code.display = function(value)
  return "Ccp Code: "..value
end

-- Dissect: Ccp Code
aquis_equities_tradingprotocol_atp_v4_0.ccp_code.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.ccp_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.ccp_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.ccp_code, range, value, display)

  return offset + length, value
end

-- Trade Message
aquis_equities_tradingprotocol_atp_v4_0.trade_message = {}

-- Size: Trade Message
aquis_equities_tradingprotocol_atp_v4_0.trade_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.side.size + 
  aquis_equities_tradingprotocol_atp_v4_0.trade_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.ccp_code.size + 
  aquis_equities_tradingprotocol_atp_v4_0.liq_indicator.size + 
  aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.size + 
  aquis_equities_tradingprotocol_atp_v4_0.timestamp.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size + 
  aquis_equities_tradingprotocol_atp_v4_0.trade_flags.size

-- Display: Trade Message
aquis_equities_tradingprotocol_atp_v4_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
aquis_equities_tradingprotocol_atp_v4_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_tradingprotocol_atp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_equities_tradingprotocol_atp_v4_0.trade_ref.dissect(buffer, index, packet, parent)

  -- Ccp Code: u8
  index, ccp_code = aquis_equities_tradingprotocol_atp_v4_0.ccp_code.dissect(buffer, index, packet, parent)

  -- Liq Indicator: u8
  index, liq_indicator = aquis_equities_tradingprotocol_atp_v4_0.liq_indicator.dissect(buffer, index, packet, parent)

  -- Security Id U 162: u16
  index, security_id_u_162 = aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.dissect(buffer, index, packet, parent)

  -- Timestamp: time
  index, timestamp = aquis_equities_tradingprotocol_atp_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = aquis_equities_tradingprotocol_atp_v4_0.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
aquis_equities_tradingprotocol_atp_v4_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Ref
aquis_equities_tradingprotocol_atp_v4_0.request_ref = {}

-- Size: Request Ref
aquis_equities_tradingprotocol_atp_v4_0.request_ref.size = 4

-- Display: Request Ref
aquis_equities_tradingprotocol_atp_v4_0.request_ref.display = function(value)
  return "Request Ref: "..value
end

-- Dissect: Request Ref
aquis_equities_tradingprotocol_atp_v4_0.request_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.request_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.request_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.request_ref, range, value, display)

  return offset + length, value
end

-- Status
aquis_equities_tradingprotocol_atp_v4_0.status = {}

-- Size: Status
aquis_equities_tradingprotocol_atp_v4_0.status.size = 1

-- Display: Status
aquis_equities_tradingprotocol_atp_v4_0.status.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Status
aquis_equities_tradingprotocol_atp_v4_0.status.bits = function(range, value, packet, parent)

  -- Reason Code: 5 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reason_code, range, value)

  -- Order Status: 3 Bit Enum with 6 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_status, range, value)
end

-- Dissect: Status
aquis_equities_tradingprotocol_atp_v4_0.status.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.status.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.status.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.status, range, display)

  if show.status then
    aquis_equities_tradingprotocol_atp_v4_0.status.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Response Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message = {}

-- Size: Trade Capture Response Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.status.size + 
  aquis_equities_tradingprotocol_atp_v4_0.trade_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.request_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size

-- Display: Trade Capture Response Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Response Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Status: Struct of 2 fields
  index, status = aquis_equities_tradingprotocol_atp_v4_0.status.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_equities_tradingprotocol_atp_v4_0.trade_ref.dissect(buffer, index, packet, parent)

  -- Request Ref: u32
  index, request_ref = aquis_equities_tradingprotocol_atp_v4_0.request_ref.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Capture Response Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_capture_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_capture_response_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Capture Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags = {}

-- Size: Trade Capture Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags.size = 1

-- Display: Trade Capture Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Reserved 1"
  end
  -- Is Algo Trade Flag flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Algo Trade Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Capture Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags.bits = function(range, value, packet, parent)

  -- Reserved 1: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_1, range, value)

  -- Algo Trade Flag: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.algo_trade_flag, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_6, range, value)
end

-- Dissect: Trade Capture Flags
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_capture_flags, range, display)

  if show.trade_capture_flags then
    aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Capture Type
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_type = {}

-- Size: Trade Capture Type
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_type.size = 1

-- Display: Trade Capture Type
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_type.display = function(value)
  if value == 1 then
    return "Trade Capture Type: Lis Cross (1)"
  end
  if value == 2 then
    return "Trade Capture Type: Lis Cross No Clearing (2)"
  end
  if value == 3 then
    return "Trade Capture Type: Vwap Benchmark Cross (3)"
  end
  if value == 4 then
    return "Trade Capture Type: Vwap Benchmark Cross No Clearing (4)"
  end
  if value == 5 then
    return "Trade Capture Type: Twap Benchmark Cross (5)"
  end
  if value == 6 then
    return "Trade Capture Type: Twap Benchmark Cross No Clearing (6)"
  end

  return "Trade Capture Type: Unknown("..value..")"
end

-- Dissect: Trade Capture Type
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_capture_type, range, value, display)

  return offset + length, value
end

-- Security Id U 324
aquis_equities_tradingprotocol_atp_v4_0.security_id_u_324 = {}

-- Size: Security Id U 324
aquis_equities_tradingprotocol_atp_v4_0.security_id_u_324.size = 4

-- Display: Security Id U 324
aquis_equities_tradingprotocol_atp_v4_0.security_id_u_324.display = function(value)
  return "Security Id U 324: "..value
end

-- Dissect: Security Id U 324
aquis_equities_tradingprotocol_atp_v4_0.security_id_u_324.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.security_id_u_324.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.security_id_u_324.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.security_id_u_324, range, value, display)

  return offset + length, value
end

-- Trade Capture Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message = {}

-- Size: Trade Capture Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.security_id_u_324.size + 
  aquis_equities_tradingprotocol_atp_v4_0.trade_capture_type.size + 
  aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags.size + 
  aquis_equities_tradingprotocol_atp_v4_0.account.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size

-- Display: Trade Capture Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Capture Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Security Id U 324: u32
  index, security_id_u_324 = aquis_equities_tradingprotocol_atp_v4_0.security_id_u_324.dissect(buffer, index, packet, parent)

  -- Trade Capture Type: u8
  index, trade_capture_type = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_type.dissect(buffer, index, packet, parent)

  -- Trade Capture Flags: Struct of 3 fields
  index, trade_capture_flags = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_flags.dissect(buffer, index, packet, parent)

  -- Account: u8
  index, account = aquis_equities_tradingprotocol_atp_v4_0.account.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Capture Message
aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_capture_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.trade_capture_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message.fields(buffer, offset, packet, parent)
  end
end

-- New Aqx Ord Id
aquis_equities_tradingprotocol_atp_v4_0.new_aqx_ord_id = {}

-- Size: New Aqx Ord Id
aquis_equities_tradingprotocol_atp_v4_0.new_aqx_ord_id.size = 4

-- Display: New Aqx Ord Id
aquis_equities_tradingprotocol_atp_v4_0.new_aqx_ord_id.display = function(value)
  return "New Aqx Ord Id: "..value
end

-- Dissect: New Aqx Ord Id
aquis_equities_tradingprotocol_atp_v4_0.new_aqx_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.new_aqx_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.new_aqx_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.new_aqx_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Aqx Ord Id
aquis_equities_tradingprotocol_atp_v4_0.orig_aqx_ord_id = {}

-- Size: Orig Aqx Ord Id
aquis_equities_tradingprotocol_atp_v4_0.orig_aqx_ord_id.size = 4

-- Display: Orig Aqx Ord Id
aquis_equities_tradingprotocol_atp_v4_0.orig_aqx_ord_id.display = function(value)
  return "Orig Aqx Ord Id: "..value
end

-- Dissect: Orig Aqx Ord Id
aquis_equities_tradingprotocol_atp_v4_0.orig_aqx_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.orig_aqx_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.orig_aqx_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.orig_aqx_ord_id, range, value, display)

  return offset + length, value
end

-- Iceberg Order Refresh Message
aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message = {}

-- Size: Iceberg Order Refresh Message
aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.orig_aqx_ord_id.size + 
  aquis_equities_tradingprotocol_atp_v4_0.new_aqx_ord_id.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size

-- Display: Iceberg Order Refresh Message
aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Iceberg Order Refresh Message
aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Orig Aqx Ord Id: u32
  index, orig_aqx_ord_id = aquis_equities_tradingprotocol_atp_v4_0.orig_aqx_ord_id.dissect(buffer, index, packet, parent)

  -- New Aqx Ord Id: u32
  index, new_aqx_ord_id = aquis_equities_tradingprotocol_atp_v4_0.new_aqx_ord_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Iceberg Order Refresh Message
aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.iceberg_order_refresh_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.iceberg_order_refresh_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Response Flags U 81
aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_flags_u_81 = {}

-- Size: Order Modify Response Flags U 81
aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_flags_u_81.size = 1

-- Display: Order Modify Response Flags U 81
aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_flags_u_81.display = function(value)
  return "Order Modify Response Flags U 81: "..value
end

-- Dissect: Order Modify Response Flags U 81
aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_flags_u_81.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_flags_u_81.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_flags_u_81.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_modify_response_flags_u_81, range, value, display)

  return offset + length, value
end

-- Order Modify Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message = {}

-- Size: Order Modify Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.request_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.status.size + 
  aquis_equities_tradingprotocol_atp_v4_0.timestamp.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size + 
  aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_flags_u_81.size

-- Display: Order Modify Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Request Ref: u32
  index, request_ref = aquis_equities_tradingprotocol_atp_v4_0.request_ref.dissect(buffer, index, packet, parent)

  -- Status: Struct of 2 fields
  index, status = aquis_equities_tradingprotocol_atp_v4_0.status.dissect(buffer, index, packet, parent)

  -- Timestamp: time
  index, timestamp = aquis_equities_tradingprotocol_atp_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  -- Order Modify Response Flags U 81: u8
  index, order_modify_response_flags_u_81 = aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_flags_u_81.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message.dissect = function(buffer, offset, packet, parent)
  if show.order_modify_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_modify_response_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message = {}

-- Size: Order Cancel Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.request_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.status.size + 
  aquis_equities_tradingprotocol_atp_v4_0.timestamp.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size

-- Display: Order Cancel Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Request Ref: u32
  index, request_ref = aquis_equities_tradingprotocol_atp_v4_0.request_ref.dissect(buffer, index, packet, parent)

  -- Status: Struct of 2 fields
  index, status = aquis_equities_tradingprotocol_atp_v4_0.status.dissect(buffer, index, packet, parent)

  -- Timestamp: time
  index, timestamp = aquis_equities_tradingprotocol_atp_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_cancel_response_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Response Flags
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags = {}

-- Size: Order Add Response Flags
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags.size = 1

-- Display: Order Add Response Flags
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Lis flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Lis"
  end
  -- Is Dark Flag flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Dark Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Add Response Flags
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags.bits = function(range, value, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_6, range, value)

  -- Lis: 1 Bit Enum with 2 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.lis, range, value)

  -- Dark Flag: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.dark_flag, range, value)
end

-- Dissect: Order Add Response Flags
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_add_response_flags, range, display)

  if show.order_add_response_flags then
    aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Traded Quantity
aquis_equities_tradingprotocol_atp_v4_0.traded_quantity = {}

-- Size: Traded Quantity
aquis_equities_tradingprotocol_atp_v4_0.traded_quantity.size = 4

-- Display: Traded Quantity
aquis_equities_tradingprotocol_atp_v4_0.traded_quantity.display = function(value)
  return "Traded Quantity: "..value
end

-- Dissect: Traded Quantity
aquis_equities_tradingprotocol_atp_v4_0.traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.traded_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.traded_quantity, range, value, display)

  return offset + length, value
end

-- Market Data Id
aquis_equities_tradingprotocol_atp_v4_0.market_data_id = {}

-- Size: Market Data Id
aquis_equities_tradingprotocol_atp_v4_0.market_data_id.size = 4

-- Display: Market Data Id
aquis_equities_tradingprotocol_atp_v4_0.market_data_id.display = function(value)
  return "Market Data Id: "..value
end

-- Dissect: Market Data Id
aquis_equities_tradingprotocol_atp_v4_0.market_data_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.market_data_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.market_data_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.market_data_id, range, value, display)

  return offset + length, value
end

-- Order Add Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message = {}

-- Size: Order Add Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.market_data_id.size + 
  aquis_equities_tradingprotocol_atp_v4_0.status.size + 
  aquis_equities_tradingprotocol_atp_v4_0.traded_quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.timestamp.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size + 
  aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags.size

-- Display: Order Add Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Market Data Id: u32
  index, market_data_id = aquis_equities_tradingprotocol_atp_v4_0.market_data_id.dissect(buffer, index, packet, parent)

  -- Status: Struct of 2 fields
  index, status = aquis_equities_tradingprotocol_atp_v4_0.status.dissect(buffer, index, packet, parent)

  -- Traded Quantity: u32
  index, traded_quantity = aquis_equities_tradingprotocol_atp_v4_0.traded_quantity.dissect(buffer, index, packet, parent)

  -- Timestamp: time
  index, timestamp = aquis_equities_tradingprotocol_atp_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  -- Order Add Response Flags: Struct of 3 fields
  index, order_add_response_flags = aquis_equities_tradingprotocol_atp_v4_0.order_add_response_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Response Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message.dissect = function(buffer, offset, packet, parent)
  if show.order_add_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_add_response_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved U 648
aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648 = {}

-- Size: Reserved U 648
aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648.size = 8

-- Display: Reserved U 648
aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648.display = function(value)
  return "Reserved U 648: "..value
end

-- Dissect: Reserved U 648
aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_u_648, range, value, display)

  return offset + length, value
end

-- Display Quantity
aquis_equities_tradingprotocol_atp_v4_0.display_quantity = {}

-- Size: Display Quantity
aquis_equities_tradingprotocol_atp_v4_0.display_quantity.size = 4

-- Display: Display Quantity
aquis_equities_tradingprotocol_atp_v4_0.display_quantity.display = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
aquis_equities_tradingprotocol_atp_v4_0.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.display_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Order Modify Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message = {}

-- Size: Order Modify Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size + 
  aquis_equities_tradingprotocol_atp_v4_0.flags.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.order_capacity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.display_quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.min_qty.size + 
  aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648.size

-- Display: Order Modify Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 4 fields
  index, flags = aquis_equities_tradingprotocol_atp_v4_0.flags.dissect(buffer, index, packet, parent)

  -- Table Select 1: Struct of 2 fields
  index, table_select_1 = aquis_equities_tradingprotocol_atp_v4_0.table_select_1.dissect(buffer, index, packet, parent)

  -- Short Code 1: u32
  index, short_code_1 = aquis_equities_tradingprotocol_atp_v4_0.short_code_1.dissect(buffer, index, packet, parent)

  -- Table Select 2: Struct of 2 fields
  index, table_select_2 = aquis_equities_tradingprotocol_atp_v4_0.table_select_2.dissect(buffer, index, packet, parent)

  -- Short Code 2: u32
  index, short_code_2 = aquis_equities_tradingprotocol_atp_v4_0.short_code_2.dissect(buffer, index, packet, parent)

  -- Table Select 3: Struct of 2 fields
  index, table_select_3 = aquis_equities_tradingprotocol_atp_v4_0.table_select_3.dissect(buffer, index, packet, parent)

  -- Short Code 3: u32
  index, short_code_3 = aquis_equities_tradingprotocol_atp_v4_0.short_code_3.dissect(buffer, index, packet, parent)

  -- Order Capacity: u8
  index, order_capacity = aquis_equities_tradingprotocol_atp_v4_0.order_capacity.dissect(buffer, index, packet, parent)

  -- Display Quantity: u32
  index, display_quantity = aquis_equities_tradingprotocol_atp_v4_0.display_quantity.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = aquis_equities_tradingprotocol_atp_v4_0.min_qty.dissect(buffer, index, packet, parent)

  -- Reserved U 648: u64
  index, reserved_u_648 = aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.order_modify_extended_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_modify_extended_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_message = {}

-- Size: Order Modify Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size + 
  aquis_equities_tradingprotocol_atp_v4_0.flags.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.order_capacity.size

-- Display: Order Modify Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 4 fields
  index, flags = aquis_equities_tradingprotocol_atp_v4_0.flags.dissect(buffer, index, packet, parent)

  -- Table Select 1: Struct of 2 fields
  index, table_select_1 = aquis_equities_tradingprotocol_atp_v4_0.table_select_1.dissect(buffer, index, packet, parent)

  -- Short Code 1: u32
  index, short_code_1 = aquis_equities_tradingprotocol_atp_v4_0.short_code_1.dissect(buffer, index, packet, parent)

  -- Table Select 2: Struct of 2 fields
  index, table_select_2 = aquis_equities_tradingprotocol_atp_v4_0.table_select_2.dissect(buffer, index, packet, parent)

  -- Short Code 2: u32
  index, short_code_2 = aquis_equities_tradingprotocol_atp_v4_0.short_code_2.dissect(buffer, index, packet, parent)

  -- Table Select 3: Struct of 2 fields
  index, table_select_3 = aquis_equities_tradingprotocol_atp_v4_0.table_select_3.dissect(buffer, index, packet, parent)

  -- Short Code 3: u32
  index, short_code_3 = aquis_equities_tradingprotocol_atp_v4_0.short_code_3.dissect(buffer, index, packet, parent)

  -- Order Capacity: u8
  index, order_capacity = aquis_equities_tradingprotocol_atp_v4_0.order_capacity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
aquis_equities_tradingprotocol_atp_v4_0.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.order_modify_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_modify_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message = {}

-- Size: Order Cancel Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.order_ref.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size + 
  aquis_equities_tradingprotocol_atp_v4_0.flags.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_3.size

-- Display: Order Cancel Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Ref: u32
  index, order_ref = aquis_equities_tradingprotocol_atp_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 4 fields
  index, flags = aquis_equities_tradingprotocol_atp_v4_0.flags.dissect(buffer, index, packet, parent)

  -- Table Select 1: Struct of 2 fields
  index, table_select_1 = aquis_equities_tradingprotocol_atp_v4_0.table_select_1.dissect(buffer, index, packet, parent)

  -- Short Code 1: u32
  index, short_code_1 = aquis_equities_tradingprotocol_atp_v4_0.short_code_1.dissect(buffer, index, packet, parent)

  -- Table Select 2: Struct of 2 fields
  index, table_select_2 = aquis_equities_tradingprotocol_atp_v4_0.table_select_2.dissect(buffer, index, packet, parent)

  -- Short Code 2: u32
  index, short_code_2 = aquis_equities_tradingprotocol_atp_v4_0.short_code_2.dissect(buffer, index, packet, parent)

  -- Table Select 3: Struct of 2 fields
  index, table_select_3 = aquis_equities_tradingprotocol_atp_v4_0.table_select_3.dissect(buffer, index, packet, parent)

  -- Short Code 3: u32
  index, short_code_3 = aquis_equities_tradingprotocol_atp_v4_0.short_code_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_cancel_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Peg Difference
aquis_equities_tradingprotocol_atp_v4_0.peg_difference = {}

-- Size: Peg Difference
aquis_equities_tradingprotocol_atp_v4_0.peg_difference.size = 8

-- Display: Peg Difference
aquis_equities_tradingprotocol_atp_v4_0.peg_difference.display = function(value)
  return "Peg Difference: "..value
end

-- Dissect: Peg Difference
aquis_equities_tradingprotocol_atp_v4_0.peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.peg_difference.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = aquis_equities_tradingprotocol_atp_v4_0.peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.peg_difference, range, value, display)

  return offset + length, value
end

-- Reserved U 162
aquis_equities_tradingprotocol_atp_v4_0.reserved_u_162 = {}

-- Size: Reserved U 162
aquis_equities_tradingprotocol_atp_v4_0.reserved_u_162.size = 2

-- Display: Reserved U 162
aquis_equities_tradingprotocol_atp_v4_0.reserved_u_162.display = function(value)
  return "Reserved U 162: "..value
end

-- Dissect: Reserved U 162
aquis_equities_tradingprotocol_atp_v4_0.reserved_u_162.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.reserved_u_162.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.reserved_u_162.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_u_162, range, value, display)

  return offset + length, value
end

-- Designated Order Id
aquis_equities_tradingprotocol_atp_v4_0.designated_order_id = {}

-- Size: Designated Order Id
aquis_equities_tradingprotocol_atp_v4_0.designated_order_id.size = 8

-- Display: Designated Order Id
aquis_equities_tradingprotocol_atp_v4_0.designated_order_id.display = function(value)
  return "Designated Order Id: "..value
end

-- Dissect: Designated Order Id
aquis_equities_tradingprotocol_atp_v4_0.designated_order_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.designated_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_tradingprotocol_atp_v4_0.designated_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.designated_order_id, range, value, display)

  return offset + length, value
end

-- Extended Order Flags
aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags = {}

-- Size: Extended Order Flags
aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags.size = 1

-- Display: Extended Order Flags
aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Stp Enable flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Stp Enable"
  end
  -- Is Lis Only flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Lis Only"
  end
  -- Is Routetolit flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Routetolit"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Extended Order Flags
aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags.bits = function(range, value, packet, parent)

  -- Stp Enable: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.stp_enable, range, value)

  -- Lis Only: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.lis_only, range, value)

  -- Routetolit: 1 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.routetolit, range, value)

  -- Routing: 3 Bit Enum with 5 values
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.routing, range, value)

  -- Reserved 2: 2 Bit
  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reserved_2, range, value)
end

-- Dissect: Extended Order Flags
aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.extended_order_flags, range, display)

  if show.extended_order_flags then
    aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Type
aquis_equities_tradingprotocol_atp_v4_0.order_type = {}

-- Size: Order Type
aquis_equities_tradingprotocol_atp_v4_0.order_type.size = 1

-- Display: Order Type
aquis_equities_tradingprotocol_atp_v4_0.order_type.display = function(value)
  if value == 1 then
    return "Order Type: Limit Order (1)"
  end
  if value == 2 then
    return "Order Type: Auction On Demand Limit Order (2)"
  end
  if value == 3 then
    return "Order Type: Auction On Demand Mid Pegged Limit (3)"
  end
  if value == 4 then
    return "Order Type: Auction On Demand Near Touch Pegged (4)"
  end
  if value == 6 then
    return "Order Type: Market At Close (6)"
  end
  if value == 8 then
    return "Order Type: Post Only Cancel Replace (8)"
  end
  if value == 9 then
    return "Order Type: Post Only (9)"
  end
  if value == 10 then
    return "Order Type: Restricted Pocr Order (10)"
  end
  if value == 11 then
    return "Order Type: Restricted Post Only Order (11)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
aquis_equities_tradingprotocol_atp_v4_0.order_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_type, range, value, display)

  return offset + length, value
end

-- Order Add Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message = {}

-- Size: Order Add Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.size + 
  aquis_equities_tradingprotocol_atp_v4_0.order_type.size + 
  aquis_equities_tradingprotocol_atp_v4_0.time_in_force.size + 
  aquis_equities_tradingprotocol_atp_v4_0.side.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.order_capacity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.account.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size + 
  aquis_equities_tradingprotocol_atp_v4_0.flags.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.display_quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.min_qty.size + 
  aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags.size + 
  aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648.size + 
  aquis_equities_tradingprotocol_atp_v4_0.designated_order_id.size + 
  aquis_equities_tradingprotocol_atp_v4_0.reserved_u_162.size + 
  aquis_equities_tradingprotocol_atp_v4_0.peg_difference.size

-- Display: Order Add Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id U 162: u16
  index, security_id_u_162 = aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.dissect(buffer, index, packet, parent)

  -- Order Type: u8
  index, order_type = aquis_equities_tradingprotocol_atp_v4_0.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: u8
  index, time_in_force = aquis_equities_tradingprotocol_atp_v4_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_tradingprotocol_atp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Order Capacity: u8
  index, order_capacity = aquis_equities_tradingprotocol_atp_v4_0.order_capacity.dissect(buffer, index, packet, parent)

  -- Account: u8
  index, account = aquis_equities_tradingprotocol_atp_v4_0.account.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 4 fields
  index, flags = aquis_equities_tradingprotocol_atp_v4_0.flags.dissect(buffer, index, packet, parent)

  -- Table Select 1: Struct of 2 fields
  index, table_select_1 = aquis_equities_tradingprotocol_atp_v4_0.table_select_1.dissect(buffer, index, packet, parent)

  -- Short Code 1: u32
  index, short_code_1 = aquis_equities_tradingprotocol_atp_v4_0.short_code_1.dissect(buffer, index, packet, parent)

  -- Table Select 2: Struct of 2 fields
  index, table_select_2 = aquis_equities_tradingprotocol_atp_v4_0.table_select_2.dissect(buffer, index, packet, parent)

  -- Short Code 2: u32
  index, short_code_2 = aquis_equities_tradingprotocol_atp_v4_0.short_code_2.dissect(buffer, index, packet, parent)

  -- Table Select 3: Struct of 2 fields
  index, table_select_3 = aquis_equities_tradingprotocol_atp_v4_0.table_select_3.dissect(buffer, index, packet, parent)

  -- Short Code 3: u32
  index, short_code_3 = aquis_equities_tradingprotocol_atp_v4_0.short_code_3.dissect(buffer, index, packet, parent)

  -- Display Quantity: u32
  index, display_quantity = aquis_equities_tradingprotocol_atp_v4_0.display_quantity.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = aquis_equities_tradingprotocol_atp_v4_0.min_qty.dissect(buffer, index, packet, parent)

  -- Extended Order Flags: Struct of 5 fields
  index, extended_order_flags = aquis_equities_tradingprotocol_atp_v4_0.extended_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved U 648: u64
  index, reserved_u_648 = aquis_equities_tradingprotocol_atp_v4_0.reserved_u_648.dissect(buffer, index, packet, parent)

  -- Designated Order Id: u64
  index, designated_order_id = aquis_equities_tradingprotocol_atp_v4_0.designated_order_id.dissect(buffer, index, packet, parent)

  -- Reserved U 162: u16
  index, reserved_u_162 = aquis_equities_tradingprotocol_atp_v4_0.reserved_u_162.dissect(buffer, index, packet, parent)

  -- Peg Difference: s64
  index, peg_difference = aquis_equities_tradingprotocol_atp_v4_0.peg_difference.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Extended Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.order_add_extended_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_add_extended_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_message = {}

-- Size: Order Add Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.size + 
  aquis_equities_tradingprotocol_atp_v4_0.order_type.size + 
  aquis_equities_tradingprotocol_atp_v4_0.time_in_force.size + 
  aquis_equities_tradingprotocol_atp_v4_0.side.size + 
  aquis_equities_tradingprotocol_atp_v4_0.quantity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.price.size + 
  aquis_equities_tradingprotocol_atp_v4_0.order_capacity.size + 
  aquis_equities_tradingprotocol_atp_v4_0.account.size + 
  aquis_equities_tradingprotocol_atp_v4_0.user_tag.size + 
  aquis_equities_tradingprotocol_atp_v4_0.flags.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_1.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_2.size + 
  aquis_equities_tradingprotocol_atp_v4_0.table_select_3.size + 
  aquis_equities_tradingprotocol_atp_v4_0.short_code_3.size

-- Display: Order Add Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id U 162: u16
  index, security_id_u_162 = aquis_equities_tradingprotocol_atp_v4_0.security_id_u_162.dissect(buffer, index, packet, parent)

  -- Order Type: u8
  index, order_type = aquis_equities_tradingprotocol_atp_v4_0.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: u8
  index, time_in_force = aquis_equities_tradingprotocol_atp_v4_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_tradingprotocol_atp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_tradingprotocol_atp_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_tradingprotocol_atp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Order Capacity: u8
  index, order_capacity = aquis_equities_tradingprotocol_atp_v4_0.order_capacity.dissect(buffer, index, packet, parent)

  -- Account: u8
  index, account = aquis_equities_tradingprotocol_atp_v4_0.account.dissect(buffer, index, packet, parent)

  -- User Tag: u64
  index, user_tag = aquis_equities_tradingprotocol_atp_v4_0.user_tag.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 4 fields
  index, flags = aquis_equities_tradingprotocol_atp_v4_0.flags.dissect(buffer, index, packet, parent)

  -- Table Select 1: Struct of 2 fields
  index, table_select_1 = aquis_equities_tradingprotocol_atp_v4_0.table_select_1.dissect(buffer, index, packet, parent)

  -- Short Code 1: u32
  index, short_code_1 = aquis_equities_tradingprotocol_atp_v4_0.short_code_1.dissect(buffer, index, packet, parent)

  -- Table Select 2: Struct of 2 fields
  index, table_select_2 = aquis_equities_tradingprotocol_atp_v4_0.table_select_2.dissect(buffer, index, packet, parent)

  -- Short Code 2: u32
  index, short_code_2 = aquis_equities_tradingprotocol_atp_v4_0.short_code_2.dissect(buffer, index, packet, parent)

  -- Table Select 3: Struct of 2 fields
  index, table_select_3 = aquis_equities_tradingprotocol_atp_v4_0.table_select_3.dissect(buffer, index, packet, parent)

  -- Short Code 3: u32
  index, short_code_3 = aquis_equities_tradingprotocol_atp_v4_0.short_code_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
aquis_equities_tradingprotocol_atp_v4_0.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.order_add_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.order_add_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason Text
aquis_equities_tradingprotocol_atp_v4_0.reason_text = {}

-- Size: Reason Text
aquis_equities_tradingprotocol_atp_v4_0.reason_text.size = 32

-- Display: Reason Text
aquis_equities_tradingprotocol_atp_v4_0.reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason Text: No Value"
  end

  return "Reason Text: "..value
end

-- Dissect: Reason Text
aquis_equities_tradingprotocol_atp_v4_0.reason_text.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.reason_text.size
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

  local display = aquis_equities_tradingprotocol_atp_v4_0.reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.reason_text, range, value, display)

  return offset + length, value
end

-- Logout Reason Code
aquis_equities_tradingprotocol_atp_v4_0.logout_reason_code = {}

-- Size: Logout Reason Code
aquis_equities_tradingprotocol_atp_v4_0.logout_reason_code.size = 1

-- Display: Logout Reason Code
aquis_equities_tradingprotocol_atp_v4_0.logout_reason_code.display = function(value)
  if value == 0 then
    return "Logout Reason Code: User Requested (0)"
  end
  if value == 1 then
    return "Logout Reason Code: Admin (1)"
  end
  if value == 2 then
    return "Logout Reason Code: Disconnect (2)"
  end
  if value == 3 then
    return "Logout Reason Code: End Of Day (3)"
  end
  if value == 4 then
    return "Logout Reason Code: Inactivity Timeout (4)"
  end
  if value == 5 then
    return "Logout Reason Code: Protocol Error (5)"
  end
  if value == 6 then
    return "Logout Reason Code: Sequence Number Error (6)"
  end

  return "Logout Reason Code: Unknown("..value..")"
end

-- Dissect: Logout Reason Code
aquis_equities_tradingprotocol_atp_v4_0.logout_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.logout_reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.logout_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.logout_reason_code, range, value, display)

  return offset + length, value
end

-- Logout Message
aquis_equities_tradingprotocol_atp_v4_0.logout_message = {}

-- Size: Logout Message
aquis_equities_tradingprotocol_atp_v4_0.logout_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.logout_reason_code.size + 
  aquis_equities_tradingprotocol_atp_v4_0.reason_text.size

-- Display: Logout Message
aquis_equities_tradingprotocol_atp_v4_0.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
aquis_equities_tradingprotocol_atp_v4_0.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason Code: u8
  index, logout_reason_code = aquis_equities_tradingprotocol_atp_v4_0.logout_reason_code.dissect(buffer, index, packet, parent)

  -- Reason Text: char(32)
  index, reason_text = aquis_equities_tradingprotocol_atp_v4_0.reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
aquis_equities_tradingprotocol_atp_v4_0.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.logout_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.logout_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Seq No
aquis_equities_tradingprotocol_atp_v4_0.client_seq_no = {}

-- Size: Client Seq No
aquis_equities_tradingprotocol_atp_v4_0.client_seq_no.size = 4

-- Display: Client Seq No
aquis_equities_tradingprotocol_atp_v4_0.client_seq_no.display = function(value)
  return "Client Seq No: "..value
end

-- Dissect: Client Seq No
aquis_equities_tradingprotocol_atp_v4_0.client_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.client_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.client_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.client_seq_no, range, value, display)

  return offset + length, value
end

-- Result Code
aquis_equities_tradingprotocol_atp_v4_0.result_code = {}

-- Size: Result Code
aquis_equities_tradingprotocol_atp_v4_0.result_code.size = 1

-- Display: Result Code
aquis_equities_tradingprotocol_atp_v4_0.result_code.display = function(value)
  if value == 0 then
    return "Result Code: Success (0)"
  end
  if value == 1 then
    return "Result Code: Already Logged In (1)"
  end
  if value == 2 then
    return "Result Code: Sequence Number Error (2)"
  end
  if value == 3 then
    return "Result Code: Unsupported Protocol (3)"
  end
  if value == 4 then
    return "Result Code: Failed Authentication (4)"
  end
  if value == 5 then
    return "Result Code: Unknown Source Network (5)"
  end

  return "Result Code: Unknown("..value..")"
end

-- Dissect: Result Code
aquis_equities_tradingprotocol_atp_v4_0.result_code.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.result_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.result_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.result_code, range, value, display)

  return offset + length, value
end

-- Login Response Message
aquis_equities_tradingprotocol_atp_v4_0.login_response_message = {}

-- Size: Login Response Message
aquis_equities_tradingprotocol_atp_v4_0.login_response_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.result_code.size + 
  aquis_equities_tradingprotocol_atp_v4_0.client_seq_no.size

-- Display: Login Response Message
aquis_equities_tradingprotocol_atp_v4_0.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
aquis_equities_tradingprotocol_atp_v4_0.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Result Code: u8
  index, result_code = aquis_equities_tradingprotocol_atp_v4_0.result_code.dissect(buffer, index, packet, parent)

  -- Client Seq No: u32
  index, client_seq_no = aquis_equities_tradingprotocol_atp_v4_0.client_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
aquis_equities_tradingprotocol_atp_v4_0.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.login_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.login_response_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Atp Seq No
aquis_equities_tradingprotocol_atp_v4_0.atp_seq_no = {}

-- Size: Atp Seq No
aquis_equities_tradingprotocol_atp_v4_0.atp_seq_no.size = 4

-- Display: Atp Seq No
aquis_equities_tradingprotocol_atp_v4_0.atp_seq_no.display = function(value)
  return "Atp Seq No: "..value
end

-- Dissect: Atp Seq No
aquis_equities_tradingprotocol_atp_v4_0.atp_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.atp_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.atp_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.atp_seq_no, range, value, display)

  return offset + length, value
end

-- Inactivity Timeout
aquis_equities_tradingprotocol_atp_v4_0.inactivity_timeout = {}

-- Size: Inactivity Timeout
aquis_equities_tradingprotocol_atp_v4_0.inactivity_timeout.size = 2

-- Display: Inactivity Timeout
aquis_equities_tradingprotocol_atp_v4_0.inactivity_timeout.display = function(value)
  return "Inactivity Timeout: "..value
end

-- Dissect: Inactivity Timeout
aquis_equities_tradingprotocol_atp_v4_0.inactivity_timeout.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.inactivity_timeout.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.inactivity_timeout.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.inactivity_timeout, range, value, display)

  return offset + length, value
end

-- Password
aquis_equities_tradingprotocol_atp_v4_0.password = {}

-- Size: Password
aquis_equities_tradingprotocol_atp_v4_0.password.size = 16

-- Display: Password
aquis_equities_tradingprotocol_atp_v4_0.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
aquis_equities_tradingprotocol_atp_v4_0.password.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.password.size
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

  local display = aquis_equities_tradingprotocol_atp_v4_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.password, range, value, display)

  return offset + length, value
end

-- Sender Id
aquis_equities_tradingprotocol_atp_v4_0.sender_id = {}

-- Size: Sender Id
aquis_equities_tradingprotocol_atp_v4_0.sender_id.size = 16

-- Display: Sender Id
aquis_equities_tradingprotocol_atp_v4_0.sender_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Id: No Value"
  end

  return "Sender Id: "..value
end

-- Dissect: Sender Id
aquis_equities_tradingprotocol_atp_v4_0.sender_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.sender_id.size
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

  local display = aquis_equities_tradingprotocol_atp_v4_0.sender_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.sender_id, range, value, display)

  return offset + length, value
end

-- Protocol Version
aquis_equities_tradingprotocol_atp_v4_0.protocol_version = {}

-- Size: Protocol Version
aquis_equities_tradingprotocol_atp_v4_0.protocol_version.size = 2

-- Display: Protocol Version
aquis_equities_tradingprotocol_atp_v4_0.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
aquis_equities_tradingprotocol_atp_v4_0.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.protocol_version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Login Message
aquis_equities_tradingprotocol_atp_v4_0.login_message = {}

-- Size: Login Message
aquis_equities_tradingprotocol_atp_v4_0.login_message.size =
  aquis_equities_tradingprotocol_atp_v4_0.protocol_version.size + 
  aquis_equities_tradingprotocol_atp_v4_0.sender_id.size + 
  aquis_equities_tradingprotocol_atp_v4_0.password.size + 
  aquis_equities_tradingprotocol_atp_v4_0.inactivity_timeout.size + 
  aquis_equities_tradingprotocol_atp_v4_0.atp_seq_no.size

-- Display: Login Message
aquis_equities_tradingprotocol_atp_v4_0.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
aquis_equities_tradingprotocol_atp_v4_0.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Version: u16
  index, protocol_version = aquis_equities_tradingprotocol_atp_v4_0.protocol_version.dissect(buffer, index, packet, parent)

  -- Sender Id: char(16)
  index, sender_id = aquis_equities_tradingprotocol_atp_v4_0.sender_id.dissect(buffer, index, packet, parent)

  -- Password: char(16)
  index, password = aquis_equities_tradingprotocol_atp_v4_0.password.dissect(buffer, index, packet, parent)

  -- Inactivity Timeout: u16
  index, inactivity_timeout = aquis_equities_tradingprotocol_atp_v4_0.inactivity_timeout.dissect(buffer, index, packet, parent)

  -- Atp Seq No: u32
  index, atp_seq_no = aquis_equities_tradingprotocol_atp_v4_0.atp_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
aquis_equities_tradingprotocol_atp_v4_0.login_message.dissect = function(buffer, offset, packet, parent)
  if show.login_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.login_message, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
aquis_equities_tradingprotocol_atp_v4_0.payload = {}

-- Size: Payload
aquis_equities_tradingprotocol_atp_v4_0.payload.size = function(buffer, offset, msg_type)
  -- Size of Login Message
  if msg_type == 1 then
    return aquis_equities_tradingprotocol_atp_v4_0.login_message.size
  end
  -- Size of Login Response Message
  if msg_type == 2 then
    return aquis_equities_tradingprotocol_atp_v4_0.login_response_message.size
  end
  -- Size of Logout Message
  if msg_type == 4 then
    return aquis_equities_tradingprotocol_atp_v4_0.logout_message.size
  end
  -- Size of Order Add Message
  if msg_type == 5 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_add_message.size
  end
  -- Size of Order Add Extended Message
  if msg_type == 21 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message.size
  end
  -- Size of Order Cancel Message
  if msg_type == 7 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message.size
  end
  -- Size of Order Modify Message
  if msg_type == 9 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_modify_message.size
  end
  -- Size of Order Modify Extended Message
  if msg_type == 22 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message.size
  end
  -- Size of Order Add Response Message
  if msg_type == 6 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message.size
  end
  -- Size of Order Cancel Response Message
  if msg_type == 8 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message.size
  end
  -- Size of Order Modify Response Message
  if msg_type == 10 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message.size
  end
  -- Size of Iceberg Order Refresh Message
  if msg_type == 23 then
    return aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message.size
  end
  -- Size of Trade Capture Message
  if msg_type == 17 then
    return aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message.size
  end
  -- Size of Trade Capture Response Message
  if msg_type == 18 then
    return aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message.size
  end
  -- Size of Trade Message
  if msg_type == 11 then
    return aquis_equities_tradingprotocol_atp_v4_0.trade_message.size
  end
  -- Size of Trade Bust Message
  if msg_type == 12 then
    return aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message.size
  end
  -- Size of Ioi Add Message
  if msg_type == 27 then
    return aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message.size
  end
  -- Size of Ioi Invite Message
  if msg_type == 28 then
    return aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message.size
  end
  -- Size of Ioi Firmup
  if msg_type == 29 then
    return aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup.size
  end

  return 0
end

-- Display: Payload
aquis_equities_tradingprotocol_atp_v4_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
aquis_equities_tradingprotocol_atp_v4_0.payload.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Login Message
  if msg_type == 1 then
    return aquis_equities_tradingprotocol_atp_v4_0.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if msg_type == 2 then
    return aquis_equities_tradingprotocol_atp_v4_0.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if msg_type == 4 then
    return aquis_equities_tradingprotocol_atp_v4_0.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add Message
  if msg_type == 5 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add Extended Message
  if msg_type == 21 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_add_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if msg_type == 7 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Message
  if msg_type == 9 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_modify_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Extended Message
  if msg_type == 22 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_modify_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add Response Message
  if msg_type == 6 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_add_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Response Message
  if msg_type == 8 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_cancel_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Response Message
  if msg_type == 10 then
    return aquis_equities_tradingprotocol_atp_v4_0.order_modify_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Iceberg Order Refresh Message
  if msg_type == 23 then
    return aquis_equities_tradingprotocol_atp_v4_0.iceberg_order_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Message
  if msg_type == 17 then
    return aquis_equities_tradingprotocol_atp_v4_0.trade_capture_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Capture Response Message
  if msg_type == 18 then
    return aquis_equities_tradingprotocol_atp_v4_0.trade_capture_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == 11 then
    return aquis_equities_tradingprotocol_atp_v4_0.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if msg_type == 12 then
    return aquis_equities_tradingprotocol_atp_v4_0.trade_bust_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ioi Add Message
  if msg_type == 27 then
    return aquis_equities_tradingprotocol_atp_v4_0.ioi_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ioi Invite Message
  if msg_type == 28 then
    return aquis_equities_tradingprotocol_atp_v4_0.ioi_invite_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ioi Firmup
  if msg_type == 29 then
    return aquis_equities_tradingprotocol_atp_v4_0.ioi_firmup.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
aquis_equities_tradingprotocol_atp_v4_0.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return aquis_equities_tradingprotocol_atp_v4_0.payload.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = aquis_equities_tradingprotocol_atp_v4_0.payload.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = aquis_equities_tradingprotocol_atp_v4_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.payload, range, display)

  return aquis_equities_tradingprotocol_atp_v4_0.payload.branches(buffer, offset, packet, parent, msg_type)
end

-- Msg Seq No
aquis_equities_tradingprotocol_atp_v4_0.msg_seq_no = {}

-- Size: Msg Seq No
aquis_equities_tradingprotocol_atp_v4_0.msg_seq_no.size = 4

-- Display: Msg Seq No
aquis_equities_tradingprotocol_atp_v4_0.msg_seq_no.display = function(value)
  return "Msg Seq No: "..value
end

-- Dissect: Msg Seq No
aquis_equities_tradingprotocol_atp_v4_0.msg_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.msg_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.msg_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.msg_seq_no, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_equities_tradingprotocol_atp_v4_0.msg_type = {}

-- Size: Msg Type
aquis_equities_tradingprotocol_atp_v4_0.msg_type.size = 1

-- Display: Msg Type
aquis_equities_tradingprotocol_atp_v4_0.msg_type.display = function(value)
  if value == 1 then
    return "Msg Type: Login Message (1)"
  end
  if value == 2 then
    return "Msg Type: Login Response Message (2)"
  end
  if value == 4 then
    return "Msg Type: Logout Message (4)"
  end
  if value == 5 then
    return "Msg Type: Order Add Message (5)"
  end
  if value == 21 then
    return "Msg Type: Order Add Extended Message (21)"
  end
  if value == 7 then
    return "Msg Type: Order Cancel Message (7)"
  end
  if value == 9 then
    return "Msg Type: Order Modify Message (9)"
  end
  if value == 22 then
    return "Msg Type: Order Modify Extended Message (22)"
  end
  if value == 6 then
    return "Msg Type: Order Add Response Message (6)"
  end
  if value == 8 then
    return "Msg Type: Order Cancel Response Message (8)"
  end
  if value == 10 then
    return "Msg Type: Order Modify Response Message (10)"
  end
  if value == 23 then
    return "Msg Type: Iceberg Order Refresh Message (23)"
  end
  if value == 17 then
    return "Msg Type: Trade Capture Message (17)"
  end
  if value == 18 then
    return "Msg Type: Trade Capture Response Message (18)"
  end
  if value == 11 then
    return "Msg Type: Trade Message (11)"
  end
  if value == 12 then
    return "Msg Type: Trade Bust Message (12)"
  end
  if value == 27 then
    return "Msg Type: Ioi Add Message (27)"
  end
  if value == 28 then
    return "Msg Type: Ioi Invite Message (28)"
  end
  if value == 29 then
    return "Msg Type: Ioi Firmup (29)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
aquis_equities_tradingprotocol_atp_v4_0.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_equities_tradingprotocol_atp_v4_0.msg_length = {}

-- Size: Msg Length
aquis_equities_tradingprotocol_atp_v4_0.msg_length.size = 2

-- Display: Msg Length
aquis_equities_tradingprotocol_atp_v4_0.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_equities_tradingprotocol_atp_v4_0.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_tradingprotocol_atp_v4_0.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_tradingprotocol_atp_v4_0.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Message Header
aquis_equities_tradingprotocol_atp_v4_0.message_header = {}

-- Size: Message Header
aquis_equities_tradingprotocol_atp_v4_0.message_header.size =
  aquis_equities_tradingprotocol_atp_v4_0.msg_length.size + 
  aquis_equities_tradingprotocol_atp_v4_0.msg_type.size + 
  aquis_equities_tradingprotocol_atp_v4_0.msg_seq_no.size

-- Display: Message Header
aquis_equities_tradingprotocol_atp_v4_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_equities_tradingprotocol_atp_v4_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = aquis_equities_tradingprotocol_atp_v4_0.msg_length.dissect(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, msg_type = aquis_equities_tradingprotocol_atp_v4_0.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Seq No: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_no = aquis_equities_tradingprotocol_atp_v4_0.msg_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_equities_tradingprotocol_atp_v4_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.message_header, buffer(offset, 0))
    local index = aquis_equities_tradingprotocol_atp_v4_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_tradingprotocol_atp_v4_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_tradingprotocol_atp_v4_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_equities_tradingprotocol_atp_v4_0.message = {}

-- Display: Message
aquis_equities_tradingprotocol_atp_v4_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_equities_tradingprotocol_atp_v4_0.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_equities_tradingprotocol_atp_v4_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 5, 1):uint()

  -- Payload: Runtime Type with 19 branches
  index = aquis_equities_tradingprotocol_atp_v4_0.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_equities_tradingprotocol_atp_v4_0.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0.fields.message, buffer(offset, 0))
    local current = aquis_equities_tradingprotocol_atp_v4_0.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = aquis_equities_tradingprotocol_atp_v4_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_equities_tradingprotocol_atp_v4_0.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < aquis_equities_tradingprotocol_atp_v4_0.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
aquis_equities_tradingprotocol_atp_v4_0.packet = {}

-- Dissect Packet
aquis_equities_tradingprotocol_atp_v4_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = aquis_equities_tradingprotocol_atp_v4_0.message.dissect(buffer, index, packet, parent, size_of_message)
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
function omi_aquis_equities_tradingprotocol_atp_v4_0.init()
end

-- Dissector for Aquis Equities TradingProtocol Atp 4.0
function omi_aquis_equities_tradingprotocol_atp_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_aquis_equities_tradingprotocol_atp_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_equities_tradingprotocol_atp_v4_0, buffer(), omi_aquis_equities_tradingprotocol_atp_v4_0.description, "("..buffer:len().." Bytes)")
  return aquis_equities_tradingprotocol_atp_v4_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_aquis_equities_tradingprotocol_atp_v4_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
aquis_equities_tradingprotocol_atp_v4_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Aquis Equities TradingProtocol Atp 4.0
local function omi_aquis_equities_tradingprotocol_atp_v4_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_equities_tradingprotocol_atp_v4_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_equities_tradingprotocol_atp_v4_0
  omi_aquis_equities_tradingprotocol_atp_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis Equities TradingProtocol Atp 4.0
omi_aquis_equities_tradingprotocol_atp_v4_0:register_heuristic("tcp", omi_aquis_equities_tradingprotocol_atp_v4_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 4.0
--   Date: Friday, August 1, 2025
--   Specification: Production_Aquis_ATP_Technical_Specification_v4_0.pdf
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
