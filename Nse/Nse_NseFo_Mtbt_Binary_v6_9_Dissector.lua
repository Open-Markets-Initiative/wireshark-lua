-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseFo Mtbt Binary 6.9 Protocol
local omi_nse_nsefo_mtbt_binary_v6_9 = Proto("Omi.Nse.NseFo.Mtbt.Binary.v6.9", "Nse NseFo Mtbt Binary 6.9")

-- Protocol table
local nse_nsefo_mtbt_binary_v6_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseFo Mtbt Binary 6.9 Fields
omi_nse_nsefo_mtbt_binary_v6_9.fields.buy_order_id = ProtoField.new("Buy Order Id", "nse.nsefo.mtbt.binary.v6.9.buyorderid", ftypes.DOUBLE)
omi_nse_nsefo_mtbt_binary_v6_9.fields.last_sequence_no = ProtoField.new("Last Sequence No", "nse.nsefo.mtbt.binary.v6.9.lastsequenceno", ftypes.UINT32)
omi_nse_nsefo_mtbt_binary_v6_9.fields.message_length = ProtoField.new("Message Length", "nse.nsefo.mtbt.binary.v6.9.messagelength", ftypes.INT16)
omi_nse_nsefo_mtbt_binary_v6_9.fields.message_type = ProtoField.new("Message Type", "nse.nsefo.mtbt.binary.v6.9.messagetype", ftypes.STRING)
omi_nse_nsefo_mtbt_binary_v6_9.fields.order_id = ProtoField.new("Order Id", "nse.nsefo.mtbt.binary.v6.9.orderid", ftypes.DOUBLE)
omi_nse_nsefo_mtbt_binary_v6_9.fields.order_type = ProtoField.new("Order Type", "nse.nsefo.mtbt.binary.v6.9.ordertype", ftypes.STRING)
omi_nse_nsefo_mtbt_binary_v6_9.fields.price = ProtoField.new("Price", "nse.nsefo.mtbt.binary.v6.9.price", ftypes.DOUBLE)
omi_nse_nsefo_mtbt_binary_v6_9.fields.quantity = ProtoField.new("Quantity", "nse.nsefo.mtbt.binary.v6.9.quantity", ftypes.INT32)
omi_nse_nsefo_mtbt_binary_v6_9.fields.sell_order_id = ProtoField.new("Sell Order Id", "nse.nsefo.mtbt.binary.v6.9.sellorderid", ftypes.DOUBLE)
omi_nse_nsefo_mtbt_binary_v6_9.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nsefo.mtbt.binary.v6.9.sequencenumber", ftypes.UINT32)
omi_nse_nsefo_mtbt_binary_v6_9.fields.stream_id = ProtoField.new("Stream Id", "nse.nsefo.mtbt.binary.v6.9.streamid", ftypes.INT16)
omi_nse_nsefo_mtbt_binary_v6_9.fields.timestamp = ProtoField.new("Timestamp", "nse.nsefo.mtbt.binary.v6.9.timestamp", ftypes.INT64)
omi_nse_nsefo_mtbt_binary_v6_9.fields.token = ProtoField.new("Token", "nse.nsefo.mtbt.binary.v6.9.token", ftypes.INT32)
omi_nse_nsefo_mtbt_binary_v6_9.fields.trade_price = ProtoField.new("Trade Price", "nse.nsefo.mtbt.binary.v6.9.tradeprice", ftypes.DOUBLE)
omi_nse_nsefo_mtbt_binary_v6_9.fields.trade_quantity = ProtoField.new("Trade Quantity", "nse.nsefo.mtbt.binary.v6.9.tradequantity", ftypes.INT32)

-- Nse NseFo Mtbt Binary 6.9 Headers
omi_nse_nsefo_mtbt_binary_v6_9.fields.message = ProtoField.new("Message", "nse.nsefo.mtbt.binary.v6.9.message", ftypes.STRING)
omi_nse_nsefo_mtbt_binary_v6_9.fields.packet = ProtoField.new("Packet", "nse.nsefo.mtbt.binary.v6.9.packet", ftypes.STRING)
omi_nse_nsefo_mtbt_binary_v6_9.fields.stream_header = ProtoField.new("Stream Header", "nse.nsefo.mtbt.binary.v6.9.streamheader", ftypes.STRING)

-- Nse NseFo Mtbt 6.9 Application Messages
omi_nse_nsefo_mtbt_binary_v6_9.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nsefo.mtbt.binary.v6.9.heartbeatmessage", ftypes.STRING)
omi_nse_nsefo_mtbt_binary_v6_9.fields.order_message = ProtoField.new("Order Message", "nse.nsefo.mtbt.binary.v6.9.ordermessage", ftypes.STRING)
omi_nse_nsefo_mtbt_binary_v6_9.fields.spread_order_message = ProtoField.new("Spread Order Message", "nse.nsefo.mtbt.binary.v6.9.spreadordermessage", ftypes.STRING)
omi_nse_nsefo_mtbt_binary_v6_9.fields.spread_trade_message = ProtoField.new("Spread Trade Message", "nse.nsefo.mtbt.binary.v6.9.spreadtrademessage", ftypes.STRING)
omi_nse_nsefo_mtbt_binary_v6_9.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "nse.nsefo.mtbt.binary.v6.9.tradecancelmessage", ftypes.STRING)
omi_nse_nsefo_mtbt_binary_v6_9.fields.trade_message = ProtoField.new("Trade Message", "nse.nsefo.mtbt.binary.v6.9.trademessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseFo Mtbt Binary 6.9 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Nse NseFo Mtbt Binary 6.9 Show Options
omi_nse_nsefo_mtbt_binary_v6_9.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsefo_mtbt_binary_v6_9.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_nse_nsefo_mtbt_binary_v6_9.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsefo_mtbt_binary_v6_9.prefs.show_application_messages then
    show.application_messages = omi_nse_nsefo_mtbt_binary_v6_9.prefs.show_application_messages
  end
  if show.structs ~= omi_nse_nsefo_mtbt_binary_v6_9.prefs.show_structs then
    show.structs = omi_nse_nsefo_mtbt_binary_v6_9.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Nse NseFo Mtbt Binary 6.9 Fields
-----------------------------------------------------------------------

-- Buy Order Id
nse_nsefo_mtbt_binary_v6_9.buy_order_id = {}

-- Size: Buy Order Id
nse_nsefo_mtbt_binary_v6_9.buy_order_id.size = 8

-- Display: Buy Order Id
nse_nsefo_mtbt_binary_v6_9.buy_order_id.display = function(value)
  if value == math.floor(value) and math.abs(value) >= 100000000000000 then
    return "Buy Order Id: "..string.format("%.0f", value)
  end

  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
nse_nsefo_mtbt_binary_v6_9.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nsefo_mtbt_binary_v6_9.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Last Sequence No
nse_nsefo_mtbt_binary_v6_9.last_sequence_no = {}

-- Size: Last Sequence No
nse_nsefo_mtbt_binary_v6_9.last_sequence_no.size = 4

-- Display: Last Sequence No
nse_nsefo_mtbt_binary_v6_9.last_sequence_no.display = function(value)
  return "Last Sequence No: "..value
end

-- Dissect: Last Sequence No
nse_nsefo_mtbt_binary_v6_9.last_sequence_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.last_sequence_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nsefo_mtbt_binary_v6_9.last_sequence_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.last_sequence_no, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsefo_mtbt_binary_v6_9.message_length = {}

-- Size: Message Length
nse_nsefo_mtbt_binary_v6_9.message_length.size = 2

-- Display: Message Length
nse_nsefo_mtbt_binary_v6_9.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsefo_mtbt_binary_v6_9.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.message_length.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v6_9.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nse_nsefo_mtbt_binary_v6_9.message_type = {}

-- Size: Message Type
nse_nsefo_mtbt_binary_v6_9.message_type.size = 1

-- Display: Message Type
nse_nsefo_mtbt_binary_v6_9.message_type.display = function(value)
  if value == "N" then
    return "Message Type: Order Message (N)"
  end
  if value == "M" then
    return "Message Type: Order Message (M)"
  end
  if value == "X" then
    return "Message Type: Order Message (X)"
  end
  if value == "T" then
    return "Message Type: Trade Message (T)"
  end
  if value == "G" then
    return "Message Type: Spread Order Message (G)"
  end
  if value == "H" then
    return "Message Type: Spread Order Message (H)"
  end
  if value == "J" then
    return "Message Type: Spread Order Message (J)"
  end
  if value == "K" then
    return "Message Type: Spread Trade Message (K)"
  end
  if value == "C" then
    return "Message Type: Trade Cancel Message (C)"
  end
  if value == "Z" then
    return "Message Type: Heartbeat Message (Z)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nse_nsefo_mtbt_binary_v6_9.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_mtbt_binary_v6_9.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
nse_nsefo_mtbt_binary_v6_9.order_id = {}

-- Size: Order Id
nse_nsefo_mtbt_binary_v6_9.order_id.size = 8

-- Display: Order Id
nse_nsefo_mtbt_binary_v6_9.order_id.display = function(value)
  if value == math.floor(value) and math.abs(value) >= 100000000000000 then
    return "Order Id: "..string.format("%.0f", value)
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
nse_nsefo_mtbt_binary_v6_9.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nsefo_mtbt_binary_v6_9.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nsefo_mtbt_binary_v6_9.order_type = {}

-- Size: Order Type
nse_nsefo_mtbt_binary_v6_9.order_type.size = 1

-- Display: Order Type
nse_nsefo_mtbt_binary_v6_9.order_type.display = function(value)
  if value == "B" then
    return "Order Type: Buy Order (B)"
  end
  if value == "S" then
    return "Order Type: Sell Order (S)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
nse_nsefo_mtbt_binary_v6_9.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_mtbt_binary_v6_9.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.order_type, range, value, display)

  return offset + length, value
end

-- Price
nse_nsefo_mtbt_binary_v6_9.price = {}

-- Size: Price
nse_nsefo_mtbt_binary_v6_9.price.size = 4

-- Display: Price
nse_nsefo_mtbt_binary_v6_9.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsefo_mtbt_binary_v6_9.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nsefo_mtbt_binary_v6_9.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nsefo_mtbt_binary_v6_9.price.translate(raw)
  local display = nse_nsefo_mtbt_binary_v6_9.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
nse_nsefo_mtbt_binary_v6_9.quantity = {}

-- Size: Quantity
nse_nsefo_mtbt_binary_v6_9.quantity.size = 4

-- Display: Quantity
nse_nsefo_mtbt_binary_v6_9.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nse_nsefo_mtbt_binary_v6_9.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v6_9.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.quantity, range, value, display)

  return offset + length, value
end

-- Sell Order Id
nse_nsefo_mtbt_binary_v6_9.sell_order_id = {}

-- Size: Sell Order Id
nse_nsefo_mtbt_binary_v6_9.sell_order_id.size = 8

-- Display: Sell Order Id
nse_nsefo_mtbt_binary_v6_9.sell_order_id.display = function(value)
  if value == math.floor(value) and math.abs(value) >= 100000000000000 then
    return "Sell Order Id: "..string.format("%.0f", value)
  end

  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
nse_nsefo_mtbt_binary_v6_9.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_float()
  local display = nse_nsefo_mtbt_binary_v6_9.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nsefo_mtbt_binary_v6_9.sequence_number = {}

-- Size: Sequence Number
nse_nsefo_mtbt_binary_v6_9.sequence_number.size = 4

-- Display: Sequence Number
nse_nsefo_mtbt_binary_v6_9.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nse_nsefo_mtbt_binary_v6_9.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nse_nsefo_mtbt_binary_v6_9.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Id
nse_nsefo_mtbt_binary_v6_9.stream_id = {}

-- Size: Stream Id
nse_nsefo_mtbt_binary_v6_9.stream_id.size = 2

-- Display: Stream Id
nse_nsefo_mtbt_binary_v6_9.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
nse_nsefo_mtbt_binary_v6_9.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v6_9.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nse_nsefo_mtbt_binary_v6_9.timestamp = {}

-- Size: Timestamp
nse_nsefo_mtbt_binary_v6_9.timestamp.size = 8

-- Display: Timestamp
nse_nsefo_mtbt_binary_v6_9.timestamp.display = function(value)
  -- Parse Dos epoch nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber() + 315532800
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- a value os.date cannot represent is shown raw rather than aborting the dissection
  local ok, text = pcall(os.date, "%Y-%m-%d %H:%M:%S.", seconds)

  if not ok then
    return "Timestamp: "..tostring(value)
  end

  return "Timestamp: "..text..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nse_nsefo_mtbt_binary_v6_9.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = nse_nsefo_mtbt_binary_v6_9.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Token
nse_nsefo_mtbt_binary_v6_9.token = {}

-- Size: Token
nse_nsefo_mtbt_binary_v6_9.token.size = 4

-- Display: Token
nse_nsefo_mtbt_binary_v6_9.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsefo_mtbt_binary_v6_9.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.token.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v6_9.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.token, range, value, display)

  return offset + length, value
end

-- Trade Price
nse_nsefo_mtbt_binary_v6_9.trade_price = {}

-- Size: Trade Price
nse_nsefo_mtbt_binary_v6_9.trade_price.size = 4

-- Display: Trade Price
nse_nsefo_mtbt_binary_v6_9.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nse_nsefo_mtbt_binary_v6_9.trade_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price
nse_nsefo_mtbt_binary_v6_9.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nse_nsefo_mtbt_binary_v6_9.trade_price.translate(raw)
  local display = nse_nsefo_mtbt_binary_v6_9.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Quantity
nse_nsefo_mtbt_binary_v6_9.trade_quantity = {}

-- Size: Trade Quantity
nse_nsefo_mtbt_binary_v6_9.trade_quantity.size = 4

-- Display: Trade Quantity
nse_nsefo_mtbt_binary_v6_9.trade_quantity.display = function(value)
  return "Trade Quantity: "..value
end

-- Dissect: Trade Quantity
nse_nsefo_mtbt_binary_v6_9.trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_mtbt_binary_v6_9.trade_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nse_nsefo_mtbt_binary_v6_9.trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.trade_quantity, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseFo Mtbt Binary 6.9
-----------------------------------------------------------------------

-- Heartbeat Message
nse_nsefo_mtbt_binary_v6_9.heartbeat_message = {}

-- Size: Heartbeat Message
nse_nsefo_mtbt_binary_v6_9.heartbeat_message.size =
  nse_nsefo_mtbt_binary_v6_9.last_sequence_no.size

-- Display: Heartbeat Message
nse_nsefo_mtbt_binary_v6_9.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
nse_nsefo_mtbt_binary_v6_9.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Sequence No: UINT
  index, last_sequence_no = nse_nsefo_mtbt_binary_v6_9.last_sequence_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
nse_nsefo_mtbt_binary_v6_9.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.heartbeat_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v6_9.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v6_9.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v6_9.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
nse_nsefo_mtbt_binary_v6_9.trade_cancel_message = {}

-- Size: Trade Cancel Message
nse_nsefo_mtbt_binary_v6_9.trade_cancel_message.size =
  nse_nsefo_mtbt_binary_v6_9.timestamp.size + 
  nse_nsefo_mtbt_binary_v6_9.buy_order_id.size + 
  nse_nsefo_mtbt_binary_v6_9.sell_order_id.size + 
  nse_nsefo_mtbt_binary_v6_9.token.size + 
  nse_nsefo_mtbt_binary_v6_9.trade_price.size + 
  nse_nsefo_mtbt_binary_v6_9.trade_quantity.size

-- Display: Trade Cancel Message
nse_nsefo_mtbt_binary_v6_9.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
nse_nsefo_mtbt_binary_v6_9.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v6_9.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nsefo_mtbt_binary_v6_9.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nsefo_mtbt_binary_v6_9.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v6_9.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nsefo_mtbt_binary_v6_9.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: INT
  index, trade_quantity = nse_nsefo_mtbt_binary_v6_9.trade_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
nse_nsefo_mtbt_binary_v6_9.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.trade_cancel_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v6_9.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v6_9.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v6_9.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Trade Message
nse_nsefo_mtbt_binary_v6_9.spread_trade_message = {}

-- Size: Spread Trade Message
nse_nsefo_mtbt_binary_v6_9.spread_trade_message.size =
  nse_nsefo_mtbt_binary_v6_9.timestamp.size + 
  nse_nsefo_mtbt_binary_v6_9.buy_order_id.size + 
  nse_nsefo_mtbt_binary_v6_9.sell_order_id.size + 
  nse_nsefo_mtbt_binary_v6_9.token.size + 
  nse_nsefo_mtbt_binary_v6_9.trade_price.size + 
  nse_nsefo_mtbt_binary_v6_9.trade_quantity.size

-- Display: Spread Trade Message
nse_nsefo_mtbt_binary_v6_9.spread_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Trade Message
nse_nsefo_mtbt_binary_v6_9.spread_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v6_9.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nsefo_mtbt_binary_v6_9.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nsefo_mtbt_binary_v6_9.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v6_9.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nsefo_mtbt_binary_v6_9.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: INT
  index, trade_quantity = nse_nsefo_mtbt_binary_v6_9.trade_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Trade Message
nse_nsefo_mtbt_binary_v6_9.spread_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.spread_trade_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v6_9.spread_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v6_9.spread_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v6_9.spread_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Message
nse_nsefo_mtbt_binary_v6_9.spread_order_message = {}

-- Size: Spread Order Message
nse_nsefo_mtbt_binary_v6_9.spread_order_message.size =
  nse_nsefo_mtbt_binary_v6_9.timestamp.size + 
  nse_nsefo_mtbt_binary_v6_9.order_id.size + 
  nse_nsefo_mtbt_binary_v6_9.token.size + 
  nse_nsefo_mtbt_binary_v6_9.order_type.size + 
  nse_nsefo_mtbt_binary_v6_9.price.size + 
  nse_nsefo_mtbt_binary_v6_9.quantity.size

-- Display: Spread Order Message
nse_nsefo_mtbt_binary_v6_9.spread_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Message
nse_nsefo_mtbt_binary_v6_9.spread_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v6_9.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsefo_mtbt_binary_v6_9.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v6_9.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsefo_mtbt_binary_v6_9.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_mtbt_binary_v6_9.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsefo_mtbt_binary_v6_9.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Message
nse_nsefo_mtbt_binary_v6_9.spread_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.spread_order_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v6_9.spread_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v6_9.spread_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v6_9.spread_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nse_nsefo_mtbt_binary_v6_9.trade_message = {}

-- Size: Trade Message
nse_nsefo_mtbt_binary_v6_9.trade_message.size =
  nse_nsefo_mtbt_binary_v6_9.timestamp.size + 
  nse_nsefo_mtbt_binary_v6_9.buy_order_id.size + 
  nse_nsefo_mtbt_binary_v6_9.sell_order_id.size + 
  nse_nsefo_mtbt_binary_v6_9.token.size + 
  nse_nsefo_mtbt_binary_v6_9.trade_price.size + 
  nse_nsefo_mtbt_binary_v6_9.trade_quantity.size

-- Display: Trade Message
nse_nsefo_mtbt_binary_v6_9.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nse_nsefo_mtbt_binary_v6_9.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v6_9.timestamp.dissect(buffer, index, packet, parent)

  -- Buy Order Id: DOUBLE
  index, buy_order_id = nse_nsefo_mtbt_binary_v6_9.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: DOUBLE
  index, sell_order_id = nse_nsefo_mtbt_binary_v6_9.sell_order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v6_9.token.dissect(buffer, index, packet, parent)

  -- Trade Price: INT
  index, trade_price = nse_nsefo_mtbt_binary_v6_9.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Quantity: INT
  index, trade_quantity = nse_nsefo_mtbt_binary_v6_9.trade_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nse_nsefo_mtbt_binary_v6_9.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.trade_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v6_9.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v6_9.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v6_9.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Message
nse_nsefo_mtbt_binary_v6_9.order_message = {}

-- Size: Order Message
nse_nsefo_mtbt_binary_v6_9.order_message.size =
  nse_nsefo_mtbt_binary_v6_9.timestamp.size + 
  nse_nsefo_mtbt_binary_v6_9.order_id.size + 
  nse_nsefo_mtbt_binary_v6_9.token.size + 
  nse_nsefo_mtbt_binary_v6_9.order_type.size + 
  nse_nsefo_mtbt_binary_v6_9.price.size + 
  nse_nsefo_mtbt_binary_v6_9.quantity.size

-- Display: Order Message
nse_nsefo_mtbt_binary_v6_9.order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Message
nse_nsefo_mtbt_binary_v6_9.order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: LONG
  index, timestamp = nse_nsefo_mtbt_binary_v6_9.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: DOUBLE
  index, order_id = nse_nsefo_mtbt_binary_v6_9.order_id.dissect(buffer, index, packet, parent)

  -- Token: INT
  index, token = nse_nsefo_mtbt_binary_v6_9.token.dissect(buffer, index, packet, parent)

  -- Order Type: CHAR
  index, order_type = nse_nsefo_mtbt_binary_v6_9.order_type.dissect(buffer, index, packet, parent)

  -- Price: INT
  index, price = nse_nsefo_mtbt_binary_v6_9.price.dissect(buffer, index, packet, parent)

  -- Quantity: INT
  index, quantity = nse_nsefo_mtbt_binary_v6_9.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Message
nse_nsefo_mtbt_binary_v6_9.order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.order_message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v6_9.order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v6_9.order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v6_9.order_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nse_nsefo_mtbt_binary_v6_9.payload = {}

-- Dissect: Payload
nse_nsefo_mtbt_binary_v6_9.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Order Message
  if message_type == "N" then
    return nse_nsefo_mtbt_binary_v6_9.order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Message
  if message_type == "M" then
    return nse_nsefo_mtbt_binary_v6_9.order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Message
  if message_type == "X" then
    return nse_nsefo_mtbt_binary_v6_9.order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "T" then
    return nse_nsefo_mtbt_binary_v6_9.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Message
  if message_type == "G" then
    return nse_nsefo_mtbt_binary_v6_9.spread_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Message
  if message_type == "H" then
    return nse_nsefo_mtbt_binary_v6_9.spread_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Message
  if message_type == "J" then
    return nse_nsefo_mtbt_binary_v6_9.spread_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Trade Message
  if message_type == "K" then
    return nse_nsefo_mtbt_binary_v6_9.spread_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "C" then
    return nse_nsefo_mtbt_binary_v6_9.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == "Z" then
    return nse_nsefo_mtbt_binary_v6_9.heartbeat_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nse_nsefo_mtbt_binary_v6_9.message = {}

-- Size: Message
nse_nsefo_mtbt_binary_v6_9.message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Message
nse_nsefo_mtbt_binary_v6_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nsefo_mtbt_binary_v6_9.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: Char
  index, message_type = nse_nsefo_mtbt_binary_v6_9.message_type.dissect(buffer, index, packet, parent)

  -- Dependency for Payload
  local end_of_payload = buffer:len()

  -- Payload: Runtime Type with 6 branches
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Payload: Runtime Type with 6 branches
    index = nse_nsefo_mtbt_binary_v6_9.payload.dissect(buffer, index, packet, parent, message_type)
  end

  return index
end

-- Dissect: Message
nse_nsefo_mtbt_binary_v6_9.message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.message, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v6_9.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v6_9.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v6_9.message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Header
nse_nsefo_mtbt_binary_v6_9.stream_header = {}

-- Size: Stream Header
nse_nsefo_mtbt_binary_v6_9.stream_header.size =
  nse_nsefo_mtbt_binary_v6_9.message_length.size + 
  nse_nsefo_mtbt_binary_v6_9.stream_id.size + 
  nse_nsefo_mtbt_binary_v6_9.sequence_number.size

-- Display: Stream Header
nse_nsefo_mtbt_binary_v6_9.stream_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Header
nse_nsefo_mtbt_binary_v6_9.stream_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Short
  index, message_length = nse_nsefo_mtbt_binary_v6_9.message_length.dissect(buffer, index, packet, parent)

  -- Stream Id: Short
  index, stream_id = nse_nsefo_mtbt_binary_v6_9.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: Uint
  index, sequence_number = nse_nsefo_mtbt_binary_v6_9.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Header
nse_nsefo_mtbt_binary_v6_9.stream_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_mtbt_binary_v6_9.fields.stream_header, buffer(offset, 0))
    local index = nse_nsefo_mtbt_binary_v6_9.stream_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_mtbt_binary_v6_9.stream_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_mtbt_binary_v6_9.stream_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nsefo_mtbt_binary_v6_9.packet = {}

-- Verify required size of Udp packet
nse_nsefo_mtbt_binary_v6_9.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsefo_mtbt_binary_v6_9.stream_header.size + nse_nsefo_mtbt_binary_v6_9.message.size
end

-- Dissect Packet
nse_nsefo_mtbt_binary_v6_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Stream Header: Struct of 3 fields
  index, stream_header = nse_nsefo_mtbt_binary_v6_9.stream_header.dissect(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  index, message = nse_nsefo_mtbt_binary_v6_9.message.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nsefo_mtbt_binary_v6_9.init()
end

-- Dissector for Nse NseFo Mtbt Binary 6.9
function omi_nse_nsefo_mtbt_binary_v6_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nse_nsefo_mtbt_binary_v6_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsefo_mtbt_binary_v6_9, buffer(), omi_nse_nsefo_mtbt_binary_v6_9.description, "("..buffer:len().." Bytes)")
  return nse_nsefo_mtbt_binary_v6_9.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseFo Mtbt Binary 6.9 (Udp)
local function omi_nse_nsefo_mtbt_binary_v6_9_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsefo_mtbt_binary_v6_9.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsefo_mtbt_binary_v6_9
  omi_nse_nsefo_mtbt_binary_v6_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseFo Mtbt Binary 6.9
omi_nse_nsefo_mtbt_binary_v6_9:register_heuristic("udp", omi_nse_nsefo_mtbt_binary_v6_9_udp_heuristic)

-- Register Nse NseFo Mtbt Binary 6.9 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nse_nsefo_mtbt_binary_v6_9)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 6.9
--   Date: Wednesday, April 1, 2026
--   Specification: MTBT_FO_NNF_PROTOCOL_6_9_20260717161139.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
