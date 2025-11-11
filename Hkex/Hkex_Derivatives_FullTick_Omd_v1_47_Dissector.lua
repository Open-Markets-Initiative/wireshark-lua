-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex Derivatives FullTick Omd 1.47 Protocol
local omi_hkex_derivatives_fulltick_omd_v1_47 = Proto("Hkex.Derivatives.FullTick.Omd.v1.47.Lua", "Hkex Derivatives FullTick Omd 1.47")

-- Protocol table
local hkex_derivatives_fulltick_omd_v1_47 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex Derivatives FullTick Omd 1.47 Fields
omi_hkex_derivatives_fulltick_omd_v1_47.fields.actual_start_date = ProtoField.new("Actual Start Date", "hkex.derivatives.fulltick.omd.v1.47.actualstartdate", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.actual_start_time = ProtoField.new("Actual Start Time", "hkex.derivatives.fulltick.omd.v1.47.actualstarttime", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.alert_id = ProtoField.new("Alert Id", "hkex.derivatives.fulltick.omd.v1.47.alertid", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.bid_ask_flag = ProtoField.new("Bid Ask Flag", "hkex.derivatives.fulltick.omd.v1.47.bidaskflag", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.calculated_opening_price = ProtoField.new("Calculated Opening Price", "hkex.derivatives.fulltick.omd.v1.47.calculatedopeningprice", ftypes.INT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.calculated_opening_quantity = ProtoField.new("Calculated Opening Quantity", "hkex.derivatives.fulltick.omd.v1.47.calculatedopeningquantity", ftypes.UINT64)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.combo_group_id = ProtoField.new("Combo Group Id", "hkex.derivatives.fulltick.omd.v1.47.combogroupid", ftypes.UINT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.commodity_code = ProtoField.new("Commodity Code", "hkex.derivatives.fulltick.omd.v1.47.commoditycode", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.compression_mode = ProtoField.new("Compression Mode", "hkex.derivatives.fulltick.omd.v1.47.compressionmode", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.content = ProtoField.new("Content", "hkex.derivatives.fulltick.omd.v1.47.content", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.deal_info = ProtoField.new("Deal Info", "hkex.derivatives.fulltick.omd.v1.47.dealinfo", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.deal_type = ProtoField.new("Deal Type", "hkex.derivatives.fulltick.omd.v1.47.dealtype", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.disaster_recovery_status = ProtoField.new("Disaster Recovery Status", "hkex.derivatives.fulltick.omd.v1.47.disasterrecoverystatus", ftypes.UINT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.filler_1 = ProtoField.new("Filler 1", "hkex.derivatives.fulltick.omd.v1.47.filler1", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.filler_2 = ProtoField.new("Filler 2", "hkex.derivatives.fulltick.omd.v1.47.filler2", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.filler_3 = ProtoField.new("Filler 3", "hkex.derivatives.fulltick.omd.v1.47.filler3", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.filler_4 = ProtoField.new("Filler 4", "hkex.derivatives.fulltick.omd.v1.47.filler4", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.header = ProtoField.new("Header", "hkex.derivatives.fulltick.omd.v1.47.header", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.info_type = ProtoField.new("Info Type", "hkex.derivatives.fulltick.omd.v1.47.infotype", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.instrument = ProtoField.new("Instrument", "hkex.derivatives.fulltick.omd.v1.47.instrument", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.last_fragment = ProtoField.new("Last Fragment", "hkex.derivatives.fulltick.omd.v1.47.lastfragment", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.last_seq_num = ProtoField.new("Last Seq Num", "hkex.derivatives.fulltick.omd.v1.47.lastseqnum", ftypes.UINT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.locked = ProtoField.new("Locked", "hkex.derivatives.fulltick.omd.v1.47.locked", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.lot_type = ProtoField.new("Lot Type", "hkex.derivatives.fulltick.omd.v1.47.lottype", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.market = ProtoField.new("Market", "hkex.derivatives.fulltick.omd.v1.47.market", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.message = ProtoField.new("Message", "hkex.derivatives.fulltick.omd.v1.47.message", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.msg_count = ProtoField.new("Msg Count", "hkex.derivatives.fulltick.omd.v1.47.msgcount", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.msg_header = ProtoField.new("Msg Header", "hkex.derivatives.fulltick.omd.v1.47.msgheader", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.msg_size = ProtoField.new("Msg Size", "hkex.derivatives.fulltick.omd.v1.47.msgsize", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.msg_type = ProtoField.new("Msg Type", "hkex.derivatives.fulltick.omd.v1.47.msgtype", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.new_seq_no = ProtoField.new("New Seq No", "hkex.derivatives.fulltick.omd.v1.47.newseqno", ftypes.UINT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.no_lines = ProtoField.new("No Lines", "hkex.derivatives.fulltick.omd.v1.47.nolines", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.number_of_lots = ProtoField.new("Number Of Lots", "hkex.derivatives.fulltick.omd.v1.47.numberoflots", ftypes.INT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.order_book_position = ProtoField.new("Order Book Position", "hkex.derivatives.fulltick.omd.v1.47.orderbookposition", ftypes.UINT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.order_id = ProtoField.new("Order Id", "hkex.derivatives.fulltick.omd.v1.47.orderid", ftypes.UINT64)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.order_type = ProtoField.new("Order Type", "hkex.derivatives.fulltick.omd.v1.47.ordertype", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.orderbook_id = ProtoField.new("Orderbook Id", "hkex.derivatives.fulltick.omd.v1.47.orderbookid", ftypes.UINT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.packet = ProtoField.new("Packet", "hkex.derivatives.fulltick.omd.v1.47.packet", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.packet_header = ProtoField.new("Packet Header", "hkex.derivatives.fulltick.omd.v1.47.packetheader", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.payload = ProtoField.new("Payload", "hkex.derivatives.fulltick.omd.v1.47.payload", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.derivatives.fulltick.omd.v1.47.pktsize", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.planned_start_date = ProtoField.new("Planned Start Date", "hkex.derivatives.fulltick.omd.v1.47.plannedstartdate", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.planned_start_time = ProtoField.new("Planned Start Time", "hkex.derivatives.fulltick.omd.v1.47.plannedstarttime", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.price = ProtoField.new("Price", "hkex.derivatives.fulltick.omd.v1.47.price", ftypes.INT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.priority = ProtoField.new("Priority", "hkex.derivatives.fulltick.omd.v1.47.priority", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.quantity = ProtoField.new("Quantity", "hkex.derivatives.fulltick.omd.v1.47.quantity", ftypes.UINT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.seconds_to_state_change = ProtoField.new("Seconds To State Change", "hkex.derivatives.fulltick.omd.v1.47.secondstostatechange", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.send_time = ProtoField.new("Send Time", "hkex.derivatives.fulltick.omd.v1.47.sendtime", ftypes.UINT64)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.seq_num = ProtoField.new("Seq Num", "hkex.derivatives.fulltick.omd.v1.47.seqnum", ftypes.UINT32)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.series_status = ProtoField.new("Series Status", "hkex.derivatives.fulltick.omd.v1.47.seriesstatus", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.side = ProtoField.new("Side", "hkex.derivatives.fulltick.omd.v1.47.side", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.source = ProtoField.new("Source", "hkex.derivatives.fulltick.omd.v1.47.source", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.state = ProtoField.new("State", "hkex.derivatives.fulltick.omd.v1.47.state", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.state_level = ProtoField.new("State Level", "hkex.derivatives.fulltick.omd.v1.47.statelevel", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.suspended = ProtoField.new("Suspended", "hkex.derivatives.fulltick.omd.v1.47.suspended", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.suspension_indicator = ProtoField.new("Suspension Indicator", "hkex.derivatives.fulltick.omd.v1.47.suspensionindicator", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_condition = ProtoField.new("Trade Condition", "hkex.derivatives.fulltick.omd.v1.47.tradecondition", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_id = ProtoField.new("Trade Id", "hkex.derivatives.fulltick.omd.v1.47.tradeid", ftypes.UINT64)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_quantity = ProtoField.new("Trade Quantity", "hkex.derivatives.fulltick.omd.v1.47.tradequantity", ftypes.UINT64)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_state = ProtoField.new("Trade State", "hkex.derivatives.fulltick.omd.v1.47.tradestate", ftypes.UINT8)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_time = ProtoField.new("Trade Time", "hkex.derivatives.fulltick.omd.v1.47.tradetime", ftypes.UINT64)

-- Hkex Derivatives FullTick Omd 1.47 messages
omi_hkex_derivatives_fulltick_omd_v1_47.fields.add_order_message = ProtoField.new("Add Order Message", "hkex.derivatives.fulltick.omd.v1.47.addordermessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.calculated_opening_price_message = ProtoField.new("Calculated Opening Price Message", "hkex.derivatives.fulltick.omd.v1.47.calculatedopeningpricemessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.commodity_status_message = ProtoField.new("Commodity Status Message", "hkex.derivatives.fulltick.omd.v1.47.commoditystatusmessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.delete_order_message = ProtoField.new("Delete Order Message", "hkex.derivatives.fulltick.omd.v1.47.deleteordermessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "hkex.derivatives.fulltick.omd.v1.47.disasterrecoverysignalmessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.market_alert_message = ProtoField.new("Market Alert Message", "hkex.derivatives.fulltick.omd.v1.47.marketalertmessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.market_status_message = ProtoField.new("Market Status Message", "hkex.derivatives.fulltick.omd.v1.47.marketstatusmessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.modify_order_message = ProtoField.new("Modify Order Message", "hkex.derivatives.fulltick.omd.v1.47.modifyordermessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.orderbook_clear_message = ProtoField.new("Orderbook Clear Message", "hkex.derivatives.fulltick.omd.v1.47.orderbookclearmessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.quote_request = ProtoField.new("Quote Request", "hkex.derivatives.fulltick.omd.v1.47.quoterequest", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.refresh_complete = ProtoField.new("Refresh Complete", "hkex.derivatives.fulltick.omd.v1.47.refreshcomplete", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.sequence_reset = ProtoField.new("Sequence Reset", "hkex.derivatives.fulltick.omd.v1.47.sequencereset", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.series_status_message = ProtoField.new("Series Status Message", "hkex.derivatives.fulltick.omd.v1.47.seriesstatusmessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_amendment_message = ProtoField.new("Trade Amendment Message", "hkex.derivatives.fulltick.omd.v1.47.tradeamendmentmessage", ftypes.STRING)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_message = ProtoField.new("Trade Message", "hkex.derivatives.fulltick.omd.v1.47.trademessage", ftypes.STRING)

-- Hkex Derivatives FullTick Omd 1.47 generated fields
omi_hkex_derivatives_fulltick_omd_v1_47.fields.content_index = ProtoField.new("Content Index", "hkex.derivatives.fulltick.omd.v1.47.contentindex", ftypes.UINT16)
omi_hkex_derivatives_fulltick_omd_v1_47.fields.message_index = ProtoField.new("Message Index", "hkex.derivatives.fulltick.omd.v1.47.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex Derivatives FullTick Omd 1.47 Element Dissection Options
show.add_order_message = true
show.calculated_opening_price_message = true
show.commodity_status_message = true
show.delete_order_message = true
show.disaster_recovery_signal_message = true
show.market_alert_message = true
show.market_status_message = true
show.message = true
show.modify_order_message = true
show.msg_header = true
show.orderbook_clear_message = true
show.packet = true
show.packet_header = true
show.quote_request = true
show.refresh_complete = true
show.sequence_reset = true
show.series_status_message = true
show.trade_amendment_message = true
show.trade_message = true
show.payload = false

-- Register Hkex Derivatives FullTick Omd 1.47 Show Options
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_calculated_opening_price_message = Pref.bool("Show Calculated Opening Price Message", show.calculated_opening_price_message, "Parse and add Calculated Opening Price Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_commodity_status_message = Pref.bool("Show Commodity Status Message", show.commodity_status_message, "Parse and add Commodity Status Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_disaster_recovery_signal_message = Pref.bool("Show Disaster Recovery Signal Message", show.disaster_recovery_signal_message, "Parse and add Disaster Recovery Signal Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_market_alert_message = Pref.bool("Show Market Alert Message", show.market_alert_message, "Parse and add Market Alert Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_market_status_message = Pref.bool("Show Market Status Message", show.market_status_message, "Parse and add Market Status Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_orderbook_clear_message = Pref.bool("Show Orderbook Clear Message", show.orderbook_clear_message, "Parse and add Orderbook Clear Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_refresh_complete = Pref.bool("Show Refresh Complete", show.refresh_complete, "Parse and add Refresh Complete to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_sequence_reset = Pref.bool("Show Sequence Reset", show.sequence_reset, "Parse and add Sequence Reset to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_series_status_message = Pref.bool("Show Series Status Message", show.series_status_message, "Parse and add Series Status Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_trade_amendment_message = Pref.bool("Show Trade Amendment Message", show.trade_amendment_message, "Parse and add Trade Amendment Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_hkex_derivatives_fulltick_omd_v1_47.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_add_order_message then
    show.add_order_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_add_order_message
    changed = true
  end
  if show.calculated_opening_price_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_calculated_opening_price_message then
    show.calculated_opening_price_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_calculated_opening_price_message
    changed = true
  end
  if show.commodity_status_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_commodity_status_message then
    show.commodity_status_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_commodity_status_message
    changed = true
  end
  if show.delete_order_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_delete_order_message then
    show.delete_order_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_delete_order_message
    changed = true
  end
  if show.disaster_recovery_signal_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_disaster_recovery_signal_message then
    show.disaster_recovery_signal_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_disaster_recovery_signal_message
    changed = true
  end
  if show.market_alert_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_market_alert_message then
    show.market_alert_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_market_alert_message
    changed = true
  end
  if show.market_status_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_market_status_message then
    show.market_status_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_market_status_message
    changed = true
  end
  if show.message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_message then
    show.message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_message
    changed = true
  end
  if show.modify_order_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_modify_order_message then
    show.modify_order_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_modify_order_message
    changed = true
  end
  if show.msg_header ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_msg_header then
    show.msg_header = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_msg_header
    changed = true
  end
  if show.orderbook_clear_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_orderbook_clear_message then
    show.orderbook_clear_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_orderbook_clear_message
    changed = true
  end
  if show.packet ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_packet then
    show.packet = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_packet_header then
    show.packet_header = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_packet_header
    changed = true
  end
  if show.quote_request ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_quote_request then
    show.quote_request = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_quote_request
    changed = true
  end
  if show.refresh_complete ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_refresh_complete then
    show.refresh_complete = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_refresh_complete
    changed = true
  end
  if show.sequence_reset ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_sequence_reset then
    show.sequence_reset = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_sequence_reset
    changed = true
  end
  if show.series_status_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_series_status_message then
    show.series_status_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_series_status_message
    changed = true
  end
  if show.trade_amendment_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_trade_amendment_message then
    show.trade_amendment_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_trade_amendment_message
    changed = true
  end
  if show.trade_message ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_trade_message then
    show.trade_message = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_payload then
    show.payload = omi_hkex_derivatives_fulltick_omd_v1_47.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Hkex Derivatives FullTick Omd 1.47
-----------------------------------------------------------------------

-- Content
hkex_derivatives_fulltick_omd_v1_47.content = {}

-- Size: Content
hkex_derivatives_fulltick_omd_v1_47.content.size = 320

-- Display: Content
hkex_derivatives_fulltick_omd_v1_47.content.display = function(value)
  return "Content: "..value
end

-- Dissect: Content
hkex_derivatives_fulltick_omd_v1_47.content.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.content.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.content.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.content, range, value, display)

  return offset + length, value
end

-- No Lines
hkex_derivatives_fulltick_omd_v1_47.no_lines = {}

-- Size: No Lines
hkex_derivatives_fulltick_omd_v1_47.no_lines.size = 1

-- Display: No Lines
hkex_derivatives_fulltick_omd_v1_47.no_lines.display = function(value)
  return "No Lines: "..value
end

-- Dissect: No Lines
hkex_derivatives_fulltick_omd_v1_47.no_lines.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.no_lines.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.no_lines.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.no_lines, range, value, display)

  return offset + length, value
end

-- Priority
hkex_derivatives_fulltick_omd_v1_47.priority = {}

-- Size: Priority
hkex_derivatives_fulltick_omd_v1_47.priority.size = 1

-- Display: Priority
hkex_derivatives_fulltick_omd_v1_47.priority.display = function(value)
  return "Priority: "..value
end

-- Dissect: Priority
hkex_derivatives_fulltick_omd_v1_47.priority.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.priority.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.priority, range, value, display)

  return offset + length, value
end

-- Info Type
hkex_derivatives_fulltick_omd_v1_47.info_type = {}

-- Size: Info Type
hkex_derivatives_fulltick_omd_v1_47.info_type.size = 1

-- Display: Info Type
hkex_derivatives_fulltick_omd_v1_47.info_type.display = function(value)
  return "Info Type: "..value
end

-- Dissect: Info Type
hkex_derivatives_fulltick_omd_v1_47.info_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.info_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.info_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.info_type, range, value, display)

  return offset + length, value
end

-- Last Fragment
hkex_derivatives_fulltick_omd_v1_47.last_fragment = {}

-- Size: Last Fragment
hkex_derivatives_fulltick_omd_v1_47.last_fragment.size = 1

-- Display: Last Fragment
hkex_derivatives_fulltick_omd_v1_47.last_fragment.display = function(value)
  if value == "Y" then
    return "Last Fragment: Complete (Y)"
  end
  if value == "M" then
    return "Last Fragment: Not Complete (M)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
hkex_derivatives_fulltick_omd_v1_47.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.last_fragment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Header
hkex_derivatives_fulltick_omd_v1_47.header = {}

-- Size: Header
hkex_derivatives_fulltick_omd_v1_47.header.size = 320

-- Display: Header
hkex_derivatives_fulltick_omd_v1_47.header.display = function(value)
  return "Header: "..value
end

-- Dissect: Header
hkex_derivatives_fulltick_omd_v1_47.header.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.header.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.header.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.header, range, value, display)

  return offset + length, value
end

-- Filler 1
hkex_derivatives_fulltick_omd_v1_47.filler_1 = {}

-- Size: Filler 1
hkex_derivatives_fulltick_omd_v1_47.filler_1.size = 1

-- Display: Filler 1
hkex_derivatives_fulltick_omd_v1_47.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
hkex_derivatives_fulltick_omd_v1_47.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Source
hkex_derivatives_fulltick_omd_v1_47.source = {}

-- Size: Source
hkex_derivatives_fulltick_omd_v1_47.source.size = 1

-- Display: Source
hkex_derivatives_fulltick_omd_v1_47.source.display = function(value)
  if value == "H" then
    return "Source: Trading System (H)"
  end
  if value == "M" then
    return "Source: Other Market Alerts (M)"
  end

  return "Source: Unknown("..value..")"
end

-- Dissect: Source
hkex_derivatives_fulltick_omd_v1_47.source.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.source, range, value, display)

  return offset + length, value
end

-- Alert Id
hkex_derivatives_fulltick_omd_v1_47.alert_id = {}

-- Size: Alert Id
hkex_derivatives_fulltick_omd_v1_47.alert_id.size = 2

-- Display: Alert Id
hkex_derivatives_fulltick_omd_v1_47.alert_id.display = function(value)
  return "Alert Id: "..value
end

-- Dissect: Alert Id
hkex_derivatives_fulltick_omd_v1_47.alert_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.alert_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.alert_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.alert_id, range, value, display)

  return offset + length, value
end

-- Market Alert Message
hkex_derivatives_fulltick_omd_v1_47.market_alert_message = {}

-- Calculate size of: Market Alert Message
hkex_derivatives_fulltick_omd_v1_47.market_alert_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_derivatives_fulltick_omd_v1_47.alert_id.size

  index = index + hkex_derivatives_fulltick_omd_v1_47.source.size

  index = index + hkex_derivatives_fulltick_omd_v1_47.filler_1.size

  index = index + hkex_derivatives_fulltick_omd_v1_47.header.size

  index = index + hkex_derivatives_fulltick_omd_v1_47.last_fragment.size

  index = index + hkex_derivatives_fulltick_omd_v1_47.info_type.size

  index = index + hkex_derivatives_fulltick_omd_v1_47.priority.size

  index = index + hkex_derivatives_fulltick_omd_v1_47.no_lines.size

  -- Calculate field size from count
  local content_count = buffer(offset + index - 1, 1):le_uint()
  index = index + content_count * 320

  return index
end

-- Display: Market Alert Message
hkex_derivatives_fulltick_omd_v1_47.market_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Alert Message
hkex_derivatives_fulltick_omd_v1_47.market_alert_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Alert Id: Uint16
  index, alert_id = hkex_derivatives_fulltick_omd_v1_47.alert_id.dissect(buffer, index, packet, parent)

  -- Source: String
  index, source = hkex_derivatives_fulltick_omd_v1_47.source.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_fulltick_omd_v1_47.filler_1.dissect(buffer, index, packet, parent)

  -- Header: Binary
  index, header = hkex_derivatives_fulltick_omd_v1_47.header.dissect(buffer, index, packet, parent)

  -- Last Fragment: String
  index, last_fragment = hkex_derivatives_fulltick_omd_v1_47.last_fragment.dissect(buffer, index, packet, parent)

  -- Info Type: Uint8
  index, info_type = hkex_derivatives_fulltick_omd_v1_47.info_type.dissect(buffer, index, packet, parent)

  -- Priority: Uint8
  index, priority = hkex_derivatives_fulltick_omd_v1_47.priority.dissect(buffer, index, packet, parent)

  -- No Lines: Uint8
  index, no_lines = hkex_derivatives_fulltick_omd_v1_47.no_lines.dissect(buffer, index, packet, parent)

  -- Repeating: Content
  for content_index = 1, no_lines do
    index, content = hkex_derivatives_fulltick_omd_v1_47.content.dissect(buffer, index, packet, parent, content_index)
  end

  return index
end

-- Dissect: Market Alert Message
hkex_derivatives_fulltick_omd_v1_47.market_alert_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_alert_message then
    local length = hkex_derivatives_fulltick_omd_v1_47.market_alert_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = hkex_derivatives_fulltick_omd_v1_47.market_alert_message.display(buffer, packet, parent)
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.market_alert_message, range, display)
  end

  return hkex_derivatives_fulltick_omd_v1_47.market_alert_message.fields(buffer, offset, packet, parent)
end

-- Calculated Opening Quantity
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_quantity = {}

-- Size: Calculated Opening Quantity
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_quantity.size = 8

-- Display: Calculated Opening Quantity
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_quantity.display = function(value)
  return "Calculated Opening Quantity: "..value
end

-- Dissect: Calculated Opening Quantity
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.calculated_opening_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_fulltick_omd_v1_47.calculated_opening_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.calculated_opening_quantity, range, value, display)

  return offset + length, value
end

-- Filler 4
hkex_derivatives_fulltick_omd_v1_47.filler_4 = {}

-- Size: Filler 4
hkex_derivatives_fulltick_omd_v1_47.filler_4.size = 4

-- Display: Filler 4
hkex_derivatives_fulltick_omd_v1_47.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
hkex_derivatives_fulltick_omd_v1_47.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.filler_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Calculated Opening Price
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price = {}

-- Size: Calculated Opening Price
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price.size = 4

-- Display: Calculated Opening Price
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price.display = function(value)
  return "Calculated Opening Price: "..value
end

-- Dissect: Calculated Opening Price
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.calculated_opening_price, range, value, display)

  return offset + length, value
end

-- Orderbook Id
hkex_derivatives_fulltick_omd_v1_47.orderbook_id = {}

-- Size: Orderbook Id
hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size = 4

-- Display: Orderbook Id
hkex_derivatives_fulltick_omd_v1_47.orderbook_id.display = function(value)
  return "Orderbook Id: "..value
end

-- Dissect: Orderbook Id
hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.orderbook_id, range, value, display)

  return offset + length, value
end

-- Calculated Opening Price Message
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message = {}

-- Size: Calculated Opening Price Message
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message.size =
  hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price.size + 
  hkex_derivatives_fulltick_omd_v1_47.filler_4.size + 
  hkex_derivatives_fulltick_omd_v1_47.calculated_opening_quantity.size

-- Display: Calculated Opening Price Message
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Calculated Opening Price Message
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Calculated Opening Price: Int32
  index, calculated_opening_price = hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_derivatives_fulltick_omd_v1_47.filler_4.dissect(buffer, index, packet, parent)

  -- Calculated Opening Quantity: Uint64
  index, calculated_opening_quantity = hkex_derivatives_fulltick_omd_v1_47.calculated_opening_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Calculated Opening Price Message
hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.calculated_opening_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.calculated_opening_price_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Filler 3
hkex_derivatives_fulltick_omd_v1_47.filler_3 = {}

-- Size: Filler 3
hkex_derivatives_fulltick_omd_v1_47.filler_3.size = 3

-- Display: Filler 3
hkex_derivatives_fulltick_omd_v1_47.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
hkex_derivatives_fulltick_omd_v1_47.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.filler_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Trade State
hkex_derivatives_fulltick_omd_v1_47.trade_state = {}

-- Size: Trade State
hkex_derivatives_fulltick_omd_v1_47.trade_state.size = 1

-- Display: Trade State
hkex_derivatives_fulltick_omd_v1_47.trade_state.display = function(value)
  if value == 1 then
    return "Trade State: Given Up Trade (1)"
  end
  if value == 2 then
    return "Trade State: Rectified (2)"
  end
  if value == 3 then
    return "Trade State: Deleted (3)"
  end

  return "Trade State: Unknown("..value..")"
end

-- Dissect: Trade State
hkex_derivatives_fulltick_omd_v1_47.trade_state.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.trade_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.trade_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_state, range, value, display)

  return offset + length, value
end

-- Trade Time
hkex_derivatives_fulltick_omd_v1_47.trade_time = {}

-- Size: Trade Time
hkex_derivatives_fulltick_omd_v1_47.trade_time.size = 8

-- Display: Trade Time
hkex_derivatives_fulltick_omd_v1_47.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
hkex_derivatives_fulltick_omd_v1_47.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_fulltick_omd_v1_47.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trade Quantity
hkex_derivatives_fulltick_omd_v1_47.trade_quantity = {}

-- Size: Trade Quantity
hkex_derivatives_fulltick_omd_v1_47.trade_quantity.size = 8

-- Display: Trade Quantity
hkex_derivatives_fulltick_omd_v1_47.trade_quantity.display = function(value)
  return "Trade Quantity: "..value
end

-- Dissect: Trade Quantity
hkex_derivatives_fulltick_omd_v1_47.trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.trade_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_fulltick_omd_v1_47.trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_quantity, range, value, display)

  return offset + length, value
end

-- Price
hkex_derivatives_fulltick_omd_v1_47.price = {}

-- Size: Price
hkex_derivatives_fulltick_omd_v1_47.price.size = 4

-- Display: Price
hkex_derivatives_fulltick_omd_v1_47.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
hkex_derivatives_fulltick_omd_v1_47.price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_fulltick_omd_v1_47.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.price, range, value, display)

  return offset + length, value
end

-- Combo Group Id
hkex_derivatives_fulltick_omd_v1_47.combo_group_id = {}

-- Size: Combo Group Id
hkex_derivatives_fulltick_omd_v1_47.combo_group_id.size = 4

-- Display: Combo Group Id
hkex_derivatives_fulltick_omd_v1_47.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
hkex_derivatives_fulltick_omd_v1_47.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Trade Id
hkex_derivatives_fulltick_omd_v1_47.trade_id = {}

-- Size: Trade Id
hkex_derivatives_fulltick_omd_v1_47.trade_id.size = 8

-- Display: Trade Id
hkex_derivatives_fulltick_omd_v1_47.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
hkex_derivatives_fulltick_omd_v1_47.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_fulltick_omd_v1_47.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Amendment Message
hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message = {}

-- Size: Trade Amendment Message
hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message.size =
  hkex_derivatives_fulltick_omd_v1_47.trade_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.combo_group_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.price.size + 
  hkex_derivatives_fulltick_omd_v1_47.trade_quantity.size + 
  hkex_derivatives_fulltick_omd_v1_47.trade_time.size + 
  hkex_derivatives_fulltick_omd_v1_47.trade_state.size + 
  hkex_derivatives_fulltick_omd_v1_47.filler_3.size

-- Display: Trade Amendment Message
hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Amendment Message
hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Id: Uint64
  index, trade_id = hkex_derivatives_fulltick_omd_v1_47.trade_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Uint32
  index, combo_group_id = hkex_derivatives_fulltick_omd_v1_47.combo_group_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_derivatives_fulltick_omd_v1_47.price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: Uint64
  index, trade_quantity = hkex_derivatives_fulltick_omd_v1_47.trade_quantity.dissect(buffer, index, packet, parent)

  -- Trade Time: Uint64
  index, trade_time = hkex_derivatives_fulltick_omd_v1_47.trade_time.dissect(buffer, index, packet, parent)

  -- Trade State: Uint8
  index, trade_state = hkex_derivatives_fulltick_omd_v1_47.trade_state.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_fulltick_omd_v1_47.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Amendment Message
hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_amendment_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_amendment_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message.fields(buffer, offset, packet, parent)
  end
end

-- Filler 2
hkex_derivatives_fulltick_omd_v1_47.filler_2 = {}

-- Size: Filler 2
hkex_derivatives_fulltick_omd_v1_47.filler_2.size = 2

-- Display: Filler 2
hkex_derivatives_fulltick_omd_v1_47.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
hkex_derivatives_fulltick_omd_v1_47.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.filler_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Deal Info
hkex_derivatives_fulltick_omd_v1_47.deal_info = {}

-- Size: Deal Info
hkex_derivatives_fulltick_omd_v1_47.deal_info.size = 2

-- Display: Deal Info
hkex_derivatives_fulltick_omd_v1_47.deal_info.display = function(value)
  return "Deal Info: "..value
end

-- Dissect: Deal Info
hkex_derivatives_fulltick_omd_v1_47.deal_info.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.deal_info.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.deal_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.deal_info, range, value, display)

  return offset + length, value
end

-- Trade Condition
hkex_derivatives_fulltick_omd_v1_47.trade_condition = {}

-- Size: Trade Condition
hkex_derivatives_fulltick_omd_v1_47.trade_condition.size = 2

-- Display: Trade Condition
hkex_derivatives_fulltick_omd_v1_47.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
hkex_derivatives_fulltick_omd_v1_47.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.trade_condition.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Deal Type
hkex_derivatives_fulltick_omd_v1_47.deal_type = {}

-- Size: Deal Type
hkex_derivatives_fulltick_omd_v1_47.deal_type.size = 1

-- Display: Deal Type
hkex_derivatives_fulltick_omd_v1_47.deal_type.display = function(value)
  return "Deal Type: "..value
end

-- Dissect: Deal Type
hkex_derivatives_fulltick_omd_v1_47.deal_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.deal_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.deal_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.deal_type, range, value, display)

  return offset + length, value
end

-- Side
hkex_derivatives_fulltick_omd_v1_47.side = {}

-- Size: Side
hkex_derivatives_fulltick_omd_v1_47.side.size = 1

-- Display: Side
hkex_derivatives_fulltick_omd_v1_47.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
hkex_derivatives_fulltick_omd_v1_47.side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.side, range, value, display)

  return offset + length, value
end

-- Order Id
hkex_derivatives_fulltick_omd_v1_47.order_id = {}

-- Size: Order Id
hkex_derivatives_fulltick_omd_v1_47.order_id.size = 8

-- Display: Order Id
hkex_derivatives_fulltick_omd_v1_47.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
hkex_derivatives_fulltick_omd_v1_47.order_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_fulltick_omd_v1_47.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Message
hkex_derivatives_fulltick_omd_v1_47.trade_message = {}

-- Size: Trade Message
hkex_derivatives_fulltick_omd_v1_47.trade_message.size =
  hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.order_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.price.size + 
  hkex_derivatives_fulltick_omd_v1_47.trade_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.combo_group_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.side.size + 
  hkex_derivatives_fulltick_omd_v1_47.deal_type.size + 
  hkex_derivatives_fulltick_omd_v1_47.trade_condition.size + 
  hkex_derivatives_fulltick_omd_v1_47.deal_info.size + 
  hkex_derivatives_fulltick_omd_v1_47.filler_2.size + 
  hkex_derivatives_fulltick_omd_v1_47.trade_quantity.size + 
  hkex_derivatives_fulltick_omd_v1_47.trade_time.size

-- Display: Trade Message
hkex_derivatives_fulltick_omd_v1_47.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
hkex_derivatives_fulltick_omd_v1_47.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_derivatives_fulltick_omd_v1_47.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_derivatives_fulltick_omd_v1_47.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Uint64
  index, trade_id = hkex_derivatives_fulltick_omd_v1_47.trade_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Uint32
  index, combo_group_id = hkex_derivatives_fulltick_omd_v1_47.combo_group_id.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_derivatives_fulltick_omd_v1_47.side.dissect(buffer, index, packet, parent)

  -- Deal Type: Uint8
  index, deal_type = hkex_derivatives_fulltick_omd_v1_47.deal_type.dissect(buffer, index, packet, parent)

  -- Trade Condition: Uint16
  index, trade_condition = hkex_derivatives_fulltick_omd_v1_47.trade_condition.dissect(buffer, index, packet, parent)

  -- Deal Info: Uint16
  index, deal_info = hkex_derivatives_fulltick_omd_v1_47.deal_info.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_fulltick_omd_v1_47.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Quantity: Uint64
  index, trade_quantity = hkex_derivatives_fulltick_omd_v1_47.trade_quantity.dissect(buffer, index, packet, parent)

  -- Trade Time: Uint64
  index, trade_time = hkex_derivatives_fulltick_omd_v1_47.trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
hkex_derivatives_fulltick_omd_v1_47.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.trade_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Ask Flag
hkex_derivatives_fulltick_omd_v1_47.bid_ask_flag = {}

-- Size: Bid Ask Flag
hkex_derivatives_fulltick_omd_v1_47.bid_ask_flag.size = 1

-- Display: Bid Ask Flag
hkex_derivatives_fulltick_omd_v1_47.bid_ask_flag.display = function(value)
  return "Bid Ask Flag: "..value
end

-- Dissect: Bid Ask Flag
hkex_derivatives_fulltick_omd_v1_47.bid_ask_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.bid_ask_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.bid_ask_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.bid_ask_flag, range, value, display)

  return offset + length, value
end

-- Number Of Lots
hkex_derivatives_fulltick_omd_v1_47.number_of_lots = {}

-- Size: Number Of Lots
hkex_derivatives_fulltick_omd_v1_47.number_of_lots.size = 4

-- Display: Number Of Lots
hkex_derivatives_fulltick_omd_v1_47.number_of_lots.display = function(value)
  return "Number Of Lots: "..value
end

-- Dissect: Number Of Lots
hkex_derivatives_fulltick_omd_v1_47.number_of_lots.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.number_of_lots.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_derivatives_fulltick_omd_v1_47.number_of_lots.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.number_of_lots, range, value, display)

  return offset + length, value
end

-- Quote Request
hkex_derivatives_fulltick_omd_v1_47.quote_request = {}

-- Size: Quote Request
hkex_derivatives_fulltick_omd_v1_47.quote_request.size =
  hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.number_of_lots.size + 
  hkex_derivatives_fulltick_omd_v1_47.bid_ask_flag.size + 
  hkex_derivatives_fulltick_omd_v1_47.filler_3.size

-- Display: Quote Request
hkex_derivatives_fulltick_omd_v1_47.quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
hkex_derivatives_fulltick_omd_v1_47.quote_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Number Of Lots: Int32
  index, number_of_lots = hkex_derivatives_fulltick_omd_v1_47.number_of_lots.dissect(buffer, index, packet, parent)

  -- Bid Ask Flag: Uint8
  index, bid_ask_flag = hkex_derivatives_fulltick_omd_v1_47.bid_ask_flag.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_fulltick_omd_v1_47.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
hkex_derivatives_fulltick_omd_v1_47.quote_request.dissect = function(buffer, offset, packet, parent)
  if show.quote_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.quote_request, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.quote_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.quote_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.quote_request.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Clear Message
hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message = {}

-- Size: Orderbook Clear Message
hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message.size =
  hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size

-- Display: Orderbook Clear Message
hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Clear Message
hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Clear Message
hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.orderbook_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.orderbook_clear_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
hkex_derivatives_fulltick_omd_v1_47.delete_order_message = {}

-- Size: Delete Order Message
hkex_derivatives_fulltick_omd_v1_47.delete_order_message.size =
  hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.order_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.side.size + 
  hkex_derivatives_fulltick_omd_v1_47.filler_1.size

-- Display: Delete Order Message
hkex_derivatives_fulltick_omd_v1_47.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
hkex_derivatives_fulltick_omd_v1_47.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_derivatives_fulltick_omd_v1_47.order_id.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_derivatives_fulltick_omd_v1_47.side.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_derivatives_fulltick_omd_v1_47.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
hkex_derivatives_fulltick_omd_v1_47.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.delete_order_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Position
hkex_derivatives_fulltick_omd_v1_47.order_book_position = {}

-- Size: Order Book Position
hkex_derivatives_fulltick_omd_v1_47.order_book_position.size = 4

-- Display: Order Book Position
hkex_derivatives_fulltick_omd_v1_47.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
hkex_derivatives_fulltick_omd_v1_47.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.order_book_position.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Type
hkex_derivatives_fulltick_omd_v1_47.order_type = {}

-- Size: Order Type
hkex_derivatives_fulltick_omd_v1_47.order_type.size = 2

-- Display: Order Type
hkex_derivatives_fulltick_omd_v1_47.order_type.display = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
hkex_derivatives_fulltick_omd_v1_47.order_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.order_type, range, value, display)

  return offset + length, value
end

-- Quantity
hkex_derivatives_fulltick_omd_v1_47.quantity = {}

-- Size: Quantity
hkex_derivatives_fulltick_omd_v1_47.quantity.size = 4

-- Display: Quantity
hkex_derivatives_fulltick_omd_v1_47.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
hkex_derivatives_fulltick_omd_v1_47.quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.quantity, range, value, display)

  return offset + length, value
end

-- Modify Order Message
hkex_derivatives_fulltick_omd_v1_47.modify_order_message = {}

-- Size: Modify Order Message
hkex_derivatives_fulltick_omd_v1_47.modify_order_message.size =
  hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.order_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.price.size + 
  hkex_derivatives_fulltick_omd_v1_47.quantity.size + 
  hkex_derivatives_fulltick_omd_v1_47.side.size + 
  hkex_derivatives_fulltick_omd_v1_47.order_type.size + 
  hkex_derivatives_fulltick_omd_v1_47.order_book_position.size

-- Display: Modify Order Message
hkex_derivatives_fulltick_omd_v1_47.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
hkex_derivatives_fulltick_omd_v1_47.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_derivatives_fulltick_omd_v1_47.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_derivatives_fulltick_omd_v1_47.price.dissect(buffer, index, packet, parent)

  -- Quantity: Uint32
  index, quantity = hkex_derivatives_fulltick_omd_v1_47.quantity.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_derivatives_fulltick_omd_v1_47.side.dissect(buffer, index, packet, parent)

  -- Order Type: Uint16
  index, order_type = hkex_derivatives_fulltick_omd_v1_47.order_type.dissect(buffer, index, packet, parent)

  -- Order Book Position: Uint32
  index, order_book_position = hkex_derivatives_fulltick_omd_v1_47.order_book_position.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
hkex_derivatives_fulltick_omd_v1_47.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.modify_order_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Lot Type
hkex_derivatives_fulltick_omd_v1_47.lot_type = {}

-- Size: Lot Type
hkex_derivatives_fulltick_omd_v1_47.lot_type.size = 1

-- Display: Lot Type
hkex_derivatives_fulltick_omd_v1_47.lot_type.display = function(value)
  return "Lot Type: "..value
end

-- Dissect: Lot Type
hkex_derivatives_fulltick_omd_v1_47.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.lot_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Add Order Message
hkex_derivatives_fulltick_omd_v1_47.add_order_message = {}

-- Size: Add Order Message
hkex_derivatives_fulltick_omd_v1_47.add_order_message.size =
  hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.order_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.price.size + 
  hkex_derivatives_fulltick_omd_v1_47.quantity.size + 
  hkex_derivatives_fulltick_omd_v1_47.side.size + 
  hkex_derivatives_fulltick_omd_v1_47.lot_type.size + 
  hkex_derivatives_fulltick_omd_v1_47.order_type.size + 
  hkex_derivatives_fulltick_omd_v1_47.order_book_position.size

-- Display: Add Order Message
hkex_derivatives_fulltick_omd_v1_47.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
hkex_derivatives_fulltick_omd_v1_47.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_derivatives_fulltick_omd_v1_47.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_derivatives_fulltick_omd_v1_47.price.dissect(buffer, index, packet, parent)

  -- Quantity: Uint32
  index, quantity = hkex_derivatives_fulltick_omd_v1_47.quantity.dissect(buffer, index, packet, parent)

  -- Side: Uint8
  index, side = hkex_derivatives_fulltick_omd_v1_47.side.dissect(buffer, index, packet, parent)

  -- Lot Type: Uint8
  index, lot_type = hkex_derivatives_fulltick_omd_v1_47.lot_type.dissect(buffer, index, packet, parent)

  -- Order Type: Uint16
  index, order_type = hkex_derivatives_fulltick_omd_v1_47.order_type.dissect(buffer, index, packet, parent)

  -- Order Book Position: Uint32
  index, order_book_position = hkex_derivatives_fulltick_omd_v1_47.order_book_position.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
hkex_derivatives_fulltick_omd_v1_47.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.add_order_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Seq Num
hkex_derivatives_fulltick_omd_v1_47.last_seq_num = {}

-- Size: Last Seq Num
hkex_derivatives_fulltick_omd_v1_47.last_seq_num.size = 4

-- Display: Last Seq Num
hkex_derivatives_fulltick_omd_v1_47.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
hkex_derivatives_fulltick_omd_v1_47.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Refresh Complete
hkex_derivatives_fulltick_omd_v1_47.refresh_complete = {}

-- Size: Refresh Complete
hkex_derivatives_fulltick_omd_v1_47.refresh_complete.size =
  hkex_derivatives_fulltick_omd_v1_47.last_seq_num.size

-- Display: Refresh Complete
hkex_derivatives_fulltick_omd_v1_47.refresh_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete
hkex_derivatives_fulltick_omd_v1_47.refresh_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = hkex_derivatives_fulltick_omd_v1_47.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete
hkex_derivatives_fulltick_omd_v1_47.refresh_complete.dissect = function(buffer, offset, packet, parent)
  if show.refresh_complete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.refresh_complete, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.refresh_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.refresh_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.refresh_complete.fields(buffer, offset, packet, parent)
  end
end

-- Locked
hkex_derivatives_fulltick_omd_v1_47.locked = {}

-- Size: Locked
hkex_derivatives_fulltick_omd_v1_47.locked.size = 1

-- Display: Locked
hkex_derivatives_fulltick_omd_v1_47.locked.display = function(value)
  return "Locked: "..value
end

-- Dissect: Locked
hkex_derivatives_fulltick_omd_v1_47.locked.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.locked.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.locked.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.locked, range, value, display)

  return offset + length, value
end

-- Suspended
hkex_derivatives_fulltick_omd_v1_47.suspended = {}

-- Size: Suspended
hkex_derivatives_fulltick_omd_v1_47.suspended.size = 1

-- Display: Suspended
hkex_derivatives_fulltick_omd_v1_47.suspended.display = function(value)
  return "Suspended: "..value
end

-- Dissect: Suspended
hkex_derivatives_fulltick_omd_v1_47.suspended.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.suspended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.suspended.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.suspended, range, value, display)

  return offset + length, value
end

-- Commodity Code
hkex_derivatives_fulltick_omd_v1_47.commodity_code = {}

-- Size: Commodity Code
hkex_derivatives_fulltick_omd_v1_47.commodity_code.size = 2

-- Display: Commodity Code
hkex_derivatives_fulltick_omd_v1_47.commodity_code.display = function(value)
  return "Commodity Code: "..value
end

-- Dissect: Commodity Code
hkex_derivatives_fulltick_omd_v1_47.commodity_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.commodity_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.commodity_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.commodity_code, range, value, display)

  return offset + length, value
end

-- Commodity Status Message
hkex_derivatives_fulltick_omd_v1_47.commodity_status_message = {}

-- Size: Commodity Status Message
hkex_derivatives_fulltick_omd_v1_47.commodity_status_message.size =
  hkex_derivatives_fulltick_omd_v1_47.commodity_code.size + 
  hkex_derivatives_fulltick_omd_v1_47.suspended.size + 
  hkex_derivatives_fulltick_omd_v1_47.locked.size

-- Display: Commodity Status Message
hkex_derivatives_fulltick_omd_v1_47.commodity_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Status Message
hkex_derivatives_fulltick_omd_v1_47.commodity_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Commodity Code: Uint16
  index, commodity_code = hkex_derivatives_fulltick_omd_v1_47.commodity_code.dissect(buffer, index, packet, parent)

  -- Suspended: String
  index, suspended = hkex_derivatives_fulltick_omd_v1_47.suspended.dissect(buffer, index, packet, parent)

  -- Locked: Uint8
  index, locked = hkex_derivatives_fulltick_omd_v1_47.locked.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Status Message
hkex_derivatives_fulltick_omd_v1_47.commodity_status_message.dissect = function(buffer, offset, packet, parent)
  if show.commodity_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.commodity_status_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.commodity_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.commodity_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.commodity_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Status
hkex_derivatives_fulltick_omd_v1_47.series_status = {}

-- Size: Series Status
hkex_derivatives_fulltick_omd_v1_47.series_status.size = 1

-- Display: Series Status
hkex_derivatives_fulltick_omd_v1_47.series_status.display = function(value)
  return "Series Status: "..value
end

-- Dissect: Series Status
hkex_derivatives_fulltick_omd_v1_47.series_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.series_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.series_status, range, value, display)

  return offset + length, value
end

-- Suspension Indicator
hkex_derivatives_fulltick_omd_v1_47.suspension_indicator = {}

-- Size: Suspension Indicator
hkex_derivatives_fulltick_omd_v1_47.suspension_indicator.size = 1

-- Display: Suspension Indicator
hkex_derivatives_fulltick_omd_v1_47.suspension_indicator.display = function(value)
  return "Suspension Indicator: "..value
end

-- Dissect: Suspension Indicator
hkex_derivatives_fulltick_omd_v1_47.suspension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.suspension_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.suspension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.suspension_indicator, range, value, display)

  return offset + length, value
end

-- Series Status Message
hkex_derivatives_fulltick_omd_v1_47.series_status_message = {}

-- Size: Series Status Message
hkex_derivatives_fulltick_omd_v1_47.series_status_message.size =
  hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.suspension_indicator.size + 
  hkex_derivatives_fulltick_omd_v1_47.series_status.size + 
  hkex_derivatives_fulltick_omd_v1_47.filler_2.size

-- Display: Series Status Message
hkex_derivatives_fulltick_omd_v1_47.series_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Status Message
hkex_derivatives_fulltick_omd_v1_47.series_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Suspension Indicator: Uint8
  index, suspension_indicator = hkex_derivatives_fulltick_omd_v1_47.suspension_indicator.dissect(buffer, index, packet, parent)

  -- Series Status: Uint8
  index, series_status = hkex_derivatives_fulltick_omd_v1_47.series_status.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_fulltick_omd_v1_47.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Status Message
hkex_derivatives_fulltick_omd_v1_47.series_status_message.dissect = function(buffer, offset, packet, parent)
  if show.series_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.series_status_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.series_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.series_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.series_status_message.fields(buffer, offset, packet, parent)
  end
end

-- State
hkex_derivatives_fulltick_omd_v1_47.state = {}

-- Size: State
hkex_derivatives_fulltick_omd_v1_47.state.size = 2

-- Display: State
hkex_derivatives_fulltick_omd_v1_47.state.display = function(value)
  return "State: "..value
end

-- Dissect: State
hkex_derivatives_fulltick_omd_v1_47.state.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.state, range, value, display)

  return offset + length, value
end

-- Seconds To State Change
hkex_derivatives_fulltick_omd_v1_47.seconds_to_state_change = {}

-- Size: Seconds To State Change
hkex_derivatives_fulltick_omd_v1_47.seconds_to_state_change.size = 2

-- Display: Seconds To State Change
hkex_derivatives_fulltick_omd_v1_47.seconds_to_state_change.display = function(value)
  return "Seconds To State Change: "..value
end

-- Dissect: Seconds To State Change
hkex_derivatives_fulltick_omd_v1_47.seconds_to_state_change.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.seconds_to_state_change.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.seconds_to_state_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.seconds_to_state_change, range, value, display)

  return offset + length, value
end

-- Planned Start Time
hkex_derivatives_fulltick_omd_v1_47.planned_start_time = {}

-- Size: Planned Start Time
hkex_derivatives_fulltick_omd_v1_47.planned_start_time.size = 6

-- Display: Planned Start Time
hkex_derivatives_fulltick_omd_v1_47.planned_start_time.display = function(value)
  return "Planned Start Time: "..value
end

-- Dissect: Planned Start Time
hkex_derivatives_fulltick_omd_v1_47.planned_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.planned_start_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.planned_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.planned_start_time, range, value, display)

  return offset + length, value
end

-- Planned Start Date
hkex_derivatives_fulltick_omd_v1_47.planned_start_date = {}

-- Size: Planned Start Date
hkex_derivatives_fulltick_omd_v1_47.planned_start_date.size = 8

-- Display: Planned Start Date
hkex_derivatives_fulltick_omd_v1_47.planned_start_date.display = function(value)
  return "Planned Start Date: "..value
end

-- Dissect: Planned Start Date
hkex_derivatives_fulltick_omd_v1_47.planned_start_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.planned_start_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.planned_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.planned_start_date, range, value, display)

  return offset + length, value
end

-- Actual Start Time
hkex_derivatives_fulltick_omd_v1_47.actual_start_time = {}

-- Size: Actual Start Time
hkex_derivatives_fulltick_omd_v1_47.actual_start_time.size = 6

-- Display: Actual Start Time
hkex_derivatives_fulltick_omd_v1_47.actual_start_time.display = function(value)
  return "Actual Start Time: "..value
end

-- Dissect: Actual Start Time
hkex_derivatives_fulltick_omd_v1_47.actual_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.actual_start_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.actual_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.actual_start_time, range, value, display)

  return offset + length, value
end

-- Actual Start Date
hkex_derivatives_fulltick_omd_v1_47.actual_start_date = {}

-- Size: Actual Start Date
hkex_derivatives_fulltick_omd_v1_47.actual_start_date.size = 8

-- Display: Actual Start Date
hkex_derivatives_fulltick_omd_v1_47.actual_start_date.display = function(value)
  return "Actual Start Date: "..value
end

-- Dissect: Actual Start Date
hkex_derivatives_fulltick_omd_v1_47.actual_start_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.actual_start_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_derivatives_fulltick_omd_v1_47.actual_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.actual_start_date, range, value, display)

  return offset + length, value
end

-- Instrument
hkex_derivatives_fulltick_omd_v1_47.instrument = {}

-- Size: Instrument
hkex_derivatives_fulltick_omd_v1_47.instrument.size = 1

-- Display: Instrument
hkex_derivatives_fulltick_omd_v1_47.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
hkex_derivatives_fulltick_omd_v1_47.instrument.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.instrument, range, value, display)

  return offset + length, value
end

-- Market
hkex_derivatives_fulltick_omd_v1_47.market = {}

-- Size: Market
hkex_derivatives_fulltick_omd_v1_47.market.size = 1

-- Display: Market
hkex_derivatives_fulltick_omd_v1_47.market.display = function(value)
  return "Market: "..value
end

-- Dissect: Market
hkex_derivatives_fulltick_omd_v1_47.market.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.market.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.market.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.market, range, value, display)

  return offset + length, value
end

-- State Level
hkex_derivatives_fulltick_omd_v1_47.state_level = {}

-- Size: State Level
hkex_derivatives_fulltick_omd_v1_47.state_level.size = 2

-- Display: State Level
hkex_derivatives_fulltick_omd_v1_47.state_level.display = function(value)
  return "State Level: "..value
end

-- Dissect: State Level
hkex_derivatives_fulltick_omd_v1_47.state_level.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.state_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.state_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.state_level, range, value, display)

  return offset + length, value
end

-- Market Status Message
hkex_derivatives_fulltick_omd_v1_47.market_status_message = {}

-- Size: Market Status Message
hkex_derivatives_fulltick_omd_v1_47.market_status_message.size =
  hkex_derivatives_fulltick_omd_v1_47.state_level.size + 
  hkex_derivatives_fulltick_omd_v1_47.market.size + 
  hkex_derivatives_fulltick_omd_v1_47.instrument.size + 
  hkex_derivatives_fulltick_omd_v1_47.orderbook_id.size + 
  hkex_derivatives_fulltick_omd_v1_47.commodity_code.size + 
  hkex_derivatives_fulltick_omd_v1_47.filler_2.size + 
  hkex_derivatives_fulltick_omd_v1_47.actual_start_date.size + 
  hkex_derivatives_fulltick_omd_v1_47.actual_start_time.size + 
  hkex_derivatives_fulltick_omd_v1_47.planned_start_date.size + 
  hkex_derivatives_fulltick_omd_v1_47.planned_start_time.size + 
  hkex_derivatives_fulltick_omd_v1_47.seconds_to_state_change.size + 
  hkex_derivatives_fulltick_omd_v1_47.state.size + 
  hkex_derivatives_fulltick_omd_v1_47.priority.size + 
  hkex_derivatives_fulltick_omd_v1_47.filler_3.size

-- Display: Market Status Message
hkex_derivatives_fulltick_omd_v1_47.market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Message
hkex_derivatives_fulltick_omd_v1_47.market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- State Level: Uint16
  index, state_level = hkex_derivatives_fulltick_omd_v1_47.state_level.dissect(buffer, index, packet, parent)

  -- Market: Uint8
  index, market = hkex_derivatives_fulltick_omd_v1_47.market.dissect(buffer, index, packet, parent)

  -- Instrument: Uint8
  index, instrument = hkex_derivatives_fulltick_omd_v1_47.instrument.dissect(buffer, index, packet, parent)

  -- Orderbook Id: Uint32
  index, orderbook_id = hkex_derivatives_fulltick_omd_v1_47.orderbook_id.dissect(buffer, index, packet, parent)

  -- Commodity Code: Uint16
  index, commodity_code = hkex_derivatives_fulltick_omd_v1_47.commodity_code.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_derivatives_fulltick_omd_v1_47.filler_2.dissect(buffer, index, packet, parent)

  -- Actual Start Date: String
  index, actual_start_date = hkex_derivatives_fulltick_omd_v1_47.actual_start_date.dissect(buffer, index, packet, parent)

  -- Actual Start Time: String
  index, actual_start_time = hkex_derivatives_fulltick_omd_v1_47.actual_start_time.dissect(buffer, index, packet, parent)

  -- Planned Start Date: String
  index, planned_start_date = hkex_derivatives_fulltick_omd_v1_47.planned_start_date.dissect(buffer, index, packet, parent)

  -- Planned Start Time: String
  index, planned_start_time = hkex_derivatives_fulltick_omd_v1_47.planned_start_time.dissect(buffer, index, packet, parent)

  -- Seconds To State Change: Uint16
  index, seconds_to_state_change = hkex_derivatives_fulltick_omd_v1_47.seconds_to_state_change.dissect(buffer, index, packet, parent)

  -- State: Uint16
  index, state = hkex_derivatives_fulltick_omd_v1_47.state.dissect(buffer, index, packet, parent)

  -- Priority: Uint8
  index, priority = hkex_derivatives_fulltick_omd_v1_47.priority.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_derivatives_fulltick_omd_v1_47.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Message
hkex_derivatives_fulltick_omd_v1_47.market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.market_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.market_status_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Disaster Recovery Status
hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_status = {}

-- Size: Disaster Recovery Status
hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_status.size = 4

-- Display: Disaster Recovery Status
hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_status.display = function(value)
  return "Disaster Recovery Status: "..value
end

-- Dissect: Disaster Recovery Status
hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.disaster_recovery_status, range, value, display)

  return offset + length, value
end

-- Disaster Recovery Signal Message
hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message.size =
  hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_status.size

-- Display: Disaster Recovery Signal Message
hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Disaster Recovery Status: Uint32
  index, disaster_recovery_status = hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.disaster_recovery_signal_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- New Seq No
hkex_derivatives_fulltick_omd_v1_47.new_seq_no = {}

-- Size: New Seq No
hkex_derivatives_fulltick_omd_v1_47.new_seq_no.size = 4

-- Display: New Seq No
hkex_derivatives_fulltick_omd_v1_47.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
hkex_derivatives_fulltick_omd_v1_47.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Sequence Reset
hkex_derivatives_fulltick_omd_v1_47.sequence_reset = {}

-- Size: Sequence Reset
hkex_derivatives_fulltick_omd_v1_47.sequence_reset.size =
  hkex_derivatives_fulltick_omd_v1_47.new_seq_no.size

-- Display: Sequence Reset
hkex_derivatives_fulltick_omd_v1_47.sequence_reset.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset
hkex_derivatives_fulltick_omd_v1_47.sequence_reset.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = hkex_derivatives_fulltick_omd_v1_47.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset
hkex_derivatives_fulltick_omd_v1_47.sequence_reset.dissect = function(buffer, offset, packet, parent)
  if show.sequence_reset then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.sequence_reset, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.sequence_reset.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.sequence_reset.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.sequence_reset.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_derivatives_fulltick_omd_v1_47.payload = {}

-- Size: Payload
hkex_derivatives_fulltick_omd_v1_47.payload.size = function(buffer, offset, msg_type)
  -- Size of Sequence Reset
  if msg_type == 100 then
    return hkex_derivatives_fulltick_omd_v1_47.sequence_reset.size
  end
  -- Size of Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message.size
  end
  -- Size of Market Status Message
  if msg_type == 320 then
    return hkex_derivatives_fulltick_omd_v1_47.market_status_message.size
  end
  -- Size of Series Status Message
  if msg_type == 321 then
    return hkex_derivatives_fulltick_omd_v1_47.series_status_message.size
  end
  -- Size of Commodity Status Message
  if msg_type == 322 then
    return hkex_derivatives_fulltick_omd_v1_47.commodity_status_message.size
  end
  -- Size of Refresh Complete
  if msg_type == 203 then
    return hkex_derivatives_fulltick_omd_v1_47.refresh_complete.size
  end
  -- Size of Add Order Message
  if msg_type == 330 then
    return hkex_derivatives_fulltick_omd_v1_47.add_order_message.size
  end
  -- Size of Modify Order Message
  if msg_type == 331 then
    return hkex_derivatives_fulltick_omd_v1_47.modify_order_message.size
  end
  -- Size of Delete Order Message
  if msg_type == 332 then
    return hkex_derivatives_fulltick_omd_v1_47.delete_order_message.size
  end
  -- Size of Orderbook Clear Message
  if msg_type == 335 then
    return hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message.size
  end
  -- Size of Quote Request
  if msg_type == 336 then
    return hkex_derivatives_fulltick_omd_v1_47.quote_request.size
  end
  -- Size of Trade Message
  if msg_type == 350 then
    return hkex_derivatives_fulltick_omd_v1_47.trade_message.size
  end
  -- Size of Trade Amendment Message
  if msg_type == 356 then
    return hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message.size
  end
  -- Size of Calculated Opening Price Message
  if msg_type == 364 then
    return hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message.size
  end
  -- Size of Market Alert Message
  if msg_type == 323 then
    return hkex_derivatives_fulltick_omd_v1_47.market_alert_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
hkex_derivatives_fulltick_omd_v1_47.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
hkex_derivatives_fulltick_omd_v1_47.payload.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset
  if msg_type == 100 then
    return hkex_derivatives_fulltick_omd_v1_47.sequence_reset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_derivatives_fulltick_omd_v1_47.disaster_recovery_signal_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Status Message
  if msg_type == 320 then
    return hkex_derivatives_fulltick_omd_v1_47.market_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Status Message
  if msg_type == 321 then
    return hkex_derivatives_fulltick_omd_v1_47.series_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Commodity Status Message
  if msg_type == 322 then
    return hkex_derivatives_fulltick_omd_v1_47.commodity_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complete
  if msg_type == 203 then
    return hkex_derivatives_fulltick_omd_v1_47.refresh_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if msg_type == 330 then
    return hkex_derivatives_fulltick_omd_v1_47.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if msg_type == 331 then
    return hkex_derivatives_fulltick_omd_v1_47.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if msg_type == 332 then
    return hkex_derivatives_fulltick_omd_v1_47.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Clear Message
  if msg_type == 335 then
    return hkex_derivatives_fulltick_omd_v1_47.orderbook_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if msg_type == 336 then
    return hkex_derivatives_fulltick_omd_v1_47.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == 350 then
    return hkex_derivatives_fulltick_omd_v1_47.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Amendment Message
  if msg_type == 356 then
    return hkex_derivatives_fulltick_omd_v1_47.trade_amendment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Calculated Opening Price Message
  if msg_type == 364 then
    return hkex_derivatives_fulltick_omd_v1_47.calculated_opening_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Alert Message
  if msg_type == 323 then
    return hkex_derivatives_fulltick_omd_v1_47.market_alert_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
hkex_derivatives_fulltick_omd_v1_47.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return hkex_derivatives_fulltick_omd_v1_47.payload.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = hkex_derivatives_fulltick_omd_v1_47.payload.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = hkex_derivatives_fulltick_omd_v1_47.payload.display(buffer, packet, parent)
  local element = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.payload, range, display)

  return hkex_derivatives_fulltick_omd_v1_47.payload.branches(buffer, offset, packet, parent, msg_type)
end

-- Msg Type
hkex_derivatives_fulltick_omd_v1_47.msg_type = {}

-- Size: Msg Type
hkex_derivatives_fulltick_omd_v1_47.msg_type.size = 2

-- Display: Msg Type
hkex_derivatives_fulltick_omd_v1_47.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset (100)"
  end
  if value == 105 then
    return "Msg Type: Disaster Recovery Signal Message (105)"
  end
  if value == 320 then
    return "Msg Type: Market Status Message (320)"
  end
  if value == 321 then
    return "Msg Type: Series Status Message (321)"
  end
  if value == 322 then
    return "Msg Type: Commodity Status Message (322)"
  end
  if value == 203 then
    return "Msg Type: Refresh Complete (203)"
  end
  if value == 330 then
    return "Msg Type: Add Order Message (330)"
  end
  if value == 331 then
    return "Msg Type: Modify Order Message (331)"
  end
  if value == 332 then
    return "Msg Type: Delete Order Message (332)"
  end
  if value == 335 then
    return "Msg Type: Orderbook Clear Message (335)"
  end
  if value == 336 then
    return "Msg Type: Quote Request (336)"
  end
  if value == 350 then
    return "Msg Type: Trade Message (350)"
  end
  if value == 356 then
    return "Msg Type: Trade Amendment Message (356)"
  end
  if value == 364 then
    return "Msg Type: Calculated Opening Price Message (364)"
  end
  if value == 323 then
    return "Msg Type: Market Alert Message (323)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_derivatives_fulltick_omd_v1_47.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_derivatives_fulltick_omd_v1_47.msg_size = {}

-- Size: Msg Size
hkex_derivatives_fulltick_omd_v1_47.msg_size.size = 2

-- Display: Msg Size
hkex_derivatives_fulltick_omd_v1_47.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_derivatives_fulltick_omd_v1_47.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Header
hkex_derivatives_fulltick_omd_v1_47.msg_header = {}

-- Size: Msg Header
hkex_derivatives_fulltick_omd_v1_47.msg_header.size =
  hkex_derivatives_fulltick_omd_v1_47.msg_size.size + 
  hkex_derivatives_fulltick_omd_v1_47.msg_type.size

-- Display: Msg Header
hkex_derivatives_fulltick_omd_v1_47.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_derivatives_fulltick_omd_v1_47.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_derivatives_fulltick_omd_v1_47.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, msg_type = hkex_derivatives_fulltick_omd_v1_47.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_derivatives_fulltick_omd_v1_47.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.msg_header, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_derivatives_fulltick_omd_v1_47.message = {}

-- Display: Message
hkex_derivatives_fulltick_omd_v1_47.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_derivatives_fulltick_omd_v1_47.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_derivatives_fulltick_omd_v1_47.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 15 branches
  index = hkex_derivatives_fulltick_omd_v1_47.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_derivatives_fulltick_omd_v1_47.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.message, buffer(offset, 0))
    local current = hkex_derivatives_fulltick_omd_v1_47.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_derivatives_fulltick_omd_v1_47.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_derivatives_fulltick_omd_v1_47.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
hkex_derivatives_fulltick_omd_v1_47.send_time = {}

-- Size: Send Time
hkex_derivatives_fulltick_omd_v1_47.send_time.size = 8

-- Display: Send Time
hkex_derivatives_fulltick_omd_v1_47.send_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_derivatives_fulltick_omd_v1_47.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_derivatives_fulltick_omd_v1_47.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_derivatives_fulltick_omd_v1_47.seq_num = {}

-- Size: Seq Num
hkex_derivatives_fulltick_omd_v1_47.seq_num.size = 4

-- Display: Seq Num
hkex_derivatives_fulltick_omd_v1_47.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_derivatives_fulltick_omd_v1_47.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Compression Mode
hkex_derivatives_fulltick_omd_v1_47.compression_mode = {}

-- Size: Compression Mode
hkex_derivatives_fulltick_omd_v1_47.compression_mode.size = 1

-- Display: Compression Mode
hkex_derivatives_fulltick_omd_v1_47.compression_mode.display = function(value)
  return "Compression Mode: "..value
end

-- Dissect: Compression Mode
hkex_derivatives_fulltick_omd_v1_47.compression_mode.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.compression_mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.compression_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.compression_mode, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_derivatives_fulltick_omd_v1_47.msg_count = {}

-- Size: Msg Count
hkex_derivatives_fulltick_omd_v1_47.msg_count.size = 1

-- Display: Msg Count
hkex_derivatives_fulltick_omd_v1_47.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_derivatives_fulltick_omd_v1_47.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_derivatives_fulltick_omd_v1_47.pkt_size = {}

-- Size: Pkt Size
hkex_derivatives_fulltick_omd_v1_47.pkt_size.size = 2

-- Display: Pkt Size
hkex_derivatives_fulltick_omd_v1_47.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_derivatives_fulltick_omd_v1_47.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_derivatives_fulltick_omd_v1_47.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_derivatives_fulltick_omd_v1_47.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Packet Header
hkex_derivatives_fulltick_omd_v1_47.packet_header = {}

-- Size: Packet Header
hkex_derivatives_fulltick_omd_v1_47.packet_header.size =
  hkex_derivatives_fulltick_omd_v1_47.pkt_size.size + 
  hkex_derivatives_fulltick_omd_v1_47.msg_count.size + 
  hkex_derivatives_fulltick_omd_v1_47.compression_mode.size + 
  hkex_derivatives_fulltick_omd_v1_47.seq_num.size + 
  hkex_derivatives_fulltick_omd_v1_47.send_time.size

-- Display: Packet Header
hkex_derivatives_fulltick_omd_v1_47.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_derivatives_fulltick_omd_v1_47.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_derivatives_fulltick_omd_v1_47.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_derivatives_fulltick_omd_v1_47.msg_count.dissect(buffer, index, packet, parent)

  -- Compression Mode: 1 Byte Unsigned Fixed Width Integer
  index, compression_mode = hkex_derivatives_fulltick_omd_v1_47.compression_mode.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_derivatives_fulltick_omd_v1_47.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_derivatives_fulltick_omd_v1_47.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_derivatives_fulltick_omd_v1_47.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47.fields.packet_header, buffer(offset, 0))
    local index = hkex_derivatives_fulltick_omd_v1_47.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_derivatives_fulltick_omd_v1_47.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_derivatives_fulltick_omd_v1_47.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_derivatives_fulltick_omd_v1_47.packet = {}

-- Dissect Packet
hkex_derivatives_fulltick_omd_v1_47.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_derivatives_fulltick_omd_v1_47.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_derivatives_fulltick_omd_v1_47.message.dissect(buffer, index, packet, parent, msg_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_derivatives_fulltick_omd_v1_47.init()
end

-- Dissector for Hkex Derivatives FullTick Omd 1.47
function omi_hkex_derivatives_fulltick_omd_v1_47.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_derivatives_fulltick_omd_v1_47.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_derivatives_fulltick_omd_v1_47, buffer(), omi_hkex_derivatives_fulltick_omd_v1_47.description, "("..buffer:len().." Bytes)")
  return hkex_derivatives_fulltick_omd_v1_47.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_hkex_derivatives_fulltick_omd_v1_47)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
hkex_derivatives_fulltick_omd_v1_47.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Hkex Derivatives FullTick Omd 1.47
local function omi_hkex_derivatives_fulltick_omd_v1_47_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_derivatives_fulltick_omd_v1_47.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_derivatives_fulltick_omd_v1_47
  omi_hkex_derivatives_fulltick_omd_v1_47.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex Derivatives FullTick Omd 1.47
omi_hkex_derivatives_fulltick_omd_v1_47:register_heuristic("udp", omi_hkex_derivatives_fulltick_omd_v1_47_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.47
--   Date: Tuesday, October 14, 2025
--   Specification: HKEX_OMD_Derivatives_Binary_Interface_Specifications_v1-47.pdf
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
