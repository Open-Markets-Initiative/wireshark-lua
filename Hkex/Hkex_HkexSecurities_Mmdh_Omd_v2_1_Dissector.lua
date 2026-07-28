-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex HkexSecurities Mmdh Omd 2.1 Protocol
local omi_hkex_hkexsecurities_mmdh_omd_v2_1 = Proto("Omi.Hkex.HkexSecurities.Mmdh.Omd.v2.1", "Hkex HkexSecurities Mmdh Omd 2.1")

-- Protocol table
local hkex_hkexsecurities_mmdh_omd_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex HkexSecurities Mmdh Omd 2.1 Fields
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.broker_id = ProtoField.new("Broker Id", "hkex.hkexsecurities.mmdh.omd.v2.1.brokerid", ftypes.UINT16)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.filler = ProtoField.new("Filler", "hkex.hkexsecurities.mmdh.omd.v2.1.filler", ftypes.STRING)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.internal_seq_num = ProtoField.new("Internal Seq Num", "hkex.hkexsecurities.mmdh.omd.v2.1.internalseqnum", ftypes.UINT32)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.message = ProtoField.new("Message", "hkex.hkexsecurities.mmdh.omd.v2.1.message", ftypes.STRING)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.message_header = ProtoField.new("Message Header", "hkex.hkexsecurities.mmdh.omd.v2.1.messageheader", ftypes.STRING)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.msg_length = ProtoField.new("Msg Length", "hkex.hkexsecurities.mmdh.omd.v2.1.msglength", ftypes.UINT16)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.msg_size = ProtoField.new("Msg Size", "hkex.hkexsecurities.mmdh.omd.v2.1.msgsize", ftypes.UINT16)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.msg_type = ProtoField.new("Msg Type", "hkex.hkexsecurities.mmdh.omd.v2.1.msgtype", ftypes.UINT16)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.order_id = ProtoField.new("Order Id", "hkex.hkexsecurities.mmdh.omd.v2.1.orderid", ftypes.UINT64)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.packet = ProtoField.new("Packet", "hkex.hkexsecurities.mmdh.omd.v2.1.packet", ftypes.STRING)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.price = ProtoField.new("Price", "hkex.hkexsecurities.mmdh.omd.v2.1.price", ftypes.DOUBLE)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.quantity = ProtoField.new("Quantity", "hkex.hkexsecurities.mmdh.omd.v2.1.quantity", ftypes.UINT32)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.security_code = ProtoField.new("Security Code", "hkex.hkexsecurities.mmdh.omd.v2.1.securitycode", ftypes.UINT32)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.send_time = ProtoField.new("Send Time", "hkex.hkexsecurities.mmdh.omd.v2.1.sendtime", ftypes.UINT64)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.seq_num = ProtoField.new("Seq Num", "hkex.hkexsecurities.mmdh.omd.v2.1.seqnum", ftypes.UINT32)
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.side = ProtoField.new("Side", "hkex.hkexsecurities.mmdh.omd.v2.1.side", ftypes.UINT16)

-- Hkex HkexSecurities Omd Mmdh 2.1 Application Messages
omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.add_odd_lot_order_message = ProtoField.new("Add Odd Lot Order Message", "hkex.hkexsecurities.mmdh.omd.v2.1.addoddlotordermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex HkexSecurities Mmdh Omd 2.1 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true

-- Register Hkex HkexSecurities Mmdh Omd 2.1 Show Options
omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")


-- Handle changed preferences
function omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_application_messages then
    show.application_messages = omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_application_messages
  end
  if show.message ~= omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_message then
    show.message = omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_message
  end
  if show.message_header ~= omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_message_header then
    show.message_header = omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_message_header
  end
  if show.packet ~= omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_packet then
    show.packet = omi_hkex_hkexsecurities_mmdh_omd_v2_1.prefs.show_packet
  end
end


-----------------------------------------------------------------------
-- Hkex HkexSecurities Mmdh Omd 2.1 Fields
-----------------------------------------------------------------------

-- Broker Id
hkex_hkexsecurities_mmdh_omd_v2_1.broker_id = {}

-- Size: Broker Id
hkex_hkexsecurities_mmdh_omd_v2_1.broker_id.size = 2

-- Display: Broker Id
hkex_hkexsecurities_mmdh_omd_v2_1.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
hkex_hkexsecurities_mmdh_omd_v2_1.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.broker_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Filler
hkex_hkexsecurities_mmdh_omd_v2_1.filler = {}

-- Size: Filler
hkex_hkexsecurities_mmdh_omd_v2_1.filler.size = 2

-- Display: Filler
hkex_hkexsecurities_mmdh_omd_v2_1.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
hkex_hkexsecurities_mmdh_omd_v2_1.filler.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.filler, range, value, display)

  return offset + length, value
end

-- Internal Seq Num
hkex_hkexsecurities_mmdh_omd_v2_1.internal_seq_num = {}

-- Size: Internal Seq Num
hkex_hkexsecurities_mmdh_omd_v2_1.internal_seq_num.size = 4

-- Display: Internal Seq Num
hkex_hkexsecurities_mmdh_omd_v2_1.internal_seq_num.display = function(value)
  return "Internal Seq Num: "..value
end

-- Dissect: Internal Seq Num
hkex_hkexsecurities_mmdh_omd_v2_1.internal_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.internal_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.internal_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.internal_seq_num, range, value, display)

  return offset + length, value
end

-- Msg Length
hkex_hkexsecurities_mmdh_omd_v2_1.msg_length = {}

-- Size: Msg Length
hkex_hkexsecurities_mmdh_omd_v2_1.msg_length.size = 2

-- Display: Msg Length
hkex_hkexsecurities_mmdh_omd_v2_1.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
hkex_hkexsecurities_mmdh_omd_v2_1.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_hkexsecurities_mmdh_omd_v2_1.msg_size = {}

-- Size: Msg Size
hkex_hkexsecurities_mmdh_omd_v2_1.msg_size.size = 2

-- Display: Msg Size
hkex_hkexsecurities_mmdh_omd_v2_1.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_hkexsecurities_mmdh_omd_v2_1.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_hkexsecurities_mmdh_omd_v2_1.msg_type = {}

-- Size: Msg Type
hkex_hkexsecurities_mmdh_omd_v2_1.msg_type.size = 2

-- Display: Msg Type
hkex_hkexsecurities_mmdh_omd_v2_1.msg_type.display = function(value)
  if value == 33 then
    return "Msg Type: Add Odd Lot Order Message (33)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_hkexsecurities_mmdh_omd_v2_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Order Id
hkex_hkexsecurities_mmdh_omd_v2_1.order_id = {}

-- Size: Order Id
hkex_hkexsecurities_mmdh_omd_v2_1.order_id.size = 8

-- Display: Order Id
hkex_hkexsecurities_mmdh_omd_v2_1.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
hkex_hkexsecurities_mmdh_omd_v2_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Price
hkex_hkexsecurities_mmdh_omd_v2_1.price = {}

-- Size: Price
hkex_hkexsecurities_mmdh_omd_v2_1.price.size = 4

-- Display: Price
hkex_hkexsecurities_mmdh_omd_v2_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
hkex_hkexsecurities_mmdh_omd_v2_1.price.translate = function(raw)
  return raw/1000
end

-- Dissect: Price
hkex_hkexsecurities_mmdh_omd_v2_1.price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_mmdh_omd_v2_1.price.translate(raw)
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
hkex_hkexsecurities_mmdh_omd_v2_1.quantity = {}

-- Size: Quantity
hkex_hkexsecurities_mmdh_omd_v2_1.quantity.size = 4

-- Display: Quantity
hkex_hkexsecurities_mmdh_omd_v2_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
hkex_hkexsecurities_mmdh_omd_v2_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Security Code
hkex_hkexsecurities_mmdh_omd_v2_1.security_code = {}

-- Size: Security Code
hkex_hkexsecurities_mmdh_omd_v2_1.security_code.size = 4

-- Display: Security Code
hkex_hkexsecurities_mmdh_omd_v2_1.security_code.display = function(value)
  return "Security Code: "..value
end

-- Dissect: Security Code
hkex_hkexsecurities_mmdh_omd_v2_1.security_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.security_code, range, value, display)

  return offset + length, value
end

-- Send Time
hkex_hkexsecurities_mmdh_omd_v2_1.send_time = {}

-- Size: Send Time
hkex_hkexsecurities_mmdh_omd_v2_1.send_time.size = 8

-- Display: Send Time
hkex_hkexsecurities_mmdh_omd_v2_1.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_hkexsecurities_mmdh_omd_v2_1.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_hkexsecurities_mmdh_omd_v2_1.seq_num = {}

-- Size: Seq Num
hkex_hkexsecurities_mmdh_omd_v2_1.seq_num.size = 4

-- Display: Seq Num
hkex_hkexsecurities_mmdh_omd_v2_1.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_hkexsecurities_mmdh_omd_v2_1.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Side
hkex_hkexsecurities_mmdh_omd_v2_1.side = {}

-- Size: Side
hkex_hkexsecurities_mmdh_omd_v2_1.side.size = 2

-- Display: Side
hkex_hkexsecurities_mmdh_omd_v2_1.side.display = function(value)
  if value == 0 then
    return "Side: Bid (0)"
  end
  if value == 1 then
    return "Side: Offer (1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
hkex_hkexsecurities_mmdh_omd_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_mmdh_omd_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_mmdh_omd_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.side, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Hkex HkexSecurities Mmdh Omd 2.1
-----------------------------------------------------------------------

-- Add Odd Lot Order Message
hkex_hkexsecurities_mmdh_omd_v2_1.add_odd_lot_order_message = {}

-- Size: Add Odd Lot Order Message
hkex_hkexsecurities_mmdh_omd_v2_1.add_odd_lot_order_message.size =
  hkex_hkexsecurities_mmdh_omd_v2_1.security_code.size + 
  hkex_hkexsecurities_mmdh_omd_v2_1.order_id.size + 
  hkex_hkexsecurities_mmdh_omd_v2_1.price.size + 
  hkex_hkexsecurities_mmdh_omd_v2_1.quantity.size + 
  hkex_hkexsecurities_mmdh_omd_v2_1.broker_id.size + 
  hkex_hkexsecurities_mmdh_omd_v2_1.side.size

-- Display: Add Odd Lot Order Message
hkex_hkexsecurities_mmdh_omd_v2_1.add_odd_lot_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Odd Lot Order Message
hkex_hkexsecurities_mmdh_omd_v2_1.add_odd_lot_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_mmdh_omd_v2_1.security_code.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = hkex_hkexsecurities_mmdh_omd_v2_1.order_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexsecurities_mmdh_omd_v2_1.price.dissect(buffer, index, packet, parent)

  -- Quantity: Uint32
  index, quantity = hkex_hkexsecurities_mmdh_omd_v2_1.quantity.dissect(buffer, index, packet, parent)

  -- Broker Id: Uint16
  index, broker_id = hkex_hkexsecurities_mmdh_omd_v2_1.broker_id.dissect(buffer, index, packet, parent)

  -- Side: Uint16
  index, side = hkex_hkexsecurities_mmdh_omd_v2_1.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Odd Lot Order Message
hkex_hkexsecurities_mmdh_omd_v2_1.add_odd_lot_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.add_odd_lot_order_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_mmdh_omd_v2_1.add_odd_lot_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_mmdh_omd_v2_1.add_odd_lot_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_mmdh_omd_v2_1.add_odd_lot_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_hkexsecurities_mmdh_omd_v2_1.payload = {}

-- Dissect: Payload
hkex_hkexsecurities_mmdh_omd_v2_1.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Add Odd Lot Order Message
  if msg_type == 33 then
    return hkex_hkexsecurities_mmdh_omd_v2_1.add_odd_lot_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
hkex_hkexsecurities_mmdh_omd_v2_1.message_header = {}

-- Size: Message Header
hkex_hkexsecurities_mmdh_omd_v2_1.message_header.size =
  hkex_hkexsecurities_mmdh_omd_v2_1.msg_length.size + 
  hkex_hkexsecurities_mmdh_omd_v2_1.filler.size + 
  hkex_hkexsecurities_mmdh_omd_v2_1.seq_num.size + 
  hkex_hkexsecurities_mmdh_omd_v2_1.internal_seq_num.size + 
  hkex_hkexsecurities_mmdh_omd_v2_1.send_time.size

-- Display: Message Header
hkex_hkexsecurities_mmdh_omd_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
hkex_hkexsecurities_mmdh_omd_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = hkex_hkexsecurities_mmdh_omd_v2_1.msg_length.dissect(buffer, index, packet, parent)

  -- Filler: 2 Byte Ascii String
  index, filler = hkex_hkexsecurities_mmdh_omd_v2_1.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_hkexsecurities_mmdh_omd_v2_1.seq_num.dissect(buffer, index, packet, parent)

  -- Internal Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, internal_seq_num = hkex_hkexsecurities_mmdh_omd_v2_1.internal_seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_hkexsecurities_mmdh_omd_v2_1.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
hkex_hkexsecurities_mmdh_omd_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.message_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_mmdh_omd_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_mmdh_omd_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_mmdh_omd_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_hkexsecurities_mmdh_omd_v2_1.message = {}

-- Display: Message
hkex_hkexsecurities_mmdh_omd_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_hkexsecurities_mmdh_omd_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = hkex_hkexsecurities_mmdh_omd_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_hkexsecurities_mmdh_omd_v2_1.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, msg_type = hkex_hkexsecurities_mmdh_omd_v2_1.msg_type.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = hkex_hkexsecurities_mmdh_omd_v2_1.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_hkexsecurities_mmdh_omd_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1.fields.message, buffer(offset, 0))
    local current = hkex_hkexsecurities_mmdh_omd_v2_1.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = hkex_hkexsecurities_mmdh_omd_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_hkexsecurities_mmdh_omd_v2_1.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
hkex_hkexsecurities_mmdh_omd_v2_1.packet = {}

-- Verify required size of Tcp packet
hkex_hkexsecurities_mmdh_omd_v2_1.packet.requiredsize = function(buffer)
  return buffer:len() >= hkex_hkexsecurities_mmdh_omd_v2_1.message.size
end

-- Dissect Packet
hkex_hkexsecurities_mmdh_omd_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency element: Msg Length
  local msg_length = buffer(index, 2):le_uint()

  -- Runtime Size Of: Message
  index, message = hkex_hkexsecurities_mmdh_omd_v2_1.message.dissect(buffer, index, packet, parent, msg_length)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_hkexsecurities_mmdh_omd_v2_1.init()
end

-- Dissector for Hkex HkexSecurities Mmdh Omd 2.1
function omi_hkex_hkexsecurities_mmdh_omd_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_hkexsecurities_mmdh_omd_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_hkexsecurities_mmdh_omd_v2_1, buffer(), omi_hkex_hkexsecurities_mmdh_omd_v2_1.description, "("..buffer:len().." Bytes)")
  return hkex_hkexsecurities_mmdh_omd_v2_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Hkex HkexSecurities Mmdh Omd 2.1 (Tcp)
local function omi_hkex_hkexsecurities_mmdh_omd_v2_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_hkexsecurities_mmdh_omd_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_hkexsecurities_mmdh_omd_v2_1
  omi_hkex_hkexsecurities_mmdh_omd_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex HkexSecurities Mmdh Omd 2.1
omi_hkex_hkexsecurities_mmdh_omd_v2_1:register_heuristic("tcp", omi_hkex_hkexsecurities_mmdh_omd_v2_1_tcp_heuristic)

-- Register Hkex HkexSecurities Mmdh Omd 2.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_hkex_hkexsecurities_mmdh_omd_v2_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 2.1
--   Date: Friday, January 9, 2026
--   Specification: HKEX_OMDC_MMDH_Binary_Interface_Specifications_v2_1.pdf
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
