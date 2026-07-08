-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13 Protocol
local omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13 = Proto("Omi.Cboe.CfeFutures.MulticastDepthOfBook.Spin.v1.2.13", "Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13")

-- Protocol table
local cboe_cfefutures_multicastdepthofbook_spin_v1_2_13 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13 Fields
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.accrued_day_variance = ProtoField.new("Accrued Day Variance", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.accrueddayvariance", ftypes.INT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.block_volume = ProtoField.new("Block Volume", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.blockvolume", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.close_price = ProtoField.new("Close Price", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.closeprice", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.contract_date = ProtoField.new("Contract Date", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.contractdate", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.contract_size = ProtoField.new("Contract Size", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.contractsize", ftypes.UINT16)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.count = ProtoField.new("Count", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.count", ftypes.UINT8)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.ecrpvolume", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.epochtime", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.expiration_date = ProtoField.new("Expiration Date", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.expirationdate", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.feedsymbol", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.filler = ProtoField.new("Filler", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.filler", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.futures_symbol = ProtoField.new("Futures Symbol", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.futuressymbol", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.high_price = ProtoField.new("High Price", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.highprice", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.issue = ProtoField.new("Issue", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.issue", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.leg_count = ProtoField.new("Leg Count", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.legcount", ftypes.UINT8)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.leg_offset = ProtoField.new("Leg Offset", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.legoffset", ftypes.UINT8)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.length = ProtoField.new("Length", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.length", ftypes.UINT16)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.listing_state = ProtoField.new("Listing State", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.listingstate", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.loginresponsestatus", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.low_price = ProtoField.new("Low Price", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.lowprice", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.lowerpricelimit", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message = ProtoField.new("Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.message", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message_header = ProtoField.new("Message Header", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.messageheader", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message_length = ProtoField.new("Message Length", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.messagelength", ftypes.UINT8)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message_type = ProtoField.new("Message Type", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.messagetype", ftypes.UINT8)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.midnightreference", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.num_elapsed_returns = ProtoField.new("Num Elapsed Returns", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.numelapsedreturns", ftypes.UINT16)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.num_final_returns = ProtoField.new("Num Final Returns", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.numfinalreturns", ftypes.UINT16)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.open_interest = ProtoField.new("Open Interest", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.openinterest", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.open_price = ProtoField.new("Open Price", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.openprice", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.order_count = ProtoField.new("Order Count", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.ordercount", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.order_id = ProtoField.new("Order Id", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.orderid", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.packet = ProtoField.new("Packet", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.packet", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.packet_header = ProtoField.new("Packet Header", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.packetheader", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.password = ProtoField.new("Password", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.password", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.price_binary_price_8 = ProtoField.new("Price Binary Price 8", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.pricebinaryprice8", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.price_binary_short_price_2 = ProtoField.new("Price Binary Short Price 2", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.pricebinaryshortprice2", ftypes.DOUBLE)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.price_increment = ProtoField.new("Price Increment", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.priceincrement", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.quantity_binary_2 = ProtoField.new("Quantity Binary 2", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.quantitybinary2", ftypes.UINT16)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.quantity_binary_4 = ProtoField.new("Quantity Binary 4", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.quantitybinary4", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.report_symbol = ProtoField.new("Report Symbol", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.reportsymbol", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.reserved1", ftypes.UINT8)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.reserved2", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.reserved3", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.sequence = ProtoField.new("Sequence", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.sequence", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.sessionsubid", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.settlementprice", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.sideindicator", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.spinresponsestatus", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.symbol = ProtoField.new("Symbol", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.symbol", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_offset = ProtoField.new("Time Offset", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.timeoffset", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_reference = ProtoField.new("Time Reference", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.timereference", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.total_volume = ProtoField.new("Total Volume", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.totalvolume", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.trade_date = ProtoField.new("Trade Date", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.tradedate", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.trading_status = ProtoField.new("Trading Status", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.tradingstatus", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.unit = ProtoField.new("Unit", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.unit", ftypes.UINT8)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.unit_timestamp = ProtoField.new("Unit Timestamp", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.unittimestamp", ftypes.UINT32)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.upperpricelimit", ftypes.UINT64)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.username = ProtoField.new("Username", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.username", ftypes.STRING)

-- Cboe CfeFutures Spin MulticastDepthOfBook 1.2.13 Application Messages
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.addorderlongmessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.addordershortmessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.end_of_day_summary_message = ProtoField.new("End Of Day Summary Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.endofdaysummarymessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.futures_instrument_definition_message = ProtoField.new("Futures Instrument Definition Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.futuresinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.futures_variance_symbol_mapping_message = ProtoField.new("Futures Variance Symbol Mapping Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.futuresvariancesymbolmappingmessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.login_message = ProtoField.new("Login Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.loginmessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.loginresponsemessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.price_limits_message = ProtoField.new("Price Limits Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.pricelimitsmessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.settlementmessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.spinfinishedmessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.spinimageavailablemessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.spinrequestmessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.spinresponsemessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_message = ProtoField.new("Time Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.timemessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.timereferencemessage", ftypes.STRING)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.tradingstatusmessage", ftypes.STRING)

-- Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13 generated fields
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message_index = ProtoField.new("Message Index", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.messageindex", ftypes.UINT16)
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.timestamp = ProtoField.new("Timestamp", "cboe.cfefutures.multicastdepthofbook.spin.v1.2.13.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13 Show Options
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_application_messages then
    show.application_messages = omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_message then
    show.message = omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_message
  end
  if show.message_header ~= omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_message_header then
    show.message_header = omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_packet then
    show.packet = omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_packet_header then
    show.packet_header = omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_message_index then
    show.message_index = omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation = {}
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.data = function(packet)
  local key = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.key(packet)
  local data = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.flows[key]
  if data == nil then
    data = { midnight_reference = { last = nil, frames = {} }, time_reference = { last = nil, frames = {} } }
    cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.current = nil


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
-- Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13 Fields
-----------------------------------------------------------------------

-- Accrued Day Variance
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.accrued_day_variance = {}

-- Size: Accrued Day Variance
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.accrued_day_variance.size = 8

-- Display: Accrued Day Variance
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.accrued_day_variance.display = function(value)
  return "Accrued Day Variance: "..value
end

-- Dissect: Accrued Day Variance
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.accrued_day_variance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.accrued_day_variance.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.accrued_day_variance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.accrued_day_variance, range, value, display)

  return offset + length, value
end

-- Block Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.block_volume = {}

-- Size: Block Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.block_volume.size = 4

-- Display: Block Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.block_volume.display = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.block_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.block_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.block_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Close Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.close_price = {}

-- Size: Close Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.close_price.size = 8

-- Display: Close Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.close_price.display = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.close_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.close_price, range, value, display)

  return offset + length, value
end

-- Contract Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_date = {}

-- Size: Contract Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_date.size = 4

-- Display: Contract Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_date.display = function(value)
  return "Contract Date: "..value
end

-- Dissect: Contract Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.contract_date, range, value, display)

  return offset + length, value
end

-- Contract Size
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_size = {}

-- Size: Contract Size
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_size.size = 2

-- Display: Contract Size
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.count = {}

-- Size: Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.count.size = 1

-- Display: Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.count, range, value, display)

  return offset + length, value
end

-- Ecrp Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.ecrp_volume = {}

-- Size: Ecrp Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.ecrp_volume.size = 4

-- Display: Ecrp Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.ecrp_volume.display = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.ecrp_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.ecrp_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.ecrp_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.epoch_time = {}

-- Size: Epoch Time
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.epoch_time.size = 4

-- Display: Epoch Time
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Expiration Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.expiration_date = {}

-- Size: Expiration Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.expiration_date.size = 4

-- Display: Expiration Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.feed_symbol = {}

-- Size: Feed Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Filler
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.filler = {}

-- Size: Filler
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.filler.size = 2

-- Display: Filler
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.filler, range, value, display)

  return offset + length, value
end

-- Futures Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_symbol = {}

-- Size: Futures Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_symbol.size = 12

-- Display: Futures Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_symbol.display = function(value)
  return "Futures Symbol: "..value
end

-- Dissect: Futures Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.futures_symbol, range, value, display)

  return offset + length, value
end

-- High Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.high_price = {}

-- Size: High Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.high_price.size = 8

-- Display: High Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.high_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.high_price, range, value, display)

  return offset + length, value
end

-- Issue
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.issue = {}

-- Size: Issue
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.issue.size = 1

-- Display: Issue
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.issue.display = function(value)
  return "Issue: "..value
end

-- Dissect: Issue
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.issue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.issue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.issue, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_count = {}

-- Size: Leg Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_count.size = 1

-- Display: Leg Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Offset
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_offset = {}

-- Size: Leg Offset
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_offset.size = 1

-- Display: Leg Offset
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_offset.display = function(value)
  return "Leg Offset: "..value
end

-- Dissect: Leg Offset
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.leg_offset, range, value, display)

  return offset + length, value
end

-- Length
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.length = {}

-- Size: Length
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.length.size = 2

-- Display: Length
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.length, range, value, display)

  return offset + length, value
end

-- Listing State
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.listing_state = {}

-- Size: Listing State
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.listing_state.size = 1

-- Display: Listing State
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.listing_state.display = function(value)
  return "Listing State: "..value
end

-- Dissect: Listing State
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.listing_state.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.listing_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.listing_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.listing_state, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_status = {}

-- Size: Login Response Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_status.size = 1

-- Display: Login Response Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized Invalid Username Password (N)"
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
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Low Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.low_price = {}

-- Size: Low Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.low_price.size = 8

-- Display: Low Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.low_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Price Limit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.lower_price_limit = {}

-- Size: Lower Price Limit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.lower_price_limit.size = 8

-- Display: Lower Price Limit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Dissect: Lower Price Limit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.lower_price_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_length = {}

-- Size: Message Length
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_length.size = 1

-- Display: Message Length
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_type = {}

-- Size: Message Type
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_type.size = 1

-- Display: Message Type
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_type.display = function(value)
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
  if value == 0xB1 then
    return "Message Type: Time Reference Message (0xB1)"
  end
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0xBB then
    return "Message Type: Futures Instrument Definition Message (0xBB)"
  end
  if value == 0xFA then
    return "Message Type: Futures Variance Symbol Mapping Message (0xFA)"
  end
  if value == 0x21 then
    return "Message Type: Add Order Long Message (0x21)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0xB9 then
    return "Message Type: Settlement Message (0xB9)"
  end
  if value == 0xBE then
    return "Message Type: Price Limits Message (0xBE)"
  end
  if value == 0xBA then
    return "Message Type: End Of Day Summary Message (0xBA)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference = {}

-- Size: Midnight Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.size = 4

-- Store: Midnight Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.current = nil

-- Generated: Midnight Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.generated = function(value, range, packet, parent)
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.display(value)
  local midnight_reference = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.midnight_reference, range, value, display)
  midnight_reference:set_generated()
end

-- Display: Midnight Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.display = function(value)
  -- Parse unix seconds timestamp
  return "Midnight Reference: "..os.date("%Y-%m-%d %H:%M:%S.", value)
end

-- Dissect: Midnight Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Num Elapsed Returns
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_elapsed_returns = {}

-- Size: Num Elapsed Returns
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_elapsed_returns.size = 2

-- Display: Num Elapsed Returns
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_elapsed_returns.display = function(value)
  return "Num Elapsed Returns: "..value
end

-- Dissect: Num Elapsed Returns
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_elapsed_returns.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_elapsed_returns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_elapsed_returns.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.num_elapsed_returns, range, value, display)

  return offset + length, value
end

-- Num Final Returns
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_final_returns = {}

-- Size: Num Final Returns
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_final_returns.size = 2

-- Display: Num Final Returns
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_final_returns.display = function(value)
  return "Num Final Returns: "..value
end

-- Dissect: Num Final Returns
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_final_returns.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_final_returns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_final_returns.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.num_final_returns, range, value, display)

  return offset + length, value
end

-- Open Interest
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_interest = {}

-- Size: Open Interest
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_interest.size = 4

-- Display: Open Interest
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_price = {}

-- Size: Open Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_price.size = 8

-- Display: Open Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.open_price, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_count = {}

-- Size: Order Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_count.size = 4

-- Display: Order Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id = {}

-- Size: Order Id
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id.size = 8

-- Display: Order Id
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.order_id, range, value, display)

  return offset + length, value
end

-- Password
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.password = {}

-- Size: Password
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.password.size = 10

-- Display: Password
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.password, range, value, display)

  return offset + length, value
end

-- Price Binary Price 8
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_price_8 = {}

-- Size: Price Binary Price 8
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_price_8.size = 8

-- Display: Price Binary Price 8
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_price_8.display = function(value)
  return "Price Binary Price 8: "..value
end

-- Dissect: Price Binary Price 8
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_price_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.price_binary_price_8, range, value, display)

  return offset + length, value
end

-- Price Binary Short Price 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2 = {}

-- Size: Price Binary Short Price 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2.size = 2

-- Display: Price Binary Short Price 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2.display = function(value)
  return "Price Binary Short Price 2: "..value
end

-- Translate: Price Binary Short Price 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price Binary Short Price 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2.translate(raw)
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.price_binary_short_price_2, range, value, display)

  return offset + length, value
end

-- Price Increment
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_increment = {}

-- Size: Price Increment
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_increment.size = 8

-- Display: Price Increment
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_increment.display = function(value)
  return "Price Increment: "..value
end

-- Dissect: Price Increment
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_increment.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Quantity Binary 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_2 = {}

-- Size: Quantity Binary 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_2.size = 2

-- Display: Quantity Binary 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_2.display = function(value)
  return "Quantity Binary 2: "..value
end

-- Dissect: Quantity Binary 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Quantity Binary 4
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_4 = {}

-- Size: Quantity Binary 4
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_4.size = 4

-- Display: Quantity Binary 4
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_4.display = function(value)
  return "Quantity Binary 4: "..value
end

-- Dissect: Quantity Binary 4
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Report Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.report_symbol = {}

-- Size: Report Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.report_symbol.size = 6

-- Display: Report Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.report_symbol.display = function(value)
  return "Report Symbol: "..value
end

-- Dissect: Report Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.report_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.report_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.report_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.report_symbol, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_1 = {}

-- Size: Reserved 1
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_1.size = 1

-- Display: Reserved 1
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_2 = {}

-- Size: Reserved 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_2.size = 2

-- Display: Reserved 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_3 = {}

-- Size: Reserved 3
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_3.size = 3

-- Display: Reserved 3
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence = {}

-- Size: Sequence
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.size = 4

-- Display: Sequence
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.session_sub_id = {}

-- Size: Session Sub Id
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Settlement Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_price = {}

-- Size: Settlement Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_price.size = 8

-- Display: Settlement Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator = {}

-- Size: Side Indicator
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator.size = 1

-- Display: Side Indicator
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator.display = function(value)
  return "Side Indicator: "..value
end

-- Dissect: Side Indicator
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_status = {}

-- Size: Spin Response Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_status.display = function(value)
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
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol = {}

-- Size: Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.size = 6

-- Display: Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset = {}

-- Size: Time Offset
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size = 4

-- Display: Time Offset
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Time Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference = {}

-- Size: Time Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.size = 4

-- Store: Time Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.current = nil

-- Generated: Time Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.generated = function(value, range, packet, parent)
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.display(value)
  local time_reference = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_reference, range, value, display)
  time_reference:set_generated()
end

-- Display: Time Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.display = function(value)
  return "Time Reference: "..value
end

-- Dissect: Time Reference
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_reference, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.total_volume = {}

-- Size: Total Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.total_volume.size = 4

-- Display: Total Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date = {}

-- Size: Trade Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.size = 4

-- Display: Trade Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status = {}

-- Size: Trading Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status.size = 1

-- Display: Trading Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status.display = function(value)
  if value == "S" then
    return "Trading Status: Suspended (S)"
  end
  if value == "Q" then
    return "Trading Status: Queuing (Q)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit = {}

-- Size: Unit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit.size = 1

-- Display: Unit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.unit, range, value, display)

  return offset + length, value
end

-- Unit Timestamp
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp = {}

-- Size: Unit Timestamp
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp.size = 4

-- Display: Unit Timestamp
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp.display = function(value)
  return "Unit Timestamp: "..value
end

-- Dissect: Unit Timestamp
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.unit_timestamp, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.upper_price_limit = {}

-- Size: Upper Price Limit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.upper_price_limit.size = 8

-- Display: Upper Price Limit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Dissect: Upper Price Limit
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.upper_price_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.upper_price_limit, range, value, display)

  return offset + length, value
end

-- Username
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.username = {}

-- Size: Username
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.username.size = 4

-- Display: Username
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp = {}

-- Translate: Timestamp
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.translate = function(time_offset, stored_midnight_reference, stored_time_reference)
  return UInt64.new(stored_midnight_reference + stored_time_reference * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.display = function(time_offset, stored_midnight_reference, stored_time_reference)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_midnight_reference + stored_time_reference)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.composite = function(buffer, offset, stored_midnight_reference, stored_time_reference, packet, parent)
  local length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.translate(time_offset, stored_midnight_reference, stored_time_reference)
  local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.display(time_offset, stored_midnight_reference, stored_time_reference)
  parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.timestamp, range, value, display)

  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.generated(stored_time_reference, range, packet, parent)

  display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.display(time_offset)
  parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_midnight_reference = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.current
  local stored_time_reference = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.current

  if stored_midnight_reference ~= nil and stored_time_reference ~= nil then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.composite(buffer, offset, stored_midnight_reference, stored_time_reference, packet, parent)
  end

  return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13
-----------------------------------------------------------------------

-- End Of Day Summary Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.end_of_day_summary_message = {}

-- Size: End Of Day Summary Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.end_of_day_summary_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_interest.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.high_price.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.low_price.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_price.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.close_price.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.total_volume.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.block_volume.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.ecrp_volume.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.summary_flags.size

-- Display: End Of Day Summary Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Summary Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Binary
  index, open_interest = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_interest.dissect(buffer, index, packet, parent)

  -- High Price: Binary Price
  index, high_price = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary Price
  index, low_price = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.low_price.dissect(buffer, index, packet, parent)

  -- Open Price: Binary Price
  index, open_price = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.open_price.dissect(buffer, index, packet, parent)

  -- Close Price: Binary Price
  index, close_price = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.close_price.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.total_volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Binary
  index, block_volume = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.block_volume.dissect(buffer, index, packet, parent)

  -- Ecrp Volume: Binary
  index, ecrp_volume = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.ecrp_volume.dissect(buffer, index, packet, parent)

  -- Summary Flags
  index, summary_flags = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Summary Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Limits Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_limits_message = {}

-- Size: Price Limits Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_limits_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.upper_price_limit.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.lower_price_limit.size

-- Display: Price Limits Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_limits_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Limits Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_limits_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: Binary Price
  index, upper_price_limit = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: Binary Price
  index, lower_price_limit = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.lower_price_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Limits Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_limits_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.price_limits_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_limits_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_limits_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_limits_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_message = {}

-- Size: Settlement Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_price.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.issue.size

-- Display: Settlement Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.dissect(buffer, index, packet, parent)

  -- Settlement Price: Binary Price
  index, settlement_price = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_price.dissect(buffer, index, packet, parent)

  -- Issue: Alphanumeric
  index, issue = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.issue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.settlement_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status_message = {}

-- Size: Trading Status Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_2.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_3.size

-- Display: Trading Status Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alphanumeric
  index, reserved_3 = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_short_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_2.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2.size

-- Display: Add Order Short Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 2: Binary
  index, quantity_binary_2 = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_2.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.dissect(buffer, index, packet, parent)

  -- Price Binary Short Price 2: Binary Short Price
  index, price_binary_short_price_2 = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_short_price_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_long_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_4.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_price_8.size

-- Display: Add Order Long Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 4: Binary
  index, quantity_binary_4 = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.dissect(buffer, index, packet, parent)

  -- Price Binary Price 8: Binary Price
  index, price_binary_price_8 = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_binary_price_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Variance Symbol Mapping Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_variance_symbol_mapping_message = {}

-- Size: Futures Variance Symbol Mapping Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_variance_symbol_mapping_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.feed_symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.accrued_day_variance.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_final_returns.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_elapsed_returns.size

-- Display: Futures Variance Symbol Mapping Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_variance_symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Variance Symbol Mapping Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_variance_symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: Binary
  index, unit_timestamp = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.feed_symbol.dissect(buffer, index, packet, parent)

  -- Futures Symbol: Alphanumeric
  index, futures_symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_symbol.dissect(buffer, index, packet, parent)

  -- Accrued Day Variance: Signed Binary
  index, accrued_day_variance = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.accrued_day_variance.dissect(buffer, index, packet, parent)

  -- Num Final Returns: Binary
  index, num_final_returns = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_final_returns.dissect(buffer, index, packet, parent)

  -- Num Elapsed Returns: Binary
  index, num_elapsed_returns = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.num_elapsed_returns.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Variance Symbol Mapping Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_variance_symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.futures_variance_symbol_mapping_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_variance_symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_variance_symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_variance_symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Instrument Definition Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_instrument_definition_message = {}

-- Size: Futures Instrument Definition Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_instrument_definition_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.report_symbol.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_flags.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.expiration_date.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_size.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.listing_state.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_increment.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_count.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_1.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_date.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.future_leg.size

-- Display: Futures Instrument Definition Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Definition Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.symbol.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: Binary
  index, unit_timestamp = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Report Symbol: Alphanumeric
  index, report_symbol = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.report_symbol.dissect(buffer, index, packet, parent)

  -- Futures Flags
  index, futures_flags = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_flags.dissect(buffer, index, packet, parent)

  -- Expiration Date: Binary Date
  index, expiration_date = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.expiration_date.dissect(buffer, index, packet, parent)

  -- Contract Size: Binary
  index, contract_size = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_size.dissect(buffer, index, packet, parent)

  -- Listing State: Alphanumeric
  index, listing_state = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.listing_state.dissect(buffer, index, packet, parent)

  -- Price Increment: Binary Price
  index, price_increment = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_increment.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_count.dissect(buffer, index, packet, parent)

  -- Leg Offset: Binary
  index, leg_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.leg_offset.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.reserved_1.dissect(buffer, index, packet, parent)

  -- Contract Date: Binary Date
  index, contract_date = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.contract_date.dissect(buffer, index, packet, parent)

  -- Future Leg
  index, future_leg = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.future_leg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Definition Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.futures_instrument_definition_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_message = {}

-- Size: Time Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.epoch_time.size

-- Display: Time Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Reference: Binary
  index, time_reference = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.epoch_time.dissect(buffer, index, packet, parent)

  -- Store Time Reference Value
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.current = time_reference

  if not packet.visited then
    cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.current.time_reference.last = time_reference
  end

  return index
end

-- Dissect: Time Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference_message = {}

-- Size: Time Reference Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_offset.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.size

-- Display: Time Reference Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time Reference: Binary
  index, time_reference = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.dissect(buffer, index, packet, parent)

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trade_date.dissect(buffer, index, packet, parent)

  -- Store Midnight Reference Value
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.current = midnight_reference

  if not packet.visited then
    cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.current.midnight_reference.last = midnight_reference
  end

  -- Store Time Reference Value
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.current = time_reference

  if not packet.visited then
    cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.current.time_reference.last = time_reference
  end

  return index
end

-- Dissect: Time Reference Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_finished_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.size

-- Display: Spin Finished Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_message = {}

-- Size: Spin Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_count.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_status.size

-- Display: Spin Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_request_message = {}

-- Size: Spin Request Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_request_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.size

-- Display: Spin Request Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_image_available_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.size

-- Display: Spin Image Available Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_message = {}

-- Size: Login Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_status.size

-- Display: Login Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.login_response_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_message = {}

-- Size: Login Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_message.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.session_sub_id.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.username.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.filler.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.password.size

-- Display: Login Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.login_message, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.payload = {}

-- Dissect: Payload
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Definition Message
  if message_type == 0xBB then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Variance Symbol Mapping Message
  if message_type == 0xFA then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.futures_variance_symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Message
  if message_type == 0xB9 then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.settlement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Limits Message
  if message_type == 0xBE then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.price_limits_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_header = {}

-- Size: Message Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_header.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_length.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_type.size

-- Display: Message Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message_header, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message = {}

-- Read runtime size of: Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 16 branches
  index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.message, buffer(offset, 0))
    local current = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.messages = {}

-- Dissect: Messages
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header = {}

-- Size: Packet Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header.size =
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.length.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.count.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit.size + 
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.size

-- Display: Packet Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.fields.packet_header, buffer(offset, 0))
    local index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet = {}

-- Verify required size of Tcp packet
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header.size
end

-- Dissect Packet
cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.data(packet)
  if not packet.visited then
    data.midnight_reference.frames[packet.number] = data.midnight_reference.last
    data.time_reference.frames[packet.number] = data.time_reference.last
    data.time_reference.frames[packet.number] = data.time_reference.last
  end
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.current = data.midnight_reference.frames[packet.number]
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.current = data.time_reference.frames[packet.number]
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.current = data.time_reference.frames[packet.number]
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.init()
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.midnight_reference.current = nil
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.time_reference.current = nil
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.current = nil
  cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.conversation.flows = {}
end

-- Dissector for Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13
function omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13, buffer(), omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.description, "("..buffer:len().." Bytes)")
  return cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13 (Tcp)
local function omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13
  omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13
omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13:register_heuristic("tcp", omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13_tcp_heuristic)

-- Register Cboe CfeFutures MulticastDepthOfBook Spin 1.2.13 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_cfefutures_multicastdepthofbook_spin_v1_2_13)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.2.13
--   Date: Monday, April 7, 2025
--   Specification: Cboe Futures Exchange Multicast PITCH Specification (2025-05-04).pdf
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
