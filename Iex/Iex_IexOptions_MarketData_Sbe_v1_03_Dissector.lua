-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex IexOptions MarketData Sbe 1.03 Protocol
local omi_iex_iexoptions_marketdata_sbe_v1_03 = Proto("Omi.Iex.IexOptions.MarketData.Sbe.v1.03", "Iex IexOptions MarketData Sbe 1.03")

-- Protocol table
local iex_iexoptions_marketdata_sbe_v1_03 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex IexOptions MarketData Sbe 1.03 Fields
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "iex.iexoptions.marketdata.sbe.v1.03.asofsequencenumber", ftypes.UINT64)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.ask_customer_size = ProtoField.new("Ask Customer Size", "iex.iexoptions.marketdata.sbe.v1.03.askcustomersize", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.ask_price = ProtoField.new("Ask Price", "iex.iexoptions.marketdata.sbe.v1.03.askprice", ftypes.DOUBLE)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.ask_size = ProtoField.new("Ask Size", "iex.iexoptions.marketdata.sbe.v1.03.asksize", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.auction_summary_type = ProtoField.new("Auction Summary Type", "iex.iexoptions.marketdata.sbe.v1.03.auctionsummarytype", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.begin_sequence = ProtoField.new("Begin Sequence", "iex.iexoptions.marketdata.sbe.v1.03.beginsequence", ftypes.UINT64)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.bid_customer_size = ProtoField.new("Bid Customer Size", "iex.iexoptions.marketdata.sbe.v1.03.bidcustomersize", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.bid_price = ProtoField.new("Bid Price", "iex.iexoptions.marketdata.sbe.v1.03.bidprice", ftypes.DOUBLE)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.bid_size = ProtoField.new("Bid Size", "iex.iexoptions.marketdata.sbe.v1.03.bidsize", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.block_length = ProtoField.new("Block Length", "iex.iexoptions.marketdata.sbe.v1.03.blocklength", ftypes.UINT16)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.block_length_uint_8 = ProtoField.new("Block Length uint 8", "iex.iexoptions.marketdata.sbe.v1.03.blocklengthuint8", ftypes.UINT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.capacity = ProtoField.new("Capacity", "iex.iexoptions.marketdata.sbe.v1.03.capacity", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.channel_id = ProtoField.new("Channel Id", "iex.iexoptions.marketdata.sbe.v1.03.channelid", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.close_indicator = ProtoField.new("Close Indicator", "iex.iexoptions.marketdata.sbe.v1.03.closeindicator", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.closing_only_series = ProtoField.new("Closing Only Series", "iex.iexoptions.marketdata.sbe.v1.03.closingonlyseries", ftypes.UINT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.contracts = ProtoField.new("Contracts", "iex.iexoptions.marketdata.sbe.v1.03.contracts", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.current_packet_number = ProtoField.new("Current Packet Number", "iex.iexoptions.marketdata.sbe.v1.03.currentpacketnumber", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.customer_indicator = ProtoField.new("Customer Indicator", "iex.iexoptions.marketdata.sbe.v1.03.customerindicator", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.end_sequence = ProtoField.new("End Sequence", "iex.iexoptions.marketdata.sbe.v1.03.endsequence", ftypes.UINT64)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.event_end_offset = ProtoField.new("Event End Offset", "iex.iexoptions.marketdata.sbe.v1.03.eventendoffset", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.event_id = ProtoField.new("Event Id", "iex.iexoptions.marketdata.sbe.v1.03.eventid", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.exchange_code = ProtoField.new("Exchange Code", "iex.iexoptions.marketdata.sbe.v1.03.exchangecode", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.executed_contracts = ProtoField.new("Executed Contracts", "iex.iexoptions.marketdata.sbe.v1.03.executedcontracts", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.feed = ProtoField.new("Feed", "iex.iexoptions.marketdata.sbe.v1.03.feed", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.instrument_id = ProtoField.new("Instrument Id", "iex.iexoptions.marketdata.sbe.v1.03.instrumentid", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.liquidity_event_type = ProtoField.new("Liquidity Event Type", "iex.iexoptions.marketdata.sbe.v1.03.liquidityeventtype", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.logon_id = ProtoField.new("Logon Id", "iex.iexoptions.marketdata.sbe.v1.03.logonid", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.maturity_date = ProtoField.new("Maturity Date", "iex.iexoptions.marketdata.sbe.v1.03.maturitydate", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.message_header = ProtoField.new("Message Header", "iex.iexoptions.marketdata.sbe.v1.03.messageheader", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.message_list_group_encoding = ProtoField.new("Message List Group Encoding", "iex.iexoptions.marketdata.sbe.v1.03.messagelistgroupencoding", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.mod_flag = ProtoField.new("Mod Flag", "iex.iexoptions.marketdata.sbe.v1.03.modflag", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.mpv_group = ProtoField.new("Mpv Group", "iex.iexoptions.marketdata.sbe.v1.03.mpvgroup", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.num_in_group = ProtoField.new("Num In Group", "iex.iexoptions.marketdata.sbe.v1.03.numingroup", ftypes.UINT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.option_type = ProtoField.new("Option Type", "iex.iexoptions.marketdata.sbe.v1.03.optiontype", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.order_id = ProtoField.new("Order Id", "iex.iexoptions.marketdata.sbe.v1.03.orderid", ftypes.UINT64)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.original_trade_id = ProtoField.new("Original Trade Id", "iex.iexoptions.marketdata.sbe.v1.03.originaltradeid", ftypes.UINT64)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.orp_enablement = ProtoField.new("Orp Enablement", "iex.iexoptions.marketdata.sbe.v1.03.orpenablement", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.osi_symbol = ProtoField.new("Osi Symbol", "iex.iexoptions.marketdata.sbe.v1.03.osisymbol", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.packet = ProtoField.new("Packet", "iex.iexoptions.marketdata.sbe.v1.03.packet", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.packet_length = ProtoField.new("Packet Length", "iex.iexoptions.marketdata.sbe.v1.03.packetlength", ftypes.UINT16)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.participant_id = ProtoField.new("Participant Id", "iex.iexoptions.marketdata.sbe.v1.03.participantid", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.price = ProtoField.new("Price", "iex.iexoptions.marketdata.sbe.v1.03.price", ftypes.DOUBLE)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.quote_relief_multiplier = ProtoField.new("Quote Relief Multiplier", "iex.iexoptions.marketdata.sbe.v1.03.quotereliefmultiplier", ftypes.UINT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.remaining_contracts = ProtoField.new("Remaining Contracts", "iex.iexoptions.marketdata.sbe.v1.03.remainingcontracts", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.request_id = ProtoField.new("Request Id", "iex.iexoptions.marketdata.sbe.v1.03.requestid", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.sbe_message = ProtoField.new("Sbe Message", "iex.iexoptions.marketdata.sbe.v1.03.sbemessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.schema_id = ProtoField.new("Schema Id", "iex.iexoptions.marketdata.sbe.v1.03.schemaid", ftypes.UINT16)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.sequence_number = ProtoField.new("Sequence Number", "iex.iexoptions.marketdata.sbe.v1.03.sequencenumber", ftypes.UINT64)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.sequenced_packet_message_messages_groups = ProtoField.new("Sequenced Packet Message messages Groups", "iex.iexoptions.marketdata.sbe.v1.03.sequencedpacketmessagemessagesgroups", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.side = ProtoField.new("Side", "iex.iexoptions.marketdata.sbe.v1.03.side", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.snapshot_id = ProtoField.new("Snapshot Id", "iex.iexoptions.marketdata.sbe.v1.03.snapshotid", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.status_retransmission_status_type = ProtoField.new("Status Retransmission Status Type", "iex.iexoptions.marketdata.sbe.v1.03.statusretransmissionstatustype", ftypes.UINT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.status_status_type = ProtoField.new("Status Status Type", "iex.iexoptions.marketdata.sbe.v1.03.statusstatustype", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.strike_price = ProtoField.new("Strike Price", "iex.iexoptions.marketdata.sbe.v1.03.strikeprice", ftypes.DOUBLE)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.template_id = ProtoField.new("Template Id", "iex.iexoptions.marketdata.sbe.v1.03.templateid", ftypes.UINT16)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.time = ProtoField.new("Time", "iex.iexoptions.marketdata.sbe.v1.03.time", ftypes.UINT64)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.total_packet_count = ProtoField.new("Total Packet Count", "iex.iexoptions.marketdata.sbe.v1.03.totalpacketcount", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trade_condition = ProtoField.new("Trade Condition", "iex.iexoptions.marketdata.sbe.v1.03.tradecondition", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trade_id = ProtoField.new("Trade Id", "iex.iexoptions.marketdata.sbe.v1.03.tradeid", ftypes.UINT64)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trading_ring = ProtoField.new("Trading Ring", "iex.iexoptions.marketdata.sbe.v1.03.tradingring", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trading_status = ProtoField.new("Trading Status", "iex.iexoptions.marketdata.sbe.v1.03.tradingstatus", ftypes.INT8)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.underlying_id = ProtoField.new("Underlying Id", "iex.iexoptions.marketdata.sbe.v1.03.underlyingid", ftypes.UINT32)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "iex.iexoptions.marketdata.sbe.v1.03.underlyingsymbol", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.version = ProtoField.new("Version", "iex.iexoptions.marketdata.sbe.v1.03.version", ftypes.UINT16)

-- Iex IexOptions MarketData 1.03 Application Messages
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.add_order_customer_message = ProtoField.new("Add Order Customer Message", "iex.iexoptions.marketdata.sbe.v1.03.addordercustomermessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.add_order_non_customer_message = ProtoField.new("Add Order Non Customer Message", "iex.iexoptions.marketdata.sbe.v1.03.addordernoncustomermessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "iex.iexoptions.marketdata.sbe.v1.03.clientheartbeatmessage", ftypes.BYTES)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.deep_trade_break_message = ProtoField.new("Deep Trade Break Message", "iex.iexoptions.marketdata.sbe.v1.03.deeptradebreakmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.delete_order_message = ProtoField.new("Delete Order Message", "iex.iexoptions.marketdata.sbe.v1.03.deleteordermessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "iex.iexoptions.marketdata.sbe.v1.03.heartbeatmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.instrument_clear_message = ProtoField.new("Instrument Clear Message", "iex.iexoptions.marketdata.sbe.v1.03.instrumentclearmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.liquidity_event_cancel_message = ProtoField.new("Liquidity Event Cancel Message", "iex.iexoptions.marketdata.sbe.v1.03.liquidityeventcancelmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.liquidity_event_execution_message = ProtoField.new("Liquidity Event Execution Message", "iex.iexoptions.marketdata.sbe.v1.03.liquidityeventexecutionmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.liquidity_event_notification_message = ProtoField.new("Liquidity Event Notification Message", "iex.iexoptions.marketdata.sbe.v1.03.liquidityeventnotificationmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.modify_order_message = ProtoField.new("Modify Order Message", "iex.iexoptions.marketdata.sbe.v1.03.modifyordermessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.options_auction_summary_message = ProtoField.new("Options Auction Summary Message", "iex.iexoptions.marketdata.sbe.v1.03.optionsauctionsummarymessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.options_auction_width_update_message = ProtoField.new("Options Auction Width Update Message", "iex.iexoptions.marketdata.sbe.v1.03.optionsauctionwidthupdatemessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.order_execution_message = ProtoField.new("Order Execution Message", "iex.iexoptions.marketdata.sbe.v1.03.orderexecutionmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.quote_update_customer_interest_message = ProtoField.new("Quote Update Customer Interest Message", "iex.iexoptions.marketdata.sbe.v1.03.quoteupdatecustomerinterestmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.quote_update_no_customer_interest_message = ProtoField.new("Quote Update No Customer Interest Message", "iex.iexoptions.marketdata.sbe.v1.03.quoteupdatenocustomerinterestmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "iex.iexoptions.marketdata.sbe.v1.03.retransmissionrequestmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "iex.iexoptions.marketdata.sbe.v1.03.retransmissionresponsemessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.sequenced_packet_message = ProtoField.new("Sequenced Packet Message", "iex.iexoptions.marketdata.sbe.v1.03.sequencedpacketmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "iex.iexoptions.marketdata.sbe.v1.03.serverheartbeatmessage", ftypes.BYTES)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.session_shutdown_message = ProtoField.new("Session Shutdown Message", "iex.iexoptions.marketdata.sbe.v1.03.sessionshutdownmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.snapshot_header_message = ProtoField.new("Snapshot Header Message", "iex.iexoptions.marketdata.sbe.v1.03.snapshotheadermessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "iex.iexoptions.marketdata.sbe.v1.03.symbolmappingmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.tops_trade_break_message = ProtoField.new("Tops Trade Break Message", "iex.iexoptions.marketdata.sbe.v1.03.topstradebreakmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "iex.iexoptions.marketdata.sbe.v1.03.tradecorrectionmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trade_message = ProtoField.new("Trade Message", "iex.iexoptions.marketdata.sbe.v1.03.trademessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trading_status_message = ProtoField.new("Trading Status Message", "iex.iexoptions.marketdata.sbe.v1.03.tradingstatusmessage", ftypes.STRING)
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.underlying_ref_data_message = ProtoField.new("Underlying Ref Data Message", "iex.iexoptions.marketdata.sbe.v1.03.underlyingrefdatamessage", ftypes.STRING)

-- Iex IexOptions MarketData Sbe 1.03 generated fields
omi_iex_iexoptions_marketdata_sbe_v1_03.fields.sequenced_packet_message_messages_group_index = ProtoField.new("Sequenced Packet Message messages Group Index", "iex.iexoptions.marketdata.sbe.v1.03.sequencedpacketmessagemessagesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Iex IexOptions MarketData Sbe 1.03 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Iex IexOptions MarketData Sbe 1.03 Show Options
omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_iex_iexoptions_marketdata_sbe_v1_03.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_application_messages then
    show.application_messages = omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_application_messages
  end
  if show.headers ~= omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_headers then
    show.headers = omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_headers
  end
  if show.structs ~= omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_structs then
    show.structs = omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_structs
  end
  if show.indexes ~= omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_indexes then
    show.indexes = omi_iex_iexoptions_marketdata_sbe_v1_03.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Iex IexOptions MarketData Sbe 1.03 Fields
-----------------------------------------------------------------------

-- As Of Sequence Number
iex_iexoptions_marketdata_sbe_v1_03.as_of_sequence_number = {}

-- Size: As Of Sequence Number
iex_iexoptions_marketdata_sbe_v1_03.as_of_sequence_number.size = 8

-- Display: As Of Sequence Number
iex_iexoptions_marketdata_sbe_v1_03.as_of_sequence_number.display = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
iex_iexoptions_marketdata_sbe_v1_03.as_of_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.as_of_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_marketdata_sbe_v1_03.as_of_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Ask Customer Size
iex_iexoptions_marketdata_sbe_v1_03.ask_customer_size = {}

-- Size: Ask Customer Size
iex_iexoptions_marketdata_sbe_v1_03.ask_customer_size.size = 4

-- Display: Ask Customer Size
iex_iexoptions_marketdata_sbe_v1_03.ask_customer_size.display = function(value)
  return "Ask Customer Size: "..value
end

-- Dissect: Ask Customer Size
iex_iexoptions_marketdata_sbe_v1_03.ask_customer_size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.ask_customer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.ask_customer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.ask_customer_size, range, value, display)

  return offset + length, value
end

-- Ask Price
iex_iexoptions_marketdata_sbe_v1_03.ask_price = {}

-- Size: Ask Price
iex_iexoptions_marketdata_sbe_v1_03.ask_price.size = 8

-- Display: Ask Price
iex_iexoptions_marketdata_sbe_v1_03.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
iex_iexoptions_marketdata_sbe_v1_03.ask_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Ask Price
iex_iexoptions_marketdata_sbe_v1_03.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_marketdata_sbe_v1_03.ask_price.translate(raw)
  local display = iex_iexoptions_marketdata_sbe_v1_03.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
iex_iexoptions_marketdata_sbe_v1_03.ask_size = {}

-- Size: Ask Size
iex_iexoptions_marketdata_sbe_v1_03.ask_size.size = 4

-- Display: Ask Size
iex_iexoptions_marketdata_sbe_v1_03.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
iex_iexoptions_marketdata_sbe_v1_03.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.ask_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Auction Summary Type
iex_iexoptions_marketdata_sbe_v1_03.auction_summary_type = {}

-- Size: Auction Summary Type
iex_iexoptions_marketdata_sbe_v1_03.auction_summary_type.size = 1

-- Display: Auction Summary Type
iex_iexoptions_marketdata_sbe_v1_03.auction_summary_type.display = function(value)
  if value == 0 then
    return "Auction Summary Type: Opening (0)"
  end
  if value == 1 then
    return "Auction Summary Type: Halt Re Opening (1)"
  end

  return "Auction Summary Type: Unknown("..value..")"
end

-- Dissect: Auction Summary Type
iex_iexoptions_marketdata_sbe_v1_03.auction_summary_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.auction_summary_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.auction_summary_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.auction_summary_type, range, value, display)

  return offset + length, value
end

-- Begin Sequence
iex_iexoptions_marketdata_sbe_v1_03.begin_sequence = {}

-- Size: Begin Sequence
iex_iexoptions_marketdata_sbe_v1_03.begin_sequence.size = 8

-- Display: Begin Sequence
iex_iexoptions_marketdata_sbe_v1_03.begin_sequence.display = function(value)
  return "Begin Sequence: "..value
end

-- Dissect: Begin Sequence
iex_iexoptions_marketdata_sbe_v1_03.begin_sequence.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.begin_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_marketdata_sbe_v1_03.begin_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.begin_sequence, range, value, display)

  return offset + length, value
end

-- Bid Customer Size
iex_iexoptions_marketdata_sbe_v1_03.bid_customer_size = {}

-- Size: Bid Customer Size
iex_iexoptions_marketdata_sbe_v1_03.bid_customer_size.size = 4

-- Display: Bid Customer Size
iex_iexoptions_marketdata_sbe_v1_03.bid_customer_size.display = function(value)
  return "Bid Customer Size: "..value
end

-- Dissect: Bid Customer Size
iex_iexoptions_marketdata_sbe_v1_03.bid_customer_size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.bid_customer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.bid_customer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.bid_customer_size, range, value, display)

  return offset + length, value
end

-- Bid Price
iex_iexoptions_marketdata_sbe_v1_03.bid_price = {}

-- Size: Bid Price
iex_iexoptions_marketdata_sbe_v1_03.bid_price.size = 8

-- Display: Bid Price
iex_iexoptions_marketdata_sbe_v1_03.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
iex_iexoptions_marketdata_sbe_v1_03.bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Price
iex_iexoptions_marketdata_sbe_v1_03.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_marketdata_sbe_v1_03.bid_price.translate(raw)
  local display = iex_iexoptions_marketdata_sbe_v1_03.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
iex_iexoptions_marketdata_sbe_v1_03.bid_size = {}

-- Size: Bid Size
iex_iexoptions_marketdata_sbe_v1_03.bid_size.size = 4

-- Display: Bid Size
iex_iexoptions_marketdata_sbe_v1_03.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
iex_iexoptions_marketdata_sbe_v1_03.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Block Length
iex_iexoptions_marketdata_sbe_v1_03.block_length = {}

-- Size: Block Length
iex_iexoptions_marketdata_sbe_v1_03.block_length.size = 2

-- Display: Block Length
iex_iexoptions_marketdata_sbe_v1_03.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
iex_iexoptions_marketdata_sbe_v1_03.block_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.block_length, range, value, display)

  return offset + length, value
end

-- Block Length uint 8
iex_iexoptions_marketdata_sbe_v1_03.block_length_uint_8 = {}

-- Size: Block Length uint 8
iex_iexoptions_marketdata_sbe_v1_03.block_length_uint_8.size = 1

-- Display: Block Length uint 8
iex_iexoptions_marketdata_sbe_v1_03.block_length_uint_8.display = function(value)
  return "Block Length uint 8: "..value
end

-- Dissect: Block Length uint 8
iex_iexoptions_marketdata_sbe_v1_03.block_length_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.block_length_uint_8.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.block_length_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.block_length_uint_8, range, value, display)

  return offset + length, value
end

-- Capacity
iex_iexoptions_marketdata_sbe_v1_03.capacity = {}

-- Size: Capacity
iex_iexoptions_marketdata_sbe_v1_03.capacity.size = 1

-- Display: Capacity
iex_iexoptions_marketdata_sbe_v1_03.capacity.display = function(value)
  if value == 0 then
    return "Capacity: Customer (0)"
  end
  if value == 1 then
    return "Capacity: Firm (1)"
  end
  if value == 2 then
    return "Capacity: Broker Dealer (2)"
  end
  if value == 3 then
    return "Capacity: Market Maker (3)"
  end
  if value == 4 then
    return "Capacity: Away Market Maker (4)"
  end
  if value == 5 then
    return "Capacity: Prof Customer (5)"
  end
  if value == 6 then
    return "Capacity: Not Disclosed (6)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
iex_iexoptions_marketdata_sbe_v1_03.capacity.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.capacity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.capacity, range, value, display)

  return offset + length, value
end

-- Channel Id
iex_iexoptions_marketdata_sbe_v1_03.channel_id = {}

-- Size: Channel Id
iex_iexoptions_marketdata_sbe_v1_03.channel_id.size = 4

-- Display: Channel Id
iex_iexoptions_marketdata_sbe_v1_03.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
iex_iexoptions_marketdata_sbe_v1_03.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Close Indicator
iex_iexoptions_marketdata_sbe_v1_03.close_indicator = {}

-- Size: Close Indicator
iex_iexoptions_marketdata_sbe_v1_03.close_indicator.size = 1

-- Display: Close Indicator
iex_iexoptions_marketdata_sbe_v1_03.close_indicator.display = function(value)
  if value == 0 then
    return "Close Indicator: Default (0)"
  end
  if value == 1 then
    return "Close Indicator: Underlying Closed (1)"
  end

  return "Close Indicator: Unknown("..value..")"
end

-- Dissect: Close Indicator
iex_iexoptions_marketdata_sbe_v1_03.close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.close_indicator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.close_indicator, range, value, display)

  return offset + length, value
end

-- Closing Only Series
iex_iexoptions_marketdata_sbe_v1_03.closing_only_series = {}

-- Size: Closing Only Series
iex_iexoptions_marketdata_sbe_v1_03.closing_only_series.size = 1

-- Display: Closing Only Series
iex_iexoptions_marketdata_sbe_v1_03.closing_only_series.display = function(value)
  if value == 0 then
    return "Closing Only Series: False (0)"
  end
  if value == 1 then
    return "Closing Only Series: True (1)"
  end

  return "Closing Only Series: Unknown("..value..")"
end

-- Dissect: Closing Only Series
iex_iexoptions_marketdata_sbe_v1_03.closing_only_series.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.closing_only_series.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.closing_only_series.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.closing_only_series, range, value, display)

  return offset + length, value
end

-- Contracts
iex_iexoptions_marketdata_sbe_v1_03.contracts = {}

-- Size: Contracts
iex_iexoptions_marketdata_sbe_v1_03.contracts.size = 4

-- Display: Contracts
iex_iexoptions_marketdata_sbe_v1_03.contracts.display = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
iex_iexoptions_marketdata_sbe_v1_03.contracts.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.contracts, range, value, display)

  return offset + length, value
end

-- Current Packet Number
iex_iexoptions_marketdata_sbe_v1_03.current_packet_number = {}

-- Size: Current Packet Number
iex_iexoptions_marketdata_sbe_v1_03.current_packet_number.size = 4

-- Display: Current Packet Number
iex_iexoptions_marketdata_sbe_v1_03.current_packet_number.display = function(value)
  return "Current Packet Number: "..value
end

-- Dissect: Current Packet Number
iex_iexoptions_marketdata_sbe_v1_03.current_packet_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.current_packet_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.current_packet_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.current_packet_number, range, value, display)

  return offset + length, value
end

-- Customer Indicator
iex_iexoptions_marketdata_sbe_v1_03.customer_indicator = {}

-- Size: Customer Indicator
iex_iexoptions_marketdata_sbe_v1_03.customer_indicator.size = 1

-- Display: Customer Indicator
iex_iexoptions_marketdata_sbe_v1_03.customer_indicator.display = function(value)
  if value == 0 then
    return "Customer Indicator: Customer (0)"
  end
  if value == 1 then
    return "Customer Indicator: Non Customer (1)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
iex_iexoptions_marketdata_sbe_v1_03.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- End Sequence
iex_iexoptions_marketdata_sbe_v1_03.end_sequence = {}

-- Size: End Sequence
iex_iexoptions_marketdata_sbe_v1_03.end_sequence.size = 8

-- Display: End Sequence
iex_iexoptions_marketdata_sbe_v1_03.end_sequence.display = function(value)
  return "End Sequence: "..value
end

-- Dissect: End Sequence
iex_iexoptions_marketdata_sbe_v1_03.end_sequence.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.end_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_marketdata_sbe_v1_03.end_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.end_sequence, range, value, display)

  return offset + length, value
end

-- Event End Offset
iex_iexoptions_marketdata_sbe_v1_03.event_end_offset = {}

-- Size: Event End Offset
iex_iexoptions_marketdata_sbe_v1_03.event_end_offset.size = 4

-- Display: Event End Offset
iex_iexoptions_marketdata_sbe_v1_03.event_end_offset.display = function(value)
  return "Event End Offset: "..value
end

-- Dissect: Event End Offset
iex_iexoptions_marketdata_sbe_v1_03.event_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.event_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.event_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.event_end_offset, range, value, display)

  return offset + length, value
end

-- Event Id
iex_iexoptions_marketdata_sbe_v1_03.event_id = {}

-- Size: Event Id
iex_iexoptions_marketdata_sbe_v1_03.event_id.size = 4

-- Display: Event Id
iex_iexoptions_marketdata_sbe_v1_03.event_id.display = function(value)
  return "Event Id: "..value
end

-- Dissect: Event Id
iex_iexoptions_marketdata_sbe_v1_03.event_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.event_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.event_id, range, value, display)

  return offset + length, value
end

-- Exchange Code
iex_iexoptions_marketdata_sbe_v1_03.exchange_code = {}

-- Size: Exchange Code
iex_iexoptions_marketdata_sbe_v1_03.exchange_code.size = 1

-- Display: Exchange Code
iex_iexoptions_marketdata_sbe_v1_03.exchange_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange Code: No Value"
  end

  return "Exchange Code: "..value
end

-- Dissect: Exchange Code
iex_iexoptions_marketdata_sbe_v1_03.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.exchange_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = iex_iexoptions_marketdata_sbe_v1_03.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Executed Contracts
iex_iexoptions_marketdata_sbe_v1_03.executed_contracts = {}

-- Size: Executed Contracts
iex_iexoptions_marketdata_sbe_v1_03.executed_contracts.size = 4

-- Display: Executed Contracts
iex_iexoptions_marketdata_sbe_v1_03.executed_contracts.display = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
iex_iexoptions_marketdata_sbe_v1_03.executed_contracts.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.executed_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.executed_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.executed_contracts, range, value, display)

  return offset + length, value
end

-- Feed
iex_iexoptions_marketdata_sbe_v1_03.feed = {}

-- Size: Feed
iex_iexoptions_marketdata_sbe_v1_03.feed.size = 1

-- Display: Feed
iex_iexoptions_marketdata_sbe_v1_03.feed.display = function(value)
  if value == 0 then
    return "Feed: Deep (0)"
  end
  if value == 1 then
    return "Feed: Tops (1)"
  end

  return "Feed: Unknown("..value..")"
end

-- Dissect: Feed
iex_iexoptions_marketdata_sbe_v1_03.feed.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.feed.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.feed.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.feed, range, value, display)

  return offset + length, value
end

-- Instrument Id
iex_iexoptions_marketdata_sbe_v1_03.instrument_id = {}

-- Size: Instrument Id
iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size = 4

-- Display: Instrument Id
iex_iexoptions_marketdata_sbe_v1_03.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Liquidity Event Type
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_type = {}

-- Size: Liquidity Event Type
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_type.size = 1

-- Display: Liquidity Event Type
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_type.display = function(value)
  if value == 0 then
    return "Liquidity Event Type: Sum (0)"
  end

  return "Liquidity Event Type: Unknown("..value..")"
end

-- Dissect: Liquidity Event Type
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.liquidity_event_type, range, value, display)

  return offset + length, value
end

-- Logon Id
iex_iexoptions_marketdata_sbe_v1_03.logon_id = {}

-- Size: Logon Id
iex_iexoptions_marketdata_sbe_v1_03.logon_id.size = 16

-- Display: Logon Id
iex_iexoptions_marketdata_sbe_v1_03.logon_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logon Id: No Value"
  end

  return "Logon Id: "..value
end

-- Dissect: Logon Id
iex_iexoptions_marketdata_sbe_v1_03.logon_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.logon_id.size
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

  local display = iex_iexoptions_marketdata_sbe_v1_03.logon_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.logon_id, range, value, display)

  return offset + length, value
end

-- Maturity Date
iex_iexoptions_marketdata_sbe_v1_03.maturity_date = {}

-- Size: Maturity Date
iex_iexoptions_marketdata_sbe_v1_03.maturity_date.size = 8

-- Display: Maturity Date
iex_iexoptions_marketdata_sbe_v1_03.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
iex_iexoptions_marketdata_sbe_v1_03.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.maturity_date.size
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

  local display = iex_iexoptions_marketdata_sbe_v1_03.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Mod Flag
iex_iexoptions_marketdata_sbe_v1_03.mod_flag = {}

-- Size: Mod Flag
iex_iexoptions_marketdata_sbe_v1_03.mod_flag.size = 1

-- Display: Mod Flag
iex_iexoptions_marketdata_sbe_v1_03.mod_flag.display = function(value)
  if value == 0 then
    return "Mod Flag: Reset Priority (0)"
  end
  if value == 1 then
    return "Mod Flag: Maintain Priority (1)"
  end

  return "Mod Flag: Unknown("..value..")"
end

-- Dissect: Mod Flag
iex_iexoptions_marketdata_sbe_v1_03.mod_flag.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.mod_flag.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.mod_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.mod_flag, range, value, display)

  return offset + length, value
end

-- Mpv Group
iex_iexoptions_marketdata_sbe_v1_03.mpv_group = {}

-- Size: Mpv Group
iex_iexoptions_marketdata_sbe_v1_03.mpv_group.size = 1

-- Display: Mpv Group
iex_iexoptions_marketdata_sbe_v1_03.mpv_group.display = function(value)
  if value == 0 then
    return "Mpv Group: All Penny (0)"
  end
  if value == 1 then
    return "Mpv Group: Penny Nickel (1)"
  end
  if value == 2 then
    return "Mpv Group: Nickel Dime (2)"
  end

  return "Mpv Group: Unknown("..value..")"
end

-- Dissect: Mpv Group
iex_iexoptions_marketdata_sbe_v1_03.mpv_group.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.mpv_group.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.mpv_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.mpv_group, range, value, display)

  return offset + length, value
end

-- Num In Group
iex_iexoptions_marketdata_sbe_v1_03.num_in_group = {}

-- Size: Num In Group
iex_iexoptions_marketdata_sbe_v1_03.num_in_group.size = 1

-- Display: Num In Group
iex_iexoptions_marketdata_sbe_v1_03.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
iex_iexoptions_marketdata_sbe_v1_03.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Option Type
iex_iexoptions_marketdata_sbe_v1_03.option_type = {}

-- Size: Option Type
iex_iexoptions_marketdata_sbe_v1_03.option_type.size = 1

-- Display: Option Type
iex_iexoptions_marketdata_sbe_v1_03.option_type.display = function(value)
  if value == 0 then
    return "Option Type: Put (0)"
  end
  if value == 1 then
    return "Option Type: Call (1)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
iex_iexoptions_marketdata_sbe_v1_03.option_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.option_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Id
iex_iexoptions_marketdata_sbe_v1_03.order_id = {}

-- Size: Order Id
iex_iexoptions_marketdata_sbe_v1_03.order_id.size = 8

-- Display: Order Id
iex_iexoptions_marketdata_sbe_v1_03.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
iex_iexoptions_marketdata_sbe_v1_03.order_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_marketdata_sbe_v1_03.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.order_id, range, value, display)

  return offset + length, value
end

-- Original Trade Id
iex_iexoptions_marketdata_sbe_v1_03.original_trade_id = {}

-- Size: Original Trade Id
iex_iexoptions_marketdata_sbe_v1_03.original_trade_id.size = 8

-- Display: Original Trade Id
iex_iexoptions_marketdata_sbe_v1_03.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
iex_iexoptions_marketdata_sbe_v1_03.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_marketdata_sbe_v1_03.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Orp Enablement
iex_iexoptions_marketdata_sbe_v1_03.orp_enablement = {}

-- Size: Orp Enablement
iex_iexoptions_marketdata_sbe_v1_03.orp_enablement.size = 1

-- Display: Orp Enablement
iex_iexoptions_marketdata_sbe_v1_03.orp_enablement.display = function(value)
  if value == 0 then
    return "Orp Enablement: Orp Protection Enabled (0)"
  end
  if value == 1 then
    return "Orp Enablement: Orp Protection Disabled (1)"
  end

  return "Orp Enablement: Unknown("..value..")"
end

-- Dissect: Orp Enablement
iex_iexoptions_marketdata_sbe_v1_03.orp_enablement.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.orp_enablement.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.orp_enablement.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.orp_enablement, range, value, display)

  return offset + length, value
end

-- Osi Symbol
iex_iexoptions_marketdata_sbe_v1_03.osi_symbol = {}

-- Size: Osi Symbol
iex_iexoptions_marketdata_sbe_v1_03.osi_symbol.size = 32

-- Display: Osi Symbol
iex_iexoptions_marketdata_sbe_v1_03.osi_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Osi Symbol: No Value"
  end

  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
iex_iexoptions_marketdata_sbe_v1_03.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.osi_symbol.size
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

  local display = iex_iexoptions_marketdata_sbe_v1_03.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Packet Length
iex_iexoptions_marketdata_sbe_v1_03.packet_length = {}

-- Size: Packet Length
iex_iexoptions_marketdata_sbe_v1_03.packet_length.size = 2

-- Display: Packet Length
iex_iexoptions_marketdata_sbe_v1_03.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
iex_iexoptions_marketdata_sbe_v1_03.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Participant Id
iex_iexoptions_marketdata_sbe_v1_03.participant_id = {}

-- Size: Participant Id
iex_iexoptions_marketdata_sbe_v1_03.participant_id.size = 4

-- Display: Participant Id
iex_iexoptions_marketdata_sbe_v1_03.participant_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Participant Id: No Value"
  end

  return "Participant Id: "..value
end

-- Dissect: Participant Id
iex_iexoptions_marketdata_sbe_v1_03.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.participant_id.size
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

  local display = iex_iexoptions_marketdata_sbe_v1_03.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price
iex_iexoptions_marketdata_sbe_v1_03.price = {}

-- Size: Price
iex_iexoptions_marketdata_sbe_v1_03.price.size = 8

-- Display: Price
iex_iexoptions_marketdata_sbe_v1_03.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
iex_iexoptions_marketdata_sbe_v1_03.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
iex_iexoptions_marketdata_sbe_v1_03.price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_marketdata_sbe_v1_03.price.translate(raw)
  local display = iex_iexoptions_marketdata_sbe_v1_03.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.price, range, value, display)

  return offset + length, value
end

-- Quote Relief Multiplier
iex_iexoptions_marketdata_sbe_v1_03.quote_relief_multiplier = {}

-- Size: Quote Relief Multiplier
iex_iexoptions_marketdata_sbe_v1_03.quote_relief_multiplier.size = 1

-- Display: Quote Relief Multiplier
iex_iexoptions_marketdata_sbe_v1_03.quote_relief_multiplier.display = function(value)
  return "Quote Relief Multiplier: "..value
end

-- Dissect: Quote Relief Multiplier
iex_iexoptions_marketdata_sbe_v1_03.quote_relief_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.quote_relief_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.quote_relief_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.quote_relief_multiplier, range, value, display)

  return offset + length, value
end

-- Remaining Contracts
iex_iexoptions_marketdata_sbe_v1_03.remaining_contracts = {}

-- Size: Remaining Contracts
iex_iexoptions_marketdata_sbe_v1_03.remaining_contracts.size = 4

-- Display: Remaining Contracts
iex_iexoptions_marketdata_sbe_v1_03.remaining_contracts.display = function(value)
  return "Remaining Contracts: "..value
end

-- Dissect: Remaining Contracts
iex_iexoptions_marketdata_sbe_v1_03.remaining_contracts.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.remaining_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.remaining_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.remaining_contracts, range, value, display)

  return offset + length, value
end

-- Request Id
iex_iexoptions_marketdata_sbe_v1_03.request_id = {}

-- Size: Request Id
iex_iexoptions_marketdata_sbe_v1_03.request_id.size = 4

-- Display: Request Id
iex_iexoptions_marketdata_sbe_v1_03.request_id.display = function(value)
  return "Request Id: "..value
end

-- Dissect: Request Id
iex_iexoptions_marketdata_sbe_v1_03.request_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.request_id, range, value, display)

  return offset + length, value
end

-- Schema Id
iex_iexoptions_marketdata_sbe_v1_03.schema_id = {}

-- Size: Schema Id
iex_iexoptions_marketdata_sbe_v1_03.schema_id.size = 2

-- Display: Schema Id
iex_iexoptions_marketdata_sbe_v1_03.schema_id.display = function(value)
  if value == 10000 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
iex_iexoptions_marketdata_sbe_v1_03.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
iex_iexoptions_marketdata_sbe_v1_03.sequence_number = {}

-- Size: Sequence Number
iex_iexoptions_marketdata_sbe_v1_03.sequence_number.size = 8

-- Display: Sequence Number
iex_iexoptions_marketdata_sbe_v1_03.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
iex_iexoptions_marketdata_sbe_v1_03.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_marketdata_sbe_v1_03.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Side
iex_iexoptions_marketdata_sbe_v1_03.side = {}

-- Size: Side
iex_iexoptions_marketdata_sbe_v1_03.side.size = 1

-- Display: Side
iex_iexoptions_marketdata_sbe_v1_03.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
iex_iexoptions_marketdata_sbe_v1_03.side.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.side, range, value, display)

  return offset + length, value
end

-- Snapshot Id
iex_iexoptions_marketdata_sbe_v1_03.snapshot_id = {}

-- Size: Snapshot Id
iex_iexoptions_marketdata_sbe_v1_03.snapshot_id.size = 4

-- Display: Snapshot Id
iex_iexoptions_marketdata_sbe_v1_03.snapshot_id.display = function(value)
  return "Snapshot Id: "..value
end

-- Dissect: Snapshot Id
iex_iexoptions_marketdata_sbe_v1_03.snapshot_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.snapshot_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.snapshot_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.snapshot_id, range, value, display)

  return offset + length, value
end

-- Status Retransmission Status Type
iex_iexoptions_marketdata_sbe_v1_03.status_retransmission_status_type = {}

-- Size: Status Retransmission Status Type
iex_iexoptions_marketdata_sbe_v1_03.status_retransmission_status_type.size = 1

-- Display: Status Retransmission Status Type
iex_iexoptions_marketdata_sbe_v1_03.status_retransmission_status_type.display = function(value)
  if value == 0 then
    return "Status Retransmission Status Type: Success (0)"
  end
  if value == 1 then
    return "Status Retransmission Status Type: Invalid Channel Id (1)"
  end
  if value == 2 then
    return "Status Retransmission Status Type: Invalid Feed (2)"
  end
  if value == 3 then
    return "Status Retransmission Status Type: Invalid Logon Id (3)"
  end
  if value == 4 then
    return "Status Retransmission Status Type: Invalid Request Id (4)"
  end
  if value == 5 then
    return "Status Retransmission Status Type: Invalid Packet Length (5)"
  end
  if value == 6 then
    return "Status Retransmission Status Type: Invalid Message (6)"
  end
  if value == 7 then
    return "Status Retransmission Status Type: Invalid Seq Num Range (7)"
  end
  if value == 8 then
    return "Status Retransmission Status Type: Denial Of Service (8)"
  end
  if value == 9 then
    return "Status Retransmission Status Type: Max Daily Requests Exceeded (9)"
  end
  if value == 10 then
    return "Status Retransmission Status Type: Max Seq Num Range Exceeded (10)"
  end
  if value == 11 then
    return "Status Retransmission Status Type: Seq Num Ttl Expired (11)"
  end
  if value == 12 then
    return "Status Retransmission Status Type: Internal Error (12)"
  end

  return "Status Retransmission Status Type: Unknown("..value..")"
end

-- Dissect: Status Retransmission Status Type
iex_iexoptions_marketdata_sbe_v1_03.status_retransmission_status_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.status_retransmission_status_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.status_retransmission_status_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.status_retransmission_status_type, range, value, display)

  return offset + length, value
end

-- Status Status Type
iex_iexoptions_marketdata_sbe_v1_03.status_status_type = {}

-- Size: Status Status Type
iex_iexoptions_marketdata_sbe_v1_03.status_status_type.size = 1

-- Display: Status Status Type
iex_iexoptions_marketdata_sbe_v1_03.status_status_type.display = function(value)
  if value == 0 then
    return "Status Status Type: Regular Trading (0)"
  end
  if value == 1 then
    return "Status Status Type: Trading Halted (1)"
  end

  return "Status Status Type: Unknown("..value..")"
end

-- Dissect: Status Status Type
iex_iexoptions_marketdata_sbe_v1_03.status_status_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.status_status_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.status_status_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.status_status_type, range, value, display)

  return offset + length, value
end

-- Strike Price
iex_iexoptions_marketdata_sbe_v1_03.strike_price = {}

-- Size: Strike Price
iex_iexoptions_marketdata_sbe_v1_03.strike_price.size = 8

-- Display: Strike Price
iex_iexoptions_marketdata_sbe_v1_03.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
iex_iexoptions_marketdata_sbe_v1_03.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
iex_iexoptions_marketdata_sbe_v1_03.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_marketdata_sbe_v1_03.strike_price.translate(raw)
  local display = iex_iexoptions_marketdata_sbe_v1_03.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Template Id
iex_iexoptions_marketdata_sbe_v1_03.template_id = {}

-- Size: Template Id
iex_iexoptions_marketdata_sbe_v1_03.template_id.size = 2

-- Display: Template Id
iex_iexoptions_marketdata_sbe_v1_03.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Underlying Ref Data Message (1)"
  end
  if value == 2 then
    return "Template Id: Symbol Mapping Message (2)"
  end
  if value == 3 then
    return "Template Id: Instrument Clear Message (3)"
  end
  if value == 4 then
    return "Template Id: Trading Status Message (4)"
  end
  if value == 5 then
    return "Template Id: Options Auction Summary Message (5)"
  end
  if value == 6 then
    return "Template Id: Options Auction Width Update Message (6)"
  end
  if value == 7 then
    return "Template Id: Liquidity Event Notification Message (7)"
  end
  if value == 8 then
    return "Template Id: Liquidity Event Execution Message (8)"
  end
  if value == 9 then
    return "Template Id: Liquidity Event Cancel Message (9)"
  end
  if value == 100 then
    return "Template Id: Add Order Non Customer Message (100)"
  end
  if value == 101 then
    return "Template Id: Add Order Customer Message (101)"
  end
  if value == 102 then
    return "Template Id: Modify Order Message (102)"
  end
  if value == 103 then
    return "Template Id: Delete Order Message (103)"
  end
  if value == 104 then
    return "Template Id: Order Execution Message (104)"
  end
  if value == 105 then
    return "Template Id: Deep Trade Break Message (105)"
  end
  if value == 200 then
    return "Template Id: Quote Update No Customer Interest Message (200)"
  end
  if value == 201 then
    return "Template Id: Quote Update Customer Interest Message (201)"
  end
  if value == 202 then
    return "Template Id: Trade Message (202)"
  end
  if value == 203 then
    return "Template Id: Trade Correction Message (203)"
  end
  if value == 204 then
    return "Template Id: Tops Trade Break Message (204)"
  end
  if value == 300 then
    return "Template Id: Heartbeat Message (300)"
  end
  if value == 301 then
    return "Template Id: Sequenced Packet Message (301)"
  end
  if value == 302 then
    return "Template Id: Session Shutdown Message (302)"
  end
  if value == 400 then
    return "Template Id: Server Heartbeat Message (400)"
  end
  if value == 401 then
    return "Template Id: Client Heartbeat Message (401)"
  end
  if value == 402 then
    return "Template Id: Retransmission Request Message (402)"
  end
  if value == 403 then
    return "Template Id: Retransmission Response Message (403)"
  end
  if value == 601 then
    return "Template Id: Snapshot Header Message (601)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
iex_iexoptions_marketdata_sbe_v1_03.template_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.template_id, range, value, display)

  return offset + length, value
end

-- Time
iex_iexoptions_marketdata_sbe_v1_03.time = {}

-- Size: Time
iex_iexoptions_marketdata_sbe_v1_03.time.size = 8

-- Display: Time
iex_iexoptions_marketdata_sbe_v1_03.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
iex_iexoptions_marketdata_sbe_v1_03.time.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_marketdata_sbe_v1_03.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.time, range, value, display)

  return offset + length, value
end

-- Total Packet Count
iex_iexoptions_marketdata_sbe_v1_03.total_packet_count = {}

-- Size: Total Packet Count
iex_iexoptions_marketdata_sbe_v1_03.total_packet_count.size = 4

-- Display: Total Packet Count
iex_iexoptions_marketdata_sbe_v1_03.total_packet_count.display = function(value)
  return "Total Packet Count: "..value
end

-- Dissect: Total Packet Count
iex_iexoptions_marketdata_sbe_v1_03.total_packet_count.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.total_packet_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.total_packet_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.total_packet_count, range, value, display)

  return offset + length, value
end

-- Trade Condition
iex_iexoptions_marketdata_sbe_v1_03.trade_condition = {}

-- Size: Trade Condition
iex_iexoptions_marketdata_sbe_v1_03.trade_condition.size = 1

-- Display: Trade Condition
iex_iexoptions_marketdata_sbe_v1_03.trade_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Condition: No Value"
  end

  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
iex_iexoptions_marketdata_sbe_v1_03.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.trade_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = iex_iexoptions_marketdata_sbe_v1_03.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Id
iex_iexoptions_marketdata_sbe_v1_03.trade_id = {}

-- Size: Trade Id
iex_iexoptions_marketdata_sbe_v1_03.trade_id.size = 8

-- Display: Trade Id
iex_iexoptions_marketdata_sbe_v1_03.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
iex_iexoptions_marketdata_sbe_v1_03.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_marketdata_sbe_v1_03.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Ring
iex_iexoptions_marketdata_sbe_v1_03.trading_ring = {}

-- Size: Trading Ring
iex_iexoptions_marketdata_sbe_v1_03.trading_ring.size = 1

-- Display: Trading Ring
iex_iexoptions_marketdata_sbe_v1_03.trading_ring.display = function(value)
  return "Trading Ring: "..value
end

-- Dissect: Trading Ring
iex_iexoptions_marketdata_sbe_v1_03.trading_ring.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.trading_ring.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.trading_ring.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trading_ring, range, value, display)

  return offset + length, value
end

-- Trading Status
iex_iexoptions_marketdata_sbe_v1_03.trading_status = {}

-- Size: Trading Status
iex_iexoptions_marketdata_sbe_v1_03.trading_status.size = 1

-- Display: Trading Status
iex_iexoptions_marketdata_sbe_v1_03.trading_status.display = function(value)
  if value == 0 then
    return "Trading Status: Halted (0)"
  end
  if value == 1 then
    return "Trading Status: Pre Opening (1)"
  end
  if value == 2 then
    return "Trading Status: Opening Process (2)"
  end
  if value == 3 then
    return "Trading Status: Continuous Trading (3)"
  end
  if value == 4 then
    return "Trading Status: Re Opening Process (4)"
  end
  if value == 5 then
    return "Trading Status: Suspended (5)"
  end
  if value == 6 then
    return "Trading Status: Queueing (6)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
iex_iexoptions_marketdata_sbe_v1_03.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_marketdata_sbe_v1_03.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Id
iex_iexoptions_marketdata_sbe_v1_03.underlying_id = {}

-- Size: Underlying Id
iex_iexoptions_marketdata_sbe_v1_03.underlying_id.size = 4

-- Display: Underlying Id
iex_iexoptions_marketdata_sbe_v1_03.underlying_id.display = function(value)
  return "Underlying Id: "..value
end

-- Dissect: Underlying Id
iex_iexoptions_marketdata_sbe_v1_03.underlying_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.underlying_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.underlying_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.underlying_id, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
iex_iexoptions_marketdata_sbe_v1_03.underlying_symbol = {}

-- Size: Underlying Symbol
iex_iexoptions_marketdata_sbe_v1_03.underlying_symbol.size = 16

-- Display: Underlying Symbol
iex_iexoptions_marketdata_sbe_v1_03.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
iex_iexoptions_marketdata_sbe_v1_03.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.underlying_symbol.size
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

  local display = iex_iexoptions_marketdata_sbe_v1_03.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Version
iex_iexoptions_marketdata_sbe_v1_03.version = {}

-- Size: Version
iex_iexoptions_marketdata_sbe_v1_03.version.size = 2

-- Display: Version
iex_iexoptions_marketdata_sbe_v1_03.version.display = function(value)
  if value == 0 then
    return "Version: Version 1.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
iex_iexoptions_marketdata_sbe_v1_03.version.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_marketdata_sbe_v1_03.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_marketdata_sbe_v1_03.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Iex IexOptions MarketData Sbe 1.03
-----------------------------------------------------------------------

-- Snapshot Header Message
iex_iexoptions_marketdata_sbe_v1_03.snapshot_header_message = {}

-- Size: Snapshot Header Message
iex_iexoptions_marketdata_sbe_v1_03.snapshot_header_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.snapshot_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.current_packet_number.size + 
  iex_iexoptions_marketdata_sbe_v1_03.total_packet_count.size + 
  iex_iexoptions_marketdata_sbe_v1_03.as_of_sequence_number.size

-- Display: Snapshot Header Message
iex_iexoptions_marketdata_sbe_v1_03.snapshot_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Header Message
iex_iexoptions_marketdata_sbe_v1_03.snapshot_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Id: SnapshotId
  index, snapshot_id = iex_iexoptions_marketdata_sbe_v1_03.snapshot_id.dissect(buffer, index, packet, parent)

  -- Current Packet Number: PacketCount
  index, current_packet_number = iex_iexoptions_marketdata_sbe_v1_03.current_packet_number.dissect(buffer, index, packet, parent)

  -- Total Packet Count: PacketCount
  index, total_packet_count = iex_iexoptions_marketdata_sbe_v1_03.total_packet_count.dissect(buffer, index, packet, parent)

  -- As Of Sequence Number: SequenceNumber
  index, as_of_sequence_number = iex_iexoptions_marketdata_sbe_v1_03.as_of_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Header Message
iex_iexoptions_marketdata_sbe_v1_03.snapshot_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.snapshot_header_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.snapshot_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.snapshot_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.snapshot_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Response Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_response_message = {}

-- Size: Retransmission Response Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_response_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.logon_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.request_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.channel_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.feed.size + 
  iex_iexoptions_marketdata_sbe_v1_03.status_retransmission_status_type.size

-- Display: Retransmission Response Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logon Id: LogonId
  index, logon_id = iex_iexoptions_marketdata_sbe_v1_03.logon_id.dissect(buffer, index, packet, parent)

  -- Request Id: RequestId
  index, request_id = iex_iexoptions_marketdata_sbe_v1_03.request_id.dissect(buffer, index, packet, parent)

  -- Channel Id: ChannelId
  index, channel_id = iex_iexoptions_marketdata_sbe_v1_03.channel_id.dissect(buffer, index, packet, parent)

  -- Feed: FeedType
  index, feed = iex_iexoptions_marketdata_sbe_v1_03.feed.dissect(buffer, index, packet, parent)

  -- Status Retransmission Status Type: RetransmissionStatusType
  index, status_retransmission_status_type = iex_iexoptions_marketdata_sbe_v1_03.status_retransmission_status_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.retransmission_response_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_request_message = {}

-- Size: Retransmission Request Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_request_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.begin_sequence.size + 
  iex_iexoptions_marketdata_sbe_v1_03.end_sequence.size + 
  iex_iexoptions_marketdata_sbe_v1_03.logon_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.request_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.channel_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.feed.size

-- Display: Retransmission Request Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Sequence: SequenceNumber
  index, begin_sequence = iex_iexoptions_marketdata_sbe_v1_03.begin_sequence.dissect(buffer, index, packet, parent)

  -- End Sequence: SequenceNumber
  index, end_sequence = iex_iexoptions_marketdata_sbe_v1_03.end_sequence.dissect(buffer, index, packet, parent)

  -- Logon Id: LogonId
  index, logon_id = iex_iexoptions_marketdata_sbe_v1_03.logon_id.dissect(buffer, index, packet, parent)

  -- Request Id: RequestId
  index, request_id = iex_iexoptions_marketdata_sbe_v1_03.request_id.dissect(buffer, index, packet, parent)

  -- Channel Id: ChannelId
  index, channel_id = iex_iexoptions_marketdata_sbe_v1_03.channel_id.dissect(buffer, index, packet, parent)

  -- Feed: FeedType
  index, feed = iex_iexoptions_marketdata_sbe_v1_03.feed.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
iex_iexoptions_marketdata_sbe_v1_03.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.retransmission_request_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Shutdown Message
iex_iexoptions_marketdata_sbe_v1_03.session_shutdown_message = {}

-- Size: Session Shutdown Message
iex_iexoptions_marketdata_sbe_v1_03.session_shutdown_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.channel_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.sequence_number.size

-- Display: Session Shutdown Message
iex_iexoptions_marketdata_sbe_v1_03.session_shutdown_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Shutdown Message
iex_iexoptions_marketdata_sbe_v1_03.session_shutdown_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: ChannelId
  index, channel_id = iex_iexoptions_marketdata_sbe_v1_03.channel_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: SequenceNumber
  index, sequence_number = iex_iexoptions_marketdata_sbe_v1_03.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Shutdown Message
iex_iexoptions_marketdata_sbe_v1_03.session_shutdown_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.session_shutdown_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.session_shutdown_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.session_shutdown_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.session_shutdown_message.fields(buffer, offset, packet, parent)
  end
end

-- Message List Group Encoding
iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding = {}

-- Size: Message List Group Encoding
iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding.size =
  iex_iexoptions_marketdata_sbe_v1_03.block_length_uint_8.size + 
  iex_iexoptions_marketdata_sbe_v1_03.num_in_group.size

-- Display: Message List Group Encoding
iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message List Group Encoding
iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: uint8
  index, block_length_uint_8 = iex_iexoptions_marketdata_sbe_v1_03.block_length_uint_8.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = iex_iexoptions_marketdata_sbe_v1_03.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message List Group Encoding
iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.message_list_group_encoding, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Packet Message messages Groups
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups = {}

-- Calculate size of: Sequenced Packet Message messages Groups
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding.size

  -- Calculate field size from count
  local sequenced_packet_message_messages_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + sequenced_packet_message_messages_group_count * 0

  return index
end

-- Display: Sequenced Packet Message messages Groups
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Packet Message messages Groups
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message List Group Encoding: Struct of 2 fields
  index, message_list_group_encoding = iex_iexoptions_marketdata_sbe_v1_03.message_list_group_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Sequenced Packet Message messages Group
  for sequenced_packet_message_messages_group_index = 1, num_in_group do
    index, sequenced_packet_message_messages_group = iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_group.dissect(buffer, index, packet, parent, sequenced_packet_message_messages_group_index)
  end

  return index
end

-- Dissect: Sequenced Packet Message messages Groups
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.sequenced_packet_message_messages_groups, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Packet Message
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message = {}

-- Calculate size of: Sequenced Packet Message
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_marketdata_sbe_v1_03.channel_id.size

  index = index + iex_iexoptions_marketdata_sbe_v1_03.sequence_number.size

  index = index + iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups.size(buffer, offset + index)

  return index
end

-- Display: Sequenced Packet Message
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Packet Message
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: ChannelId
  index, channel_id = iex_iexoptions_marketdata_sbe_v1_03.channel_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: SequenceNumber
  index, sequence_number = iex_iexoptions_marketdata_sbe_v1_03.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequenced Packet Message messages Groups: Struct of 2 fields
  index, sequenced_packet_message_messages_groups = iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message_messages_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Packet Message
iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.sequenced_packet_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
iex_iexoptions_marketdata_sbe_v1_03.heartbeat_message = {}

-- Size: Heartbeat Message
iex_iexoptions_marketdata_sbe_v1_03.heartbeat_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.channel_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.sequence_number.size

-- Display: Heartbeat Message
iex_iexoptions_marketdata_sbe_v1_03.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
iex_iexoptions_marketdata_sbe_v1_03.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: ChannelId
  index, channel_id = iex_iexoptions_marketdata_sbe_v1_03.channel_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: SequenceNumber
  index, sequence_number = iex_iexoptions_marketdata_sbe_v1_03.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
iex_iexoptions_marketdata_sbe_v1_03.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.heartbeat_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Tops Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.tops_trade_break_message = {}

-- Size: Tops Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.tops_trade_break_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_condition.size

-- Display: Tops Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.tops_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tops Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.tops_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = iex_iexoptions_marketdata_sbe_v1_03.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: char
  index, trade_condition = iex_iexoptions_marketdata_sbe_v1_03.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tops Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.tops_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.tops_trade_break_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.tops_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.tops_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.tops_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
iex_iexoptions_marketdata_sbe_v1_03.trade_correction_message = {}

-- Size: Trade Correction Message
iex_iexoptions_marketdata_sbe_v1_03.trade_correction_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.original_trade_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.contracts.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_condition.size

-- Display: Trade Correction Message
iex_iexoptions_marketdata_sbe_v1_03.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
iex_iexoptions_marketdata_sbe_v1_03.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Original Trade Id: TradeId
  index, original_trade_id = iex_iexoptions_marketdata_sbe_v1_03.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = iex_iexoptions_marketdata_sbe_v1_03.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Price8
  index, price = iex_iexoptions_marketdata_sbe_v1_03.price.dissect(buffer, index, packet, parent)

  -- Contracts: Quantity
  index, contracts = iex_iexoptions_marketdata_sbe_v1_03.contracts.dissect(buffer, index, packet, parent)

  -- Trade Condition: char
  index, trade_condition = iex_iexoptions_marketdata_sbe_v1_03.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
iex_iexoptions_marketdata_sbe_v1_03.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trade_correction_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
iex_iexoptions_marketdata_sbe_v1_03.trade_message = {}

-- Size: Trade Message
iex_iexoptions_marketdata_sbe_v1_03.trade_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.contracts.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_condition.size

-- Display: Trade Message
iex_iexoptions_marketdata_sbe_v1_03.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
iex_iexoptions_marketdata_sbe_v1_03.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = iex_iexoptions_marketdata_sbe_v1_03.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Price8
  index, price = iex_iexoptions_marketdata_sbe_v1_03.price.dissect(buffer, index, packet, parent)

  -- Contracts: Quantity
  index, contracts = iex_iexoptions_marketdata_sbe_v1_03.contracts.dissect(buffer, index, packet, parent)

  -- Trade Condition: char
  index, trade_condition = iex_iexoptions_marketdata_sbe_v1_03.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
iex_iexoptions_marketdata_sbe_v1_03.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trade_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Update Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_customer_interest_message = {}

-- Size: Quote Update Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_customer_interest_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.bid_size.size + 
  iex_iexoptions_marketdata_sbe_v1_03.bid_customer_size.size + 
  iex_iexoptions_marketdata_sbe_v1_03.bid_price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.ask_size.size + 
  iex_iexoptions_marketdata_sbe_v1_03.ask_customer_size.size + 
  iex_iexoptions_marketdata_sbe_v1_03.ask_price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.status_status_type.size

-- Display: Quote Update Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_customer_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_customer_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Size: Quantity
  index, bid_size = iex_iexoptions_marketdata_sbe_v1_03.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Customer Size: Quantity
  index, bid_customer_size = iex_iexoptions_marketdata_sbe_v1_03.bid_customer_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Price8
  index, bid_price = iex_iexoptions_marketdata_sbe_v1_03.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Quantity
  index, ask_size = iex_iexoptions_marketdata_sbe_v1_03.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Customer Size: Quantity
  index, ask_customer_size = iex_iexoptions_marketdata_sbe_v1_03.ask_customer_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Price8
  index, ask_price = iex_iexoptions_marketdata_sbe_v1_03.ask_price.dissect(buffer, index, packet, parent)

  -- Status Status Type: StatusType
  index, status_status_type = iex_iexoptions_marketdata_sbe_v1_03.status_status_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_customer_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.quote_update_customer_interest_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.quote_update_customer_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.quote_update_customer_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.quote_update_customer_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Update No Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_no_customer_interest_message = {}

-- Size: Quote Update No Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_no_customer_interest_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.bid_size.size + 
  iex_iexoptions_marketdata_sbe_v1_03.bid_price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.ask_size.size + 
  iex_iexoptions_marketdata_sbe_v1_03.ask_price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.status_status_type.size

-- Display: Quote Update No Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_no_customer_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update No Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_no_customer_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Size: Quantity
  index, bid_size = iex_iexoptions_marketdata_sbe_v1_03.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Price8
  index, bid_price = iex_iexoptions_marketdata_sbe_v1_03.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Quantity
  index, ask_size = iex_iexoptions_marketdata_sbe_v1_03.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Price: Price8
  index, ask_price = iex_iexoptions_marketdata_sbe_v1_03.ask_price.dissect(buffer, index, packet, parent)

  -- Status Status Type: StatusType
  index, status_status_type = iex_iexoptions_marketdata_sbe_v1_03.status_status_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update No Customer Interest Message
iex_iexoptions_marketdata_sbe_v1_03.quote_update_no_customer_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.quote_update_no_customer_interest_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.quote_update_no_customer_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.quote_update_no_customer_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.quote_update_no_customer_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Deep Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.deep_trade_break_message = {}

-- Size: Deep Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.deep_trade_break_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_id.size

-- Display: Deep Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.deep_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deep Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.deep_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = iex_iexoptions_marketdata_sbe_v1_03.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Deep Trade Break Message
iex_iexoptions_marketdata_sbe_v1_03.deep_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.deep_trade_break_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.deep_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.deep_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.deep_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
iex_iexoptions_marketdata_sbe_v1_03.order_execution_message = {}

-- Size: Order Execution Message
iex_iexoptions_marketdata_sbe_v1_03.order_execution_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.order_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.executed_contracts.size + 
  iex_iexoptions_marketdata_sbe_v1_03.remaining_contracts.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_condition.size

-- Display: Order Execution Message
iex_iexoptions_marketdata_sbe_v1_03.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
iex_iexoptions_marketdata_sbe_v1_03.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_marketdata_sbe_v1_03.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = iex_iexoptions_marketdata_sbe_v1_03.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Price8
  index, price = iex_iexoptions_marketdata_sbe_v1_03.price.dissect(buffer, index, packet, parent)

  -- Executed Contracts: Quantity
  index, executed_contracts = iex_iexoptions_marketdata_sbe_v1_03.executed_contracts.dissect(buffer, index, packet, parent)

  -- Remaining Contracts: Quantity
  index, remaining_contracts = iex_iexoptions_marketdata_sbe_v1_03.remaining_contracts.dissect(buffer, index, packet, parent)

  -- Trade Condition: char
  index, trade_condition = iex_iexoptions_marketdata_sbe_v1_03.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
iex_iexoptions_marketdata_sbe_v1_03.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.order_execution_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
iex_iexoptions_marketdata_sbe_v1_03.delete_order_message = {}

-- Size: Delete Order Message
iex_iexoptions_marketdata_sbe_v1_03.delete_order_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.order_id.size

-- Display: Delete Order Message
iex_iexoptions_marketdata_sbe_v1_03.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
iex_iexoptions_marketdata_sbe_v1_03.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_marketdata_sbe_v1_03.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
iex_iexoptions_marketdata_sbe_v1_03.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.delete_order_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
iex_iexoptions_marketdata_sbe_v1_03.modify_order_message = {}

-- Size: Modify Order Message
iex_iexoptions_marketdata_sbe_v1_03.modify_order_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.order_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.contracts.size + 
  iex_iexoptions_marketdata_sbe_v1_03.mod_flag.size

-- Display: Modify Order Message
iex_iexoptions_marketdata_sbe_v1_03.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
iex_iexoptions_marketdata_sbe_v1_03.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_marketdata_sbe_v1_03.order_id.dissect(buffer, index, packet, parent)

  -- Price: Price8
  index, price = iex_iexoptions_marketdata_sbe_v1_03.price.dissect(buffer, index, packet, parent)

  -- Contracts: Quantity
  index, contracts = iex_iexoptions_marketdata_sbe_v1_03.contracts.dissect(buffer, index, packet, parent)

  -- Mod Flag: ModFlagType
  index, mod_flag = iex_iexoptions_marketdata_sbe_v1_03.mod_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
iex_iexoptions_marketdata_sbe_v1_03.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.modify_order_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_customer_message = {}

-- Size: Add Order Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_customer_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.order_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.side.size + 
  iex_iexoptions_marketdata_sbe_v1_03.price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.contracts.size + 
  iex_iexoptions_marketdata_sbe_v1_03.customer_indicator.size

-- Display: Add Order Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_marketdata_sbe_v1_03.order_id.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = iex_iexoptions_marketdata_sbe_v1_03.side.dissect(buffer, index, packet, parent)

  -- Price: Price8
  index, price = iex_iexoptions_marketdata_sbe_v1_03.price.dissect(buffer, index, packet, parent)

  -- Contracts: Quantity
  index, contracts = iex_iexoptions_marketdata_sbe_v1_03.contracts.dissect(buffer, index, packet, parent)

  -- Customer Indicator: CustIndType
  index, customer_indicator = iex_iexoptions_marketdata_sbe_v1_03.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.add_order_customer_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.add_order_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.add_order_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.add_order_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Non Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_non_customer_message = {}

-- Size: Add Order Non Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_non_customer_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.order_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.side.size + 
  iex_iexoptions_marketdata_sbe_v1_03.price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.contracts.size

-- Display: Add Order Non Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_non_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Non Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_non_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_marketdata_sbe_v1_03.order_id.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = iex_iexoptions_marketdata_sbe_v1_03.side.dissect(buffer, index, packet, parent)

  -- Price: Price8
  index, price = iex_iexoptions_marketdata_sbe_v1_03.price.dissect(buffer, index, packet, parent)

  -- Contracts: Quantity
  index, contracts = iex_iexoptions_marketdata_sbe_v1_03.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Non Customer Message
iex_iexoptions_marketdata_sbe_v1_03.add_order_non_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.add_order_non_customer_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.add_order_non_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.add_order_non_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.add_order_non_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Event Cancel Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_cancel_message = {}

-- Size: Liquidity Event Cancel Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_cancel_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.event_id.size

-- Display: Liquidity Event Cancel Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Event Cancel Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Event Id: EventId
  index, event_id = iex_iexoptions_marketdata_sbe_v1_03.event_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Event Cancel Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.liquidity_event_cancel_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Event Execution Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_execution_message = {}

-- Size: Liquidity Event Execution Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_execution_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.event_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trade_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.contracts.size

-- Display: Liquidity Event Execution Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Event Execution Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Event Id: EventId
  index, event_id = iex_iexoptions_marketdata_sbe_v1_03.event_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = iex_iexoptions_marketdata_sbe_v1_03.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Price8
  index, price = iex_iexoptions_marketdata_sbe_v1_03.price.dissect(buffer, index, packet, parent)

  -- Contracts: Quantity
  index, contracts = iex_iexoptions_marketdata_sbe_v1_03.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Event Execution Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.liquidity_event_execution_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Event Notification Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_notification_message = {}

-- Size: Liquidity Event Notification Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_notification_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.event_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_type.size + 
  iex_iexoptions_marketdata_sbe_v1_03.side.size + 
  iex_iexoptions_marketdata_sbe_v1_03.price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.contracts.size + 
  iex_iexoptions_marketdata_sbe_v1_03.capacity.size + 
  iex_iexoptions_marketdata_sbe_v1_03.participant_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.event_end_offset.size

-- Display: Liquidity Event Notification Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Event Notification Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Event Id: EventId
  index, event_id = iex_iexoptions_marketdata_sbe_v1_03.event_id.dissect(buffer, index, packet, parent)

  -- Liquidity Event Type: LiquidityEventType
  index, liquidity_event_type = iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_type.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = iex_iexoptions_marketdata_sbe_v1_03.side.dissect(buffer, index, packet, parent)

  -- Price: Price8
  index, price = iex_iexoptions_marketdata_sbe_v1_03.price.dissect(buffer, index, packet, parent)

  -- Contracts: Quantity
  index, contracts = iex_iexoptions_marketdata_sbe_v1_03.contracts.dissect(buffer, index, packet, parent)

  -- Capacity: CapacityType
  index, capacity = iex_iexoptions_marketdata_sbe_v1_03.capacity.dissect(buffer, index, packet, parent)

  -- Participant Id: String4
  index, participant_id = iex_iexoptions_marketdata_sbe_v1_03.participant_id.dissect(buffer, index, packet, parent)

  -- Event End Offset: TimeOffset
  index, event_end_offset = iex_iexoptions_marketdata_sbe_v1_03.event_end_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Event Notification Message
iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.liquidity_event_notification_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Width Update Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_width_update_message = {}

-- Size: Options Auction Width Update Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_width_update_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.underlying_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.quote_relief_multiplier.size

-- Display: Options Auction Width Update Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_width_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Width Update Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_width_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Underlying Id: UnderlyingId
  index, underlying_id = iex_iexoptions_marketdata_sbe_v1_03.underlying_id.dissect(buffer, index, packet, parent)

  -- Quote Relief Multiplier: uint8
  index, quote_relief_multiplier = iex_iexoptions_marketdata_sbe_v1_03.quote_relief_multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Width Update Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_width_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.options_auction_width_update_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.options_auction_width_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.options_auction_width_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.options_auction_width_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Summary Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_summary_message = {}

-- Size: Options Auction Summary Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_summary_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.auction_summary_type.size + 
  iex_iexoptions_marketdata_sbe_v1_03.price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.contracts.size

-- Display: Options Auction Summary Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Summary Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Summary Type: AuctionType
  index, auction_summary_type = iex_iexoptions_marketdata_sbe_v1_03.auction_summary_type.dissect(buffer, index, packet, parent)

  -- Price: Price8
  index, price = iex_iexoptions_marketdata_sbe_v1_03.price.dissect(buffer, index, packet, parent)

  -- Contracts: Quantity
  index, contracts = iex_iexoptions_marketdata_sbe_v1_03.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Summary Message
iex_iexoptions_marketdata_sbe_v1_03.options_auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.options_auction_summary_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.options_auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.options_auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.options_auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
iex_iexoptions_marketdata_sbe_v1_03.trading_status_message = {}

-- Size: Trading Status Message
iex_iexoptions_marketdata_sbe_v1_03.trading_status_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trading_status.size

-- Display: Trading Status Message
iex_iexoptions_marketdata_sbe_v1_03.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
iex_iexoptions_marketdata_sbe_v1_03.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Status: TradingStatusType
  index, trading_status = iex_iexoptions_marketdata_sbe_v1_03.trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
iex_iexoptions_marketdata_sbe_v1_03.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.trading_status_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Clear Message
iex_iexoptions_marketdata_sbe_v1_03.instrument_clear_message = {}

-- Size: Instrument Clear Message
iex_iexoptions_marketdata_sbe_v1_03.instrument_clear_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size

-- Display: Instrument Clear Message
iex_iexoptions_marketdata_sbe_v1_03.instrument_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Clear Message
iex_iexoptions_marketdata_sbe_v1_03.instrument_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Clear Message
iex_iexoptions_marketdata_sbe_v1_03.instrument_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.instrument_clear_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.instrument_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.instrument_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.instrument_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
iex_iexoptions_marketdata_sbe_v1_03.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
iex_iexoptions_marketdata_sbe_v1_03.symbol_mapping_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.instrument_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.osi_symbol.size + 
  iex_iexoptions_marketdata_sbe_v1_03.trading_ring.size + 
  iex_iexoptions_marketdata_sbe_v1_03.closing_only_series.size + 
  iex_iexoptions_marketdata_sbe_v1_03.underlying_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.maturity_date.size + 
  iex_iexoptions_marketdata_sbe_v1_03.option_type.size + 
  iex_iexoptions_marketdata_sbe_v1_03.strike_price.size + 
  iex_iexoptions_marketdata_sbe_v1_03.orp_enablement.size

-- Display: Symbol Mapping Message
iex_iexoptions_marketdata_sbe_v1_03.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
iex_iexoptions_marketdata_sbe_v1_03.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Instrument Id: InstrumentId
  index, instrument_id = iex_iexoptions_marketdata_sbe_v1_03.instrument_id.dissect(buffer, index, packet, parent)

  -- Osi Symbol: String32
  index, osi_symbol = iex_iexoptions_marketdata_sbe_v1_03.osi_symbol.dissect(buffer, index, packet, parent)

  -- Trading Ring: int8
  index, trading_ring = iex_iexoptions_marketdata_sbe_v1_03.trading_ring.dissect(buffer, index, packet, parent)

  -- Closing Only Series: BooleanType
  index, closing_only_series = iex_iexoptions_marketdata_sbe_v1_03.closing_only_series.dissect(buffer, index, packet, parent)

  -- Underlying Id: UnderlyingId
  index, underlying_id = iex_iexoptions_marketdata_sbe_v1_03.underlying_id.dissect(buffer, index, packet, parent)

  -- Maturity Date: String8
  index, maturity_date = iex_iexoptions_marketdata_sbe_v1_03.maturity_date.dissect(buffer, index, packet, parent)

  -- Option Type: OptionType
  index, option_type = iex_iexoptions_marketdata_sbe_v1_03.option_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Price8
  index, strike_price = iex_iexoptions_marketdata_sbe_v1_03.strike_price.dissect(buffer, index, packet, parent)

  -- Orp Enablement: ORPType
  index, orp_enablement = iex_iexoptions_marketdata_sbe_v1_03.orp_enablement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
iex_iexoptions_marketdata_sbe_v1_03.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.symbol_mapping_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Ref Data Message
iex_iexoptions_marketdata_sbe_v1_03.underlying_ref_data_message = {}

-- Size: Underlying Ref Data Message
iex_iexoptions_marketdata_sbe_v1_03.underlying_ref_data_message.size =
  iex_iexoptions_marketdata_sbe_v1_03.time.size + 
  iex_iexoptions_marketdata_sbe_v1_03.underlying_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.underlying_symbol.size + 
  iex_iexoptions_marketdata_sbe_v1_03.exchange_code.size + 
  iex_iexoptions_marketdata_sbe_v1_03.mpv_group.size + 
  iex_iexoptions_marketdata_sbe_v1_03.close_indicator.size

-- Display: Underlying Ref Data Message
iex_iexoptions_marketdata_sbe_v1_03.underlying_ref_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Ref Data Message
iex_iexoptions_marketdata_sbe_v1_03.underlying_ref_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: EpochNanos
  index, time = iex_iexoptions_marketdata_sbe_v1_03.time.dissect(buffer, index, packet, parent)

  -- Underlying Id: UnderlyingId
  index, underlying_id = iex_iexoptions_marketdata_sbe_v1_03.underlying_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: UnderlyingSymbol
  index, underlying_symbol = iex_iexoptions_marketdata_sbe_v1_03.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Exchange Code: ExchangeCode
  index, exchange_code = iex_iexoptions_marketdata_sbe_v1_03.exchange_code.dissect(buffer, index, packet, parent)

  -- Mpv Group: MPVType
  index, mpv_group = iex_iexoptions_marketdata_sbe_v1_03.mpv_group.dissect(buffer, index, packet, parent)

  -- Close Indicator: CloseIndicatorType
  index, close_indicator = iex_iexoptions_marketdata_sbe_v1_03.close_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Ref Data Message
iex_iexoptions_marketdata_sbe_v1_03.underlying_ref_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.underlying_ref_data_message, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.underlying_ref_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.underlying_ref_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.underlying_ref_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
iex_iexoptions_marketdata_sbe_v1_03.payload = {}

-- Dissect: Payload
iex_iexoptions_marketdata_sbe_v1_03.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Underlying Ref Data Message
  if template_id == 1 then
    return iex_iexoptions_marketdata_sbe_v1_03.underlying_ref_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if template_id == 2 then
    return iex_iexoptions_marketdata_sbe_v1_03.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Clear Message
  if template_id == 3 then
    return iex_iexoptions_marketdata_sbe_v1_03.instrument_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if template_id == 4 then
    return iex_iexoptions_marketdata_sbe_v1_03.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Summary Message
  if template_id == 5 then
    return iex_iexoptions_marketdata_sbe_v1_03.options_auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Width Update Message
  if template_id == 6 then
    return iex_iexoptions_marketdata_sbe_v1_03.options_auction_width_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Liquidity Event Notification Message
  if template_id == 7 then
    return iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Liquidity Event Execution Message
  if template_id == 8 then
    return iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Liquidity Event Cancel Message
  if template_id == 9 then
    return iex_iexoptions_marketdata_sbe_v1_03.liquidity_event_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Non Customer Message
  if template_id == 100 then
    return iex_iexoptions_marketdata_sbe_v1_03.add_order_non_customer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Customer Message
  if template_id == 101 then
    return iex_iexoptions_marketdata_sbe_v1_03.add_order_customer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if template_id == 102 then
    return iex_iexoptions_marketdata_sbe_v1_03.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if template_id == 103 then
    return iex_iexoptions_marketdata_sbe_v1_03.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if template_id == 104 then
    return iex_iexoptions_marketdata_sbe_v1_03.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Deep Trade Break Message
  if template_id == 105 then
    return iex_iexoptions_marketdata_sbe_v1_03.deep_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update No Customer Interest Message
  if template_id == 200 then
    return iex_iexoptions_marketdata_sbe_v1_03.quote_update_no_customer_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Customer Interest Message
  if template_id == 201 then
    return iex_iexoptions_marketdata_sbe_v1_03.quote_update_customer_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if template_id == 202 then
    return iex_iexoptions_marketdata_sbe_v1_03.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if template_id == 203 then
    return iex_iexoptions_marketdata_sbe_v1_03.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tops Trade Break Message
  if template_id == 204 then
    return iex_iexoptions_marketdata_sbe_v1_03.tops_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 300 then
    return iex_iexoptions_marketdata_sbe_v1_03.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Packet Message
  if template_id == 301 then
    return iex_iexoptions_marketdata_sbe_v1_03.sequenced_packet_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Shutdown Message
  if template_id == 302 then
    return iex_iexoptions_marketdata_sbe_v1_03.session_shutdown_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Message
  if template_id == 400 then
    return offset
  end
  -- Dissect Client Heartbeat Message
  if template_id == 401 then
    return offset
  end
  -- Dissect Retransmission Request Message
  if template_id == 402 then
    return iex_iexoptions_marketdata_sbe_v1_03.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Response Message
  if template_id == 403 then
    return iex_iexoptions_marketdata_sbe_v1_03.retransmission_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Header Message
  if template_id == 601 then
    return iex_iexoptions_marketdata_sbe_v1_03.snapshot_header_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
iex_iexoptions_marketdata_sbe_v1_03.message_header = {}

-- Size: Message Header
iex_iexoptions_marketdata_sbe_v1_03.message_header.size =
  iex_iexoptions_marketdata_sbe_v1_03.block_length.size + 
  iex_iexoptions_marketdata_sbe_v1_03.template_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.schema_id.size + 
  iex_iexoptions_marketdata_sbe_v1_03.version.size

-- Display: Message Header
iex_iexoptions_marketdata_sbe_v1_03.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_iexoptions_marketdata_sbe_v1_03.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = iex_iexoptions_marketdata_sbe_v1_03.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = iex_iexoptions_marketdata_sbe_v1_03.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = iex_iexoptions_marketdata_sbe_v1_03.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = iex_iexoptions_marketdata_sbe_v1_03.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_iexoptions_marketdata_sbe_v1_03.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.message_header, buffer(offset, 0))
    local index = iex_iexoptions_marketdata_sbe_v1_03.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_marketdata_sbe_v1_03.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_marketdata_sbe_v1_03.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
iex_iexoptions_marketdata_sbe_v1_03.sbe_message = {}

-- Display: Sbe Message
iex_iexoptions_marketdata_sbe_v1_03.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
iex_iexoptions_marketdata_sbe_v1_03.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Packet Length: uint16
  index, packet_length = iex_iexoptions_marketdata_sbe_v1_03.packet_length.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = iex_iexoptions_marketdata_sbe_v1_03.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 28 branches
  index = iex_iexoptions_marketdata_sbe_v1_03.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
iex_iexoptions_marketdata_sbe_v1_03.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03.fields.sbe_message, buffer(offset, 0))
    local current = iex_iexoptions_marketdata_sbe_v1_03.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = iex_iexoptions_marketdata_sbe_v1_03.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    iex_iexoptions_marketdata_sbe_v1_03.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Packet
iex_iexoptions_marketdata_sbe_v1_03.packet = {}

-- Verify required size of Udp packet
iex_iexoptions_marketdata_sbe_v1_03.packet.requiredsize = function(buffer)
  return buffer:len() >= iex_iexoptions_marketdata_sbe_v1_03.packet_length.size + iex_iexoptions_marketdata_sbe_v1_03.message_header.size
end

-- Dissect Packet
iex_iexoptions_marketdata_sbe_v1_03.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Packet Length
    local packet_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Sbe Message
    local size_of_sbe_message = packet_length - 2

    -- Sbe Message: Struct of 3 fields
    index, sbe_message = iex_iexoptions_marketdata_sbe_v1_03.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_iex_iexoptions_marketdata_sbe_v1_03.init()
end

-- Dissector for Iex IexOptions MarketData Sbe 1.03
function omi_iex_iexoptions_marketdata_sbe_v1_03.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_iex_iexoptions_marketdata_sbe_v1_03.name

  -- Dissect protocol
  local protocol = parent:add(omi_iex_iexoptions_marketdata_sbe_v1_03, buffer(), omi_iex_iexoptions_marketdata_sbe_v1_03.description, "("..buffer:len().." Bytes)")
  return iex_iexoptions_marketdata_sbe_v1_03.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
iex_iexoptions_marketdata_sbe_v1_03.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 10000 then
    return true
  end

  return false
end

-- Verify Version Field
iex_iexoptions_marketdata_sbe_v1_03.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Iex IexOptions MarketData Sbe 1.03 (Udp)
local function omi_iex_iexoptions_marketdata_sbe_v1_03_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not iex_iexoptions_marketdata_sbe_v1_03.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not iex_iexoptions_marketdata_sbe_v1_03.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not iex_iexoptions_marketdata_sbe_v1_03.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_iex_iexoptions_marketdata_sbe_v1_03
  omi_iex_iexoptions_marketdata_sbe_v1_03.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex IexOptions MarketData Sbe 1.03
omi_iex_iexoptions_marketdata_sbe_v1_03:register_heuristic("udp", omi_iex_iexoptions_marketdata_sbe_v1_03_udp_heuristic)

-- Register Iex IexOptions MarketData Sbe 1.03 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_iex_iexoptions_marketdata_sbe_v1_03)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.03
--   Date: Monday, June 1, 2026
--   Specification: IEX Options Market Data Transport Protocol Specification
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
