-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- NsxAustralia Nets Itch 4.2.55 Protocol
local omi_nsxaustralia_nets_itch_v4_2_55 = Proto("NsxAustralia.Nets.Itch.v4.2.55.Lua", "NsxAustralia Nets Itch 4.2.55")

-- Protocol table
local nsxaustralia_nets_itch_v4_2_55 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- NsxAustralia Nets Itch 4.2.55 Fields
omi_nsxaustralia_nets_itch_v4_2_55.fields.aggressor_firm_id = ProtoField.new("Aggressor Firm Id", "nsxaustralia.nets.itch.v4.2.55.aggressorfirmid", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.asset_type = ProtoField.new("Asset Type", "nsxaustralia.nets.itch.v4.2.55.assettype", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.attribute_type = ProtoField.new("Attribute Type", "nsxaustralia.nets.itch.v4.2.55.attributetype", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.attribute_value = ProtoField.new("Attribute Value", "nsxaustralia.nets.itch.v4.2.55.attributevalue", ftypes.INT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.best_bid = ProtoField.new("Best Bid", "nsxaustralia.nets.itch.v4.2.55.bestbid", ftypes.INT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.best_bid_size = ProtoField.new("Best Bid Size", "nsxaustralia.nets.itch.v4.2.55.bestbidsize", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.best_offer = ProtoField.new("Best Offer", "nsxaustralia.nets.itch.v4.2.55.bestoffer", ftypes.INT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.best_offer_size = ProtoField.new("Best Offer Size", "nsxaustralia.nets.itch.v4.2.55.bestoffersize", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.board = ProtoField.new("Board", "nsxaustralia.nets.itch.v4.2.55.board", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.buy_firm_id = ProtoField.new("Buy Firm Id", "nsxaustralia.nets.itch.v4.2.55.buyfirmid", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.cross_type = ProtoField.new("Cross Type", "nsxaustralia.nets.itch.v4.2.55.crosstype", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.currency = ProtoField.new("Currency", "nsxaustralia.nets.itch.v4.2.55.currency", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.event_code = ProtoField.new("Event Code", "nsxaustralia.nets.itch.v4.2.55.eventcode", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.event_status = ProtoField.new("Event Status", "nsxaustralia.nets.itch.v4.2.55.eventstatus", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.executed_quantity = ProtoField.new("Executed Quantity", "nsxaustralia.nets.itch.v4.2.55.executedquantity", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.execution_price = ProtoField.new("Execution Price", "nsxaustralia.nets.itch.v4.2.55.executionprice", ftypes.INT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.expiry = ProtoField.new("Expiry", "nsxaustralia.nets.itch.v4.2.55.expiry", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.firm_code = ProtoField.new("Firm Code", "nsxaustralia.nets.itch.v4.2.55.firmcode", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.firm_id = ProtoField.new("Firm Id", "nsxaustralia.nets.itch.v4.2.55.firmid", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.group = ProtoField.new("Group", "nsxaustralia.nets.itch.v4.2.55.group", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.index_orderbook = ProtoField.new("Index Orderbook", "nsxaustralia.nets.itch.v4.2.55.indexorderbook", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.index_value = ProtoField.new("Index Value", "nsxaustralia.nets.itch.v4.2.55.indexvalue", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.isin = ProtoField.new("Isin", "nsxaustralia.nets.itch.v4.2.55.isin", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.listing = ProtoField.new("Listing", "nsxaustralia.nets.itch.v4.2.55.listing", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.match_number = ProtoField.new("Match Number", "nsxaustralia.nets.itch.v4.2.55.matchnumber", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.member_orderbook = ProtoField.new("Member Orderbook", "nsxaustralia.nets.itch.v4.2.55.memberorderbook", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "nsxaustralia.nets.itch.v4.2.55.minimumquantity", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.nanosecond = ProtoField.new("Nanosecond", "nsxaustralia.nets.itch.v4.2.55.nanosecond", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.new_order_number = ProtoField.new("New Order Number", "nsxaustralia.nets.itch.v4.2.55.newordernumber", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.news_id = ProtoField.new("News Id", "nsxaustralia.nets.itch.v4.2.55.newsid", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.news_text = ProtoField.new("News Text", "nsxaustralia.nets.itch.v4.2.55.newstext", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.order_number = ProtoField.new("Order Number", "nsxaustralia.nets.itch.v4.2.55.ordernumber", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.order_verb = ProtoField.new("Order Verb", "nsxaustralia.nets.itch.v4.2.55.orderverb", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.orderbook = ProtoField.new("Orderbook", "nsxaustralia.nets.itch.v4.2.55.orderbook", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.original_order_number = ProtoField.new("Original Order Number", "nsxaustralia.nets.itch.v4.2.55.originalordernumber", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.packet = ProtoField.new("Packet", "nsxaustralia.nets.itch.v4.2.55.packet", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.packet_header = ProtoField.new("Packet Header", "nsxaustralia.nets.itch.v4.2.55.packetheader", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.packet_length = ProtoField.new("Packet Length", "nsxaustralia.nets.itch.v4.2.55.packetlength", ftypes.UINT16)
omi_nsxaustralia_nets_itch_v4_2_55.fields.packet_type = ProtoField.new("Packet Type", "nsxaustralia.nets.itch.v4.2.55.packettype", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.password = ProtoField.new("Password", "nsxaustralia.nets.itch.v4.2.55.password", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.price = ProtoField.new("Price", "nsxaustralia.nets.itch.v4.2.55.price", ftypes.INT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.price_decimals = ProtoField.new("Price Decimals", "nsxaustralia.nets.itch.v4.2.55.pricedecimals", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.price_start = ProtoField.new("Price Start", "nsxaustralia.nets.itch.v4.2.55.pricestart", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "nsxaustralia.nets.itch.v4.2.55.priceticksizetableid", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.printable = ProtoField.new("Printable", "nsxaustralia.nets.itch.v4.2.55.printable", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.product = ProtoField.new("Product", "nsxaustralia.nets.itch.v4.2.55.product", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity = ProtoField.new("Quantity", "nsxaustralia.nets.itch.v4.2.55.quantity", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity_decimals = ProtoField.new("Quantity Decimals", "nsxaustralia.nets.itch.v4.2.55.quantitydecimals", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity_start = ProtoField.new("Quantity Start", "nsxaustralia.nets.itch.v4.2.55.quantitystart", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity_tick_size_table_id = ProtoField.new("Quantity Tick Size Table Id", "nsxaustralia.nets.itch.v4.2.55.quantityticksizetableid", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.reason = ProtoField.new("Reason", "nsxaustralia.nets.itch.v4.2.55.reason", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.reference_alpha_12 = ProtoField.new("Reference Alpha 12", "nsxaustralia.nets.itch.v4.2.55.referencealpha12", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.reference_null_terminated_char_256 = ProtoField.new("Reference Null Terminated Char 256", "nsxaustralia.nets.itch.v4.2.55.referencenullterminatedchar256", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nsxaustralia.nets.itch.v4.2.55.rejectreasoncode", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.remarks = ProtoField.new("Remarks", "nsxaustralia.nets.itch.v4.2.55.remarks", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nsxaustralia.nets.itch.v4.2.55.requestedsequencenumber", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.requested_session = ProtoField.new("Requested Session", "nsxaustralia.nets.itch.v4.2.55.requestedsession", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.scheduled_time = ProtoField.new("Scheduled Time", "nsxaustralia.nets.itch.v4.2.55.scheduledtime", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.security_code = ProtoField.new("Security Code", "nsxaustralia.nets.itch.v4.2.55.securitycode", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.security_name = ProtoField.new("Security Name", "nsxaustralia.nets.itch.v4.2.55.securityname", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.sell_firm_id = ProtoField.new("Sell Firm Id", "nsxaustralia.nets.itch.v4.2.55.sellfirmid", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.sequence_number = ProtoField.new("Sequence Number", "nsxaustralia.nets.itch.v4.2.55.sequencenumber", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nsxaustralia.nets.itch.v4.2.55.sequencedmessagetype", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.session = ProtoField.new("Session", "nsxaustralia.nets.itch.v4.2.55.session", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.settle_date = ProtoField.new("Settle Date", "nsxaustralia.nets.itch.v4.2.55.settledate", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nsxaustralia.nets.itch.v4.2.55.soupbintcppacket", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.text = ProtoField.new("Text", "nsxaustralia.nets.itch.v4.2.55.text", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.theoretical_opening_price = ProtoField.new("Theoretical Opening Price", "nsxaustralia.nets.itch.v4.2.55.theoreticalopeningprice", ftypes.INT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.theoretical_opening_quantity = ProtoField.new("Theoretical Opening Quantity", "nsxaustralia.nets.itch.v4.2.55.theoreticalopeningquantity", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.tick_size = ProtoField.new("Tick Size", "nsxaustralia.nets.itch.v4.2.55.ticksize", ftypes.UINT64)
omi_nsxaustralia_nets_itch_v4_2_55.fields.tick_size_table_id = ProtoField.new("Tick Size Table Id", "nsxaustralia.nets.itch.v4.2.55.ticksizetableid", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.timestamp = ProtoField.new("Timestamp", "nsxaustralia.nets.itch.v4.2.55.timestamp", ftypes.UINT32)
omi_nsxaustralia_nets_itch_v4_2_55.fields.title = ProtoField.new("Title", "nsxaustralia.nets.itch.v4.2.55.title", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.trade_indicator = ProtoField.new("Trade Indicator", "nsxaustralia.nets.itch.v4.2.55.tradeindicator", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.trade_source = ProtoField.new("Trade Source", "nsxaustralia.nets.itch.v4.2.55.tradesource", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.trading_state = ProtoField.new("Trading State", "nsxaustralia.nets.itch.v4.2.55.tradingstate", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nsxaustralia.nets.itch.v4.2.55.unsequencedmessagetype", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.username = ProtoField.new("Username", "nsxaustralia.nets.itch.v4.2.55.username", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.weight = ProtoField.new("Weight", "nsxaustralia.nets.itch.v4.2.55.weight", ftypes.UINT64)

-- NsxAustralia Itch Nets 4.2.55 Application Messages
omi_nsxaustralia_nets_itch_v4_2_55.fields.add_order_message = ProtoField.new("Add Order Message", "nsxaustralia.nets.itch.v4.2.55.addordermessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nsxaustralia.nets.itch.v4.2.55.brokentrademessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.firm_directory_message = ProtoField.new("Firm Directory Message", "nsxaustralia.nets.itch.v4.2.55.firmdirectorymessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.index_member_directory_message = ProtoField.new("Index Member Directory Message", "nsxaustralia.nets.itch.v4.2.55.indexmemberdirectorymessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.index_value_message = ProtoField.new("Index Value Message", "nsxaustralia.nets.itch.v4.2.55.indexvaluemessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.indicative_price_quantity_message = ProtoField.new("Indicative Price Quantity Message", "nsxaustralia.nets.itch.v4.2.55.indicativepricequantitymessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.news_message = ProtoField.new("News Message", "nsxaustralia.nets.itch.v4.2.55.newsmessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.order_delete_message = ProtoField.new("Order Delete Message", "nsxaustralia.nets.itch.v4.2.55.orderdeletemessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.order_executed_message = ProtoField.new("Order Executed Message", "nsxaustralia.nets.itch.v4.2.55.orderexecutedmessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nsxaustralia.nets.itch.v4.2.55.orderexecutedwithpricemessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.order_replace_message = ProtoField.new("Order Replace Message", "nsxaustralia.nets.itch.v4.2.55.orderreplacemessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.orderbook_attribute_message = ProtoField.new("Orderbook Attribute Message", "nsxaustralia.nets.itch.v4.2.55.orderbookattributemessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "nsxaustralia.nets.itch.v4.2.55.orderbookdirectorymessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.orderbook_trading_action_message = ProtoField.new("Orderbook Trading Action Message", "nsxaustralia.nets.itch.v4.2.55.orderbooktradingactionmessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "nsxaustralia.nets.itch.v4.2.55.priceticksizemessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity_tick_size_message = ProtoField.new("Quantity Tick Size Message", "nsxaustralia.nets.itch.v4.2.55.quantityticksizemessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.system_event_message = ProtoField.new("System Event Message", "nsxaustralia.nets.itch.v4.2.55.systemeventmessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.timestamp_message = ProtoField.new("Timestamp Message", "nsxaustralia.nets.itch.v4.2.55.timestampmessage", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.trade_message = ProtoField.new("Trade Message", "nsxaustralia.nets.itch.v4.2.55.trademessage", ftypes.STRING)

-- NsxAustralia Itch Nets 4.2.55 Session Messages
omi_nsxaustralia_nets_itch_v4_2_55.fields.debug_packet = ProtoField.new("Debug Packet", "nsxaustralia.nets.itch.v4.2.55.debugpacket", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nsxaustralia.nets.itch.v4.2.55.loginacceptedpacket", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nsxaustralia.nets.itch.v4.2.55.loginrejectedpacket", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.login_request_packet = ProtoField.new("Login Request Packet", "nsxaustralia.nets.itch.v4.2.55.loginrequestpacket", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nsxaustralia.nets.itch.v4.2.55.sequenceddatapacket", ftypes.STRING)
omi_nsxaustralia_nets_itch_v4_2_55.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nsxaustralia.nets.itch.v4.2.55.unsequenceddatapacket", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- NsxAustralia Nets Itch 4.2.55 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.packet = true
show.packet_header = true
show.soup_bin_tcp_packet = true

-- Register NsxAustralia Nets Itch 4.2.55 Show Options
omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")

-- Handle changed preferences
function omi_nsxaustralia_nets_itch_v4_2_55.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_application_messages then
    show.application_messages = omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_application_messages
  end
  if show.packet ~= omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_packet then
    show.packet = omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_packet
  end
  if show.packet_header ~= omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_packet_header then
    show.packet_header = omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_packet_header
  end
  if show.session_messages ~= omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_session_messages then
    show.session_messages = omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_session_messages
  end
  if show.soup_bin_tcp_packet ~= omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_nsxaustralia_nets_itch_v4_2_55.prefs.show_soup_bin_tcp_packet
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
-- NsxAustralia Nets Itch 4.2.55 Fields
-----------------------------------------------------------------------

-- Aggressor Firm Id
nsxaustralia_nets_itch_v4_2_55.aggressor_firm_id = {}

-- Size: Aggressor Firm Id
nsxaustralia_nets_itch_v4_2_55.aggressor_firm_id.size = 4

-- Display: Aggressor Firm Id
nsxaustralia_nets_itch_v4_2_55.aggressor_firm_id.display = function(value)
  return "Aggressor Firm Id: "..value
end

-- Dissect: Aggressor Firm Id
nsxaustralia_nets_itch_v4_2_55.aggressor_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.aggressor_firm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.aggressor_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.aggressor_firm_id, range, value, display)

  return offset + length, value
end

-- Asset Type
nsxaustralia_nets_itch_v4_2_55.asset_type = {}

-- Size: Asset Type
nsxaustralia_nets_itch_v4_2_55.asset_type.size = 1

-- Display: Asset Type
nsxaustralia_nets_itch_v4_2_55.asset_type.display = function(value)
  if value == "D" then
    return "Asset Type: Debt (D)"
  end
  if value == "E" then
    return "Asset Type: Equity (E)"
  end
  if value == "I" then
    return "Asset Type: Index (I)"
  end

  return "Asset Type: Unknown("..value..")"
end

-- Dissect: Asset Type
nsxaustralia_nets_itch_v4_2_55.asset_type.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.asset_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.asset_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.asset_type, range, value, display)

  return offset + length, value
end

-- Attribute Type
nsxaustralia_nets_itch_v4_2_55.attribute_type = {}

-- Size: Attribute Type
nsxaustralia_nets_itch_v4_2_55.attribute_type.size = 1

-- Display: Attribute Type
nsxaustralia_nets_itch_v4_2_55.attribute_type.display = function(value)
  if value == "R" then
    return "Attribute Type: Previous Day Close (R)"
  end
  if value == "C" then
    return "Attribute Type: Close Price (C)"
  end
  if value == "D" then
    return "Attribute Type: Etr Upper Limit Percentage (D)"
  end
  if value == "d" then
    return "Attribute Type: Etr Lower Limit Percentage (d)"
  end
  if value == "P" then
    return "Attribute Type: Aot Upper Limit Percentage (P)"
  end
  if value == "p" then
    return "Attribute Type: Aot Lower Limit Percentage (p)"
  end
  if value == "A" then
    return "Attribute Type: Aot Reference Price (A)"
  end
  if value == "B" then
    return "Attribute Type: Etr Reference Price (B)"
  end

  return "Attribute Type: Unknown("..value..")"
end

-- Dissect: Attribute Type
nsxaustralia_nets_itch_v4_2_55.attribute_type.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.attribute_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.attribute_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.attribute_type, range, value, display)

  return offset + length, value
end

-- Attribute Value
nsxaustralia_nets_itch_v4_2_55.attribute_value = {}

-- Size: Attribute Value
nsxaustralia_nets_itch_v4_2_55.attribute_value.size = 8

-- Display: Attribute Value
nsxaustralia_nets_itch_v4_2_55.attribute_value.display = function(value)
  return "Attribute Value: "..value
end

-- Dissect: Attribute Value
nsxaustralia_nets_itch_v4_2_55.attribute_value.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.attribute_value.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nsxaustralia_nets_itch_v4_2_55.attribute_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.attribute_value, range, value, display)

  return offset + length, value
end

-- Best Bid
nsxaustralia_nets_itch_v4_2_55.best_bid = {}

-- Size: Best Bid
nsxaustralia_nets_itch_v4_2_55.best_bid.size = 8

-- Display: Best Bid
nsxaustralia_nets_itch_v4_2_55.best_bid.display = function(value)
  return "Best Bid: "..value
end

-- Dissect: Best Bid
nsxaustralia_nets_itch_v4_2_55.best_bid.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.best_bid.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nsxaustralia_nets_itch_v4_2_55.best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.best_bid, range, value, display)

  return offset + length, value
end

-- Best Bid Size
nsxaustralia_nets_itch_v4_2_55.best_bid_size = {}

-- Size: Best Bid Size
nsxaustralia_nets_itch_v4_2_55.best_bid_size.size = 8

-- Display: Best Bid Size
nsxaustralia_nets_itch_v4_2_55.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
nsxaustralia_nets_itch_v4_2_55.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Best Offer
nsxaustralia_nets_itch_v4_2_55.best_offer = {}

-- Size: Best Offer
nsxaustralia_nets_itch_v4_2_55.best_offer.size = 8

-- Display: Best Offer
nsxaustralia_nets_itch_v4_2_55.best_offer.display = function(value)
  return "Best Offer: "..value
end

-- Dissect: Best Offer
nsxaustralia_nets_itch_v4_2_55.best_offer.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.best_offer.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nsxaustralia_nets_itch_v4_2_55.best_offer.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.best_offer, range, value, display)

  return offset + length, value
end

-- Best Offer Size
nsxaustralia_nets_itch_v4_2_55.best_offer_size = {}

-- Size: Best Offer Size
nsxaustralia_nets_itch_v4_2_55.best_offer_size.size = 8

-- Display: Best Offer Size
nsxaustralia_nets_itch_v4_2_55.best_offer_size.display = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
nsxaustralia_nets_itch_v4_2_55.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Board
nsxaustralia_nets_itch_v4_2_55.board = {}

-- Size: Board
nsxaustralia_nets_itch_v4_2_55.board.size = 20

-- Display: Board
nsxaustralia_nets_itch_v4_2_55.board.display = function(value)
  return "Board: "..value
end

-- Dissect: Board
nsxaustralia_nets_itch_v4_2_55.board.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.board.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.board.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.board, range, value, display)

  return offset + length, value
end

-- Buy Firm Id
nsxaustralia_nets_itch_v4_2_55.buy_firm_id = {}

-- Size: Buy Firm Id
nsxaustralia_nets_itch_v4_2_55.buy_firm_id.size = 4

-- Display: Buy Firm Id
nsxaustralia_nets_itch_v4_2_55.buy_firm_id.display = function(value)
  return "Buy Firm Id: "..value
end

-- Dissect: Buy Firm Id
nsxaustralia_nets_itch_v4_2_55.buy_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.buy_firm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.buy_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.buy_firm_id, range, value, display)

  return offset + length, value
end

-- Cross Type
nsxaustralia_nets_itch_v4_2_55.cross_type = {}

-- Size: Cross Type
nsxaustralia_nets_itch_v4_2_55.cross_type.size = 1

-- Display: Cross Type
nsxaustralia_nets_itch_v4_2_55.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Opening Auction (O)"
  end
  if value == "I" then
    return "Cross Type: Intraday Auction (I)"
  end
  if value == "C" then
    return "Cross Type: Closing Auction (C)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nsxaustralia_nets_itch_v4_2_55.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
nsxaustralia_nets_itch_v4_2_55.currency = {}

-- Size: Currency
nsxaustralia_nets_itch_v4_2_55.currency.size = 3

-- Display: Currency
nsxaustralia_nets_itch_v4_2_55.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
nsxaustralia_nets_itch_v4_2_55.currency.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.currency, range, value, display)

  return offset + length, value
end

-- Event Code
nsxaustralia_nets_itch_v4_2_55.event_code = {}

-- Size: Event Code
nsxaustralia_nets_itch_v4_2_55.event_code.size = 12

-- Display: Event Code
nsxaustralia_nets_itch_v4_2_55.event_code.display = function(value)
  if value == "IPXS-SOM" then
    return "Event Code: Intraday Ipxs Start Of Messages (IPXS-SOM)"
  end
  if value == "ENQUIRY" then
    return "Event Code: Enquiry (ENQUIRY)"
  end
  if value == "PREOPEN" then
    return "Event Code: Pre Open (PREOPEN)"
  end
  if value == "OPEN" then
    return "Event Code: Open (OPEN)"
  end
  if value == "HALT" then
    return "Event Code: Halt (HALT)"
  end
  if value == "MATCH_REJOIN" then
    return "Event Code: Match Rejoin (MATCH_REJOIN)"
  end
  if value == "CB_AUCT" then
    return "Event Code: Circuit Breaker Auction (CB_AUCT)"
  end
  if value == "CB_AUCT_END" then
    return "Event Code: Circuit Breaker Auction End (CB_AUCT_END)"
  end
  if value == "PRECLOSE" then
    return "Event Code: Pre Close (PRECLOSE)"
  end
  if value == "CLOSE" then
    return "Event Code: Close (CLOSE)"
  end
  if value == "END_OF_DAY" then
    return "Event Code: End Of Day (END_OF_DAY)"
  end
  if value == "IPXS-EOM" then
    return "Event Code: Intraday Ipxs End Of Messages (IPXS-EOM)"
  end
  if value == "IPXS-ENDSESS" then
    return "Event Code: Intraday Ipxs End Of Session (IPXS-ENDSESS)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nsxaustralia_nets_itch_v4_2_55.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.event_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.event_code, range, value, display)

  return offset + length, value
end

-- Event Status
nsxaustralia_nets_itch_v4_2_55.event_status = {}

-- Size: Event Status
nsxaustralia_nets_itch_v4_2_55.event_status.size = 1

-- Display: Event Status
nsxaustralia_nets_itch_v4_2_55.event_status.display = function(value)
  if value == "S" then
    return "Event Status: Scheduled (S)"
  end
  if value == "C" then
    return "Event Status: Canceled (C)"
  end
  if value == "T" then
    return "Event Status: Triggered (T)"
  end

  return "Event Status: Unknown("..value..")"
end

-- Dissect: Event Status
nsxaustralia_nets_itch_v4_2_55.event_status.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.event_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.event_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.event_status, range, value, display)

  return offset + length, value
end

-- Executed Quantity
nsxaustralia_nets_itch_v4_2_55.executed_quantity = {}

-- Size: Executed Quantity
nsxaustralia_nets_itch_v4_2_55.executed_quantity.size = 8

-- Display: Executed Quantity
nsxaustralia_nets_itch_v4_2_55.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
nsxaustralia_nets_itch_v4_2_55.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Price
nsxaustralia_nets_itch_v4_2_55.execution_price = {}

-- Size: Execution Price
nsxaustralia_nets_itch_v4_2_55.execution_price.size = 8

-- Display: Execution Price
nsxaustralia_nets_itch_v4_2_55.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Dissect: Execution Price
nsxaustralia_nets_itch_v4_2_55.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.execution_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nsxaustralia_nets_itch_v4_2_55.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Expiry
nsxaustralia_nets_itch_v4_2_55.expiry = {}

-- Size: Expiry
nsxaustralia_nets_itch_v4_2_55.expiry.size = 8

-- Display: Expiry
nsxaustralia_nets_itch_v4_2_55.expiry.display = function(value)
  return "Expiry: "..value
end

-- Dissect: Expiry
nsxaustralia_nets_itch_v4_2_55.expiry.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.expiry.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.expiry.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.expiry, range, value, display)

  return offset + length, value
end

-- Firm Code
nsxaustralia_nets_itch_v4_2_55.firm_code = {}

-- Size: Firm Code
nsxaustralia_nets_itch_v4_2_55.firm_code.size = 30

-- Display: Firm Code
nsxaustralia_nets_itch_v4_2_55.firm_code.display = function(value)
  return "Firm Code: "..value
end

-- Dissect: Firm Code
nsxaustralia_nets_itch_v4_2_55.firm_code.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.firm_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.firm_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.firm_code, range, value, display)

  return offset + length, value
end

-- Firm Id
nsxaustralia_nets_itch_v4_2_55.firm_id = {}

-- Size: Firm Id
nsxaustralia_nets_itch_v4_2_55.firm_id.size = 4

-- Display: Firm Id
nsxaustralia_nets_itch_v4_2_55.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nsxaustralia_nets_itch_v4_2_55.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.firm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Group
nsxaustralia_nets_itch_v4_2_55.group = {}

-- Size: Group
nsxaustralia_nets_itch_v4_2_55.group.size = 20

-- Display: Group
nsxaustralia_nets_itch_v4_2_55.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
nsxaustralia_nets_itch_v4_2_55.group.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.group, range, value, display)

  return offset + length, value
end

-- Index Orderbook
nsxaustralia_nets_itch_v4_2_55.index_orderbook = {}

-- Size: Index Orderbook
nsxaustralia_nets_itch_v4_2_55.index_orderbook.size = 4

-- Display: Index Orderbook
nsxaustralia_nets_itch_v4_2_55.index_orderbook.display = function(value)
  return "Index Orderbook: "..value
end

-- Dissect: Index Orderbook
nsxaustralia_nets_itch_v4_2_55.index_orderbook.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.index_orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.index_orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.index_orderbook, range, value, display)

  return offset + length, value
end

-- Index Value
nsxaustralia_nets_itch_v4_2_55.index_value = {}

-- Size: Index Value
nsxaustralia_nets_itch_v4_2_55.index_value.size = 8

-- Display: Index Value
nsxaustralia_nets_itch_v4_2_55.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
nsxaustralia_nets_itch_v4_2_55.index_value.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.index_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.index_value, range, value, display)

  return offset + length, value
end

-- Isin
nsxaustralia_nets_itch_v4_2_55.isin = {}

-- Size: Isin
nsxaustralia_nets_itch_v4_2_55.isin.size = 12

-- Display: Isin
nsxaustralia_nets_itch_v4_2_55.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
nsxaustralia_nets_itch_v4_2_55.isin.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.isin, range, value, display)

  return offset + length, value
end

-- Listing
nsxaustralia_nets_itch_v4_2_55.listing = {}

-- Size: Listing
nsxaustralia_nets_itch_v4_2_55.listing.size = 8

-- Display: Listing
nsxaustralia_nets_itch_v4_2_55.listing.display = function(value)
  return "Listing: "..value
end

-- Dissect: Listing
nsxaustralia_nets_itch_v4_2_55.listing.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.listing.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.listing.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.listing, range, value, display)

  return offset + length, value
end

-- Match Number
nsxaustralia_nets_itch_v4_2_55.match_number = {}

-- Size: Match Number
nsxaustralia_nets_itch_v4_2_55.match_number.size = 8

-- Display: Match Number
nsxaustralia_nets_itch_v4_2_55.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nsxaustralia_nets_itch_v4_2_55.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.match_number, range, value, display)

  return offset + length, value
end

-- Member Orderbook
nsxaustralia_nets_itch_v4_2_55.member_orderbook = {}

-- Size: Member Orderbook
nsxaustralia_nets_itch_v4_2_55.member_orderbook.size = 4

-- Display: Member Orderbook
nsxaustralia_nets_itch_v4_2_55.member_orderbook.display = function(value)
  return "Member Orderbook: "..value
end

-- Dissect: Member Orderbook
nsxaustralia_nets_itch_v4_2_55.member_orderbook.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.member_orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.member_orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.member_orderbook, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
nsxaustralia_nets_itch_v4_2_55.minimum_quantity = {}

-- Size: Minimum Quantity
nsxaustralia_nets_itch_v4_2_55.minimum_quantity.size = 8

-- Display: Minimum Quantity
nsxaustralia_nets_itch_v4_2_55.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
nsxaustralia_nets_itch_v4_2_55.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- Nanosecond
nsxaustralia_nets_itch_v4_2_55.nanosecond = {}

-- Size: Nanosecond
nsxaustralia_nets_itch_v4_2_55.nanosecond.size = 8

-- Display: Nanosecond
nsxaustralia_nets_itch_v4_2_55.nanosecond.display = function(value)
  return "Nanosecond: "..value
end

-- Dissect: Nanosecond
nsxaustralia_nets_itch_v4_2_55.nanosecond.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.nanosecond.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.nanosecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.nanosecond, range, value, display)

  return offset + length, value
end

-- New Order Number
nsxaustralia_nets_itch_v4_2_55.new_order_number = {}

-- Size: New Order Number
nsxaustralia_nets_itch_v4_2_55.new_order_number.size = 8

-- Display: New Order Number
nsxaustralia_nets_itch_v4_2_55.new_order_number.display = function(value)
  return "New Order Number: "..value
end

-- Dissect: New Order Number
nsxaustralia_nets_itch_v4_2_55.new_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.new_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.new_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.new_order_number, range, value, display)

  return offset + length, value
end

-- News Id
nsxaustralia_nets_itch_v4_2_55.news_id = {}

-- Size: News Id
nsxaustralia_nets_itch_v4_2_55.news_id.size = 4

-- Display: News Id
nsxaustralia_nets_itch_v4_2_55.news_id.display = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
nsxaustralia_nets_itch_v4_2_55.news_id.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.news_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.news_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.news_id, range, value, display)

  return offset + length, value
end

-- News Text
nsxaustralia_nets_itch_v4_2_55.news_text = {}

-- Size: News Text
nsxaustralia_nets_itch_v4_2_55.news_text.size = 512

-- Display: News Text
nsxaustralia_nets_itch_v4_2_55.news_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "News Text: No Value"
  end

  return "News Text: "..value
end

-- Dissect: News Text
nsxaustralia_nets_itch_v4_2_55.news_text.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.news_text.size
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

  local display = nsxaustralia_nets_itch_v4_2_55.news_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.news_text, range, value, display)

  return offset + length, value
end

-- Order Number
nsxaustralia_nets_itch_v4_2_55.order_number = {}

-- Size: Order Number
nsxaustralia_nets_itch_v4_2_55.order_number.size = 8

-- Display: Order Number
nsxaustralia_nets_itch_v4_2_55.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
nsxaustralia_nets_itch_v4_2_55.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Verb
nsxaustralia_nets_itch_v4_2_55.order_verb = {}

-- Size: Order Verb
nsxaustralia_nets_itch_v4_2_55.order_verb.size = 1

-- Display: Order Verb
nsxaustralia_nets_itch_v4_2_55.order_verb.display = function(value)
  if value == "B" then
    return "Order Verb: Buy (B)"
  end
  if value == "S" then
    return "Order Verb: Sell (S)"
  end

  return "Order Verb: Unknown("..value..")"
end

-- Dissect: Order Verb
nsxaustralia_nets_itch_v4_2_55.order_verb.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.order_verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.order_verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.order_verb, range, value, display)

  return offset + length, value
end

-- Orderbook
nsxaustralia_nets_itch_v4_2_55.orderbook = {}

-- Size: Orderbook
nsxaustralia_nets_itch_v4_2_55.orderbook.size = 4

-- Display: Orderbook
nsxaustralia_nets_itch_v4_2_55.orderbook.display = function(value)
  return "Orderbook: "..value
end

-- Dissect: Orderbook
nsxaustralia_nets_itch_v4_2_55.orderbook.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.orderbook, range, value, display)

  return offset + length, value
end

-- Original Order Number
nsxaustralia_nets_itch_v4_2_55.original_order_number = {}

-- Size: Original Order Number
nsxaustralia_nets_itch_v4_2_55.original_order_number.size = 8

-- Display: Original Order Number
nsxaustralia_nets_itch_v4_2_55.original_order_number.display = function(value)
  return "Original Order Number: "..value
end

-- Dissect: Original Order Number
nsxaustralia_nets_itch_v4_2_55.original_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.original_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.original_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.original_order_number, range, value, display)

  return offset + length, value
end

-- Packet Length
nsxaustralia_nets_itch_v4_2_55.packet_length = {}

-- Size: Packet Length
nsxaustralia_nets_itch_v4_2_55.packet_length.size = 2

-- Display: Packet Length
nsxaustralia_nets_itch_v4_2_55.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nsxaustralia_nets_itch_v4_2_55.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
nsxaustralia_nets_itch_v4_2_55.packet_type = {}

-- Size: Packet Type
nsxaustralia_nets_itch_v4_2_55.packet_type.size = 1

-- Display: Packet Type
nsxaustralia_nets_itch_v4_2_55.packet_type.display = function(value)
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
nsxaustralia_nets_itch_v4_2_55.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
nsxaustralia_nets_itch_v4_2_55.password = {}

-- Size: Password
nsxaustralia_nets_itch_v4_2_55.password.size = 10

-- Display: Password
nsxaustralia_nets_itch_v4_2_55.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nsxaustralia_nets_itch_v4_2_55.password.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nsxaustralia_nets_itch_v4_2_55.price = {}

-- Size: Price
nsxaustralia_nets_itch_v4_2_55.price.size = 8

-- Display: Price
nsxaustralia_nets_itch_v4_2_55.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nsxaustralia_nets_itch_v4_2_55.price.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nsxaustralia_nets_itch_v4_2_55.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.price, range, value, display)

  return offset + length, value
end

-- Price Decimals
nsxaustralia_nets_itch_v4_2_55.price_decimals = {}

-- Size: Price Decimals
nsxaustralia_nets_itch_v4_2_55.price_decimals.size = 4

-- Display: Price Decimals
nsxaustralia_nets_itch_v4_2_55.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
nsxaustralia_nets_itch_v4_2_55.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Start
nsxaustralia_nets_itch_v4_2_55.price_start = {}

-- Size: Price Start
nsxaustralia_nets_itch_v4_2_55.price_start.size = 8

-- Display: Price Start
nsxaustralia_nets_itch_v4_2_55.price_start.display = function(value)
  return "Price Start: "..value
end

-- Dissect: Price Start
nsxaustralia_nets_itch_v4_2_55.price_start.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.price_start.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Dissect: Price Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Printable
nsxaustralia_nets_itch_v4_2_55.printable = {}

-- Size: Printable
nsxaustralia_nets_itch_v4_2_55.printable.size = 1

-- Display: Printable
nsxaustralia_nets_itch_v4_2_55.printable.display = function(value)
  if value == "Y" then
    return "Printable: Yes (Y)"
  end
  if value == "N" then
    return "Printable: No (N)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nsxaustralia_nets_itch_v4_2_55.printable.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.printable, range, value, display)

  return offset + length, value
end

-- Product
nsxaustralia_nets_itch_v4_2_55.product = {}

-- Size: Product
nsxaustralia_nets_itch_v4_2_55.product.size = 12

-- Display: Product
nsxaustralia_nets_itch_v4_2_55.product.display = function(value)
  return "Product: "..value
end

-- Dissect: Product
nsxaustralia_nets_itch_v4_2_55.product.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.product.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.product.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.product, range, value, display)

  return offset + length, value
end

-- Quantity
nsxaustralia_nets_itch_v4_2_55.quantity = {}

-- Size: Quantity
nsxaustralia_nets_itch_v4_2_55.quantity.size = 8

-- Display: Quantity
nsxaustralia_nets_itch_v4_2_55.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nsxaustralia_nets_itch_v4_2_55.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Decimals
nsxaustralia_nets_itch_v4_2_55.quantity_decimals = {}

-- Size: Quantity Decimals
nsxaustralia_nets_itch_v4_2_55.quantity_decimals.size = 4

-- Display: Quantity Decimals
nsxaustralia_nets_itch_v4_2_55.quantity_decimals.display = function(value)
  return "Quantity Decimals: "..value
end

-- Dissect: Quantity Decimals
nsxaustralia_nets_itch_v4_2_55.quantity_decimals.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.quantity_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.quantity_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity_decimals, range, value, display)

  return offset + length, value
end

-- Quantity Start
nsxaustralia_nets_itch_v4_2_55.quantity_start = {}

-- Size: Quantity Start
nsxaustralia_nets_itch_v4_2_55.quantity_start.size = 8

-- Display: Quantity Start
nsxaustralia_nets_itch_v4_2_55.quantity_start.display = function(value)
  return "Quantity Start: "..value
end

-- Dissect: Quantity Start
nsxaustralia_nets_itch_v4_2_55.quantity_start.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.quantity_start.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.quantity_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity_start, range, value, display)

  return offset + length, value
end

-- Quantity Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_table_id = {}

-- Size: Quantity Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_table_id.size = 4

-- Display: Quantity Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_table_id.display = function(value)
  return "Quantity Tick Size Table Id: "..value
end

-- Dissect: Quantity Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Reason
nsxaustralia_nets_itch_v4_2_55.reason = {}

-- Size: Reason
nsxaustralia_nets_itch_v4_2_55.reason.size = 1

-- Display: Reason
nsxaustralia_nets_itch_v4_2_55.reason.display = function(value)
  if value == "N" then
    return "Reason: Normal Trading (N)"
  end
  if value == "H" then
    return "Reason: Halted Due To Extreme Trade Range (H)"
  end
  if value == "S" then
    return "Reason: Supervisory (S)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nsxaustralia_nets_itch_v4_2_55.reason.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.reason, range, value, display)

  return offset + length, value
end

-- Reference Alpha 12
nsxaustralia_nets_itch_v4_2_55.reference_alpha_12 = {}

-- Size: Reference Alpha 12
nsxaustralia_nets_itch_v4_2_55.reference_alpha_12.size = 12

-- Display: Reference Alpha 12
nsxaustralia_nets_itch_v4_2_55.reference_alpha_12.display = function(value)
  return "Reference Alpha 12: "..value
end

-- Dissect: Reference Alpha 12
nsxaustralia_nets_itch_v4_2_55.reference_alpha_12.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.reference_alpha_12.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.reference_alpha_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.reference_alpha_12, range, value, display)

  return offset + length, value
end

-- Reference Null Terminated Char 256
nsxaustralia_nets_itch_v4_2_55.reference_null_terminated_char_256 = {}

-- Size: Reference Null Terminated Char 256
nsxaustralia_nets_itch_v4_2_55.reference_null_terminated_char_256.size = 256

-- Display: Reference Null Terminated Char 256
nsxaustralia_nets_itch_v4_2_55.reference_null_terminated_char_256.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reference Null Terminated Char 256: No Value"
  end

  return "Reference Null Terminated Char 256: "..value
end

-- Dissect: Reference Null Terminated Char 256
nsxaustralia_nets_itch_v4_2_55.reference_null_terminated_char_256.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.reference_null_terminated_char_256.size
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

  local display = nsxaustralia_nets_itch_v4_2_55.reference_null_terminated_char_256.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.reference_null_terminated_char_256, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nsxaustralia_nets_itch_v4_2_55.reject_reason_code = {}

-- Size: Reject Reason Code
nsxaustralia_nets_itch_v4_2_55.reject_reason_code.size = 1

-- Display: Reject Reason Code
nsxaustralia_nets_itch_v4_2_55.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nsxaustralia_nets_itch_v4_2_55.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Remarks
nsxaustralia_nets_itch_v4_2_55.remarks = {}

-- Size: Remarks
nsxaustralia_nets_itch_v4_2_55.remarks.size = 8

-- Display: Remarks
nsxaustralia_nets_itch_v4_2_55.remarks.display = function(value)
  return "Remarks: "..value
end

-- Dissect: Remarks
nsxaustralia_nets_itch_v4_2_55.remarks.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.remarks.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.remarks.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.remarks, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nsxaustralia_nets_itch_v4_2_55.requested_sequence_number = {}

-- Size: Requested Sequence Number
nsxaustralia_nets_itch_v4_2_55.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nsxaustralia_nets_itch_v4_2_55.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nsxaustralia_nets_itch_v4_2_55.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nsxaustralia_nets_itch_v4_2_55.requested_session = {}

-- Size: Requested Session
nsxaustralia_nets_itch_v4_2_55.requested_session.size = 10

-- Display: Requested Session
nsxaustralia_nets_itch_v4_2_55.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nsxaustralia_nets_itch_v4_2_55.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Scheduled Time
nsxaustralia_nets_itch_v4_2_55.scheduled_time = {}

-- Size: Scheduled Time
nsxaustralia_nets_itch_v4_2_55.scheduled_time.size = 8

-- Display: Scheduled Time
nsxaustralia_nets_itch_v4_2_55.scheduled_time.display = function(value)
  return "Scheduled Time: "..value
end

-- Dissect: Scheduled Time
nsxaustralia_nets_itch_v4_2_55.scheduled_time.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.scheduled_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.scheduled_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.scheduled_time, range, value, display)

  return offset + length, value
end

-- Security Code
nsxaustralia_nets_itch_v4_2_55.security_code = {}

-- Size: Security Code
nsxaustralia_nets_itch_v4_2_55.security_code.size = 100

-- Display: Security Code
nsxaustralia_nets_itch_v4_2_55.security_code.display = function(value)
  return "Security Code: "..value
end

-- Dissect: Security Code
nsxaustralia_nets_itch_v4_2_55.security_code.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.security_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.security_code, range, value, display)

  return offset + length, value
end

-- Security Name
nsxaustralia_nets_itch_v4_2_55.security_name = {}

-- Size: Security Name
nsxaustralia_nets_itch_v4_2_55.security_name.size = 100

-- Display: Security Name
nsxaustralia_nets_itch_v4_2_55.security_name.display = function(value)
  return "Security Name: "..value
end

-- Dissect: Security Name
nsxaustralia_nets_itch_v4_2_55.security_name.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.security_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nsxaustralia_nets_itch_v4_2_55.security_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.security_name, range, value, display)

  return offset + length, value
end

-- Sell Firm Id
nsxaustralia_nets_itch_v4_2_55.sell_firm_id = {}

-- Size: Sell Firm Id
nsxaustralia_nets_itch_v4_2_55.sell_firm_id.size = 4

-- Display: Sell Firm Id
nsxaustralia_nets_itch_v4_2_55.sell_firm_id.display = function(value)
  return "Sell Firm Id: "..value
end

-- Dissect: Sell Firm Id
nsxaustralia_nets_itch_v4_2_55.sell_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.sell_firm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.sell_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.sell_firm_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
nsxaustralia_nets_itch_v4_2_55.sequence_number = {}

-- Size: Sequence Number
nsxaustralia_nets_itch_v4_2_55.sequence_number.size = 20

-- Display: Sequence Number
nsxaustralia_nets_itch_v4_2_55.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nsxaustralia_nets_itch_v4_2_55.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nsxaustralia_nets_itch_v4_2_55.sequenced_message_type = {}

-- Size: Sequenced Message Type
nsxaustralia_nets_itch_v4_2_55.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nsxaustralia_nets_itch_v4_2_55.sequenced_message_type.display = function(value)
  if value == "T" then
    return "Sequenced Message Type: Timestamp Message (T)"
  end
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "L" then
    return "Sequenced Message Type: Price Tick Size Message (L)"
  end
  if value == "M" then
    return "Sequenced Message Type: Quantity Tick Size Message (M)"
  end
  if value == "R" then
    return "Sequenced Message Type: Orderbook Directory Message (R)"
  end
  if value == "H" then
    return "Sequenced Message Type: Orderbook Trading Action Message (H)"
  end
  if value == "X" then
    return "Sequenced Message Type: Orderbook Attribute Message (X)"
  end
  if value == "F" then
    return "Sequenced Message Type: Firm Directory Message (F)"
  end
  if value == "A" then
    return "Sequenced Message Type: Add Order Message (A)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Sequenced Message Type: Order Executed With Price Message (C)"
  end
  if value == "B" then
    return "Sequenced Message Type: Broken Trade Message (B)"
  end
  if value == "D" then
    return "Sequenced Message Type: Order Delete Message (D)"
  end
  if value == "U" then
    return "Sequenced Message Type: Order Replace Message (U)"
  end
  if value == "I" then
    return "Sequenced Message Type: Indicative Price Quantity Message (I)"
  end
  if value == "P" then
    return "Sequenced Message Type: Trade Message (P)"
  end
  if value == "N" then
    return "Sequenced Message Type: News Message (N)"
  end
  if value == "Y" then
    return "Sequenced Message Type: Index Member Directory Message (Y)"
  end
  if value == "Z" then
    return "Sequenced Message Type: Index Value Message (Z)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nsxaustralia_nets_itch_v4_2_55.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
nsxaustralia_nets_itch_v4_2_55.session = {}

-- Size: Session
nsxaustralia_nets_itch_v4_2_55.session.size = 10

-- Display: Session
nsxaustralia_nets_itch_v4_2_55.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nsxaustralia_nets_itch_v4_2_55.session.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.session, range, value, display)

  return offset + length, value
end

-- Settle Date
nsxaustralia_nets_itch_v4_2_55.settle_date = {}

-- Size: Settle Date
nsxaustralia_nets_itch_v4_2_55.settle_date.size = 4

-- Display: Settle Date
nsxaustralia_nets_itch_v4_2_55.settle_date.display = function(value)
  return "Settle Date: "..value
end

-- Dissect: Settle Date
nsxaustralia_nets_itch_v4_2_55.settle_date.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.settle_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.settle_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.settle_date, range, value, display)

  return offset + length, value
end

-- Text
nsxaustralia_nets_itch_v4_2_55.text = {}

-- Size: Text
nsxaustralia_nets_itch_v4_2_55.text.size = 1

-- Display: Text
nsxaustralia_nets_itch_v4_2_55.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nsxaustralia_nets_itch_v4_2_55.text.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.text, range, value, display)

  return offset + length, value
end

-- Theoretical Opening Price
nsxaustralia_nets_itch_v4_2_55.theoretical_opening_price = {}

-- Size: Theoretical Opening Price
nsxaustralia_nets_itch_v4_2_55.theoretical_opening_price.size = 8

-- Display: Theoretical Opening Price
nsxaustralia_nets_itch_v4_2_55.theoretical_opening_price.display = function(value)
  return "Theoretical Opening Price: "..value
end

-- Dissect: Theoretical Opening Price
nsxaustralia_nets_itch_v4_2_55.theoretical_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.theoretical_opening_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nsxaustralia_nets_itch_v4_2_55.theoretical_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.theoretical_opening_price, range, value, display)

  return offset + length, value
end

-- Theoretical Opening Quantity
nsxaustralia_nets_itch_v4_2_55.theoretical_opening_quantity = {}

-- Size: Theoretical Opening Quantity
nsxaustralia_nets_itch_v4_2_55.theoretical_opening_quantity.size = 8

-- Display: Theoretical Opening Quantity
nsxaustralia_nets_itch_v4_2_55.theoretical_opening_quantity.display = function(value)
  return "Theoretical Opening Quantity: "..value
end

-- Dissect: Theoretical Opening Quantity
nsxaustralia_nets_itch_v4_2_55.theoretical_opening_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.theoretical_opening_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.theoretical_opening_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.theoretical_opening_quantity, range, value, display)

  return offset + length, value
end

-- Tick Size
nsxaustralia_nets_itch_v4_2_55.tick_size = {}

-- Size: Tick Size
nsxaustralia_nets_itch_v4_2_55.tick_size.size = 8

-- Display: Tick Size
nsxaustralia_nets_itch_v4_2_55.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nsxaustralia_nets_itch_v4_2_55.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.tick_size_table_id = {}

-- Size: Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.tick_size_table_id.size = 4

-- Display: Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.tick_size_table_id.display = function(value)
  return "Tick Size Table Id: "..value
end

-- Dissect: Tick Size Table Id
nsxaustralia_nets_itch_v4_2_55.tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nsxaustralia_nets_itch_v4_2_55.timestamp = {}

-- Size: Timestamp
nsxaustralia_nets_itch_v4_2_55.timestamp.size = 4

-- Display: Timestamp
nsxaustralia_nets_itch_v4_2_55.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nsxaustralia_nets_itch_v4_2_55.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nsxaustralia_nets_itch_v4_2_55.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Title
nsxaustralia_nets_itch_v4_2_55.title = {}

-- Size: Title
nsxaustralia_nets_itch_v4_2_55.title.size = 81

-- Display: Title
nsxaustralia_nets_itch_v4_2_55.title.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Title: No Value"
  end

  return "Title: "..value
end

-- Dissect: Title
nsxaustralia_nets_itch_v4_2_55.title.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.title.size
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

  local display = nsxaustralia_nets_itch_v4_2_55.title.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.title, range, value, display)

  return offset + length, value
end

-- Trade Indicator
nsxaustralia_nets_itch_v4_2_55.trade_indicator = {}

-- Size: Trade Indicator
nsxaustralia_nets_itch_v4_2_55.trade_indicator.size = 1

-- Display: Trade Indicator
nsxaustralia_nets_itch_v4_2_55.trade_indicator.display = function(value)
  if value == "B" then
    return "Trade Indicator: Block Special (B)"
  end

  return "Trade Indicator: Unknown("..value..")"
end

-- Dissect: Trade Indicator
nsxaustralia_nets_itch_v4_2_55.trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.trade_indicator, range, value, display)

  return offset + length, value
end

-- Trade Source
nsxaustralia_nets_itch_v4_2_55.trade_source = {}

-- Size: Trade Source
nsxaustralia_nets_itch_v4_2_55.trade_source.size = 1

-- Display: Trade Source
nsxaustralia_nets_itch_v4_2_55.trade_source.display = function(value)
  if value == "A" then
    return "Trade Source: Autotrade (A)"
  end
  if value == "B" then
    return "Trade Source: Best Execution (B)"
  end
  if value == "C" then
    return "Trade Source: Off Market Automatic Crossing (C)"
  end
  if value == "D" then
    return "Trade Source: Directed Reporting Or Off Market Trades Crossing (D)"
  end
  if value == "E" then
    return "Trade Source: Special Crossing Less Than A Marketable Parcel (E)"
  end
  if value == "F" then
    return "Trade Source: Forward Delivery (F)"
  end
  if value == "I" then
    return "Trade Source: Approved Index Crossing (I)"
  end
  if value == "K" then
    return "Trade Source: Buy Back Sales (K)"
  end
  if value == "M" then
    return "Trade Source: Marriage Crossing (M)"
  end
  if value == "N" then
    return "Trade Source: Trades Including Crossings Outside Of Market Hours (N)"
  end
  if value == "O" then
    return "Trade Source: Foreign Residents Or Recognised Overseas Exchange (O)"
  end
  if value == "P" then
    return "Trade Source: Block Special Crossing Or Loan Securities (P)"
  end
  if value == "Q" then
    return "Trade Source: Special Crossing Less Than A Marketable Parcel (Q)"
  end
  if value == "R" then
    return "Trade Source: Strategy (R)"
  end
  if value == "S" then
    return "Trade Source: Short Sales (S)"
  end
  if value == "U" then
    return "Trade Source: For Foreign To Foreign Securities (U)"
  end
  if value == "V" then
    return "Trade Source: Book Value Switch Sales (V)"
  end
  if value == "X" then
    return "Trade Source: Portfolio Special Crossing (X)"
  end
  if value == "Y" then
    return "Trade Source: Special (Y)"
  end
  if value == "Z" then
    return "Trade Source: Special Crossing Underwriting Disposal Or Exchange Approval (Z)"
  end

  return "Trade Source: Unknown("..value..")"
end

-- Dissect: Trade Source
nsxaustralia_nets_itch_v4_2_55.trade_source.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.trade_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.trade_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.trade_source, range, value, display)

  return offset + length, value
end

-- Trading State
nsxaustralia_nets_itch_v4_2_55.trading_state = {}

-- Size: Trading State
nsxaustralia_nets_itch_v4_2_55.trading_state.size = 1

-- Display: Trading State
nsxaustralia_nets_itch_v4_2_55.trading_state.display = function(value)
  if value == "T" then
    return "Trading State: Normal Trading (T)"
  end
  if value == "V" then
    return "Trading State: Suspended (V)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nsxaustralia_nets_itch_v4_2_55.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nsxaustralia_nets_itch_v4_2_55.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nsxaustralia_nets_itch_v4_2_55.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nsxaustralia_nets_itch_v4_2_55.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nsxaustralia_nets_itch_v4_2_55.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nsxaustralia_nets_itch_v4_2_55.username = {}

-- Size: Username
nsxaustralia_nets_itch_v4_2_55.username.size = 6

-- Display: Username
nsxaustralia_nets_itch_v4_2_55.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nsxaustralia_nets_itch_v4_2_55.username.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nsxaustralia_nets_itch_v4_2_55.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.username, range, value, display)

  return offset + length, value
end

-- Weight
nsxaustralia_nets_itch_v4_2_55.weight = {}

-- Size: Weight
nsxaustralia_nets_itch_v4_2_55.weight.size = 8

-- Display: Weight
nsxaustralia_nets_itch_v4_2_55.weight.display = function(value)
  return "Weight: "..value
end

-- Dissect: Weight
nsxaustralia_nets_itch_v4_2_55.weight.dissect = function(buffer, offset, packet, parent)
  local length = nsxaustralia_nets_itch_v4_2_55.weight.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nsxaustralia_nets_itch_v4_2_55.weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.weight, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect NsxAustralia Nets Itch 4.2.55
-----------------------------------------------------------------------

-- Unsequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nsxaustralia_nets_itch_v4_2_55.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message
  index, unsequenced_message = nsxaustralia_nets_itch_v4_2_55.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nsxaustralia_nets_itch_v4_2_55.login_request_packet = {}

-- Size: Login Request Packet
nsxaustralia_nets_itch_v4_2_55.login_request_packet.size =
  nsxaustralia_nets_itch_v4_2_55.username.size + 
  nsxaustralia_nets_itch_v4_2_55.password.size + 
  nsxaustralia_nets_itch_v4_2_55.requested_session.size + 
  nsxaustralia_nets_itch_v4_2_55.requested_sequence_number.size

-- Display: Login Request Packet
nsxaustralia_nets_itch_v4_2_55.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nsxaustralia_nets_itch_v4_2_55.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nsxaustralia_nets_itch_v4_2_55.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nsxaustralia_nets_itch_v4_2_55.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nsxaustralia_nets_itch_v4_2_55.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nsxaustralia_nets_itch_v4_2_55.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nsxaustralia_nets_itch_v4_2_55.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.login_request_packet, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Index Value Message
nsxaustralia_nets_itch_v4_2_55.index_value_message = {}

-- Size: Index Value Message
nsxaustralia_nets_itch_v4_2_55.index_value_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.index_orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.index_value.size

-- Display: Index Value Message
nsxaustralia_nets_itch_v4_2_55.index_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Message
nsxaustralia_nets_itch_v4_2_55.index_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Index Orderbook: Unsigned Integer
  index, index_orderbook = nsxaustralia_nets_itch_v4_2_55.index_orderbook.dissect(buffer, index, packet, parent)

  -- Index Value: Unsigned Integer
  index, index_value = nsxaustralia_nets_itch_v4_2_55.index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Value Message
nsxaustralia_nets_itch_v4_2_55.index_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.index_value_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.index_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.index_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.index_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Member Directory Message
nsxaustralia_nets_itch_v4_2_55.index_member_directory_message = {}

-- Size: Index Member Directory Message
nsxaustralia_nets_itch_v4_2_55.index_member_directory_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.index_orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.member_orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.weight.size

-- Display: Index Member Directory Message
nsxaustralia_nets_itch_v4_2_55.index_member_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Member Directory Message
nsxaustralia_nets_itch_v4_2_55.index_member_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Index Orderbook: Unsigned Integer
  index, index_orderbook = nsxaustralia_nets_itch_v4_2_55.index_orderbook.dissect(buffer, index, packet, parent)

  -- Member Orderbook: Unsigned Integer
  index, member_orderbook = nsxaustralia_nets_itch_v4_2_55.member_orderbook.dissect(buffer, index, packet, parent)

  -- Weight: Unsigned Integer
  index, weight = nsxaustralia_nets_itch_v4_2_55.weight.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Member Directory Message
nsxaustralia_nets_itch_v4_2_55.index_member_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.index_member_directory_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.index_member_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.index_member_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.index_member_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
nsxaustralia_nets_itch_v4_2_55.news_message = {}

-- Size: News Message
nsxaustralia_nets_itch_v4_2_55.news_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.news_id.size + 
  nsxaustralia_nets_itch_v4_2_55.firm_code.size + 
  nsxaustralia_nets_itch_v4_2_55.title.size + 
  nsxaustralia_nets_itch_v4_2_55.reference_null_terminated_char_256.size + 
  nsxaustralia_nets_itch_v4_2_55.news_text.size

-- Display: News Message
nsxaustralia_nets_itch_v4_2_55.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
nsxaustralia_nets_itch_v4_2_55.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Unsigned Integer
  index, orderbook = nsxaustralia_nets_itch_v4_2_55.orderbook.dissect(buffer, index, packet, parent)

  -- News Id: Unsigned Integer
  index, news_id = nsxaustralia_nets_itch_v4_2_55.news_id.dissect(buffer, index, packet, parent)

  -- Firm Code: Alpha
  index, firm_code = nsxaustralia_nets_itch_v4_2_55.firm_code.dissect(buffer, index, packet, parent)

  -- Title: NullTerminatedChar
  index, title = nsxaustralia_nets_itch_v4_2_55.title.dissect(buffer, index, packet, parent)

  -- Reference Null Terminated Char 256: NullTerminatedChar
  index, reference_null_terminated_char_256 = nsxaustralia_nets_itch_v4_2_55.reference_null_terminated_char_256.dissect(buffer, index, packet, parent)

  -- News Text: NullTerminatedChar
  index, news_text = nsxaustralia_nets_itch_v4_2_55.news_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
nsxaustralia_nets_itch_v4_2_55.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.news_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nsxaustralia_nets_itch_v4_2_55.trade_message = {}

-- Size: Trade Message
nsxaustralia_nets_itch_v4_2_55.trade_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.executed_quantity.size + 
  nsxaustralia_nets_itch_v4_2_55.orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.printable.size + 
  nsxaustralia_nets_itch_v4_2_55.execution_price.size + 
  nsxaustralia_nets_itch_v4_2_55.match_number.size + 
  nsxaustralia_nets_itch_v4_2_55.trade_indicator.size + 
  nsxaustralia_nets_itch_v4_2_55.buy_firm_id.size + 
  nsxaustralia_nets_itch_v4_2_55.sell_firm_id.size + 
  nsxaustralia_nets_itch_v4_2_55.trade_source.size

-- Display: Trade Message
nsxaustralia_nets_itch_v4_2_55.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nsxaustralia_nets_itch_v4_2_55.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Unsigned Integer
  index, executed_quantity = nsxaustralia_nets_itch_v4_2_55.executed_quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Unsigned Integer
  index, orderbook = nsxaustralia_nets_itch_v4_2_55.orderbook.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nsxaustralia_nets_itch_v4_2_55.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: Signed Integer
  index, execution_price = nsxaustralia_nets_itch_v4_2_55.execution_price.dissect(buffer, index, packet, parent)

  -- Match Number: Unsigned Integer
  index, match_number = nsxaustralia_nets_itch_v4_2_55.match_number.dissect(buffer, index, packet, parent)

  -- Trade Indicator: Alpha
  index, trade_indicator = nsxaustralia_nets_itch_v4_2_55.trade_indicator.dissect(buffer, index, packet, parent)

  -- Buy Firm Id: Unsigned Integer
  index, buy_firm_id = nsxaustralia_nets_itch_v4_2_55.buy_firm_id.dissect(buffer, index, packet, parent)

  -- Sell Firm Id: Unsigned Integer
  index, sell_firm_id = nsxaustralia_nets_itch_v4_2_55.sell_firm_id.dissect(buffer, index, packet, parent)

  -- Trade Source: Alpha
  index, trade_source = nsxaustralia_nets_itch_v4_2_55.trade_source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nsxaustralia_nets_itch_v4_2_55.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.trade_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Price Quantity Message
nsxaustralia_nets_itch_v4_2_55.indicative_price_quantity_message = {}

-- Size: Indicative Price Quantity Message
nsxaustralia_nets_itch_v4_2_55.indicative_price_quantity_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.theoretical_opening_quantity.size + 
  nsxaustralia_nets_itch_v4_2_55.orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.best_bid.size + 
  nsxaustralia_nets_itch_v4_2_55.best_offer.size + 
  nsxaustralia_nets_itch_v4_2_55.theoretical_opening_price.size + 
  nsxaustralia_nets_itch_v4_2_55.cross_type.size + 
  nsxaustralia_nets_itch_v4_2_55.best_bid_size.size + 
  nsxaustralia_nets_itch_v4_2_55.best_offer_size.size

-- Display: Indicative Price Quantity Message
nsxaustralia_nets_itch_v4_2_55.indicative_price_quantity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Price Quantity Message
nsxaustralia_nets_itch_v4_2_55.indicative_price_quantity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Theoretical Opening Quantity: Unsigned Integer
  index, theoretical_opening_quantity = nsxaustralia_nets_itch_v4_2_55.theoretical_opening_quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Unsigned Integer
  index, orderbook = nsxaustralia_nets_itch_v4_2_55.orderbook.dissect(buffer, index, packet, parent)

  -- Best Bid: Signed Integer
  index, best_bid = nsxaustralia_nets_itch_v4_2_55.best_bid.dissect(buffer, index, packet, parent)

  -- Best Offer: Signed Integer
  index, best_offer = nsxaustralia_nets_itch_v4_2_55.best_offer.dissect(buffer, index, packet, parent)

  -- Theoretical Opening Price: Signed Integer
  index, theoretical_opening_price = nsxaustralia_nets_itch_v4_2_55.theoretical_opening_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nsxaustralia_nets_itch_v4_2_55.cross_type.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Unsigned Integer
  index, best_bid_size = nsxaustralia_nets_itch_v4_2_55.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Offer Size: Unsigned Integer
  index, best_offer_size = nsxaustralia_nets_itch_v4_2_55.best_offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Price Quantity Message
nsxaustralia_nets_itch_v4_2_55.indicative_price_quantity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.indicative_price_quantity_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.indicative_price_quantity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.indicative_price_quantity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.indicative_price_quantity_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
nsxaustralia_nets_itch_v4_2_55.order_replace_message = {}

-- Size: Order Replace Message
nsxaustralia_nets_itch_v4_2_55.order_replace_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.original_order_number.size + 
  nsxaustralia_nets_itch_v4_2_55.new_order_number.size + 
  nsxaustralia_nets_itch_v4_2_55.quantity.size + 
  nsxaustralia_nets_itch_v4_2_55.price.size

-- Display: Order Replace Message
nsxaustralia_nets_itch_v4_2_55.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nsxaustralia_nets_itch_v4_2_55.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Number: Unsigned Integer
  index, original_order_number = nsxaustralia_nets_itch_v4_2_55.original_order_number.dissect(buffer, index, packet, parent)

  -- New Order Number: Unsigned Integer
  index, new_order_number = nsxaustralia_nets_itch_v4_2_55.new_order_number.dissect(buffer, index, packet, parent)

  -- Quantity: Unsigned Integer
  index, quantity = nsxaustralia_nets_itch_v4_2_55.quantity.dissect(buffer, index, packet, parent)

  -- Price: Signed Integer
  index, price = nsxaustralia_nets_itch_v4_2_55.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nsxaustralia_nets_itch_v4_2_55.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.order_replace_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nsxaustralia_nets_itch_v4_2_55.order_delete_message = {}

-- Size: Order Delete Message
nsxaustralia_nets_itch_v4_2_55.order_delete_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.order_number.size

-- Display: Order Delete Message
nsxaustralia_nets_itch_v4_2_55.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nsxaustralia_nets_itch_v4_2_55.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Unsigned Integer
  index, order_number = nsxaustralia_nets_itch_v4_2_55.order_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nsxaustralia_nets_itch_v4_2_55.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.order_delete_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nsxaustralia_nets_itch_v4_2_55.broken_trade_message = {}

-- Size: Broken Trade Message
nsxaustralia_nets_itch_v4_2_55.broken_trade_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.match_number.size + 
  nsxaustralia_nets_itch_v4_2_55.reason.size

-- Display: Broken Trade Message
nsxaustralia_nets_itch_v4_2_55.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nsxaustralia_nets_itch_v4_2_55.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: Unsigned Integer
  index, match_number = nsxaustralia_nets_itch_v4_2_55.match_number.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nsxaustralia_nets_itch_v4_2_55.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nsxaustralia_nets_itch_v4_2_55.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.broken_trade_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
nsxaustralia_nets_itch_v4_2_55.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nsxaustralia_nets_itch_v4_2_55.order_executed_with_price_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.order_number.size + 
  nsxaustralia_nets_itch_v4_2_55.executed_quantity.size + 
  nsxaustralia_nets_itch_v4_2_55.match_number.size + 
  nsxaustralia_nets_itch_v4_2_55.printable.size + 
  nsxaustralia_nets_itch_v4_2_55.execution_price.size

-- Display: Order Executed With Price Message
nsxaustralia_nets_itch_v4_2_55.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nsxaustralia_nets_itch_v4_2_55.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Unsigned Integer
  index, order_number = nsxaustralia_nets_itch_v4_2_55.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Unsigned Integer
  index, executed_quantity = nsxaustralia_nets_itch_v4_2_55.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Unsigned Integer
  index, match_number = nsxaustralia_nets_itch_v4_2_55.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nsxaustralia_nets_itch_v4_2_55.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: Signed Integer
  index, execution_price = nsxaustralia_nets_itch_v4_2_55.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nsxaustralia_nets_itch_v4_2_55.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nsxaustralia_nets_itch_v4_2_55.order_executed_message = {}

-- Size: Order Executed Message
nsxaustralia_nets_itch_v4_2_55.order_executed_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.order_number.size + 
  nsxaustralia_nets_itch_v4_2_55.executed_quantity.size + 
  nsxaustralia_nets_itch_v4_2_55.match_number.size + 
  nsxaustralia_nets_itch_v4_2_55.printable.size + 
  nsxaustralia_nets_itch_v4_2_55.aggressor_firm_id.size

-- Display: Order Executed Message
nsxaustralia_nets_itch_v4_2_55.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nsxaustralia_nets_itch_v4_2_55.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Unsigned Integer
  index, order_number = nsxaustralia_nets_itch_v4_2_55.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Unsigned Integer
  index, executed_quantity = nsxaustralia_nets_itch_v4_2_55.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Unsigned Integer
  index, match_number = nsxaustralia_nets_itch_v4_2_55.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nsxaustralia_nets_itch_v4_2_55.printable.dissect(buffer, index, packet, parent)

  -- Aggressor Firm Id: Unsigned Integer
  index, aggressor_firm_id = nsxaustralia_nets_itch_v4_2_55.aggressor_firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nsxaustralia_nets_itch_v4_2_55.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.order_executed_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nsxaustralia_nets_itch_v4_2_55.add_order_message = {}

-- Size: Add Order Message
nsxaustralia_nets_itch_v4_2_55.add_order_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.order_number.size + 
  nsxaustralia_nets_itch_v4_2_55.order_verb.size + 
  nsxaustralia_nets_itch_v4_2_55.quantity.size + 
  nsxaustralia_nets_itch_v4_2_55.orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.price.size + 
  nsxaustralia_nets_itch_v4_2_55.firm_id.size

-- Display: Add Order Message
nsxaustralia_nets_itch_v4_2_55.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nsxaustralia_nets_itch_v4_2_55.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Unsigned Integer
  index, order_number = nsxaustralia_nets_itch_v4_2_55.order_number.dissect(buffer, index, packet, parent)

  -- Order Verb: Alpha
  index, order_verb = nsxaustralia_nets_itch_v4_2_55.order_verb.dissect(buffer, index, packet, parent)

  -- Quantity: Unsigned Integer
  index, quantity = nsxaustralia_nets_itch_v4_2_55.quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Unsigned Integer
  index, orderbook = nsxaustralia_nets_itch_v4_2_55.orderbook.dissect(buffer, index, packet, parent)

  -- Price: Signed Integer
  index, price = nsxaustralia_nets_itch_v4_2_55.price.dissect(buffer, index, packet, parent)

  -- Firm Id: Unsigned Integer
  index, firm_id = nsxaustralia_nets_itch_v4_2_55.firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nsxaustralia_nets_itch_v4_2_55.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.add_order_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Firm Directory Message
nsxaustralia_nets_itch_v4_2_55.firm_directory_message = {}

-- Size: Firm Directory Message
nsxaustralia_nets_itch_v4_2_55.firm_directory_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.firm_id.size + 
  nsxaustralia_nets_itch_v4_2_55.firm_code.size

-- Display: Firm Directory Message
nsxaustralia_nets_itch_v4_2_55.firm_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Firm Directory Message
nsxaustralia_nets_itch_v4_2_55.firm_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Firm Id: Unsigned Integer
  index, firm_id = nsxaustralia_nets_itch_v4_2_55.firm_id.dissect(buffer, index, packet, parent)

  -- Firm Code: Alpha
  index, firm_code = nsxaustralia_nets_itch_v4_2_55.firm_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Firm Directory Message
nsxaustralia_nets_itch_v4_2_55.firm_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.firm_directory_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.firm_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.firm_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.firm_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Attribute Message
nsxaustralia_nets_itch_v4_2_55.orderbook_attribute_message = {}

-- Size: Orderbook Attribute Message
nsxaustralia_nets_itch_v4_2_55.orderbook_attribute_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.attribute_value.size + 
  nsxaustralia_nets_itch_v4_2_55.attribute_type.size + 
  nsxaustralia_nets_itch_v4_2_55.reason.size

-- Display: Orderbook Attribute Message
nsxaustralia_nets_itch_v4_2_55.orderbook_attribute_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Attribute Message
nsxaustralia_nets_itch_v4_2_55.orderbook_attribute_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Unsigned Integer
  index, orderbook = nsxaustralia_nets_itch_v4_2_55.orderbook.dissect(buffer, index, packet, parent)

  -- Attribute Value: Signed Integer
  index, attribute_value = nsxaustralia_nets_itch_v4_2_55.attribute_value.dissect(buffer, index, packet, parent)

  -- Attribute Type: Alpha
  index, attribute_type = nsxaustralia_nets_itch_v4_2_55.attribute_type.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nsxaustralia_nets_itch_v4_2_55.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Attribute Message
nsxaustralia_nets_itch_v4_2_55.orderbook_attribute_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.orderbook_attribute_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.orderbook_attribute_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.orderbook_attribute_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.orderbook_attribute_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Trading Action Message
nsxaustralia_nets_itch_v4_2_55.orderbook_trading_action_message = {}

-- Size: Orderbook Trading Action Message
nsxaustralia_nets_itch_v4_2_55.orderbook_trading_action_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.trading_state.size + 
  nsxaustralia_nets_itch_v4_2_55.reason.size

-- Display: Orderbook Trading Action Message
nsxaustralia_nets_itch_v4_2_55.orderbook_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Trading Action Message
nsxaustralia_nets_itch_v4_2_55.orderbook_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Unsigned Integer
  index, orderbook = nsxaustralia_nets_itch_v4_2_55.orderbook.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nsxaustralia_nets_itch_v4_2_55.trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nsxaustralia_nets_itch_v4_2_55.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Trading Action Message
nsxaustralia_nets_itch_v4_2_55.orderbook_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.orderbook_trading_action_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.orderbook_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
nsxaustralia_nets_itch_v4_2_55.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
nsxaustralia_nets_itch_v4_2_55.orderbook_directory_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.isin.size + 
  nsxaustralia_nets_itch_v4_2_55.security_code.size + 
  nsxaustralia_nets_itch_v4_2_55.security_name.size + 
  nsxaustralia_nets_itch_v4_2_55.currency.size + 
  nsxaustralia_nets_itch_v4_2_55.board.size + 
  nsxaustralia_nets_itch_v4_2_55.product.size + 
  nsxaustralia_nets_itch_v4_2_55.minimum_quantity.size + 
  nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_table_id.size + 
  nsxaustralia_nets_itch_v4_2_55.quantity_decimals.size + 
  nsxaustralia_nets_itch_v4_2_55.price_tick_size_table_id.size + 
  nsxaustralia_nets_itch_v4_2_55.price_decimals.size + 
  nsxaustralia_nets_itch_v4_2_55.listing.size + 
  nsxaustralia_nets_itch_v4_2_55.expiry.size + 
  nsxaustralia_nets_itch_v4_2_55.asset_type.size + 
  nsxaustralia_nets_itch_v4_2_55.settle_date.size + 
  nsxaustralia_nets_itch_v4_2_55.reference_alpha_12.size + 
  nsxaustralia_nets_itch_v4_2_55.remarks.size

-- Display: Orderbook Directory Message
nsxaustralia_nets_itch_v4_2_55.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
nsxaustralia_nets_itch_v4_2_55.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Orderbook: Unsigned Integer
  index, orderbook = nsxaustralia_nets_itch_v4_2_55.orderbook.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = nsxaustralia_nets_itch_v4_2_55.isin.dissect(buffer, index, packet, parent)

  -- Security Code: Alpha
  index, security_code = nsxaustralia_nets_itch_v4_2_55.security_code.dissect(buffer, index, packet, parent)

  -- Security Name: Alpha
  index, security_name = nsxaustralia_nets_itch_v4_2_55.security_name.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nsxaustralia_nets_itch_v4_2_55.currency.dissect(buffer, index, packet, parent)

  -- Board: Alpha
  index, board = nsxaustralia_nets_itch_v4_2_55.board.dissect(buffer, index, packet, parent)

  -- Product: Alpha
  index, product = nsxaustralia_nets_itch_v4_2_55.product.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Unsigned Integer
  index, minimum_quantity = nsxaustralia_nets_itch_v4_2_55.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Quantity Tick Size Table Id: Unsigned Integer
  index, quantity_tick_size_table_id = nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Quantity Decimals: Unsigned Integer
  index, quantity_decimals = nsxaustralia_nets_itch_v4_2_55.quantity_decimals.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Unsigned Integer
  index, price_tick_size_table_id = nsxaustralia_nets_itch_v4_2_55.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Unsigned Integer
  index, price_decimals = nsxaustralia_nets_itch_v4_2_55.price_decimals.dissect(buffer, index, packet, parent)

  -- Listing: Unsigned Integer
  index, listing = nsxaustralia_nets_itch_v4_2_55.listing.dissect(buffer, index, packet, parent)

  -- Expiry: Unsigned Integer
  index, expiry = nsxaustralia_nets_itch_v4_2_55.expiry.dissect(buffer, index, packet, parent)

  -- Asset Type: Alpha
  index, asset_type = nsxaustralia_nets_itch_v4_2_55.asset_type.dissect(buffer, index, packet, parent)

  -- Settle Date: Unsigned Integer
  index, settle_date = nsxaustralia_nets_itch_v4_2_55.settle_date.dissect(buffer, index, packet, parent)

  -- Reference Alpha 12: Alpha
  index, reference_alpha_12 = nsxaustralia_nets_itch_v4_2_55.reference_alpha_12.dissect(buffer, index, packet, parent)

  -- Remarks: Alpha
  index, remarks = nsxaustralia_nets_itch_v4_2_55.remarks.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Directory Message
nsxaustralia_nets_itch_v4_2_55.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.orderbook_directory_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Tick Size Message
nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_message = {}

-- Size: Quantity Tick Size Message
nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.tick_size_table_id.size + 
  nsxaustralia_nets_itch_v4_2_55.tick_size.size + 
  nsxaustralia_nets_itch_v4_2_55.quantity_start.size

-- Display: Quantity Tick Size Message
nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quantity Tick Size Message
nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Tick Size Table Id: Unsigned Integer
  index, tick_size_table_id = nsxaustralia_nets_itch_v4_2_55.tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Unsigned Integer
  index, tick_size = nsxaustralia_nets_itch_v4_2_55.tick_size.dissect(buffer, index, packet, parent)

  -- Quantity Start: Unsigned Integer
  index, quantity_start = nsxaustralia_nets_itch_v4_2_55.quantity_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quantity Tick Size Message
nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.quantity_tick_size_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Tick Size Message
nsxaustralia_nets_itch_v4_2_55.price_tick_size_message = {}

-- Size: Price Tick Size Message
nsxaustralia_nets_itch_v4_2_55.price_tick_size_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.tick_size_table_id.size + 
  nsxaustralia_nets_itch_v4_2_55.tick_size.size + 
  nsxaustralia_nets_itch_v4_2_55.price_start.size

-- Display: Price Tick Size Message
nsxaustralia_nets_itch_v4_2_55.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
nsxaustralia_nets_itch_v4_2_55.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Tick Size Table Id: Unsigned Integer
  index, tick_size_table_id = nsxaustralia_nets_itch_v4_2_55.tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Unsigned Integer
  index, tick_size = nsxaustralia_nets_itch_v4_2_55.tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: Unsigned Integer
  index, price_start = nsxaustralia_nets_itch_v4_2_55.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
nsxaustralia_nets_itch_v4_2_55.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.price_tick_size_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nsxaustralia_nets_itch_v4_2_55.system_event_message = {}

-- Size: System Event Message
nsxaustralia_nets_itch_v4_2_55.system_event_message.size =
  nsxaustralia_nets_itch_v4_2_55.timestamp.size + 
  nsxaustralia_nets_itch_v4_2_55.group.size + 
  nsxaustralia_nets_itch_v4_2_55.product.size + 
  nsxaustralia_nets_itch_v4_2_55.orderbook.size + 
  nsxaustralia_nets_itch_v4_2_55.event_code.size + 
  nsxaustralia_nets_itch_v4_2_55.event_status.size + 
  nsxaustralia_nets_itch_v4_2_55.scheduled_time.size

-- Display: System Event Message
nsxaustralia_nets_itch_v4_2_55.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nsxaustralia_nets_itch_v4_2_55.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned Integer
  index, timestamp = nsxaustralia_nets_itch_v4_2_55.timestamp.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = nsxaustralia_nets_itch_v4_2_55.group.dissect(buffer, index, packet, parent)

  -- Product: Alpha
  index, product = nsxaustralia_nets_itch_v4_2_55.product.dissect(buffer, index, packet, parent)

  -- Orderbook: Unsigned Integer
  index, orderbook = nsxaustralia_nets_itch_v4_2_55.orderbook.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nsxaustralia_nets_itch_v4_2_55.event_code.dissect(buffer, index, packet, parent)

  -- Event Status: Alpha
  index, event_status = nsxaustralia_nets_itch_v4_2_55.event_status.dissect(buffer, index, packet, parent)

  -- Scheduled Time: Unsigned Integer
  index, scheduled_time = nsxaustralia_nets_itch_v4_2_55.scheduled_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nsxaustralia_nets_itch_v4_2_55.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.system_event_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Message
nsxaustralia_nets_itch_v4_2_55.timestamp_message = {}

-- Size: Timestamp Message
nsxaustralia_nets_itch_v4_2_55.timestamp_message.size =
  nsxaustralia_nets_itch_v4_2_55.nanosecond.size

-- Display: Timestamp Message
nsxaustralia_nets_itch_v4_2_55.timestamp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Message
nsxaustralia_nets_itch_v4_2_55.timestamp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: Unsigned Integer
  index, nanosecond = nsxaustralia_nets_itch_v4_2_55.nanosecond.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp Message
nsxaustralia_nets_itch_v4_2_55.timestamp_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.timestamp_message, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.timestamp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.timestamp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.timestamp_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nsxaustralia_nets_itch_v4_2_55.sequenced_message = {}

-- Dissect: Sequenced Message
nsxaustralia_nets_itch_v4_2_55.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Timestamp Message
  if sequenced_message_type == "T" then
    return nsxaustralia_nets_itch_v4_2_55.timestamp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nsxaustralia_nets_itch_v4_2_55.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Tick Size Message
  if sequenced_message_type == "L" then
    return nsxaustralia_nets_itch_v4_2_55.price_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quantity Tick Size Message
  if sequenced_message_type == "M" then
    return nsxaustralia_nets_itch_v4_2_55.quantity_tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Directory Message
  if sequenced_message_type == "R" then
    return nsxaustralia_nets_itch_v4_2_55.orderbook_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Trading Action Message
  if sequenced_message_type == "H" then
    return nsxaustralia_nets_itch_v4_2_55.orderbook_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Orderbook Attribute Message
  if sequenced_message_type == "X" then
    return nsxaustralia_nets_itch_v4_2_55.orderbook_attribute_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Firm Directory Message
  if sequenced_message_type == "F" then
    return nsxaustralia_nets_itch_v4_2_55.firm_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if sequenced_message_type == "A" then
    return nsxaustralia_nets_itch_v4_2_55.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return nsxaustralia_nets_itch_v4_2_55.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if sequenced_message_type == "C" then
    return nsxaustralia_nets_itch_v4_2_55.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if sequenced_message_type == "B" then
    return nsxaustralia_nets_itch_v4_2_55.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if sequenced_message_type == "D" then
    return nsxaustralia_nets_itch_v4_2_55.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if sequenced_message_type == "U" then
    return nsxaustralia_nets_itch_v4_2_55.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indicative Price Quantity Message
  if sequenced_message_type == "I" then
    return nsxaustralia_nets_itch_v4_2_55.indicative_price_quantity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if sequenced_message_type == "P" then
    return nsxaustralia_nets_itch_v4_2_55.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if sequenced_message_type == "N" then
    return nsxaustralia_nets_itch_v4_2_55.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Member Directory Message
  if sequenced_message_type == "Y" then
    return nsxaustralia_nets_itch_v4_2_55.index_member_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Value Message
  if sequenced_message_type == "Z" then
    return nsxaustralia_nets_itch_v4_2_55.index_value_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 19 values
  index, sequenced_message_type = nsxaustralia_nets_itch_v4_2_55.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 19 branches
  index = nsxaustralia_nets_itch_v4_2_55.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nsxaustralia_nets_itch_v4_2_55.login_rejected_packet = {}

-- Size: Login Rejected Packet
nsxaustralia_nets_itch_v4_2_55.login_rejected_packet.size =
  nsxaustralia_nets_itch_v4_2_55.reject_reason_code.size

-- Display: Login Rejected Packet
nsxaustralia_nets_itch_v4_2_55.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nsxaustralia_nets_itch_v4_2_55.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nsxaustralia_nets_itch_v4_2_55.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nsxaustralia_nets_itch_v4_2_55.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.login_rejected_packet, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nsxaustralia_nets_itch_v4_2_55.login_accepted_packet = {}

-- Size: Login Accepted Packet
nsxaustralia_nets_itch_v4_2_55.login_accepted_packet.size =
  nsxaustralia_nets_itch_v4_2_55.session.size + 
  nsxaustralia_nets_itch_v4_2_55.sequence_number.size

-- Display: Login Accepted Packet
nsxaustralia_nets_itch_v4_2_55.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nsxaustralia_nets_itch_v4_2_55.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nsxaustralia_nets_itch_v4_2_55.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nsxaustralia_nets_itch_v4_2_55.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nsxaustralia_nets_itch_v4_2_55.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.login_accepted_packet, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nsxaustralia_nets_itch_v4_2_55.debug_packet = {}

-- Size: Debug Packet
nsxaustralia_nets_itch_v4_2_55.debug_packet.size =
  nsxaustralia_nets_itch_v4_2_55.text.size

-- Display: Debug Packet
nsxaustralia_nets_itch_v4_2_55.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nsxaustralia_nets_itch_v4_2_55.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nsxaustralia_nets_itch_v4_2_55.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nsxaustralia_nets_itch_v4_2_55.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.debug_packet, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nsxaustralia_nets_itch_v4_2_55.payload = {}

-- Dissect: Payload
nsxaustralia_nets_itch_v4_2_55.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nsxaustralia_nets_itch_v4_2_55.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nsxaustralia_nets_itch_v4_2_55.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nsxaustralia_nets_itch_v4_2_55.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nsxaustralia_nets_itch_v4_2_55.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nsxaustralia_nets_itch_v4_2_55.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nsxaustralia_nets_itch_v4_2_55.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet Header
nsxaustralia_nets_itch_v4_2_55.packet_header = {}

-- Size: Packet Header
nsxaustralia_nets_itch_v4_2_55.packet_header.size =
  nsxaustralia_nets_itch_v4_2_55.packet_length.size + 
  nsxaustralia_nets_itch_v4_2_55.packet_type.size

-- Display: Packet Header
nsxaustralia_nets_itch_v4_2_55.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nsxaustralia_nets_itch_v4_2_55.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nsxaustralia_nets_itch_v4_2_55.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nsxaustralia_nets_itch_v4_2_55.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nsxaustralia_nets_itch_v4_2_55.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.packet_header, buffer(offset, 0))
    local index = nsxaustralia_nets_itch_v4_2_55.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nsxaustralia_nets_itch_v4_2_55.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nsxaustralia_nets_itch_v4_2_55.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
nsxaustralia_nets_itch_v4_2_55.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
nsxaustralia_nets_itch_v4_2_55.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nsxaustralia_nets_itch_v4_2_55.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nsxaustralia_nets_itch_v4_2_55.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nsxaustralia_nets_itch_v4_2_55.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nsxaustralia_nets_itch_v4_2_55.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_nsxaustralia_nets_itch_v4_2_55.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = nsxaustralia_nets_itch_v4_2_55.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = nsxaustralia_nets_itch_v4_2_55.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nsxaustralia_nets_itch_v4_2_55.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nsxaustralia_nets_itch_v4_2_55.packet_header.size then
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
nsxaustralia_nets_itch_v4_2_55.packet = {}

-- Dissect Packet
nsxaustralia_nets_itch_v4_2_55.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nsxaustralia_nets_itch_v4_2_55.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
function omi_nsxaustralia_nets_itch_v4_2_55.init()
end

-- Dissector for NsxAustralia Nets Itch 4.2.55
function omi_nsxaustralia_nets_itch_v4_2_55.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nsxaustralia_nets_itch_v4_2_55.name

  -- Dissect protocol
  local protocol = parent:add(omi_nsxaustralia_nets_itch_v4_2_55, buffer(), omi_nsxaustralia_nets_itch_v4_2_55.description, "("..buffer:len().." Bytes)")
  return nsxaustralia_nets_itch_v4_2_55.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_nsxaustralia_nets_itch_v4_2_55)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Tcp packet
nsxaustralia_nets_itch_v4_2_55.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for NsxAustralia Nets Itch 4.2.55 (Tcp)
local function omi_nsxaustralia_nets_itch_v4_2_55_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nsxaustralia_nets_itch_v4_2_55.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nsxaustralia_nets_itch_v4_2_55
  omi_nsxaustralia_nets_itch_v4_2_55.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for NsxAustralia Nets Itch 4.2.55
omi_nsxaustralia_nets_itch_v4_2_55:register_heuristic("tcp", omi_nsxaustralia_nets_itch_v4_2_55_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Nation Stock Exchange of Australia
--   Version: 4.2.55
--   Date: Monday, April 6, 2026
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
