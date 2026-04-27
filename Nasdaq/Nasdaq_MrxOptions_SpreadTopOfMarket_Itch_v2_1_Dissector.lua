-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1 Protocol
local omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1 = Proto("Nasdaq.MrxOptions.SpreadTopOfMarket.Itch.v2.1.Lua", "Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1")

-- Protocol table
local nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1 Fields
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_cust_size = ProtoField.new("Ask Cust Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.askcustsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_dntt_market_size = ProtoField.new("Ask Dntt Market Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.askdnttmarketsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_dntt_size = ProtoField.new("Ask Dntt Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.askdnttsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_market_size = ProtoField.new("Ask Market Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.askmarketsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.askprice", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_pro_cust_size = ProtoField.new("Ask Pro Cust Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.askprocustsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.asksize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_cust_size = ProtoField.new("Bid Cust Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.bidcustsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_dntt_market_size = ProtoField.new("Bid Dntt Market Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.biddnttmarketsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_dntt_size = ProtoField.new("Bid Dntt Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.biddnttsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_market_size = ProtoField.new("Bid Market Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.bidmarketsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.bidprice", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_pro_cust_size = ProtoField.new("Bid Pro Cust Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.bidprocustsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.bidsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.cust_size = ProtoField.new("Cust Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.custsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.dntt_market_size = ProtoField.new("Dntt Market Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.dnttmarketsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.dntt_size = ProtoField.new("Dntt Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.dnttsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.leginformation", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.legratio", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.market_size = ProtoField.new("Market Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.marketsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.numberoflegs", ftypes.UINT8)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.option_id = ProtoField.new("Option Id", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.optionid", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.packet", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.packetheader", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.packetlength", ftypes.UINT16)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.packettype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.password = ProtoField.new("Password", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.password", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.price = ProtoField.new("Price", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.price", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.pro_cust_size = ProtoField.new("Pro Cust Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.procustsize", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.quotecondition", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.rejectreasoncode", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.requestedsession", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.reserved16", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.sequencenumber", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.session", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.side = ProtoField.new("Side", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.side", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.size = ProtoField.new("Size", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.size", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.snapshot_sequence_number = ProtoField.new("Snapshot Sequence Number", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.snapshotsequencenumber", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.soupbintcppacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.strategyid", ftypes.UINT32)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.strategytype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.text = ProtoField.new("Text", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.text", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.underlyingsymbol", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.username = ProtoField.new("Username", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.username", ftypes.STRING)

-- Nasdaq MrxOptions Itch SpreadTopOfMarket 2.1 Application Messages
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.best_ask_update_message = ProtoField.new("Best Ask Update Message", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.bestaskupdatemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.best_bid_and_ask_update_message = ProtoField.new("Best Bid And Ask Update Message", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.bestbidandaskupdatemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.best_bid_update_message = ProtoField.new("Best Bid Update Message", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.bestbidupdatemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.complexstrategydirectorymessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.snapshot_message = ProtoField.new("Snapshot Message", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.snapshotmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.strategytradingactionmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.systemeventmessage", ftypes.STRING)

-- Nasdaq MrxOptions Itch SpreadTopOfMarket 2.1 Session Messages
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.debugpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.loginrequestpacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1 generated fields
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.leg_information_index = ProtoField.new("Leg Information Index", "nasdaq.mrxoptions.spreadtopofmarket.itch.v2.1.leginformationindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.leg_information = true
show.packet = true
show.packet_header = true
show.soup_bin_tcp_packet = true
show.leg_information_index = true

-- Register Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1 Show Options
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_leg_information_index = Pref.bool("Show Leg Information Index", show.leg_information_index, "Show generated leg information index in protocol tree")

-- Handle changed preferences
function omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_application_messages
  end
  if show.leg_information ~= omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_leg_information then
    show.leg_information = omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_leg_information
  end
  if show.packet ~= omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_packet then
    show.packet = omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_packet_header
  end
  if show.session_messages ~= omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_session_messages
  end
  if show.soup_bin_tcp_packet ~= omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_soup_bin_tcp_packet
  end
  if show.leg_information_index ~= omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_leg_information_index then
    show.leg_information_index = omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.prefs.show_leg_information_index
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
-- Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1 Fields
-----------------------------------------------------------------------

-- Ask Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_cust_size = {}

-- Size: Ask Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_cust_size.size = 4

-- Display: Ask Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_cust_size.display = function(value)
  return "Ask Cust Size: "..value
end

-- Dissect: Ask Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_cust_size, range, value, display)

  return offset + length, value
end

-- Ask Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_market_size = {}

-- Size: Ask Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_market_size.size = 4

-- Display: Ask Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_market_size.display = function(value)
  return "Ask Dntt Market Size: "..value
end

-- Dissect: Ask Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_dntt_market_size, range, value, display)

  return offset + length, value
end

-- Ask Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_size = {}

-- Size: Ask Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_size.size = 4

-- Display: Ask Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_size.display = function(value)
  return "Ask Dntt Size: "..value
end

-- Dissect: Ask Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_dntt_size, range, value, display)

  return offset + length, value
end

-- Ask Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_market_size = {}

-- Size: Ask Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_market_size.size = 4

-- Display: Ask Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_market_size.display = function(value)
  return "Ask Market Size: "..value
end

-- Dissect: Ask Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_market_size, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_price = {}

-- Size: Ask Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_price.size = 4

-- Display: Ask Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_pro_cust_size = {}

-- Size: Ask Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_pro_cust_size.size = 4

-- Display: Ask Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_pro_cust_size.display = function(value)
  return "Ask Pro Cust Size: "..value
end

-- Dissect: Ask Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_pro_cust_size, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_size = {}

-- Size: Ask Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_size.size = 4

-- Display: Ask Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Bid Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_cust_size = {}

-- Size: Bid Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_cust_size.size = 4

-- Display: Bid Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_cust_size.display = function(value)
  return "Bid Cust Size: "..value
end

-- Dissect: Bid Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_cust_size, range, value, display)

  return offset + length, value
end

-- Bid Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_market_size = {}

-- Size: Bid Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_market_size.size = 4

-- Display: Bid Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_market_size.display = function(value)
  return "Bid Dntt Market Size: "..value
end

-- Dissect: Bid Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_dntt_market_size, range, value, display)

  return offset + length, value
end

-- Bid Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_size = {}

-- Size: Bid Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_size.size = 4

-- Display: Bid Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_size.display = function(value)
  return "Bid Dntt Size: "..value
end

-- Dissect: Bid Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_dntt_size, range, value, display)

  return offset + length, value
end

-- Bid Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_market_size = {}

-- Size: Bid Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_market_size.size = 4

-- Display: Bid Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_market_size.display = function(value)
  return "Bid Market Size: "..value
end

-- Dissect: Bid Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_market_size, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_price = {}

-- Size: Bid Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_price.size = 4

-- Display: Bid Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_pro_cust_size = {}

-- Size: Bid Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_pro_cust_size.size = 4

-- Display: Bid Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_pro_cust_size.display = function(value)
  return "Bid Pro Cust Size: "..value
end

-- Dissect: Bid Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_pro_cust_size, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_size = {}

-- Size: Bid Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_size.size = 4

-- Display: Bid Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Continuous Trading (T)"
  end
  if value == "I" then
    return "Current Trading State: Pre Open (I)"
  end
  if value == "O" then
    return "Current Trading State: Opening Auction (O)"
  end
  if value == "R" then
    return "Current Trading State: Re Opening (R)"
  end
  if value == "X" then
    return "Current Trading State: Closed (X)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size = {}

-- Size: Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size.size = 4

-- Display: Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size.display = function(value)
  return "Cust Size: "..value
end

-- Dissect: Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.cust_size, range, value, display)

  return offset + length, value
end

-- Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size = {}

-- Size: Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size.size = 4

-- Display: Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size.display = function(value)
  return "Dntt Market Size: "..value
end

-- Dissect: Dntt Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.dntt_market_size, range, value, display)

  return offset + length, value
end

-- Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size = {}

-- Size: Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size.size = 4

-- Display: Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size.display = function(value)
  return "Dntt Size: "..value
end

-- Dissect: Dntt Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.dntt_size, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
  end
  if value == "N" then
    return "Event Code: Start Of Normal Hours Closing Process (N)"
  end
  if value == "L" then
    return "Event Code: Start Of Late Hours Closing Process (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size = {}

-- Size: Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size.size = 4

-- Display: Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size.display = function(value)
  return "Market Size: "..value
end

-- Dissect: Market Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.market_size, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_id = {}

-- Size: Option Id
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_id.size = 4

-- Display: Option Id
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_type = {}

-- Size: Option Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_length = {}

-- Size: Packet Length
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_type = {}

-- Size: Packet Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_type.size = 1

-- Display: Packet Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.password = {}

-- Size: Password
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.password.size = 10

-- Display: Password
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price = {}

-- Size: Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price.size = 4

-- Display: Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size = {}

-- Size: Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size.size = 4

-- Display: Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size.display = function(value)
  return "Pro Cust Size: "..value
end

-- Dissect: Pro Cust Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.pro_cust_size, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition = {}

-- Size: Quote Condition
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.display = function(value)
  return "Quote Condition: "..value
end

-- Dissect: Quote Condition
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_session = {}

-- Size: Requested Session
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "s" then
    return "Sequenced Message Type: Complex Strategy Directory Message (s)"
  end
  if value == "H" then
    return "Sequenced Message Type: Strategy Trading Action Message (H)"
  end
  if value == "E" then
    return "Sequenced Message Type: Best Bid And Ask Update Message (E)"
  end
  if value == "c" then
    return "Sequenced Message Type: Best Bid Update Message (c)"
  end
  if value == "d" then
    return "Sequenced Message Type: Best Ask Update Message (d)"
  end
  if value == "M" then
    return "Sequenced Message Type: Snapshot Message (M)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.session = {}

-- Size: Session
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.session.size = 10

-- Display: Session
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.side = {}

-- Size: Side
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.side.size = 1

-- Display: Side
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size = {}

-- Size: Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size.size = 4

-- Display: Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.size, range, value, display)

  return offset + length, value
end

-- Snapshot Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_sequence_number = {}

-- Size: Snapshot Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_sequence_number.size = 20

-- Display: Snapshot Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_sequence_number.display = function(value)
  return "Snapshot Sequence Number: "..value
end

-- Dissect: Snapshot Sequence Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.snapshot_sequence_number, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id = {}

-- Size: Strategy Id
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strategy Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_type = {}

-- Size: Strategy Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_type.size = 1

-- Display: Strategy Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_type.display = function(value)
  if value == "V" then
    return "Strategy Type: Vertical Spread (V)"
  end
  if value == "T" then
    return "Strategy Type: Time Spread (T)"
  end
  if value == "D" then
    return "Strategy Type: Diagonal Spread (D)"
  end
  if value == "S" then
    return "Strategy Type: Straddle (S)"
  end
  if value == "G" then
    return "Strategy Type: Strangle (G)"
  end
  if value == "C" then
    return "Strategy Type: Combo (C)"
  end
  if value == "R" then
    return "Strategy Type: Risk Reversal (R)"
  end
  if value == "A" then
    return "Strategy Type: Ratio Spread (A)"
  end
  if value == "B" then
    return "Strategy Type: Box Spread (B)"
  end
  if value == "F" then
    return "Strategy Type: Butterfly Spread (F)"
  end
  if value == "U" then
    return "Strategy Type: Custom (U)"
  end

  return "Strategy Type: Unknown("..value..")"
end

-- Dissect: Strategy Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.text = {}

-- Size: Text
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.text.size = 1

-- Display: Text
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.username = {}

-- Size: Username
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.username.size = 6

-- Display: Username
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1
-----------------------------------------------------------------------

-- Unsequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message
  index, unsequenced_message = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_request_packet.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.username.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.password.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_session.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_message = {}

-- Size: Snapshot Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_message.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_sequence_number.size

-- Display: Snapshot Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Sequence Number: Alphanumeric
  index, snapshot_sequence_number = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.snapshot_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_ask_update_message = {}

-- Size: Best Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_ask_update_message.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size.size

-- Display: Best Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Size: Integer
  index, market_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size.dissect(buffer, index, packet, parent)

  -- Cust Size: Integer
  index, cust_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size.dissect(buffer, index, packet, parent)

  -- Pro Cust Size: Integer
  index, pro_cust_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size.dissect(buffer, index, packet, parent)

  -- Dntt Size: Integer
  index, dntt_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size.dissect(buffer, index, packet, parent)

  -- Dntt Market Size: Integer
  index, dntt_market_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.best_ask_update_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_update_message = {}

-- Size: Best Bid Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_update_message.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size.size

-- Display: Best Bid Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Size: Integer
  index, market_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.market_size.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.price.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.size.dissect(buffer, index, packet, parent)

  -- Cust Size: Integer
  index, cust_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.cust_size.dissect(buffer, index, packet, parent)

  -- Pro Cust Size: Integer
  index, pro_cust_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.pro_cust_size.dissect(buffer, index, packet, parent)

  -- Dntt Size: Integer
  index, dntt_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_size.dissect(buffer, index, packet, parent)

  -- Dntt Market Size: Integer
  index, dntt_market_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dntt_market_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.best_bid_update_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid And Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_and_ask_update_message = {}

-- Size: Best Bid And Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_and_ask_update_message.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_market_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_price.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_cust_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_pro_cust_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_market_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_market_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_price.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_cust_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_pro_cust_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_size.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_market_size.size

-- Display: Best Bid And Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_and_ask_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_and_ask_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Market Size: Integer
  index, bid_market_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_market_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Integer
  index, bid_price = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Cust Size: Integer
  index, bid_cust_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_cust_size.dissect(buffer, index, packet, parent)

  -- Bid Pro Cust Size: Integer
  index, bid_pro_cust_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_pro_cust_size.dissect(buffer, index, packet, parent)

  -- Bid Dntt Size: Integer
  index, bid_dntt_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_size.dissect(buffer, index, packet, parent)

  -- Bid Dntt Market Size: Integer
  index, bid_dntt_market_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.bid_dntt_market_size.dissect(buffer, index, packet, parent)

  -- Ask Market Size: Integer
  index, ask_market_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_market_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Integer
  index, ask_price = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Cust Size: Integer
  index, ask_cust_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_cust_size.dissect(buffer, index, packet, parent)

  -- Ask Pro Cust Size: Integer
  index, ask_pro_cust_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_pro_cust_size.dissect(buffer, index, packet, parent)

  -- Ask Dntt Size: Integer
  index, ask_dntt_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_size.dissect(buffer, index, packet, parent)

  -- Ask Dntt Market Size: Integer
  index, ask_dntt_market_size = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.ask_dntt_market_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_and_ask_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.best_bid_and_ask_update_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_and_ask_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_and_ask_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trading Action Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_trading_action_message = {}

-- Size: Strategy Trading Action Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_trading_action_message.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.current_trading_state.size

-- Display: Strategy Trading Action Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.strategy_trading_action_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Information
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_information = {}

-- Size: Leg Information
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_information.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_id.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.security_symbol.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_year.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_month.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_day.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.explicit_strike_price.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_type.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.side.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_ratio.size

-- Display: Leg Information
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Information
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_information.fields = function(buffer, offset, packet, parent, leg_information_index)
  local index = offset

  -- Implicit Leg Information Index
  if leg_information_index ~= nil and show.leg_information_index then
    local iteration = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.leg_information_index, leg_information_index)
    iteration:set_generated()
  end

  -- Option Id: Integer
  index, option_id = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_information.dissect = function(buffer, offset, packet, parent, leg_information_index)
  if show.leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.leg_information, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
  end
end

-- Complex Strategy Directory Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.complex_strategy_directory_message = {}

-- Calculate size of: Complex Strategy Directory Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.complex_strategy_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.size

  index = index + nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.size

  index = index + nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.size

  index = index + nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_type.size

  index = index + nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.underlying_symbol.size

  index = index + nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reserved_16.size

  index = index + nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.number_of_legs.size

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 25

  return index
end

-- Display: Complex Strategy Directory Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.complex_strategy_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.complex_strategy_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Strategy Type: Alphanumeric
  index, strategy_type = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Information
  for leg_information_index = 1, number_of_legs do
    index, leg_information = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.leg_information.dissect(buffer, index, packet, parent, leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.complex_strategy_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.complex_strategy_directory_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.complex_strategy_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.system_event_message.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if sequenced_message_type == "s" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.complex_strategy_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.strategy_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Message
  if sequenced_message_type == "E" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_and_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Message
  if sequenced_message_type == "c" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_bid_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Message
  if sequenced_message_type == "d" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.best_ask_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Message
  if sequenced_message_type == "M" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 7 values
  index, sequenced_message_type = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 7 branches
  index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_rejected_packet.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_accepted_packet.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.session.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.debug_packet = {}

-- Size: Debug Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.debug_packet.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.text.size

-- Display: Debug Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.payload = {}

-- Dissect: Payload
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet Header
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header = {}

-- Size: Packet Header
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header.size =
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_length.size + 
  nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_type.size

-- Display: Packet Header
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet = {}

-- Dissect Packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.init()
end

-- Dissector for Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1
function omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1, buffer(), omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Tcp packet
nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1 (Tcp)
local function omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1
  omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq MrxOptions SpreadTopOfMarket Itch 2.1
omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1:register_heuristic("tcp", omi_nasdaq_mrxoptions_spreadtopofmarket_itch_v2_1_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Friday, February 13, 2026
--   Specification: Options_Spread_Top_of_Market_Glimpse_Feed.pdf
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
