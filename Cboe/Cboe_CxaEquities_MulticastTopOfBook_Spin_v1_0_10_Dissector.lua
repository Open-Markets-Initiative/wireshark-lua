-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CxaEquities MulticastTopOfBook Spin 1.0.10 Protocol
local omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10 = Proto("Omi.Cboe.CxaEquities.MulticastTopOfBook.Spin.v1.0.10", "Cboe CxaEquities MulticastTopOfBook Spin 1.0.10")

-- Protocol table
local cboe_cxaequities_multicasttopofbook_spin_v1_0_10 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CxaEquities MulticastTopOfBook Spin 1.0.10 Fields
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.ask_price = ProtoField.new("Ask Price", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.askprice", ftypes.DOUBLE)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.ask_quantity = ProtoField.new("Ask Quantity", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.askquantity", ftypes.UINT32)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.bid_price = ProtoField.new("Bid Price", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.bidprice", ftypes.DOUBLE)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.bid_quantity = ProtoField.new("Bid Quantity", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.bidquantity", ftypes.UINT32)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.count = ProtoField.new("Count", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.count", ftypes.UINT8)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.filler = ProtoField.new("Filler", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.filler", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.length = ProtoField.new("Length", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.length", ftypes.UINT16)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.loginresponsestatus", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.market_id_code = ProtoField.new("Market Id Code", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.marketidcode", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message = ProtoField.new("Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.message", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message_header = ProtoField.new("Message Header", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.messageheader", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message_length = ProtoField.new("Message Length", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.messagelength", ftypes.UINT8)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message_type = ProtoField.new("Message Type", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.messagetype", ftypes.UINT8)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.order_count = ProtoField.new("Order Count", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.ordercount", ftypes.UINT32)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.packet = ProtoField.new("Packet", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.packet", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.packet_header = ProtoField.new("Packet Header", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.packetheader", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.password = ProtoField.new("Password", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.password", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.price = ProtoField.new("Price", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.price", ftypes.DOUBLE)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.quantity = ProtoField.new("Quantity", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.quantity", ftypes.UINT32)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.reserved1", ftypes.UINT8)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.sequence = ProtoField.new("Sequence", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.sequence", ftypes.UINT32)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.sessionsubid", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.side = ProtoField.new("Side", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.side", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.spinresponsestatus", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.symbol = ProtoField.new("Symbol", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.symbol", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.timestamp = ProtoField.new("Timestamp", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.timestamp", ftypes.UINT64)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.trading_status = ProtoField.new("Trading Status", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.tradingstatus", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.unit = ProtoField.new("Unit", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.unit", ftypes.UINT8)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.username = ProtoField.new("Username", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.username", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.value = ProtoField.new("Value", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.value", ftypes.DOUBLE)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.value_category = ProtoField.new("Value Category", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.valuecategory", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.value_timestamp = ProtoField.new("Value Timestamp", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.valuetimestamp", ftypes.UINT64)

-- Cboe CxaEquities Spin MulticastTopOfBook 1.0.10 Application Messages
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.calculated_value_message = ProtoField.new("Calculated Value Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.calculatedvaluemessage", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.login_message = ProtoField.new("Login Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.loginmessage", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.loginresponsemessage", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.singlesideupdatemessage", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.spinfinishedmessage", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.spinimageavailablemessage", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.spinrequestmessage", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.spinresponsemessage", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.tradingstatusmessage", ftypes.STRING)
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.two_side_update_message = ProtoField.new("Two Side Update Message", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.twosideupdatemessage", ftypes.STRING)

-- Cboe CxaEquities MulticastTopOfBook Spin 1.0.10 generated fields
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message_index = ProtoField.new("Message Index", "cboe.cxaequities.multicasttopofbook.spin.v1.0.10.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CxaEquities MulticastTopOfBook Spin 1.0.10 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe CxaEquities MulticastTopOfBook Spin 1.0.10 Show Options
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_application_messages then
    show.application_messages = omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_message then
    show.message = omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_message
  end
  if show.message_header ~= omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_message_header then
    show.message_header = omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_packet then
    show.packet = omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_packet_header then
    show.packet_header = omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_message_index then
    show.message_index = omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.prefs.show_message_index
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
-- Cboe CxaEquities MulticastTopOfBook Spin 1.0.10 Fields
-----------------------------------------------------------------------

-- Ask Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price = {}

-- Size: Ask Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price.size = 8

-- Display: Ask Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Ask Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price.translate(raw)
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_quantity = {}

-- Size: Ask Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_quantity.size = 4

-- Display: Ask Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_quantity.display = function(value)
  return "Ask Quantity: "..value
end

-- Dissect: Ask Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.ask_quantity, range, value, display)

  return offset + length, value
end

-- Bid Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price = {}

-- Size: Bid Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price.size = 8

-- Display: Bid Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Bid Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price.translate(raw)
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_quantity = {}

-- Size: Bid Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_quantity.size = 4

-- Display: Bid Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_quantity.display = function(value)
  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Count
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.count = {}

-- Size: Count
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.count.size = 1

-- Display: Count
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.count, range, value, display)

  return offset + length, value
end

-- Filler
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.filler = {}

-- Size: Filler
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.filler.size = 2

-- Display: Filler
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.filler, range, value, display)

  return offset + length, value
end

-- Length
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.length = {}

-- Size: Length
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.length.size = 2

-- Display: Length
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_status = {}

-- Size: Login Response Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_status.size = 1

-- Display: Login Response Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorised Invalid Username Password (N)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Market Id Code
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.market_id_code = {}

-- Size: Market Id Code
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.market_id_code.size = 4

-- Display: Market Id Code
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.market_id_code.display = function(value)
  if value == "XASX" then
    return "Market Id Code: Australian Stock Market (XASX)"
  end
  if value == "CXAW" then
    return "Market Id Code: Cxa Warrants (CXAW)"
  end
  if value == "CXAE" then
    return "Market Id Code: Cxa Etf (CXAE)"
  end
  if value == "CXAQ" then
    return "Market Id Code: Cxa Qmf (CXAQ)"
  end
  if value == "CXAL" then
    return "Market Id Code: Cxa Listed (CXAL)"
  end

  return "Market Id Code: Unknown("..value..")"
end

-- Dissect: Market Id Code
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.market_id_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.market_id_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.market_id_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.market_id_code, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_length = {}

-- Size: Message Length
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_length.size = 1

-- Display: Message Length
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_type = {}

-- Size: Message Type
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_type.size = 1

-- Display: Message Type
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Message (0x01)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x80 then
    return "Message Type: Spin Image Available Message (0x80)"
  end
  if value == 0x81 then
    return "Message Type: Spin Request Message (0x81)"
  end
  if value == 0x82 then
    return "Message Type: Spin Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Spin Finished Message (0x83)"
  end
  if value == 0x3B then
    return "Message Type: Trading Status Message (0x3B)"
  end
  if value == 0xE4 then
    return "Message Type: Single Side Update Message (0xE4)"
  end
  if value == 0xE5 then
    return "Message Type: Two Side Update Message (0xE5)"
  end
  if value == 0xE3 then
    return "Message Type: Calculated Value Message (0xE3)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.order_count = {}

-- Size: Order Count
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.order_count.size = 4

-- Display: Order Count
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.order_count, range, value, display)

  return offset + length, value
end

-- Password
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.password = {}

-- Size: Password
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.password.size = 10

-- Display: Password
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.password, range, value, display)

  return offset + length, value
end

-- Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price = {}

-- Size: Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price.size = 8

-- Display: Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Price
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price.translate(raw)
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.quantity = {}

-- Size: Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.quantity.size = 4

-- Display: Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1 = {}

-- Size: Reserved 1
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.size = 1

-- Display: Reserved 1
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence = {}

-- Size: Sequence
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.size = 4

-- Display: Sequence
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.session_sub_id = {}

-- Size: Session Sub Id
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.side = {}

-- Size: Side
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.side.size = 1

-- Display: Side
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.side.display = function(value)
  if value == "B" then
    return "Side: Bid Side (B)"
  end
  if value == "S" then
    return "Side: Ask Side (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.side, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_status = {}

-- Size: Spin Response Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_status.display = function(value)
  if value == "A" then
    return "Spin Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Spin Response Status: Out Of Range Sequence Requested Is Greater Than Sequence Available By The Next Spin (O)"
  end
  if value == "S" then
    return "Spin Response Status: Spin Already In Progress Only One Spin Can Be Running At A Time (S)"
  end

  return "Spin Response Status: Unknown("..value..")"
end

-- Dissect: Spin Response Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol = {}

-- Size: Symbol
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.size = 6

-- Display: Symbol
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp = {}

-- Size: Timestamp
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.size = 8

-- Display: Timestamp
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status = {}

-- Size: Trading Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status.size = 1

-- Display: Trading Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status.display = function(value)
  if value == "C" then
    return "Trading Status: Closed (C)"
  end
  if value == "A" then
    return "Trading Status: Premarket (A)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end
  if value == "M" then
    return "Trading Status: Moc Trading (M)"
  end
  if value == "P" then
    return "Trading Status: Postmarket (P)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "S" then
    return "Trading Status: Trading Suspended (S)"
  end
  if value == "O" then
    return "Trading Status: Pre Open (O)"
  end
  if value == "E" then
    return "Trading Status: Pre Close (E)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.unit = {}

-- Size: Unit
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.unit.size = 1

-- Display: Unit
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.username = {}

-- Size: Username
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.username.size = 4

-- Display: Username
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.username, range, value, display)

  return offset + length, value
end

-- Value
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value = {}

-- Size: Value
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value.size = 8

-- Display: Value
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value.display = function(value)
  return "Value: "..value
end

-- Translate: Value
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Value
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value.translate(raw)
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.value, range, value, display)

  return offset + length, value
end

-- Value Category
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_category = {}

-- Size: Value Category
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_category.size = 1

-- Display: Value Category
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_category.display = function(value)
  if value == "1" then
    return "Value Category: Closing Price (1)"
  end
  if value == "2" then
    return "Value Category: I Nav Values Etf (2)"
  end
  if value == "3" then
    return "Value Category: Index Values (3)"
  end
  if value == "4" then
    return "Value Category: Eod Nav From Issuer (4)"
  end

  return "Value Category: Unknown("..value..")"
end

-- Dissect: Value Category
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.value_category, range, value, display)

  return offset + length, value
end

-- Value Timestamp
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_timestamp = {}

-- Size: Value Timestamp
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_timestamp.size = 8

-- Display: Value Timestamp
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_timestamp.display = function(value)
  return "Value Timestamp: "..value
end

-- Dissect: Value Timestamp
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.value_timestamp, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CxaEquities MulticastTopOfBook Spin 1.0.10
-----------------------------------------------------------------------

-- Calculated Value Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.calculated_value_message = {}

-- Size: Calculated Value Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.calculated_value_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_category.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_timestamp.size

-- Display: Calculated Value Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.calculated_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Calculated Value Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.calculated_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Value Category: Alphanumeric
  index, value_category = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_category.dissect(buffer, index, packet, parent)

  -- Value: Binary Price
  index, value = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value.dissect(buffer, index, packet, parent)

  -- Value Timestamp: Binary UTC Timestamp
  index, value_timestamp = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.value_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Calculated Value Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.calculated_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.calculated_value_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.calculated_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.calculated_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.calculated_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Two Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.two_side_update_message = {}

-- Size: Two Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.two_side_update_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_quantity.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_quantity.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.size

-- Display: Two Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.two_side_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.two_side_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary Price
  index, bid_price = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Quantity: Binary
  index, bid_quantity = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.bid_quantity.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary Price
  index, ask_price = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Quantity: Binary
  index, ask_quantity = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.ask_quantity.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.two_side_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.two_side_update_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.two_side_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.two_side_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.two_side_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.single_side_update_message = {}

-- Size: Single Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.single_side_update_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.side.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.quantity.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.size

-- Display: Single Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.single_side_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.single_side_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.side.dissect(buffer, index, packet, parent)

  -- Price: Binary Price
  index, price = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.quantity.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.single_side_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.single_side_update_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.single_side_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.single_side_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.single_side_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status_message = {}

-- Size: Trading Status Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.market_id_code.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.size

-- Display: Trading Status Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary UTC Timestamp
  index, timestamp = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status.dissect(buffer, index, packet, parent)

  -- Market Id Code: Alphanumeric
  index, market_id_code = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.market_id_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_finished_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.size

-- Display: Spin Finished Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_message = {}

-- Size: Spin Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.order_count.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_status.size

-- Display: Spin Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_request_message = {}

-- Size: Spin Request Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_request_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.size

-- Display: Spin Request Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_image_available_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.size

-- Display: Spin Image Available Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_message = {}

-- Size: Login Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_status.size

-- Display: Login Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.login_response_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_message = {}

-- Size: Login Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_message.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.session_sub_id.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.username.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.filler.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.password.size

-- Display: Login Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.login_message, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.payload = {}

-- Dissect: Payload
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x3B then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if message_type == 0xE4 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.single_side_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Message
  if message_type == 0xE5 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.two_side_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Calculated Value Message
  if message_type == 0xE3 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.calculated_value_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_header = {}

-- Size: Message Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_header.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_length.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_type.size

-- Display: Message Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, message_type = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message_header, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message = {}

-- Read runtime size of: Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 10 branches
  index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.message, buffer(offset, 0))
    local current = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.heartbeat = {}

-- Display: Heartbeat
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.messages = {}

-- Dissect: Messages
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header = {}

-- Size: Packet Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header.size =
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.length.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.count.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.unit.size + 
  cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.size

-- Display: Packet Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.fields.packet_header, buffer(offset, 0))
    local index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet = {}

-- Verify required size of Tcp packet
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header.size
end

-- Dissect Packet
cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_cxaequities_multicasttopofbook_spin_v1_0_10.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.init()
end

-- Dissector for Cboe CxaEquities MulticastTopOfBook Spin 1.0.10
function omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10, buffer(), omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.description, "("..buffer:len().." Bytes)")
  return cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CxaEquities MulticastTopOfBook Spin 1.0.10 (Tcp)
local function omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxaequities_multicasttopofbook_spin_v1_0_10.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10
  omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CxaEquities MulticastTopOfBook Spin 1.0.10
omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10:register_heuristic("tcp", omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10_tcp_heuristic)

-- Register Cboe CxaEquities MulticastTopOfBook Spin 1.0.10 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_cxaequities_multicasttopofbook_spin_v1_0_10)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.10
--   Date: Friday, March 21, 2025
--   Specification: CXA_Multicast_TOP_Specification.pdf
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
