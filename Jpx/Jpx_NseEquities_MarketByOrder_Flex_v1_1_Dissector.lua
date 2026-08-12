-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jpx NseEquities MarketByOrder Flex 1.1 Protocol
local omi_jpx_nseequities_marketbyorder_flex_v1_1 = Proto("Omi.Jpx.NseEquities.MarketByOrder.Flex.v1.1", "Jpx NseEquities MarketByOrder Flex 1.1")

-- Protocol table
local jpx_nseequities_marketbyorder_flex_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jpx NseEquities MarketByOrder Flex 1.1 Fields
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.adopted_pricing_method = ProtoField.new("Adopted Pricing Method", "jpx.nseequities.marketbyorder.flex.v1.1.adoptedpricingmethod", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.best_bid = ProtoField.new("Best Bid", "jpx.nseequities.marketbyorder.flex.v1.1.bestbid", ftypes.DOUBLE)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.best_offer = ProtoField.new("Best Offer", "jpx.nseequities.marketbyorder.flex.v1.1.bestoffer", ftypes.DOUBLE)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.book_center_price = ProtoField.new("Book Center Price", "jpx.nseequities.marketbyorder.flex.v1.1.bookcenterprice", ftypes.DOUBLE)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.communication_start_end_flag = ProtoField.new("Communication Start End Flag", "jpx.nseequities.marketbyorder.flex.v1.1.communicationstartendflag", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.data = ProtoField.new("Data", "jpx.nseequities.marketbyorder.flex.v1.1.data", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.execution_price = ProtoField.new("Execution Price", "jpx.nseequities.marketbyorder.flex.v1.1.executionprice", ftypes.DOUBLE)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.issue_code = ProtoField.new("Issue Code", "jpx.nseequities.marketbyorder.flex.v1.1.issuecode", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.last_price = ProtoField.new("Last Price", "jpx.nseequities.marketbyorder.flex.v1.1.lastprice", ftypes.DOUBLE)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.market_status = ProtoField.new("Market Status", "jpx.nseequities.marketbyorder.flex.v1.1.marketstatus", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.match_id = ProtoField.new("Match Id", "jpx.nseequities.marketbyorder.flex.v1.1.matchid", ftypes.UINT32)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message = ProtoField.new("Message", "jpx.nseequities.marketbyorder.flex.v1.1.message", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_count = ProtoField.new("Message Count", "jpx.nseequities.marketbyorder.flex.v1.1.messagecount", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_header = ProtoField.new("Message Header", "jpx.nseequities.marketbyorder.flex.v1.1.messageheader", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_type = ProtoField.new("Message Type", "jpx.nseequities.marketbyorder.flex.v1.1.messagetype", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.modification_flag = ProtoField.new("Modification Flag", "jpx.nseequities.marketbyorder.flex.v1.1.modificationflag", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.multicast_group_number = ProtoField.new("Multicast Group Number", "jpx.nseequities.marketbyorder.flex.v1.1.multicastgroupnumber", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "jpx.nseequities.marketbyorder.flex.v1.1.nextsequencenumber", ftypes.UINT32)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.number_of_system_reboots = ProtoField.new("Number Of System Reboots", "jpx.nseequities.marketbyorder.flex.v1.1.numberofsystemreboots", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_condition = ProtoField.new("Order Condition", "jpx.nseequities.marketbyorder.flex.v1.1.ordercondition", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_id = ProtoField.new("Order Id", "jpx.nseequities.marketbyorder.flex.v1.1.orderid", ftypes.UINT32)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.packet_header = ProtoField.new("Packet Header", "jpx.nseequities.marketbyorder.flex.v1.1.packetheader", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.packet_length = ProtoField.new("Packet Length", "jpx.nseequities.marketbyorder.flex.v1.1.packetlength", ftypes.UINT16)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.packet_number = ProtoField.new("Packet Number", "jpx.nseequities.marketbyorder.flex.v1.1.packetnumber", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.packet_type = ProtoField.new("Packet Type", "jpx.nseequities.marketbyorder.flex.v1.1.packettype", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.price = ProtoField.new("Price", "jpx.nseequities.marketbyorder.flex.v1.1.price", ftypes.DOUBLE)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.pricing_method = ProtoField.new("Pricing Method", "jpx.nseequities.marketbyorder.flex.v1.1.pricingmethod", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.quantity = ProtoField.new("Quantity", "jpx.nseequities.marketbyorder.flex.v1.1.quantity", ftypes.UINT64)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.requested_message_count = ProtoField.new("Requested Message Count", "jpx.nseequities.marketbyorder.flex.v1.1.requestedmessagecount", ftypes.BYTES)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.reset_start_end_flag = ProtoField.new("Reset Start End Flag", "jpx.nseequities.marketbyorder.flex.v1.1.resetstartendflag", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.result_code = ProtoField.new("Result Code", "jpx.nseequities.marketbyorder.flex.v1.1.resultcode", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "jpx.nseequities.marketbyorder.flex.v1.1.sequencenumber", ftypes.UINT32)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.short_selling_status = ProtoField.new("Short Selling Status", "jpx.nseequities.marketbyorder.flex.v1.1.shortsellingstatus", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.side = ProtoField.new("Side", "jpx.nseequities.marketbyorder.flex.v1.1.side", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.status_flag = ProtoField.new("Status Flag", "jpx.nseequities.marketbyorder.flex.v1.1.statusflag", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.tag_length = ProtoField.new("Tag Length", "jpx.nseequities.marketbyorder.flex.v1.1.taglength", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.tcp_packet = ProtoField.new("Tcp Packet", "jpx.nseequities.marketbyorder.flex.v1.1.tcppacket", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.test_mode_flag = ProtoField.new("Test Mode Flag", "jpx.nseequities.marketbyorder.flex.v1.1.testmodeflag", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.time_microseconds = ProtoField.new("Time Microseconds", "jpx.nseequities.marketbyorder.flex.v1.1.timemicroseconds", ftypes.UINT32)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.time_seconds = ProtoField.new("Time Seconds", "jpx.nseequities.marketbyorder.flex.v1.1.timeseconds", ftypes.UINT32)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.total_invalidation = ProtoField.new("Total Invalidation", "jpx.nseequities.marketbyorder.flex.v1.1.totalinvalidation", ftypes.UINT64)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.total_number_of_packets = ProtoField.new("Total Number Of Packets", "jpx.nseequities.marketbyorder.flex.v1.1.totalnumberofpackets", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.total_volume = ProtoField.new("Total Volume", "jpx.nseequities.marketbyorder.flex.v1.1.totalvolume", ftypes.UINT64)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.triggered_side = ProtoField.new("Triggered Side", "jpx.nseequities.marketbyorder.flex.v1.1.triggeredside", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.udp_packet = ProtoField.new("Udp Packet", "jpx.nseequities.marketbyorder.flex.v1.1.udppacket", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.update_number = ProtoField.new("Update Number", "jpx.nseequities.marketbyorder.flex.v1.1.updatenumber", ftypes.UINT32)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.user_id = ProtoField.new("User Id", "jpx.nseequities.marketbyorder.flex.v1.1.userid", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.utility_flag = ProtoField.new("Utility Flag", "jpx.nseequities.marketbyorder.flex.v1.1.utilityflag", ftypes.UINT8)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.volume = ProtoField.new("Volume", "jpx.nseequities.marketbyorder.flex.v1.1.volume", ftypes.UINT64)

-- Jpx NseEquities Flex MarketByOrder 1.1 Application Messages
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.add_order_message = ProtoField.new("Add Order Message", "jpx.nseequities.marketbyorder.flex.v1.1.addordermessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.communication_control_message = ProtoField.new("Communication Control Message", "jpx.nseequities.marketbyorder.flex.v1.1.communicationcontrolmessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.end_of_message_message = ProtoField.new("End Of Message Message", "jpx.nseequities.marketbyorder.flex.v1.1.endofmessagemessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.execution_summary_message = ProtoField.new("Execution Summary Message", "jpx.nseequities.marketbyorder.flex.v1.1.executionsummarymessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.login_request_message = ProtoField.new("Login Request Message", "jpx.nseequities.marketbyorder.flex.v1.1.loginrequestmessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.login_result_message = ProtoField.new("Login Result Message", "jpx.nseequities.marketbyorder.flex.v1.1.loginresultmessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_response_message = ProtoField.new("Message Response Message", "jpx.nseequities.marketbyorder.flex.v1.1.messageresponsemessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_delete_message = ProtoField.new("Order Delete Message", "jpx.nseequities.marketbyorder.flex.v1.1.orderdeletemessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_executed_message = ProtoField.new("Order Executed Message", "jpx.nseequities.marketbyorder.flex.v1.1.orderexecutedmessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "jpx.nseequities.marketbyorder.flex.v1.1.orderexecutedwithpricemessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.reset_message = ProtoField.new("Reset Message", "jpx.nseequities.marketbyorder.flex.v1.1.resetmessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.seconds_timestamp_message = ProtoField.new("Seconds Timestamp Message", "jpx.nseequities.marketbyorder.flex.v1.1.secondstimestampmessage", ftypes.STRING)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.trading_status_message = ProtoField.new("Trading Status Message", "jpx.nseequities.marketbyorder.flex.v1.1.tradingstatusmessage", ftypes.STRING)

-- Jpx NseEquities MarketByOrder Flex 1.1 generated fields
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_index = ProtoField.new("Message Index", "jpx.nseequities.marketbyorder.flex.v1.1.messageindex", ftypes.UINT16)
omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.timestamp = ProtoField.new("Timestamp", "jpx.nseequities.marketbyorder.flex.v1.1.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jpx NseEquities MarketByOrder Flex 1.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Jpx NseEquities MarketByOrder Flex 1.1 Show Options
omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_application_messages then
    show.application_messages = omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_headers then
    show.headers = omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_headers
  end
  if show.structs ~= omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_structs then
    show.structs = omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_indexes then
    show.indexes = omi_jpx_nseequities_marketbyorder_flex_v1_1.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
jpx_nseequities_marketbyorder_flex_v1_1.conversation = {}
jpx_nseequities_marketbyorder_flex_v1_1.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
jpx_nseequities_marketbyorder_flex_v1_1.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
jpx_nseequities_marketbyorder_flex_v1_1.conversation.data = function(packet)
  local key = jpx_nseequities_marketbyorder_flex_v1_1.conversation.key(packet)
  local data = jpx_nseequities_marketbyorder_flex_v1_1.conversation.flows[key]
  if data == nil then
    data = { time_seconds = { last = nil, frames = {} } }
    jpx_nseequities_marketbyorder_flex_v1_1.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
jpx_nseequities_marketbyorder_flex_v1_1.conversation.current = nil


-----------------------------------------------------------------------
-- Jpx NseEquities MarketByOrder Flex 1.1 Fields
-----------------------------------------------------------------------

-- Adopted Pricing Method
jpx_nseequities_marketbyorder_flex_v1_1.adopted_pricing_method = {}

-- Size: Adopted Pricing Method
jpx_nseequities_marketbyorder_flex_v1_1.adopted_pricing_method.size = 1

-- Display: Adopted Pricing Method
jpx_nseequities_marketbyorder_flex_v1_1.adopted_pricing_method.display = function(value)
  if value == 1 then
    return "Adopted Pricing Method: Itayose Method (1)"
  end
  if value == 2 then
    return "Adopted Pricing Method: Quote Displayed (2)"
  end

  return "Adopted Pricing Method: Unknown("..value..")"
end

-- Dissect: Adopted Pricing Method
jpx_nseequities_marketbyorder_flex_v1_1.adopted_pricing_method.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.adopted_pricing_method.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.adopted_pricing_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.adopted_pricing_method, range, value, display)

  return offset + length, value
end

-- Best Bid
jpx_nseequities_marketbyorder_flex_v1_1.best_bid = {}

-- Size: Best Bid
jpx_nseequities_marketbyorder_flex_v1_1.best_bid.size = 8

-- Display: Best Bid
jpx_nseequities_marketbyorder_flex_v1_1.best_bid.display = function(value)
  return "Best Bid: "..value
end

-- Translate: Best Bid
jpx_nseequities_marketbyorder_flex_v1_1.best_bid.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Best Bid
jpx_nseequities_marketbyorder_flex_v1_1.best_bid.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.best_bid.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = jpx_nseequities_marketbyorder_flex_v1_1.best_bid.translate(raw)
  local display = jpx_nseequities_marketbyorder_flex_v1_1.best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.best_bid, range, value, display)

  return offset + length, value
end

-- Best Offer
jpx_nseequities_marketbyorder_flex_v1_1.best_offer = {}

-- Size: Best Offer
jpx_nseequities_marketbyorder_flex_v1_1.best_offer.size = 8

-- Display: Best Offer
jpx_nseequities_marketbyorder_flex_v1_1.best_offer.display = function(value)
  return "Best Offer: "..value
end

-- Translate: Best Offer
jpx_nseequities_marketbyorder_flex_v1_1.best_offer.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Best Offer
jpx_nseequities_marketbyorder_flex_v1_1.best_offer.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.best_offer.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = jpx_nseequities_marketbyorder_flex_v1_1.best_offer.translate(raw)
  local display = jpx_nseequities_marketbyorder_flex_v1_1.best_offer.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.best_offer, range, value, display)

  return offset + length, value
end

-- Book Center Price
jpx_nseequities_marketbyorder_flex_v1_1.book_center_price = {}

-- Size: Book Center Price
jpx_nseequities_marketbyorder_flex_v1_1.book_center_price.size = 8

-- Display: Book Center Price
jpx_nseequities_marketbyorder_flex_v1_1.book_center_price.display = function(value)
  return "Book Center Price: "..value
end

-- Translate: Book Center Price
jpx_nseequities_marketbyorder_flex_v1_1.book_center_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Book Center Price
jpx_nseequities_marketbyorder_flex_v1_1.book_center_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.book_center_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = jpx_nseequities_marketbyorder_flex_v1_1.book_center_price.translate(raw)
  local display = jpx_nseequities_marketbyorder_flex_v1_1.book_center_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.book_center_price, range, value, display)

  return offset + length, value
end

-- Communication Start End Flag
jpx_nseequities_marketbyorder_flex_v1_1.communication_start_end_flag = {}

-- Size: Communication Start End Flag
jpx_nseequities_marketbyorder_flex_v1_1.communication_start_end_flag.size = 1

-- Display: Communication Start End Flag
jpx_nseequities_marketbyorder_flex_v1_1.communication_start_end_flag.display = function(value)
  if value == 0 then
    return "Communication Start End Flag: Health Check Control (0)"
  end
  if value == 1 then
    return "Communication Start End Flag: Communication Start (1)"
  end
  if value == 2 then
    return "Communication Start End Flag: Communication End (2)"
  end

  return "Communication Start End Flag: Unknown("..value..")"
end

-- Dissect: Communication Start End Flag
jpx_nseequities_marketbyorder_flex_v1_1.communication_start_end_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.communication_start_end_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.communication_start_end_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.communication_start_end_flag, range, value, display)

  return offset + length, value
end

-- Data
jpx_nseequities_marketbyorder_flex_v1_1.data = {}

-- Size: Data
jpx_nseequities_marketbyorder_flex_v1_1.data.size = 1

-- Display: Data
jpx_nseequities_marketbyorder_flex_v1_1.data.display = function(value)
  return "Data: "..value
end

-- Dissect: Data
jpx_nseequities_marketbyorder_flex_v1_1.data.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.data.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.data.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.data, range, value, display)

  return offset + length, value
end

-- Execution Price
jpx_nseequities_marketbyorder_flex_v1_1.execution_price = {}

-- Size: Execution Price
jpx_nseequities_marketbyorder_flex_v1_1.execution_price.size = 8

-- Display: Execution Price
jpx_nseequities_marketbyorder_flex_v1_1.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
jpx_nseequities_marketbyorder_flex_v1_1.execution_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Execution Price
jpx_nseequities_marketbyorder_flex_v1_1.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = jpx_nseequities_marketbyorder_flex_v1_1.execution_price.translate(raw)
  local display = jpx_nseequities_marketbyorder_flex_v1_1.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Issue Code
jpx_nseequities_marketbyorder_flex_v1_1.issue_code = {}

-- Size: Issue Code
jpx_nseequities_marketbyorder_flex_v1_1.issue_code.size = 12

-- Display: Issue Code
jpx_nseequities_marketbyorder_flex_v1_1.issue_code.display = function(value)
  return "Issue Code: "..value
end

-- Dissect: Issue Code
jpx_nseequities_marketbyorder_flex_v1_1.issue_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.issue_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.issue_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.issue_code, range, value, display)

  return offset + length, value
end

-- Last Price
jpx_nseequities_marketbyorder_flex_v1_1.last_price = {}

-- Size: Last Price
jpx_nseequities_marketbyorder_flex_v1_1.last_price.size = 8

-- Display: Last Price
jpx_nseequities_marketbyorder_flex_v1_1.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
jpx_nseequities_marketbyorder_flex_v1_1.last_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Price
jpx_nseequities_marketbyorder_flex_v1_1.last_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.last_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = jpx_nseequities_marketbyorder_flex_v1_1.last_price.translate(raw)
  local display = jpx_nseequities_marketbyorder_flex_v1_1.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Market Status
jpx_nseequities_marketbyorder_flex_v1_1.market_status = {}

-- Size: Market Status
jpx_nseequities_marketbyorder_flex_v1_1.market_status.size = 1

-- Display: Market Status
jpx_nseequities_marketbyorder_flex_v1_1.market_status.display = function(value)
  if value == 11 then
    return "Market Status: Morning Session Order Acceptance Time (11)"
  end
  if value == 12 then
    return "Market Status: Morning Session Trading Hours (12)"
  end
  if value == 19 then
    return "Market Status: End Of Morning Session (19)"
  end
  if value == 21 then
    return "Market Status: Afternoon Session Order Acceptance Time (21)"
  end
  if value == 22 then
    return "Market Status: Afternoon Session Trading Hours (22)"
  end
  if value == 23 then
    return "Market Status: Afternoon Session Preclosing (23)"
  end
  if value == 29 then
    return "Market Status: End Of Afternoon Session (29)"
  end

  return "Market Status: Unknown("..value..")"
end

-- Dissect: Market Status
jpx_nseequities_marketbyorder_flex_v1_1.market_status.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.market_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.market_status, range, value, display)

  return offset + length, value
end

-- Match Id
jpx_nseequities_marketbyorder_flex_v1_1.match_id = {}

-- Size: Match Id
jpx_nseequities_marketbyorder_flex_v1_1.match_id.size = 4

-- Display: Match Id
jpx_nseequities_marketbyorder_flex_v1_1.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
jpx_nseequities_marketbyorder_flex_v1_1.match_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.match_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.match_id, range, value, display)

  return offset + length, value
end

-- Message Count
jpx_nseequities_marketbyorder_flex_v1_1.message_count = {}

-- Size: Message Count
jpx_nseequities_marketbyorder_flex_v1_1.message_count.size = 1

-- Display: Message Count
jpx_nseequities_marketbyorder_flex_v1_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
jpx_nseequities_marketbyorder_flex_v1_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Type
jpx_nseequities_marketbyorder_flex_v1_1.message_type = {}

-- Size: Message Type
jpx_nseequities_marketbyorder_flex_v1_1.message_type.size = 1

-- Display: Message Type
jpx_nseequities_marketbyorder_flex_v1_1.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Seconds Timestamp Message (T)"
  end
  if value == "O" then
    return "Message Type: Trading Status Message (O)"
  end
  if value == "K" then
    return "Message Type: Execution Summary Message (K)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed With Price Message (C)"
  end
  if value == "D" then
    return "Message Type: Order Delete Message (D)"
  end
  if value == "R" then
    return "Message Type: Reset Message (R)"
  end
  if value == "L" then
    return "Message Type: Communication Control Message (L)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
jpx_nseequities_marketbyorder_flex_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Modification Flag
jpx_nseequities_marketbyorder_flex_v1_1.modification_flag = {}

-- Size: Modification Flag
jpx_nseequities_marketbyorder_flex_v1_1.modification_flag.size = 1

-- Display: Modification Flag
jpx_nseequities_marketbyorder_flex_v1_1.modification_flag.display = function(value)
  if value == 0 then
    return "Modification Flag: Cancel Order Or Modification Order That Changes Time Priority (0)"
  end
  if value == 1 then
    return "Modification Flag: Modification Order That Does Not Change Time Priority (1)"
  end

  return "Modification Flag: Unknown("..value..")"
end

-- Dissect: Modification Flag
jpx_nseequities_marketbyorder_flex_v1_1.modification_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.modification_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.modification_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.modification_flag, range, value, display)

  return offset + length, value
end

-- Multicast Group Number
jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number = {}

-- Size: Multicast Group Number
jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.size = 1

-- Display: Multicast Group Number
jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.display = function(value)
  return "Multicast Group Number: "..value
end

-- Dissect: Multicast Group Number
jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.multicast_group_number, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
jpx_nseequities_marketbyorder_flex_v1_1.next_sequence_number = {}

-- Size: Next Sequence Number
jpx_nseequities_marketbyorder_flex_v1_1.next_sequence_number.size = 4

-- Display: Next Sequence Number
jpx_nseequities_marketbyorder_flex_v1_1.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
jpx_nseequities_marketbyorder_flex_v1_1.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Number Of System Reboots
jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots = {}

-- Size: Number Of System Reboots
jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots.size = 1

-- Display: Number Of System Reboots
jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots.display = function(value)
  return "Number Of System Reboots: "..value
end

-- Dissect: Number Of System Reboots
jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.number_of_system_reboots, range, value, display)

  return offset + length, value
end

-- Order Condition
jpx_nseequities_marketbyorder_flex_v1_1.order_condition = {}

-- Size: Order Condition
jpx_nseequities_marketbyorder_flex_v1_1.order_condition.size = 1

-- Display: Order Condition
jpx_nseequities_marketbyorder_flex_v1_1.order_condition.display = function(value)
  if value == 0 then
    return "Order Condition: Nonconditional (0)"
  end
  if value == 2 then
    return "Order Condition: Onopen (2)"
  end
  if value == 4 then
    return "Order Condition: Onclose (4)"
  end
  if value == 6 then
    return "Order Condition: Funari (6)"
  end

  return "Order Condition: Unknown("..value..")"
end

-- Dissect: Order Condition
jpx_nseequities_marketbyorder_flex_v1_1.order_condition.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.order_condition.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.order_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_condition, range, value, display)

  return offset + length, value
end

-- Order Id
jpx_nseequities_marketbyorder_flex_v1_1.order_id = {}

-- Size: Order Id
jpx_nseequities_marketbyorder_flex_v1_1.order_id.size = 4

-- Display: Order Id
jpx_nseequities_marketbyorder_flex_v1_1.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
jpx_nseequities_marketbyorder_flex_v1_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.order_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Length
jpx_nseequities_marketbyorder_flex_v1_1.packet_length = {}

-- Size: Packet Length
jpx_nseequities_marketbyorder_flex_v1_1.packet_length.size = 2

-- Display: Packet Length
jpx_nseequities_marketbyorder_flex_v1_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
jpx_nseequities_marketbyorder_flex_v1_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Number
jpx_nseequities_marketbyorder_flex_v1_1.packet_number = {}

-- Size: Packet Number
jpx_nseequities_marketbyorder_flex_v1_1.packet_number.size = 1

-- Display: Packet Number
jpx_nseequities_marketbyorder_flex_v1_1.packet_number.display = function(value)
  return "Packet Number: "..value
end

-- Dissect: Packet Number
jpx_nseequities_marketbyorder_flex_v1_1.packet_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.packet_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.packet_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.packet_number, range, value, display)

  return offset + length, value
end

-- Packet Type
jpx_nseequities_marketbyorder_flex_v1_1.packet_type = {}

-- Size: Packet Type
jpx_nseequities_marketbyorder_flex_v1_1.packet_type.size = 1

-- Display: Packet Type
jpx_nseequities_marketbyorder_flex_v1_1.packet_type.display = function(value)
  if value == "R" then
    return "Packet Type: Login Request Message (R)"
  end
  if value == "A" then
    return "Packet Type: Login Result Message (A)"
  end
  if value == "S" then
    return "Packet Type: Message Response Message (S)"
  end
  if value == "G" then
    return "Packet Type: End Of Message Message (G)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
jpx_nseequities_marketbyorder_flex_v1_1.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Price
jpx_nseequities_marketbyorder_flex_v1_1.price = {}

-- Size: Price
jpx_nseequities_marketbyorder_flex_v1_1.price.size = 8

-- Display: Price
jpx_nseequities_marketbyorder_flex_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
jpx_nseequities_marketbyorder_flex_v1_1.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
jpx_nseequities_marketbyorder_flex_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = jpx_nseequities_marketbyorder_flex_v1_1.price.translate(raw)
  local display = jpx_nseequities_marketbyorder_flex_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Pricing Method
jpx_nseequities_marketbyorder_flex_v1_1.pricing_method = {}

-- Size: Pricing Method
jpx_nseequities_marketbyorder_flex_v1_1.pricing_method.size = 1

-- Display: Pricing Method
jpx_nseequities_marketbyorder_flex_v1_1.pricing_method.display = function(value)
  if value == 1 then
    return "Pricing Method: Itayose Method (1)"
  end
  if value == 2 then
    return "Pricing Method: Zaraba Method (2)"
  end
  if value == 3 then
    return "Pricing Method: Sell Special Quote Displayed (3)"
  end
  if value == 4 then
    return "Pricing Method: Buy Special Quote Displayed (4)"
  end
  if value == 5 then
    return "Pricing Method: Sell Sequential Trade Quote Displayed (5)"
  end
  if value == 6 then
    return "Pricing Method: Buy Sequential Trade Quote Displayed (6)"
  end
  if value == 0 then
    return "Pricing Method: Other Than The Above (0)"
  end

  return "Pricing Method: Unknown("..value..")"
end

-- Dissect: Pricing Method
jpx_nseequities_marketbyorder_flex_v1_1.pricing_method.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.pricing_method.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.pricing_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.pricing_method, range, value, display)

  return offset + length, value
end

-- Quantity
jpx_nseequities_marketbyorder_flex_v1_1.quantity = {}

-- Size: Quantity
jpx_nseequities_marketbyorder_flex_v1_1.quantity.size = 6

-- Display: Quantity
jpx_nseequities_marketbyorder_flex_v1_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jpx_nseequities_marketbyorder_flex_v1_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Requested Message Count
jpx_nseequities_marketbyorder_flex_v1_1.requested_message_count = {}

-- Size: Requested Message Count
jpx_nseequities_marketbyorder_flex_v1_1.requested_message_count.size = 3

-- Display: Requested Message Count
jpx_nseequities_marketbyorder_flex_v1_1.requested_message_count.display = function(value)
  return "Requested Message Count: "..value
end

-- Dissect: Requested Message Count
jpx_nseequities_marketbyorder_flex_v1_1.requested_message_count.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.requested_message_count.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_nseequities_marketbyorder_flex_v1_1.requested_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.requested_message_count, range, value, display)

  return offset + length, value
end

-- Reset Start End Flag
jpx_nseequities_marketbyorder_flex_v1_1.reset_start_end_flag = {}

-- Size: Reset Start End Flag
jpx_nseequities_marketbyorder_flex_v1_1.reset_start_end_flag.size = 1

-- Display: Reset Start End Flag
jpx_nseequities_marketbyorder_flex_v1_1.reset_start_end_flag.display = function(value)
  if value == 1 then
    return "Reset Start End Flag: Start Of Reset Dissemination (1)"
  end
  if value == 2 then
    return "Reset Start End Flag: End Of Reset Dissemination (2)"
  end

  return "Reset Start End Flag: Unknown("..value..")"
end

-- Dissect: Reset Start End Flag
jpx_nseequities_marketbyorder_flex_v1_1.reset_start_end_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.reset_start_end_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.reset_start_end_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.reset_start_end_flag, range, value, display)

  return offset + length, value
end

-- Result Code
jpx_nseequities_marketbyorder_flex_v1_1.result_code = {}

-- Size: Result Code
jpx_nseequities_marketbyorder_flex_v1_1.result_code.size = 1

-- Display: Result Code
jpx_nseequities_marketbyorder_flex_v1_1.result_code.display = function(value)
  if value == "A" then
    return "Result Code: Accepted (A)"
  end
  if value == "O" then
    return "Result Code: Out Of Service (O)"
  end
  if value == "U" then
    return "Result Code: Incorrect User Id (U)"
  end
  if value == "S" then
    return "Result Code: Incorrect Sequence Number (S)"
  end
  if value == "T" then
    return "Result Code: Incorrect Packet Type (T)"
  end
  if value == "M" then
    return "Result Code: Incorrect Mcg Number (M)"
  end
  if value == "Z" then
    return "Result Code: Other Error (Z)"
  end

  return "Result Code: Unknown("..value..")"
end

-- Dissect: Result Code
jpx_nseequities_marketbyorder_flex_v1_1.result_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.result_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.result_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.result_code, range, value, display)

  return offset + length, value
end

-- Sequence Number
jpx_nseequities_marketbyorder_flex_v1_1.sequence_number = {}

-- Size: Sequence Number
jpx_nseequities_marketbyorder_flex_v1_1.sequence_number.size = 4

-- Display: Sequence Number
jpx_nseequities_marketbyorder_flex_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jpx_nseequities_marketbyorder_flex_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Short Selling Status
jpx_nseequities_marketbyorder_flex_v1_1.short_selling_status = {}

-- Size: Short Selling Status
jpx_nseequities_marketbyorder_flex_v1_1.short_selling_status.size = 1

-- Display: Short Selling Status
jpx_nseequities_marketbyorder_flex_v1_1.short_selling_status.display = function(value)
  if value == 0 then
    return "Short Selling Status: Short Selling Regulation Is Not Applied (0)"
  end
  if value == 1 then
    return "Short Selling Status: Short Selling Regulation Is Applied (1)"
  end

  return "Short Selling Status: Unknown("..value..")"
end

-- Dissect: Short Selling Status
jpx_nseequities_marketbyorder_flex_v1_1.short_selling_status.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.short_selling_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.short_selling_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.short_selling_status, range, value, display)

  return offset + length, value
end

-- Side
jpx_nseequities_marketbyorder_flex_v1_1.side = {}

-- Size: Side
jpx_nseequities_marketbyorder_flex_v1_1.side.size = 1

-- Display: Side
jpx_nseequities_marketbyorder_flex_v1_1.side.display = function(value)
  if value == "S" then
    return "Side: Sell Order (S)"
  end
  if value == "B" then
    return "Side: Buy Order (B)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
jpx_nseequities_marketbyorder_flex_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Status Flag
jpx_nseequities_marketbyorder_flex_v1_1.status_flag = {}

-- Size: Status Flag
jpx_nseequities_marketbyorder_flex_v1_1.status_flag.size = 1

-- Display: Status Flag
jpx_nseequities_marketbyorder_flex_v1_1.status_flag.display = function(value)
  if value == "A0" then
    return "Status Flag: Trading Halted Accepting Orders (A0)"
  end
  if value == "A1" then
    return "Status Flag: Trading Halt Lifted (A1)"
  end
  if value == "B0" then
    return "Status Flag: Itayose (B0)"
  end
  if value == "B1" then
    return "Status Flag: Itayose Ended (B1)"
  end
  if value == "C0" then
    return "Status Flag: Trading Suspended (C0)"
  end
  if value == "C1" then
    return "Status Flag: Trading Suspension Lifted (C1)"
  end
  if value == "D0" then
    return "Status Flag: Trading Halted Not Accepting Orders (D0)"
  end
  if value == " " then
    return "Status Flag: Other Than The Above (<whitespace>)"
  end

  return "Status Flag: Unknown("..value..")"
end

-- Dissect: Status Flag
jpx_nseequities_marketbyorder_flex_v1_1.status_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.status_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.status_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.status_flag, range, value, display)

  return offset + length, value
end

-- Tag Length
jpx_nseequities_marketbyorder_flex_v1_1.tag_length = {}

-- Size: Tag Length
jpx_nseequities_marketbyorder_flex_v1_1.tag_length.size = 1

-- Display: Tag Length
jpx_nseequities_marketbyorder_flex_v1_1.tag_length.display = function(value)
  return "Tag Length: "..value
end

-- Dissect: Tag Length
jpx_nseequities_marketbyorder_flex_v1_1.tag_length.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.tag_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.tag_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.tag_length, range, value, display)

  return offset + length, value
end

-- Test Mode Flag
jpx_nseequities_marketbyorder_flex_v1_1.test_mode_flag = {}

-- Size: Test Mode Flag
jpx_nseequities_marketbyorder_flex_v1_1.test_mode_flag.size = 1

-- Display: Test Mode Flag
jpx_nseequities_marketbyorder_flex_v1_1.test_mode_flag.display = function(value)
  if value == 1 then
    return "Test Mode Flag: Production (1)"
  end
  if value == 2 then
    return "Test Mode Flag: Test (2)"
  end

  return "Test Mode Flag: Unknown("..value..")"
end

-- Dissect: Test Mode Flag
jpx_nseequities_marketbyorder_flex_v1_1.test_mode_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.test_mode_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.test_mode_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.test_mode_flag, range, value, display)

  return offset + length, value
end

-- Time Microseconds
jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds = {}

-- Size: Time Microseconds
jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.size = 4

-- Display: Time Microseconds
jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.display = function(value)
  return "Time Microseconds: "..value
end

-- Dissect: Time Microseconds
jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.time_microseconds, range, value, display)

  return offset + length, value
end

-- Time Seconds
jpx_nseequities_marketbyorder_flex_v1_1.time_seconds = {}

-- Size: Time Seconds
jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.size = 4

-- Store: Time Seconds
jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.current = nil

-- Generated: Time Seconds
jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.generated = function(value, range, packet, parent)
  local display = jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.display(value)
  local time_seconds = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.time_seconds, range, value, display)
  time_seconds:set_generated()
end

-- Display: Time Seconds
jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.display = function(value)
  -- Parse unix seconds timestamp
  return "Time Seconds: "..os.date("%Y-%m-%d %H:%M:%S.", value)
end

-- Dissect: Time Seconds
jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.time_seconds, range, value, display)

  return offset + length, value
end

-- Total Invalidation
jpx_nseequities_marketbyorder_flex_v1_1.total_invalidation = {}

-- Size: Total Invalidation
jpx_nseequities_marketbyorder_flex_v1_1.total_invalidation.size = 6

-- Display: Total Invalidation
jpx_nseequities_marketbyorder_flex_v1_1.total_invalidation.display = function(value)
  return "Total Invalidation: "..value
end

-- Dissect: Total Invalidation
jpx_nseequities_marketbyorder_flex_v1_1.total_invalidation.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.total_invalidation.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.total_invalidation.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.total_invalidation, range, value, display)

  return offset + length, value
end

-- Total Number Of Packets
jpx_nseequities_marketbyorder_flex_v1_1.total_number_of_packets = {}

-- Size: Total Number Of Packets
jpx_nseequities_marketbyorder_flex_v1_1.total_number_of_packets.size = 1

-- Display: Total Number Of Packets
jpx_nseequities_marketbyorder_flex_v1_1.total_number_of_packets.display = function(value)
  return "Total Number Of Packets: "..value
end

-- Dissect: Total Number Of Packets
jpx_nseequities_marketbyorder_flex_v1_1.total_number_of_packets.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.total_number_of_packets.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.total_number_of_packets.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.total_number_of_packets, range, value, display)

  return offset + length, value
end

-- Total Volume
jpx_nseequities_marketbyorder_flex_v1_1.total_volume = {}

-- Size: Total Volume
jpx_nseequities_marketbyorder_flex_v1_1.total_volume.size = 6

-- Display: Total Volume
jpx_nseequities_marketbyorder_flex_v1_1.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
jpx_nseequities_marketbyorder_flex_v1_1.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.total_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Triggered Side
jpx_nseequities_marketbyorder_flex_v1_1.triggered_side = {}

-- Size: Triggered Side
jpx_nseequities_marketbyorder_flex_v1_1.triggered_side.size = 1

-- Display: Triggered Side
jpx_nseequities_marketbyorder_flex_v1_1.triggered_side.display = function(value)
  if value == "S" then
    return "Triggered Side: Sell Order (S)"
  end
  if value == "B" then
    return "Triggered Side: Buy Order (B)"
  end
  if value == " " then
    return "Triggered Side: Itayose Execution (<whitespace>)"
  end

  return "Triggered Side: Unknown("..value..")"
end

-- Dissect: Triggered Side
jpx_nseequities_marketbyorder_flex_v1_1.triggered_side.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.triggered_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.triggered_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.triggered_side, range, value, display)

  return offset + length, value
end

-- Update Number
jpx_nseequities_marketbyorder_flex_v1_1.update_number = {}

-- Size: Update Number
jpx_nseequities_marketbyorder_flex_v1_1.update_number.size = 4

-- Display: Update Number
jpx_nseequities_marketbyorder_flex_v1_1.update_number.display = function(value)
  return "Update Number: "..value
end

-- Dissect: Update Number
jpx_nseequities_marketbyorder_flex_v1_1.update_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.update_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.update_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.update_number, range, value, display)

  return offset + length, value
end

-- User Id
jpx_nseequities_marketbyorder_flex_v1_1.user_id = {}

-- Size: User Id
jpx_nseequities_marketbyorder_flex_v1_1.user_id.size = 1

-- Display: User Id
jpx_nseequities_marketbyorder_flex_v1_1.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
jpx_nseequities_marketbyorder_flex_v1_1.user_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.user_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.user_id, range, value, display)

  return offset + length, value
end

-- Utility Flag
jpx_nseequities_marketbyorder_flex_v1_1.utility_flag = {}

-- Size: Utility Flag
jpx_nseequities_marketbyorder_flex_v1_1.utility_flag.size = 1

-- Display: Utility Flag
jpx_nseequities_marketbyorder_flex_v1_1.utility_flag.display = function(value)
  return "Utility Flag: "..value
end

-- Dissect: Utility Flag
jpx_nseequities_marketbyorder_flex_v1_1.utility_flag.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.utility_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.utility_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.utility_flag, range, value, display)

  return offset + length, value
end

-- Volume
jpx_nseequities_marketbyorder_flex_v1_1.volume = {}

-- Size: Volume
jpx_nseequities_marketbyorder_flex_v1_1.volume.size = 6

-- Display: Volume
jpx_nseequities_marketbyorder_flex_v1_1.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
jpx_nseequities_marketbyorder_flex_v1_1.volume.dissect = function(buffer, offset, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_nseequities_marketbyorder_flex_v1_1.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.volume, range, value, display)

  return offset + length, value
end

-- Timestamp
jpx_nseequities_marketbyorder_flex_v1_1.timestamp = {}

-- Translate: Timestamp
jpx_nseequities_marketbyorder_flex_v1_1.timestamp.translate = function(time_microseconds, stored_time_seconds)
  return UInt64.new(stored_time_seconds * 1000000 + time_microseconds)
end

-- Display: Timestamp
jpx_nseequities_marketbyorder_flex_v1_1.timestamp.display = function(time_microseconds, stored_time_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_time_seconds)..string.format("%09d", time_microseconds)
end

-- Composite: Timestamp
jpx_nseequities_marketbyorder_flex_v1_1.timestamp.composite = function(buffer, offset, stored_time_seconds, packet, parent)
  local length = jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.size
  local range = buffer(offset, length)
  local time_microseconds = range:uint()
  local value = jpx_nseequities_marketbyorder_flex_v1_1.timestamp.translate(time_microseconds, stored_time_seconds)
  local display = jpx_nseequities_marketbyorder_flex_v1_1.timestamp.display(time_microseconds, stored_time_seconds, packet)
  parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.timestamp, range, value, display)

  jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.generated(stored_time_seconds, range, packet, parent)

  display = jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.display(time_microseconds)
  parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.time_microseconds, range, time_microseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
jpx_nseequities_marketbyorder_flex_v1_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_time_seconds = jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.current

  if stored_time_seconds ~= nil then
    return jpx_nseequities_marketbyorder_flex_v1_1.timestamp.composite(buffer, offset, stored_time_seconds, packet, parent)
  end

  return jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Jpx NseEquities MarketByOrder Flex 1.1
-----------------------------------------------------------------------

-- End Of Message Message
jpx_nseequities_marketbyorder_flex_v1_1.end_of_message_message = {}

-- Size: End Of Message Message
jpx_nseequities_marketbyorder_flex_v1_1.end_of_message_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.next_sequence_number.size

-- Display: End Of Message Message
jpx_nseequities_marketbyorder_flex_v1_1.end_of_message_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Message Message
jpx_nseequities_marketbyorder_flex_v1_1.end_of_message_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Multicast Group Number: Bn
  index, multicast_group_number = jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.dissect(buffer, index, packet, parent)

  -- Number Of System Reboots: Bn
  index, number_of_system_reboots = jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Bn
  index, next_sequence_number = jpx_nseequities_marketbyorder_flex_v1_1.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Message Message
jpx_nseequities_marketbyorder_flex_v1_1.end_of_message_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.end_of_message_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.end_of_message_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.end_of_message_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.end_of_message_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Response Message
jpx_nseequities_marketbyorder_flex_v1_1.message_response_message = {}

-- Size: Message Response Message
jpx_nseequities_marketbyorder_flex_v1_1.message_response_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.data.size

-- Display: Message Response Message
jpx_nseequities_marketbyorder_flex_v1_1.message_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Response Message
jpx_nseequities_marketbyorder_flex_v1_1.message_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data: Char
  index, data = jpx_nseequities_marketbyorder_flex_v1_1.data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Response Message
jpx_nseequities_marketbyorder_flex_v1_1.message_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_response_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.message_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.message_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.message_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Result Message
jpx_nseequities_marketbyorder_flex_v1_1.login_result_message = {}

-- Size: Login Result Message
jpx_nseequities_marketbyorder_flex_v1_1.login_result_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.result_code.size

-- Display: Login Result Message
jpx_nseequities_marketbyorder_flex_v1_1.login_result_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Result Message
jpx_nseequities_marketbyorder_flex_v1_1.login_result_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Multicast Group Number: Bn
  index, multicast_group_number = jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.dissect(buffer, index, packet, parent)

  -- Result Code: Char
  index, result_code = jpx_nseequities_marketbyorder_flex_v1_1.result_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Result Message
jpx_nseequities_marketbyorder_flex_v1_1.login_result_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.login_result_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.login_result_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.login_result_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.login_result_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
jpx_nseequities_marketbyorder_flex_v1_1.login_request_message = {}

-- Size: Login Request Message
jpx_nseequities_marketbyorder_flex_v1_1.login_request_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.user_id.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.sequence_number.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.requested_message_count.size

-- Display: Login Request Message
jpx_nseequities_marketbyorder_flex_v1_1.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
jpx_nseequities_marketbyorder_flex_v1_1.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Char
  index, user_id = jpx_nseequities_marketbyorder_flex_v1_1.user_id.dissect(buffer, index, packet, parent)

  -- Multicast Group Number: Bn
  index, multicast_group_number = jpx_nseequities_marketbyorder_flex_v1_1.multicast_group_number.dissect(buffer, index, packet, parent)

  -- Number Of System Reboots: Bn
  index, number_of_system_reboots = jpx_nseequities_marketbyorder_flex_v1_1.number_of_system_reboots.dissect(buffer, index, packet, parent)

  -- Sequence Number: Bn
  index, sequence_number = jpx_nseequities_marketbyorder_flex_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Requested Message Count: Bn
  index, requested_message_count = jpx_nseequities_marketbyorder_flex_v1_1.requested_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
jpx_nseequities_marketbyorder_flex_v1_1.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.login_request_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jpx_nseequities_marketbyorder_flex_v1_1.payload = {}

-- Dissect: Payload
jpx_nseequities_marketbyorder_flex_v1_1.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Login Request Message
  if packet_type == "R" then
    return jpx_nseequities_marketbyorder_flex_v1_1.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Result Message
  if packet_type == "A" then
    return jpx_nseequities_marketbyorder_flex_v1_1.login_result_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Response Message
  if packet_type == "S" then
    return jpx_nseequities_marketbyorder_flex_v1_1.message_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Message Message
  if packet_type == "G" then
    return jpx_nseequities_marketbyorder_flex_v1_1.end_of_message_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet Header
jpx_nseequities_marketbyorder_flex_v1_1.packet_header = {}

-- Size: Packet Header
jpx_nseequities_marketbyorder_flex_v1_1.packet_header.size =
  jpx_nseequities_marketbyorder_flex_v1_1.packet_length.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.packet_type.size

-- Display: Packet Header
jpx_nseequities_marketbyorder_flex_v1_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
jpx_nseequities_marketbyorder_flex_v1_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = jpx_nseequities_marketbyorder_flex_v1_1.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 4 values
  index, packet_type = jpx_nseequities_marketbyorder_flex_v1_1.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
jpx_nseequities_marketbyorder_flex_v1_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.packet_header, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Packet
jpx_nseequities_marketbyorder_flex_v1_1.tcp_packet = {}

-- Verify required size of Tcp packet
jpx_nseequities_marketbyorder_flex_v1_1.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= jpx_nseequities_marketbyorder_flex_v1_1.packet_header.size
end

-- Dissect Tcp Packet
jpx_nseequities_marketbyorder_flex_v1_1.tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 2 fields
  index, packet_header = jpx_nseequities_marketbyorder_flex_v1_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 4 branches
  index = jpx_nseequities_marketbyorder_flex_v1_1.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Communication Control Message
jpx_nseequities_marketbyorder_flex_v1_1.communication_control_message = {}

-- Size: Communication Control Message
jpx_nseequities_marketbyorder_flex_v1_1.communication_control_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.test_mode_flag.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.communication_start_end_flag.size

-- Display: Communication Control Message
jpx_nseequities_marketbyorder_flex_v1_1.communication_control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Communication Control Message
jpx_nseequities_marketbyorder_flex_v1_1.communication_control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Test Mode Flag: Bn
  index, test_mode_flag = jpx_nseequities_marketbyorder_flex_v1_1.test_mode_flag.dissect(buffer, index, packet, parent)

  -- Communication Start End Flag: Bn
  index, communication_start_end_flag = jpx_nseequities_marketbyorder_flex_v1_1.communication_start_end_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Communication Control Message
jpx_nseequities_marketbyorder_flex_v1_1.communication_control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.communication_control_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.communication_control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.communication_control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.communication_control_message.fields(buffer, offset, packet, parent)
  end
end

-- Reset Message
jpx_nseequities_marketbyorder_flex_v1_1.reset_message = {}

-- Size: Reset Message
jpx_nseequities_marketbyorder_flex_v1_1.reset_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.reset_start_end_flag.size

-- Display: Reset Message
jpx_nseequities_marketbyorder_flex_v1_1.reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Message
jpx_nseequities_marketbyorder_flex_v1_1.reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reset Start End Flag: Bn
  index, reset_start_end_flag = jpx_nseequities_marketbyorder_flex_v1_1.reset_start_end_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Message
jpx_nseequities_marketbyorder_flex_v1_1.reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.reset_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
jpx_nseequities_marketbyorder_flex_v1_1.order_delete_message = {}

-- Size: Order Delete Message
jpx_nseequities_marketbyorder_flex_v1_1.order_delete_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.order_id.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.side.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.modification_flag.size

-- Display: Order Delete Message
jpx_nseequities_marketbyorder_flex_v1_1.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
jpx_nseequities_marketbyorder_flex_v1_1.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Microseconds: Bn
  index, time_microseconds = jpx_nseequities_marketbyorder_flex_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Bn
  index, order_id = jpx_nseequities_marketbyorder_flex_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Side: Char
  index, side = jpx_nseequities_marketbyorder_flex_v1_1.side.dissect(buffer, index, packet, parent)

  -- Modification Flag: Bn
  index, modification_flag = jpx_nseequities_marketbyorder_flex_v1_1.modification_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
jpx_nseequities_marketbyorder_flex_v1_1.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_delete_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_with_price_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.order_id.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.side.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.volume.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.match_id.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.execution_price.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.adopted_pricing_method.size

-- Display: Order Executed With Price Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Microseconds: Bn
  index, time_microseconds = jpx_nseequities_marketbyorder_flex_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Bn
  index, order_id = jpx_nseequities_marketbyorder_flex_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Side: Char
  index, side = jpx_nseequities_marketbyorder_flex_v1_1.side.dissect(buffer, index, packet, parent)

  -- Volume: Bn
  index, volume = jpx_nseequities_marketbyorder_flex_v1_1.volume.dissect(buffer, index, packet, parent)

  -- Match Id: Bn
  index, match_id = jpx_nseequities_marketbyorder_flex_v1_1.match_id.dissect(buffer, index, packet, parent)

  -- Execution Price: Bn (Price)
  index, execution_price = jpx_nseequities_marketbyorder_flex_v1_1.execution_price.dissect(buffer, index, packet, parent)

  -- Adopted Pricing Method: Bn
  index, adopted_pricing_method = jpx_nseequities_marketbyorder_flex_v1_1.adopted_pricing_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_message = {}

-- Size: Order Executed Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.order_id.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.side.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.volume.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.match_id.size

-- Display: Order Executed Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Microseconds: Bn
  index, time_microseconds = jpx_nseequities_marketbyorder_flex_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Bn
  index, order_id = jpx_nseequities_marketbyorder_flex_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Side: Char
  index, side = jpx_nseequities_marketbyorder_flex_v1_1.side.dissect(buffer, index, packet, parent)

  -- Volume: Bn
  index, volume = jpx_nseequities_marketbyorder_flex_v1_1.volume.dissect(buffer, index, packet, parent)

  -- Match Id: Bn
  index, match_id = jpx_nseequities_marketbyorder_flex_v1_1.match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jpx_nseequities_marketbyorder_flex_v1_1.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.order_executed_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
jpx_nseequities_marketbyorder_flex_v1_1.add_order_message = {}

-- Size: Add Order Message
jpx_nseequities_marketbyorder_flex_v1_1.add_order_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.order_id.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.side.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.quantity.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.price.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.order_condition.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.modification_flag.size

-- Display: Add Order Message
jpx_nseequities_marketbyorder_flex_v1_1.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
jpx_nseequities_marketbyorder_flex_v1_1.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Microseconds: Bn
  index, time_microseconds = jpx_nseequities_marketbyorder_flex_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Bn
  index, order_id = jpx_nseequities_marketbyorder_flex_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Side: Char
  index, side = jpx_nseequities_marketbyorder_flex_v1_1.side.dissect(buffer, index, packet, parent)

  -- Quantity: Bn
  index, quantity = jpx_nseequities_marketbyorder_flex_v1_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: Bn (Price)
  index, price = jpx_nseequities_marketbyorder_flex_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Condition: Bn
  index, order_condition = jpx_nseequities_marketbyorder_flex_v1_1.order_condition.dissect(buffer, index, packet, parent)

  -- Modification Flag: Bn
  index, modification_flag = jpx_nseequities_marketbyorder_flex_v1_1.modification_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
jpx_nseequities_marketbyorder_flex_v1_1.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.add_order_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Summary Message
jpx_nseequities_marketbyorder_flex_v1_1.execution_summary_message = {}

-- Size: Execution Summary Message
jpx_nseequities_marketbyorder_flex_v1_1.execution_summary_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.triggered_side.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.total_volume.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.total_invalidation.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.last_price.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.match_id.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.best_offer.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.best_bid.size

-- Display: Execution Summary Message
jpx_nseequities_marketbyorder_flex_v1_1.execution_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Summary Message
jpx_nseequities_marketbyorder_flex_v1_1.execution_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Microseconds: Bn
  index, time_microseconds = jpx_nseequities_marketbyorder_flex_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Triggered Side: Char
  index, triggered_side = jpx_nseequities_marketbyorder_flex_v1_1.triggered_side.dissect(buffer, index, packet, parent)

  -- Total Volume: Bn
  index, total_volume = jpx_nseequities_marketbyorder_flex_v1_1.total_volume.dissect(buffer, index, packet, parent)

  -- Total Invalidation: Bn
  index, total_invalidation = jpx_nseequities_marketbyorder_flex_v1_1.total_invalidation.dissect(buffer, index, packet, parent)

  -- Last Price: Bn (Price)
  index, last_price = jpx_nseequities_marketbyorder_flex_v1_1.last_price.dissect(buffer, index, packet, parent)

  -- Match Id: Bn
  index, match_id = jpx_nseequities_marketbyorder_flex_v1_1.match_id.dissect(buffer, index, packet, parent)

  -- Best Offer: Bn (Price)
  index, best_offer = jpx_nseequities_marketbyorder_flex_v1_1.best_offer.dissect(buffer, index, packet, parent)

  -- Best Bid: Bn (Price)
  index, best_bid = jpx_nseequities_marketbyorder_flex_v1_1.best_bid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary Message
jpx_nseequities_marketbyorder_flex_v1_1.execution_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.execution_summary_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.execution_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.execution_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.execution_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
jpx_nseequities_marketbyorder_flex_v1_1.trading_status_message = {}

-- Size: Trading Status Message
jpx_nseequities_marketbyorder_flex_v1_1.trading_status_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.time_microseconds.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.market_status.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.status_flag.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.short_selling_status.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.pricing_method.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.book_center_price.size

-- Display: Trading Status Message
jpx_nseequities_marketbyorder_flex_v1_1.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
jpx_nseequities_marketbyorder_flex_v1_1.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Microseconds: Bn
  index, time_microseconds = jpx_nseequities_marketbyorder_flex_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Market Status: Bn
  index, market_status = jpx_nseequities_marketbyorder_flex_v1_1.market_status.dissect(buffer, index, packet, parent)

  -- Status Flag: Char
  index, status_flag = jpx_nseequities_marketbyorder_flex_v1_1.status_flag.dissect(buffer, index, packet, parent)

  -- Short Selling Status: Bn
  index, short_selling_status = jpx_nseequities_marketbyorder_flex_v1_1.short_selling_status.dissect(buffer, index, packet, parent)

  -- Pricing Method: Bn
  index, pricing_method = jpx_nseequities_marketbyorder_flex_v1_1.pricing_method.dissect(buffer, index, packet, parent)

  -- Book Center Price: Bn (Price)
  index, book_center_price = jpx_nseequities_marketbyorder_flex_v1_1.book_center_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
jpx_nseequities_marketbyorder_flex_v1_1.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.trading_status_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Timestamp Message
jpx_nseequities_marketbyorder_flex_v1_1.seconds_timestamp_message = {}

-- Size: Seconds Timestamp Message
jpx_nseequities_marketbyorder_flex_v1_1.seconds_timestamp_message.size =
  jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.size

-- Display: Seconds Timestamp Message
jpx_nseequities_marketbyorder_flex_v1_1.seconds_timestamp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Timestamp Message
jpx_nseequities_marketbyorder_flex_v1_1.seconds_timestamp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Seconds: Bn
  index, time_seconds = jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.dissect(buffer, index, packet, parent)

  -- Store Time Seconds Value
  jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.current = time_seconds

  if not packet.visited then
    jpx_nseequities_marketbyorder_flex_v1_1.conversation.current.time_seconds.last = time_seconds
  end

  return index
end

-- Dissect: Seconds Timestamp Message
jpx_nseequities_marketbyorder_flex_v1_1.seconds_timestamp_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.seconds_timestamp_message, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.seconds_timestamp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.seconds_timestamp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.seconds_timestamp_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Header
jpx_nseequities_marketbyorder_flex_v1_1.message_header = {}

-- Size: Message Header
jpx_nseequities_marketbyorder_flex_v1_1.message_header.size =
  jpx_nseequities_marketbyorder_flex_v1_1.tag_length.size + 
  jpx_nseequities_marketbyorder_flex_v1_1.message_type.size

-- Display: Message Header
jpx_nseequities_marketbyorder_flex_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
jpx_nseequities_marketbyorder_flex_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tag Length: 1 Byte Unsigned Fixed Width Integer
  index, tag_length = jpx_nseequities_marketbyorder_flex_v1_1.tag_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 9 values
  index, message_type = jpx_nseequities_marketbyorder_flex_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
jpx_nseequities_marketbyorder_flex_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_header, buffer(offset, 0))
    local index = jpx_nseequities_marketbyorder_flex_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_nseequities_marketbyorder_flex_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
jpx_nseequities_marketbyorder_flex_v1_1.message = {}

-- Display: Message
jpx_nseequities_marketbyorder_flex_v1_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
jpx_nseequities_marketbyorder_flex_v1_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = jpx_nseequities_marketbyorder_flex_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 9 branches
  index = jpx_nseequities_marketbyorder_flex_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
jpx_nseequities_marketbyorder_flex_v1_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1.fields.message, buffer(offset, 0))
    local current = jpx_nseequities_marketbyorder_flex_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = jpx_nseequities_marketbyorder_flex_v1_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jpx_nseequities_marketbyorder_flex_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Udp Packet
jpx_nseequities_marketbyorder_flex_v1_1.udp_packet = {}

-- Verify required size of Udp packet
jpx_nseequities_marketbyorder_flex_v1_1.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= jpx_nseequities_marketbyorder_flex_v1_1.packet_header.size
end

-- Dissect Udp Packet
jpx_nseequities_marketbyorder_flex_v1_1.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = jpx_nseequities_marketbyorder_flex_v1_1.conversation.data(packet)
  if not packet.visited then
    data.time_seconds.frames[packet.number] = data.time_seconds.last
  end
  jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.current = data.time_seconds.frames[packet.number]
  jpx_nseequities_marketbyorder_flex_v1_1.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 9 fields
  index, packet_header = jpx_nseequities_marketbyorder_flex_v1_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 1, 1):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Tag Length
    local tag_length = buffer(index, 1):uint()

    -- Runtime Size Of: Message
    local size_of_message = tag_length + 1

    -- Message: Struct of 2 fields
    index, message = jpx_nseequities_marketbyorder_flex_v1_1.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jpx_nseequities_marketbyorder_flex_v1_1.init()
  jpx_nseequities_marketbyorder_flex_v1_1.time_seconds.current = nil
  jpx_nseequities_marketbyorder_flex_v1_1.conversation.current = nil
  jpx_nseequities_marketbyorder_flex_v1_1.conversation.flows = {}
end

-- Dissector for Jpx NseEquities MarketByOrder Flex 1.1
function omi_jpx_nseequities_marketbyorder_flex_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_jpx_nseequities_marketbyorder_flex_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_jpx_nseequities_marketbyorder_flex_v1_1, buffer(), omi_jpx_nseequities_marketbyorder_flex_v1_1.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    return jpx_nseequities_marketbyorder_flex_v1_1.tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return jpx_nseequities_marketbyorder_flex_v1_1.udp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Jpx NseEquities MarketByOrder Flex 1.1 (Udp)
local function omi_jpx_nseequities_marketbyorder_flex_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_nseequities_marketbyorder_flex_v1_1.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_nseequities_marketbyorder_flex_v1_1
  omi_jpx_nseequities_marketbyorder_flex_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Jpx NseEquities MarketByOrder Flex 1.1 (Tcp)
local function omi_jpx_nseequities_marketbyorder_flex_v1_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_nseequities_marketbyorder_flex_v1_1.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_nseequities_marketbyorder_flex_v1_1
  omi_jpx_nseequities_marketbyorder_flex_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Jpx NseEquities MarketByOrder Flex 1.1
omi_jpx_nseequities_marketbyorder_flex_v1_1:register_heuristic("udp", omi_jpx_nseequities_marketbyorder_flex_v1_1_udp_heuristic)
omi_jpx_nseequities_marketbyorder_flex_v1_1:register_heuristic("tcp", omi_jpx_nseequities_marketbyorder_flex_v1_1_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Japan Exchange Group
--   Version: 1.1
--   Date: Wednesday, November 20, 2024
--   Specification: TSEarrowhead_FLEX_MarketbyOrderSpecifications_ver.1.1.pdf
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
