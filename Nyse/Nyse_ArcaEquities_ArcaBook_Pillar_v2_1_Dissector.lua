-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse ArcaEquities ArcaBook Pillar 2.1 Protocol
local omi_nyse_arcaequities_arcabook_pillar_v2_1 = Proto("Nyse.ArcaEquities.ArcaBook.Pillar.v2.1.Lua", "Nyse ArcaEquities ArcaBook Pillar 2.1")

-- Protocol table
local nyse_arcaequities_arcabook_pillar_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse ArcaEquities ArcaBook Pillar 2.1 Fields
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.auction_time = ProtoField.new("Auction Time", "nyse.arcaequities.arcabook.pillar.v2.1.auctiontime", ftypes.UINT16)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.auction_type = ProtoField.new("Auction Type", "nyse.arcaequities.arcabook.pillar.v2.1.auctiontype", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.closing_only_clearing_price = ProtoField.new("Closing Only Clearing Price", "nyse.arcaequities.arcabook.pillar.v2.1.closingonlyclearingprice", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.arcaequities.arcabook.pillar.v2.1.continuousbookclearingprice", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arcaequities.arcabook.pillar.v2.1.deliveryflag", ftypes.UINT8)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.firm_id = ProtoField.new("Firm Id", "nyse.arcaequities.arcabook.pillar.v2.1.firmid", ftypes.BYTES)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.arcaequities.arcabook.pillar.v2.1.imbalanceside", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.arcaequities.arcabook.pillar.v2.1.indicativematchprice", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.arcaequities.arcabook.pillar.v2.1.marketimbalanceqty", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message = ProtoField.new("Message", "nyse.arcaequities.arcabook.pillar.v2.1.message", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message_header = ProtoField.new("Message Header", "nyse.arcaequities.arcabook.pillar.v2.1.messageheader", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message_size = ProtoField.new("Message Size", "nyse.arcaequities.arcabook.pillar.v2.1.messagesize", ftypes.UINT16)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message_type = ProtoField.new("Message Type", "nyse.arcaequities.arcabook.pillar.v2.1.messagetype", ftypes.UINT16)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arcaequities.arcabook.pillar.v2.1.nanoseconds", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.arcaequities.arcabook.pillar.v2.1.numbermsgs", ftypes.UINT8)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.order_id = ProtoField.new("Order Id", "nyse.arcaequities.arcabook.pillar.v2.1.orderid", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.order_idgtc_indicator = ProtoField.new("Order Idgtc Indicator", "nyse.arcaequities.arcabook.pillar.v2.1.orderidgtcindicator", ftypes.UINT8)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.packet = ProtoField.new("Packet", "nyse.arcaequities.arcabook.pillar.v2.1.packet", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nyse.arcaequities.arcabook.pillar.v2.1.packetheader", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.arcaequities.arcabook.pillar.v2.1.pairedqty", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.arcaequities.arcabook.pillar.v2.1.pktsize", ftypes.UINT16)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.price = ProtoField.new("Price", "nyse.arcaequities.arcabook.pillar.v2.1.price", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.reason_code = ProtoField.new("Reason Code", "nyse.arcaequities.arcabook.pillar.v2.1.reasoncode", ftypes.UINT8)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.seconds = ProtoField.new("Seconds", "nyse.arcaequities.arcabook.pillar.v2.1.seconds", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.send_time = ProtoField.new("Send Time", "nyse.arcaequities.arcabook.pillar.v2.1.sendtime", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.seq_num = ProtoField.new("Seq Num", "nyse.arcaequities.arcabook.pillar.v2.1.seqnum", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.side = ProtoField.new("Side", "nyse.arcaequities.arcabook.pillar.v2.1.side", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.source_time = ProtoField.new("Source Time", "nyse.arcaequities.arcabook.pillar.v2.1.sourcetime", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.arcaequities.arcabook.pillar.v2.1.sourcetimens", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.arcaequities.arcabook.pillar.v2.1.ssrfilingprice", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.arcaequities.arcabook.pillar.v2.1.symbolindex", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.arcaequities.arcabook.pillar.v2.1.symbolseqnum", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.arcaequities.arcabook.pillar.v2.1.totalimbalanceqty", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.trade_id = ProtoField.new("Trade Id", "nyse.arcaequities.arcabook.pillar.v2.1.tradeid", ftypes.UINT32)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.trade_session = ProtoField.new("Trade Session", "nyse.arcaequities.arcabook.pillar.v2.1.tradesession", ftypes.UINT8)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.volume = ProtoField.new("Volume", "nyse.arcaequities.arcabook.pillar.v2.1.volume", ftypes.UINT32)

-- Nyse ArcaEquities Pillar ArcaBook 2.1 Application Messages
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.add_order_message = ProtoField.new("Add Order Message", "nyse.arcaequities.arcabook.pillar.v2.1.addordermessage", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.add_order_refresh_message = ProtoField.new("Add Order Refresh Message", "nyse.arcaequities.arcabook.pillar.v2.1.addorderrefreshmessage", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.attributed_add_order_message = ProtoField.new("Attributed Add Order Message", "nyse.arcaequities.arcabook.pillar.v2.1.attributedaddordermessage", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.attributed_add_order_refresh_message = ProtoField.new("Attributed Add Order Refresh Message", "nyse.arcaequities.arcabook.pillar.v2.1.attributedaddorderrefreshmessage", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.delete_order_message = ProtoField.new("Delete Order Message", "nyse.arcaequities.arcabook.pillar.v2.1.deleteordermessage", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.execution_message = ProtoField.new("Execution Message", "nyse.arcaequities.arcabook.pillar.v2.1.executionmessage", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.arcaequities.arcabook.pillar.v2.1.imbalancemessage", ftypes.STRING)
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.modify_order_message = ProtoField.new("Modify Order Message", "nyse.arcaequities.arcabook.pillar.v2.1.modifyordermessage", ftypes.STRING)

-- Nyse ArcaEquities ArcaBook Pillar 2.1 generated fields
omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message_index = ProtoField.new("Message Index", "nyse.arcaequities.arcabook.pillar.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse ArcaEquities ArcaBook Pillar 2.1 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.send_time = true
show.message_index = true

-- Register Nyse ArcaEquities ArcaBook Pillar 2.1 Show Options
omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")
omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_application_messages
  end
  if show.message ~= omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_message then
    show.message = omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_message
  end
  if show.message_header ~= omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_message_header then
    show.message_header = omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_packet then
    show.packet = omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_packet_header
  end
  if show.send_time ~= omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_send_time then
    show.send_time = omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_send_time
  end
  if show.message_index ~= omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_message_index then
    show.message_index = omi_nyse_arcaequities_arcabook_pillar_v2_1.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Nyse ArcaEquities ArcaBook Pillar 2.1 Fields
-----------------------------------------------------------------------

-- Auction Time
nyse_arcaequities_arcabook_pillar_v2_1.auction_time = {}

-- Size: Auction Time
nyse_arcaequities_arcabook_pillar_v2_1.auction_time.size = 2

-- Display: Auction Time
nyse_arcaequities_arcabook_pillar_v2_1.auction_time.display = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_arcaequities_arcabook_pillar_v2_1.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_arcaequities_arcabook_pillar_v2_1.auction_type = {}

-- Size: Auction Type
nyse_arcaequities_arcabook_pillar_v2_1.auction_type.size = 1

-- Display: Auction Type
nyse_arcaequities_arcabook_pillar_v2_1.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Early Opening Auction (O)"
  end
  if value == "M" then
    return "Auction Type: Core Opening Auction (M)"
  end
  if value == "H" then
    return "Auction Type: Trading Halt Auction (H)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_arcaequities_arcabook_pillar_v2_1.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Closing Only Clearing Price
nyse_arcaequities_arcabook_pillar_v2_1.closing_only_clearing_price = {}

-- Size: Closing Only Clearing Price
nyse_arcaequities_arcabook_pillar_v2_1.closing_only_clearing_price.size = 4

-- Display: Closing Only Clearing Price
nyse_arcaequities_arcabook_pillar_v2_1.closing_only_clearing_price.display = function(value)
  return "Closing Only Clearing Price: "..value
end

-- Dissect: Closing Only Clearing Price
nyse_arcaequities_arcabook_pillar_v2_1.closing_only_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.closing_only_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.closing_only_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.closing_only_clearing_price, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_arcaequities_arcabook_pillar_v2_1.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_arcaequities_arcabook_pillar_v2_1.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_arcaequities_arcabook_pillar_v2_1.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_arcaequities_arcabook_pillar_v2_1.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_arcaequities_arcabook_pillar_v2_1.delivery_flag = {}

-- Size: Delivery Flag
nyse_arcaequities_arcabook_pillar_v2_1.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_arcaequities_arcabook_pillar_v2_1.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: XDP Failover (10)"
  end
  if value == 11 then
    return "Delivery Flag: Original Message (11)"
  end
  if value == 12 then
    return "Delivery Flag: Sequence Number Reset Message (12)"
  end
  if value == 13 then
    return "Delivery Flag: One Retransmission Packet (13)"
  end
  if value == 15 then
    return "Delivery Flag: Retransmission Sequence Message (15)"
  end
  if value == 17 then
    return "Delivery Flag: One Refresh Packet (17)"
  end
  if value == 18 then
    return "Delivery Flag: Refresh Sequence Start (18)"
  end
  if value == 19 then
    return "Delivery Flag: Refresh Sequence Message (19)"
  end
  if value == 20 then
    return "Delivery Flag: Refresh Sequence End (20)"
  end
  if value == 21 then
    return "Delivery Flag: Message Unavailable (21)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
nyse_arcaequities_arcabook_pillar_v2_1.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Firm Id
nyse_arcaequities_arcabook_pillar_v2_1.firm_id = {}

-- Size: Firm Id
nyse_arcaequities_arcabook_pillar_v2_1.firm_id.size = 5

-- Display: Firm Id
nyse_arcaequities_arcabook_pillar_v2_1.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nyse_arcaequities_arcabook_pillar_v2_1.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.firm_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaequities_arcabook_pillar_v2_1.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_arcaequities_arcabook_pillar_v2_1.imbalance_side = {}

-- Size: Imbalance Side
nyse_arcaequities_arcabook_pillar_v2_1.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_arcaequities_arcabook_pillar_v2_1.imbalance_side.display = function(value)
  return "Imbalance Side: "..value
end

-- Dissect: Imbalance Side
nyse_arcaequities_arcabook_pillar_v2_1.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_arcaequities_arcabook_pillar_v2_1.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_arcaequities_arcabook_pillar_v2_1.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_arcaequities_arcabook_pillar_v2_1.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_arcaequities_arcabook_pillar_v2_1.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.indicative_match_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_arcaequities_arcabook_pillar_v2_1.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_arcaequities_arcabook_pillar_v2_1.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_arcaequities_arcabook_pillar_v2_1.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_arcaequities_arcabook_pillar_v2_1.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_arcaequities_arcabook_pillar_v2_1.message_size = {}

-- Size: Message Size
nyse_arcaequities_arcabook_pillar_v2_1.message_size.size = 2

-- Display: Message Size
nyse_arcaequities_arcabook_pillar_v2_1.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_arcaequities_arcabook_pillar_v2_1.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_arcaequities_arcabook_pillar_v2_1.message_type = {}

-- Size: Message Type
nyse_arcaequities_arcabook_pillar_v2_1.message_type.size = 2

-- Display: Message Type
nyse_arcaequities_arcabook_pillar_v2_1.message_type.display = function(value)
  if value == 100 then
    return "Message Type: Add Order Message (100)"
  end
  if value == 101 then
    return "Message Type: Modify Order Message (101)"
  end
  if value == 102 then
    return "Message Type: Delete Order Message (102)"
  end
  if value == 103 then
    return "Message Type: Execution Message (103)"
  end
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end
  if value == 106 then
    return "Message Type: Add Order Refresh Message (106)"
  end
  if value == 107 then
    return "Message Type: Attributed Add Order Message (107)"
  end
  if value == 108 then
    return "Message Type: Attributed Add Order Refresh Message (108)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_arcaequities_arcabook_pillar_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_arcaequities_arcabook_pillar_v2_1.nanoseconds = {}

-- Size: Nanoseconds
nyse_arcaequities_arcabook_pillar_v2_1.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_arcaequities_arcabook_pillar_v2_1.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_arcaequities_arcabook_pillar_v2_1.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_arcaequities_arcabook_pillar_v2_1.number_msgs = {}

-- Size: Number Msgs
nyse_arcaequities_arcabook_pillar_v2_1.number_msgs.size = 1

-- Display: Number Msgs
nyse_arcaequities_arcabook_pillar_v2_1.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_arcaequities_arcabook_pillar_v2_1.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Order Id
nyse_arcaequities_arcabook_pillar_v2_1.order_id = {}

-- Size: Order Id
nyse_arcaequities_arcabook_pillar_v2_1.order_id.size = 4

-- Display: Order Id
nyse_arcaequities_arcabook_pillar_v2_1.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_arcaequities_arcabook_pillar_v2_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Idgtc Indicator
nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator = {}

-- Size: Order Idgtc Indicator
nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.size = 1

-- Display: Order Idgtc Indicator
nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.display = function(value)
  if value == 0 then
    return "Order Idgtc Indicator: Day Order (0)"
  end
  if value == 1 then
    return "Order Idgtc Indicator: Gtc Order (1)"
  end

  return "Order Idgtc Indicator: Unknown("..value..")"
end

-- Dissect: Order Idgtc Indicator
nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.order_idgtc_indicator, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_arcaequities_arcabook_pillar_v2_1.paired_qty = {}

-- Size: Paired Qty
nyse_arcaequities_arcabook_pillar_v2_1.paired_qty.size = 4

-- Display: Paired Qty
nyse_arcaequities_arcabook_pillar_v2_1.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_arcaequities_arcabook_pillar_v2_1.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_arcaequities_arcabook_pillar_v2_1.pkt_size = {}

-- Size: Pkt Size
nyse_arcaequities_arcabook_pillar_v2_1.pkt_size.size = 2

-- Display: Pkt Size
nyse_arcaequities_arcabook_pillar_v2_1.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_arcaequities_arcabook_pillar_v2_1.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Price
nyse_arcaequities_arcabook_pillar_v2_1.price = {}

-- Size: Price
nyse_arcaequities_arcabook_pillar_v2_1.price.size = 4

-- Display: Price
nyse_arcaequities_arcabook_pillar_v2_1.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_arcaequities_arcabook_pillar_v2_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Reason Code
nyse_arcaequities_arcabook_pillar_v2_1.reason_code = {}

-- Size: Reason Code
nyse_arcaequities_arcabook_pillar_v2_1.reason_code.size = 1

-- Display: Reason Code
nyse_arcaequities_arcabook_pillar_v2_1.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
nyse_arcaequities_arcabook_pillar_v2_1.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_arcaequities_arcabook_pillar_v2_1.seconds = {}

-- Size: Seconds
nyse_arcaequities_arcabook_pillar_v2_1.seconds.size = 4

-- Display: Seconds
nyse_arcaequities_arcabook_pillar_v2_1.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_arcaequities_arcabook_pillar_v2_1.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.seconds, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_arcaequities_arcabook_pillar_v2_1.seq_num = {}

-- Size: Seq Num
nyse_arcaequities_arcabook_pillar_v2_1.seq_num.size = 4

-- Display: Seq Num
nyse_arcaequities_arcabook_pillar_v2_1.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_arcaequities_arcabook_pillar_v2_1.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Side
nyse_arcaequities_arcabook_pillar_v2_1.side = {}

-- Size: Side
nyse_arcaequities_arcabook_pillar_v2_1.side.size = 1

-- Display: Side
nyse_arcaequities_arcabook_pillar_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_arcaequities_arcabook_pillar_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_arcaequities_arcabook_pillar_v2_1.source_time = {}

-- Size: Source Time
nyse_arcaequities_arcabook_pillar_v2_1.source_time.size = 4

-- Display: Source Time
nyse_arcaequities_arcabook_pillar_v2_1.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_arcaequities_arcabook_pillar_v2_1.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns = {}

-- Size: Source Time Ns
nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr Filing Price
nyse_arcaequities_arcabook_pillar_v2_1.ssr_filing_price = {}

-- Size: Ssr Filing Price
nyse_arcaequities_arcabook_pillar_v2_1.ssr_filing_price.size = 4

-- Display: Ssr Filing Price
nyse_arcaequities_arcabook_pillar_v2_1.ssr_filing_price.display = function(value)
  return "Ssr Filing Price: "..value
end

-- Dissect: Ssr Filing Price
nyse_arcaequities_arcabook_pillar_v2_1.ssr_filing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.ssr_filing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.ssr_filing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_arcaequities_arcabook_pillar_v2_1.symbol_index = {}

-- Size: Symbol Index
nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size = 4

-- Display: Symbol Index
nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_arcaequities_arcabook_pillar_v2_1.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_arcaequities_arcabook_pillar_v2_1.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_arcaequities_arcabook_pillar_v2_1.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_arcaequities_arcabook_pillar_v2_1.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_arcaequities_arcabook_pillar_v2_1.trade_id = {}

-- Size: Trade Id
nyse_arcaequities_arcabook_pillar_v2_1.trade_id.size = 4

-- Display: Trade Id
nyse_arcaequities_arcabook_pillar_v2_1.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_arcaequities_arcabook_pillar_v2_1.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Session
nyse_arcaequities_arcabook_pillar_v2_1.trade_session = {}

-- Size: Trade Session
nyse_arcaequities_arcabook_pillar_v2_1.trade_session.size = 1

-- Display: Trade Session
nyse_arcaequities_arcabook_pillar_v2_1.trade_session.display = function(value)
  if value == 1 then
    return "Trade Session: Ok For Morning Hours (1)"
  end
  if value == 2 then
    return "Trade Session: Ok For National Hours Core (2)"
  end
  if value == 3 then
    return "Trade Session: Ok For Morning And Core (3)"
  end
  if value == 4 then
    return "Trade Session: Ok For Late Hours (4)"
  end
  if value == 6 then
    return "Trade Session: Ok For Core And Late (6)"
  end
  if value == 7 then
    return "Trade Session: Ok For Morning Core And Late (7)"
  end

  return "Trade Session: Unknown("..value..")"
end

-- Dissect: Trade Session
nyse_arcaequities_arcabook_pillar_v2_1.trade_session.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.trade_session.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.trade_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.trade_session, range, value, display)

  return offset + length, value
end

-- Volume
nyse_arcaequities_arcabook_pillar_v2_1.volume = {}

-- Size: Volume
nyse_arcaequities_arcabook_pillar_v2_1.volume.size = 4

-- Display: Volume
nyse_arcaequities_arcabook_pillar_v2_1.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_arcaequities_arcabook_pillar_v2_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaequities_arcabook_pillar_v2_1.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaequities_arcabook_pillar_v2_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse ArcaEquities ArcaBook Pillar 2.1
-----------------------------------------------------------------------

-- Attributed Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_refresh_message = {}

-- Size: Attributed Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_refresh_message.size =
  nyse_arcaequities_arcabook_pillar_v2_1.source_time.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_id.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.price.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.volume.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.side.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.trade_session.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.firm_id.size

-- Display: Attributed Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Attributed Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Integer
  index, source_time = nyse_arcaequities_arcabook_pillar_v2_1.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Integer
  index, source_time_ns = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Integer
  index, symbol_index = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Integer
  index, symbol_seq_num = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nyse_arcaequities_arcabook_pillar_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nyse_arcaequities_arcabook_pillar_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nyse_arcaequities_arcabook_pillar_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = nyse_arcaequities_arcabook_pillar_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Integer
  index, order_idgtc_indicator = nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Trade Session: Integer
  index, trade_session = nyse_arcaequities_arcabook_pillar_v2_1.trade_session.dissect(buffer, index, packet, parent)

  -- Firm Id: Integer
  index, firm_id = nyse_arcaequities_arcabook_pillar_v2_1.firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Attributed Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.attributed_add_order_refresh_message, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Attributed Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_message = {}

-- Size: Attributed Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_message.size =
  nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_id.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.price.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.volume.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.side.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.trade_session.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.firm_id.size

-- Display: Attributed Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Attributed Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Integer
  index, source_time_ns = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Integer
  index, symbol_index = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Integer
  index, symbol_seq_num = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nyse_arcaequities_arcabook_pillar_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nyse_arcaequities_arcabook_pillar_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nyse_arcaequities_arcabook_pillar_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = nyse_arcaequities_arcabook_pillar_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Integer
  index, order_idgtc_indicator = nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Trade Session: Integer
  index, trade_session = nyse_arcaequities_arcabook_pillar_v2_1.trade_session.dissect(buffer, index, packet, parent)

  -- Firm Id: Integer
  index, firm_id = nyse_arcaequities_arcabook_pillar_v2_1.firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Attributed Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.attributed_add_order_message, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_refresh_message = {}

-- Size: Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_refresh_message.size =
  nyse_arcaequities_arcabook_pillar_v2_1.source_time.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_id.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.price.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.volume.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.side.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.trade_session.size

-- Display: Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Integer
  index, source_time = nyse_arcaequities_arcabook_pillar_v2_1.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Integer
  index, source_time_ns = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Integer
  index, symbol_index = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Integer
  index, symbol_seq_num = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nyse_arcaequities_arcabook_pillar_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nyse_arcaequities_arcabook_pillar_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nyse_arcaequities_arcabook_pillar_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = nyse_arcaequities_arcabook_pillar_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Integer
  index, order_idgtc_indicator = nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Trade Session: Integer
  index, trade_session = nyse_arcaequities_arcabook_pillar_v2_1.trade_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Refresh Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.add_order_refresh_message, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.add_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.add_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.add_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
nyse_arcaequities_arcabook_pillar_v2_1.imbalance_message = {}

-- Size: Imbalance Message
nyse_arcaequities_arcabook_pillar_v2_1.imbalance_message.size =
  nyse_arcaequities_arcabook_pillar_v2_1.source_time.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.indicative_match_price.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.paired_qty.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.total_imbalance_qty.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.market_imbalance_qty.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.auction_time.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.auction_type.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.imbalance_side.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.continuous_book_clearing_price.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.closing_only_clearing_price.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.ssr_filing_price.size

-- Display: Imbalance Message
nyse_arcaequities_arcabook_pillar_v2_1.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_arcaequities_arcabook_pillar_v2_1.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Integer
  index, source_time = nyse_arcaequities_arcabook_pillar_v2_1.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Integer
  index, source_time_ns = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Integer
  index, symbol_index = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Integer
  index, symbol_seq_num = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: Integer
  index, indicative_match_price = nyse_arcaequities_arcabook_pillar_v2_1.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Paired Qty: Integer
  index, paired_qty = nyse_arcaequities_arcabook_pillar_v2_1.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: Integer
  index, total_imbalance_qty = nyse_arcaequities_arcabook_pillar_v2_1.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: Integer
  index, market_imbalance_qty = nyse_arcaequities_arcabook_pillar_v2_1.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Auction Time: Integer
  index, auction_time = nyse_arcaequities_arcabook_pillar_v2_1.auction_time.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = nyse_arcaequities_arcabook_pillar_v2_1.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: Alphanumeric
  index, imbalance_side = nyse_arcaequities_arcabook_pillar_v2_1.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: Integer
  index, continuous_book_clearing_price = nyse_arcaequities_arcabook_pillar_v2_1.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Closing Only Clearing Price: Integer
  index, closing_only_clearing_price = nyse_arcaequities_arcabook_pillar_v2_1.closing_only_clearing_price.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: Integer
  index, ssr_filing_price = nyse_arcaequities_arcabook_pillar_v2_1.ssr_filing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_arcaequities_arcabook_pillar_v2_1.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Message
nyse_arcaequities_arcabook_pillar_v2_1.execution_message = {}

-- Size: Execution Message
nyse_arcaequities_arcabook_pillar_v2_1.execution_message.size =
  nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_id.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.price.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.volume.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.reason_code.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.trade_id.size

-- Display: Execution Message
nyse_arcaequities_arcabook_pillar_v2_1.execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Message
nyse_arcaequities_arcabook_pillar_v2_1.execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Integer
  index, source_time_ns = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Integer
  index, symbol_index = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Integer
  index, symbol_seq_num = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nyse_arcaequities_arcabook_pillar_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nyse_arcaequities_arcabook_pillar_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nyse_arcaequities_arcabook_pillar_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Integer
  index, order_idgtc_indicator = nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: Integer
  index, reason_code = nyse_arcaequities_arcabook_pillar_v2_1.reason_code.dissect(buffer, index, packet, parent)

  -- Trade Id: Integer
  index, trade_id = nyse_arcaequities_arcabook_pillar_v2_1.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Message
nyse_arcaequities_arcabook_pillar_v2_1.execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.execution_message, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
nyse_arcaequities_arcabook_pillar_v2_1.delete_order_message = {}

-- Size: Delete Order Message
nyse_arcaequities_arcabook_pillar_v2_1.delete_order_message.size =
  nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_id.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.side.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.reason_code.size

-- Display: Delete Order Message
nyse_arcaequities_arcabook_pillar_v2_1.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
nyse_arcaequities_arcabook_pillar_v2_1.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Integer
  index, source_time_ns = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Integer
  index, symbol_index = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Integer
  index, symbol_seq_num = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nyse_arcaequities_arcabook_pillar_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = nyse_arcaequities_arcabook_pillar_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Integer
  index, order_idgtc_indicator = nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: Integer
  index, reason_code = nyse_arcaequities_arcabook_pillar_v2_1.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
nyse_arcaequities_arcabook_pillar_v2_1.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.delete_order_message, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
nyse_arcaequities_arcabook_pillar_v2_1.modify_order_message = {}

-- Size: Modify Order Message
nyse_arcaequities_arcabook_pillar_v2_1.modify_order_message.size =
  nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_id.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.price.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.volume.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.side.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.reason_code.size

-- Display: Modify Order Message
nyse_arcaequities_arcabook_pillar_v2_1.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nyse_arcaequities_arcabook_pillar_v2_1.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Integer
  index, source_time_ns = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Integer
  index, symbol_index = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Integer
  index, symbol_seq_num = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nyse_arcaequities_arcabook_pillar_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nyse_arcaequities_arcabook_pillar_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nyse_arcaequities_arcabook_pillar_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = nyse_arcaequities_arcabook_pillar_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Integer
  index, order_idgtc_indicator = nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Reason Code: Integer
  index, reason_code = nyse_arcaequities_arcabook_pillar_v2_1.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nyse_arcaequities_arcabook_pillar_v2_1.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.modify_order_message, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_message = {}

-- Size: Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_message.size =
  nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_id.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.price.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.volume.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.side.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.trade_session.size

-- Display: Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Integer
  index, source_time_ns = nyse_arcaequities_arcabook_pillar_v2_1.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Integer
  index, symbol_index = nyse_arcaequities_arcabook_pillar_v2_1.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Integer
  index, symbol_seq_num = nyse_arcaequities_arcabook_pillar_v2_1.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Integer
  index, order_id = nyse_arcaequities_arcabook_pillar_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nyse_arcaequities_arcabook_pillar_v2_1.price.dissect(buffer, index, packet, parent)

  -- Volume: Integer
  index, volume = nyse_arcaequities_arcabook_pillar_v2_1.volume.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = nyse_arcaequities_arcabook_pillar_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Idgtc Indicator: Integer
  index, order_idgtc_indicator = nyse_arcaequities_arcabook_pillar_v2_1.order_idgtc_indicator.dissect(buffer, index, packet, parent)

  -- Trade Session: Integer
  index, trade_session = nyse_arcaequities_arcabook_pillar_v2_1.trade_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nyse_arcaequities_arcabook_pillar_v2_1.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.add_order_message, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_arcaequities_arcabook_pillar_v2_1.payload = {}

-- Dissect: Payload
nyse_arcaequities_arcabook_pillar_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Add Order Message
  if message_type == 100 then
    return nyse_arcaequities_arcabook_pillar_v2_1.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 101 then
    return nyse_arcaequities_arcabook_pillar_v2_1.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 102 then
    return nyse_arcaequities_arcabook_pillar_v2_1.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Message
  if message_type == 103 then
    return nyse_arcaequities_arcabook_pillar_v2_1.execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_arcaequities_arcabook_pillar_v2_1.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Refresh Message
  if message_type == 106 then
    return nyse_arcaequities_arcabook_pillar_v2_1.add_order_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Attributed Add Order Message
  if message_type == 107 then
    return nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Attributed Add Order Refresh Message
  if message_type == 108 then
    return nyse_arcaequities_arcabook_pillar_v2_1.attributed_add_order_refresh_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_arcaequities_arcabook_pillar_v2_1.message_header = {}

-- Size: Message Header
nyse_arcaequities_arcabook_pillar_v2_1.message_header.size =
  nyse_arcaequities_arcabook_pillar_v2_1.message_size.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.message_type.size

-- Display: Message Header
nyse_arcaequities_arcabook_pillar_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_arcaequities_arcabook_pillar_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_arcaequities_arcabook_pillar_v2_1.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, message_type = nyse_arcaequities_arcabook_pillar_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_arcaequities_arcabook_pillar_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message_header, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_arcaequities_arcabook_pillar_v2_1.message = {}

-- Display: Message
nyse_arcaequities_arcabook_pillar_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_arcaequities_arcabook_pillar_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_arcaequities_arcabook_pillar_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 8 branches
  index = nyse_arcaequities_arcabook_pillar_v2_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_arcaequities_arcabook_pillar_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.message, buffer(offset, 0))
    local current = nyse_arcaequities_arcabook_pillar_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaequities_arcabook_pillar_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_arcaequities_arcabook_pillar_v2_1.send_time = {}

-- Size: Send Time
nyse_arcaequities_arcabook_pillar_v2_1.send_time.size =
  nyse_arcaequities_arcabook_pillar_v2_1.seconds.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.nanoseconds.size

-- Display: Send Time
nyse_arcaequities_arcabook_pillar_v2_1.send_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Send Time
nyse_arcaequities_arcabook_pillar_v2_1.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_arcaequities_arcabook_pillar_v2_1.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_arcaequities_arcabook_pillar_v2_1.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_arcaequities_arcabook_pillar_v2_1.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.send_time, buffer(offset, 0))
    local index, value = nyse_arcaequities_arcabook_pillar_v2_1.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_arcaequities_arcabook_pillar_v2_1.packet_header = {}

-- Size: Packet Header
nyse_arcaequities_arcabook_pillar_v2_1.packet_header.size =
  nyse_arcaequities_arcabook_pillar_v2_1.pkt_size.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.delivery_flag.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.number_msgs.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.seq_num.size + 
  nyse_arcaequities_arcabook_pillar_v2_1.send_time.size

-- Display: Packet Header
nyse_arcaequities_arcabook_pillar_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_arcaequities_arcabook_pillar_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_arcaequities_arcabook_pillar_v2_1.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_arcaequities_arcabook_pillar_v2_1.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_arcaequities_arcabook_pillar_v2_1.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_arcaequities_arcabook_pillar_v2_1.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_arcaequities_arcabook_pillar_v2_1.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_arcaequities_arcabook_pillar_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nyse_arcaequities_arcabook_pillar_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaequities_arcabook_pillar_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaequities_arcabook_pillar_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_arcaequities_arcabook_pillar_v2_1.packet = {}

-- Dissect Packet
nyse_arcaequities_arcabook_pillar_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_arcaequities_arcabook_pillar_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_arcaequities_arcabook_pillar_v2_1.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_arcaequities_arcabook_pillar_v2_1.init()
end

-- Dissector for Nyse ArcaEquities ArcaBook Pillar 2.1
function omi_nyse_arcaequities_arcabook_pillar_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_arcaequities_arcabook_pillar_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_arcaequities_arcabook_pillar_v2_1, buffer(), omi_nyse_arcaequities_arcabook_pillar_v2_1.description, "("..buffer:len().." Bytes)")
  return nyse_arcaequities_arcabook_pillar_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_arcaequities_arcabook_pillar_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_arcaequities_arcabook_pillar_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse ArcaEquities ArcaBook Pillar 2.1
local function omi_nyse_arcaequities_arcabook_pillar_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_arcaequities_arcabook_pillar_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arcaequities_arcabook_pillar_v2_1
  omi_nyse_arcaequities_arcabook_pillar_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse ArcaEquities ArcaBook Pillar 2.1
omi_nyse_arcaequities_arcabook_pillar_v2_1:register_heuristic("udp", omi_nyse_arcaequities_arcabook_pillar_v2_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.1
--   Date: Thursday, October 23, 2025
--   Specification: ArcaBook_Client_Specification.pdf
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
