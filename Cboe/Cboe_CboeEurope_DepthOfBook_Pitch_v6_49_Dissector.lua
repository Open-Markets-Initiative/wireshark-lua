-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CboeEurope DepthOfBook Pitch 6.49 Protocol
local omi_cboe_cboeeurope_depthofbook_pitch_v6_49 = Proto("Cboe.CboeEurope.DepthOfBook.Pitch.v6.49.Lua", "Cboe CboeEurope DepthOfBook Pitch 6.49")

-- Protocol table
local cboe_cboeeurope_depthofbook_pitch_v6_49 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CboeEurope DepthOfBook Pitch 6.49 Fields
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.algorithmic_trade = ProtoField.new("Algorithmic Trade", "cboe.cboeeurope.depthofbook.pitch.v6.49.algorithmictrade", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.auction_type = ProtoField.new("Auction Type", "cboe.cboeeurope.depthofbook.pitch.v6.49.auctiontype", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.canceled_shares_binary_2 = ProtoField.new("Canceled Shares Binary 2", "cboe.cboeeurope.depthofbook.pitch.v6.49.canceledsharesbinary2", ftypes.UINT16)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.canceled_shares_binary_4 = ProtoField.new("Canceled Shares Binary 4", "cboe.cboeeurope.depthofbook.pitch.v6.49.canceledsharesbinary4", ftypes.UINT32)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.cboe_trade_flags = ProtoField.new("Cboe Trade Flags", "cboe.cboeeurope.depthofbook.pitch.v6.49.cboetradeflags", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.contracts_short = ProtoField.new("Contracts Short", "cboe.cboeeurope.depthofbook.pitch.v6.49.contractsshort", ftypes.UINT16)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.count = ProtoField.new("Count", "cboe.cboeeurope.depthofbook.pitch.v6.49.count", ftypes.UINT8)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.currency = ProtoField.new("Currency", "cboe.cboeeurope.depthofbook.pitch.v6.49.currency", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.ex_cum_dividend = ProtoField.new("Ex Cum Dividend", "cboe.cboeeurope.depthofbook.pitch.v6.49.excumdividend", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.cboeeurope.depthofbook.pitch.v6.49.executedshares", ftypes.UINT32)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.execution_flags = ProtoField.new("Execution Flags", "cboe.cboeeurope.depthofbook.pitch.v6.49.executionflags", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.execution_id = ProtoField.new("Execution Id", "cboe.cboeeurope.depthofbook.pitch.v6.49.executionid", ftypes.UINT64)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.cboeeurope.depthofbook.pitch.v6.49.executionvenue", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.includes_primary = ProtoField.new("Includes Primary", "cboe.cboeeurope.depthofbook.pitch.v6.49.includesprimary", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_price = ProtoField.new("Index Price", "cboe.cboeeurope.depthofbook.pitch.v6.49.indexprice", ftypes.DOUBLE)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_status = ProtoField.new("Index Status", "cboe.cboeeurope.depthofbook.pitch.v6.49.indexstatus", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_ticker = ProtoField.new("Index Ticker", "cboe.cboeeurope.depthofbook.pitch.v6.49.indexticker", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.cboeeurope.depthofbook.pitch.v6.49.indicativeprice", ftypes.DOUBLE)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.indicative_shares = ProtoField.new("Indicative Shares", "cboe.cboeeurope.depthofbook.pitch.v6.49.indicativeshares", ftypes.UINT32)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.length = ProtoField.new("Length", "cboe.cboeeurope.depthofbook.pitch.v6.49.length", ftypes.UINT16)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.cboeeurope.depthofbook.pitch.v6.49.marketmechanism", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message = ProtoField.new("Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.message", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message_header = ProtoField.new("Message Header", "cboe.cboeeurope.depthofbook.pitch.v6.49.messageheader", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message_length = ProtoField.new("Message Length", "cboe.cboeeurope.depthofbook.pitch.v6.49.messagelength", ftypes.UINT8)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message_type = ProtoField.new("Message Type", "cboe.cboeeurope.depthofbook.pitch.v6.49.messagetype", ftypes.UINT8)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.order_id = ProtoField.new("Order Id", "cboe.cboeeurope.depthofbook.pitch.v6.49.orderid", ftypes.UINT64)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.outside_tolerance = ProtoField.new("Outside Tolerance", "cboe.cboeeurope.depthofbook.pitch.v6.49.outsidetolerance", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.packet = ProtoField.new("Packet", "cboe.cboeeurope.depthofbook.pitch.v6.49.packet", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.packet_header = ProtoField.new("Packet Header", "cboe.cboeeurope.depthofbook.pitch.v6.49.packetheader", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.participant_id = ProtoField.new("Participant Id", "cboe.cboeeurope.depthofbook.pitch.v6.49.participantid", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.price_binary_long_price_8 = ProtoField.new("Price Binary Long Price 8", "cboe.cboeeurope.depthofbook.pitch.v6.49.pricebinarylongprice8", ftypes.DOUBLE)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.price_binary_short_price_2 = ProtoField.new("Price Binary Short Price 2", "cboe.cboeeurope.depthofbook.pitch.v6.49.pricebinaryshortprice2", ftypes.DOUBLE)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.price_determination = ProtoField.new("Price Determination", "cboe.cboeeurope.depthofbook.pitch.v6.49.pricedetermination", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.price_short = ProtoField.new("Price Short", "cboe.cboeeurope.depthofbook.pitch.v6.49.priceshort", ftypes.DOUBLE)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.quantity = ProtoField.new("Quantity", "cboe.cboeeurope.depthofbook.pitch.v6.49.quantity", ftypes.UINT32)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.cboeeurope.depthofbook.pitch.v6.49.quantityshort", ftypes.UINT16)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.reference_price = ProtoField.new("Reference Price", "cboe.cboeeurope.depthofbook.pitch.v6.49.referenceprice", ftypes.DOUBLE)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.remaining_shares = ProtoField.new("Remaining Shares", "cboe.cboeeurope.depthofbook.pitch.v6.49.remainingshares", ftypes.UINT32)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.reserved = ProtoField.new("Reserved", "cboe.cboeeurope.depthofbook.pitch.v6.49.reserved", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.sequence = ProtoField.new("Sequence", "cboe.cboeeurope.depthofbook.pitch.v6.49.sequence", ftypes.UINT32)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.shares_binary_2 = ProtoField.new("Shares Binary 2", "cboe.cboeeurope.depthofbook.pitch.v6.49.sharesbinary2", ftypes.UINT16)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.shares_binary_4 = ProtoField.new("Shares Binary 4", "cboe.cboeeurope.depthofbook.pitch.v6.49.sharesbinary4", ftypes.UINT32)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.shares_binary_8 = ProtoField.new("Shares Binary 8", "cboe.cboeeurope.depthofbook.pitch.v6.49.sharesbinary8", ftypes.UINT64)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.cboeeurope.depthofbook.pitch.v6.49.sideindicator", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.statistic_type = ProtoField.new("Statistic Type", "cboe.cboeeurope.depthofbook.pitch.v6.49.statistictype", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.symbol_alphanumeric_12 = ProtoField.new("Symbol Alphanumeric 12", "cboe.cboeeurope.depthofbook.pitch.v6.49.symbolalphanumeric12", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.symbol_alphanumeric_8 = ProtoField.new("Symbol Alphanumeric 8", "cboe.cboeeurope.depthofbook.pitch.v6.49.symbolalphanumeric8", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.cboeeurope.depthofbook.pitch.v6.49.symbolshort", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.time = ProtoField.new("Time", "cboe.cboeeurope.depthofbook.pitch.v6.49.time", ftypes.UINT32)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.time_offset = ProtoField.new("Time Offset", "cboe.cboeeurope.depthofbook.pitch.v6.49.timeoffset", ftypes.UINT32)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradeflags", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_id = ProtoField.new("Trade Id", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradeid", ftypes.UINT64)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_timestamp = ProtoField.new("Trade Timestamp", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradetimestamp", ftypes.UINT64)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_types = ProtoField.new("Trade Types", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradetypes", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradingmode", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trading_status = ProtoField.new("Trading Status", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradingstatus", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.cboeeurope.depthofbook.pitch.v6.49.transactioncategory", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.unit = ProtoField.new("Unit", "cboe.cboeeurope.depthofbook.pitch.v6.49.unit", ftypes.UINT8)

-- Cboe CboeEurope Pitch DepthOfBook 6.49 Application Messages
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.addorderexpandedmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.addorderlongmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.addordershortmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.auctionsummarymessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.auctionupdatemessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.deleteordermessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.end_of_session = ProtoField.new("End Of Session", "cboe.cboeeurope.depthofbook.pitch.v6.49.endofsession", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_quote_edsp_message = ProtoField.new("Index Quote Edsp Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.indexquoteedspmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_quote_message = ProtoField.new("Index Quote Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.indexquotemessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.modifyorderlongmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.modifyordershortmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.orderexecutedmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.reducesizelongmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.reducesizeshortmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.statistics_message = ProtoField.new("Statistics Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.statisticsmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.time_message = ProtoField.new("Time Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.timemessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_extended_message = ProtoField.new("Trade Extended Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradeextendedmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradelongmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradeshortmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_unknown_symbol_message = ProtoField.new("Trade Unknown Symbol Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradeunknownsymbolmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.tradingstatusmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.transactionbeginmessage", ftypes.STRING)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.cboeeurope.depthofbook.pitch.v6.49.unitclearmessage", ftypes.STRING)

-- Cboe CboeEurope DepthOfBook Pitch 6.49 generated fields
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message_index = ProtoField.new("Message Index", "cboe.cboeeurope.depthofbook.pitch.v6.49.messageindex", ftypes.UINT16)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.timestamp = ProtoField.new("Timestamp", "cboe.cboeeurope.depthofbook.pitch.v6.49.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CboeEurope DepthOfBook Pitch 6.49 Element Dissection Options
show.application_messages = true
show.execution_flags = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.trade_flags = true
show.message_index = true

-- Register Cboe CboeEurope DepthOfBook Pitch 6.49 Show Options
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_execution_flags = Pref.bool("Show Execution Flags", show.execution_flags, "Parse and add Execution Flags to protocol tree")
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Time Offset Display Preferences
cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_cboeeurope_depthofbook_pitch_v6_49.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local time_offset_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.time_offset_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", time_offset_format_enum, false)
omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_application_messages then
    show.application_messages = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_application_messages
  end
  if show.execution_flags ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_execution_flags then
    show.execution_flags = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_execution_flags
  end
  if show.message ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_message then
    show.message = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_message
  end
  if show.message_header ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_message_header then
    show.message_header = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_packet then
    show.packet = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_packet_header then
    show.packet_header = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_packet_header
  end
  if show.trade_flags ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_trade_flags then
    show.trade_flags = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_trade_flags
  end
  if show.message_index ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_message_index then
    show.message_index = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.show_message_index
  end

  -- Check Time Offset preferences
  if cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset_format ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.time_offset_format then
    cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset_format = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.time_offset_format
  end
  if cboe_cboeeurope_depthofbook_pitch_v6_49.utc_offset_hours ~= omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.utc_offset_hours then
    cboe_cboeeurope_depthofbook_pitch_v6_49.utc_offset_hours = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_cboeeurope_depthofbook_pitch_v6_49.conversation = {}
cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.data = function(packet)
  local key = cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.key(packet)
  local data = cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.current = nil


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
-- Cboe CboeEurope DepthOfBook Pitch 6.49 Fields
-----------------------------------------------------------------------

-- Algorithmic Trade
cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade = {}

-- Size: Algorithmic Trade
cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade.size = 1

-- Display: Algorithmic Trade
cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade.display = function(value)
  if value == "H" then
    return "Algorithmic Trade: Algorithmic Trade (H)"
  end
  if value == "-" then
    return "Algorithmic Trade: Nonalgorithmic Trade (-)"
  end

  return "Algorithmic Trade: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade
cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.algorithmic_trade, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type = {}

-- Size: Auction Type
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type.size = 1

-- Display: Auction Type
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "V" then
    return "Auction Type: Volatility Auction (V)"
  end
  if value == "P" then
    return "Auction Type: Periodic Auction (P)"
  end
  if value == "U" then
    return "Auction Type: Cboe Closing Cross (U)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Canceled Shares Binary 2
cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_2 = {}

-- Size: Canceled Shares Binary 2
cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_2.size = 2

-- Display: Canceled Shares Binary 2
cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_2.display = function(value)
  return "Canceled Shares Binary 2: "..value
end

-- Dissect: Canceled Shares Binary 2
cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.canceled_shares_binary_2, range, value, display)

  return offset + length, value
end

-- Canceled Shares Binary 4
cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_4 = {}

-- Size: Canceled Shares Binary 4
cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_4.size = 4

-- Display: Canceled Shares Binary 4
cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_4.display = function(value)
  return "Canceled Shares Binary 4: "..value
end

-- Dissect: Canceled Shares Binary 4
cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.canceled_shares_binary_4, range, value, display)

  return offset + length, value
end

-- Cboe Trade Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags = {}

-- Size: Cboe Trade Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags.size = 1

-- Display: Cboe Trade Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags.display = function(value)
  if value == "4" then
    return "Cboe Trade Flags: On Time In The Main Session (4)"
  end
  if value == "5" then
    return "Cboe Trade Flags: Late (5)"
  end
  if value == "6" then
    return "Cboe Trade Flags: Out Of The Main Session (6)"
  end
  if value == "7" then
    return "Cboe Trade Flags: Late And Out Of The Main Session (7)"
  end
  if value == "C" then
    return "Cboe Trade Flags: On Time In The Main Session 3 Rd Country Venue (C)"
  end
  if value == "D" then
    return "Cboe Trade Flags: Late 3 Rd Country Venue (D)"
  end
  if value == "E" then
    return "Cboe Trade Flags: Out Of The Main Session 3 Rd Country Venue (E)"
  end
  if value == "F" then
    return "Cboe Trade Flags: Late And Out Of The Main Session 3 Rd Country Venue (F)"
  end

  return "Cboe Trade Flags: Unknown("..value..")"
end

-- Dissect: Cboe Trade Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.cboe_trade_flags, range, value, display)

  return offset + length, value
end

-- Contracts Short
cboe_cboeeurope_depthofbook_pitch_v6_49.contracts_short = {}

-- Size: Contracts Short
cboe_cboeeurope_depthofbook_pitch_v6_49.contracts_short.size = 2

-- Display: Contracts Short
cboe_cboeeurope_depthofbook_pitch_v6_49.contracts_short.display = function(value)
  return "Contracts Short: "..value
end

-- Dissect: Contracts Short
cboe_cboeeurope_depthofbook_pitch_v6_49.contracts_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.contracts_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.contracts_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.contracts_short, range, value, display)

  return offset + length, value
end

-- Count
cboe_cboeeurope_depthofbook_pitch_v6_49.count = {}

-- Size: Count
cboe_cboeeurope_depthofbook_pitch_v6_49.count.size = 1

-- Display: Count
cboe_cboeeurope_depthofbook_pitch_v6_49.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_cboeeurope_depthofbook_pitch_v6_49.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.count, range, value, display)

  return offset + length, value
end

-- Currency
cboe_cboeeurope_depthofbook_pitch_v6_49.currency = {}

-- Size: Currency
cboe_cboeeurope_depthofbook_pitch_v6_49.currency.size = 3

-- Display: Currency
cboe_cboeeurope_depthofbook_pitch_v6_49.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_cboeeurope_depthofbook_pitch_v6_49.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.currency, range, value, display)

  return offset + length, value
end

-- Ex Cum Dividend
cboe_cboeeurope_depthofbook_pitch_v6_49.ex_cum_dividend = {}

-- Size: Ex Cum Dividend
cboe_cboeeurope_depthofbook_pitch_v6_49.ex_cum_dividend.size = 1

-- Display: Ex Cum Dividend
cboe_cboeeurope_depthofbook_pitch_v6_49.ex_cum_dividend.display = function(value)
  if value == "E" then
    return "Ex Cum Dividend: Ex Cum Special Dividend If Optionally Set By Reporting Party (E)"
  end
  if value == "-" then
    return "Ex Cum Dividend: Not Specified (-)"
  end

  return "Ex Cum Dividend: Unknown("..value..")"
end

-- Dissect: Ex Cum Dividend
cboe_cboeeurope_depthofbook_pitch_v6_49.ex_cum_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.ex_cum_dividend.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.ex_cum_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.ex_cum_dividend, range, value, display)

  return offset + length, value
end

-- Executed Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares = {}

-- Size: Executed Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares.size = 4

-- Display: Executed Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id = {}

-- Size: Execution Id
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.size = 8

-- Display: Execution Id
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Venue
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue = {}

-- Size: Execution Venue
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue.size = 4

-- Display: Execution Venue
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Includes Primary
cboe_cboeeurope_depthofbook_pitch_v6_49.includes_primary = {}

-- Size: Includes Primary
cboe_cboeeurope_depthofbook_pitch_v6_49.includes_primary.size = 1

-- Display: Includes Primary
cboe_cboeeurope_depthofbook_pitch_v6_49.includes_primary.display = function(value)
  if value == "P" then
    return "Includes Primary: Includes Primary (P)"
  end
  if value == "N" then
    return "Includes Primary: Excludes Primary (N)"
  end
  if value == "-" then
    return "Includes Primary: Not Specified (-)"
  end

  return "Includes Primary: Unknown("..value..")"
end

-- Dissect: Includes Primary
cboe_cboeeurope_depthofbook_pitch_v6_49.includes_primary.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.includes_primary.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.includes_primary.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.includes_primary, range, value, display)

  return offset + length, value
end

-- Index Price
cboe_cboeeurope_depthofbook_pitch_v6_49.index_price = {}

-- Size: Index Price
cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.size = 8

-- Display: Index Price
cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.display = function(value)
  return "Index Price: "..value
end

-- Translate: Index Price
cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Index Price
cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.translate(raw)
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_price, range, value, display)

  return offset + length, value
end

-- Index Status
cboe_cboeeurope_depthofbook_pitch_v6_49.index_status = {}

-- Size: Index Status
cboe_cboeeurope_depthofbook_pitch_v6_49.index_status.size = 1

-- Display: Index Status
cboe_cboeeurope_depthofbook_pitch_v6_49.index_status.display = function(value)
  if value == "N" then
    return "Index Status: Normal (N)"
  end
  if value == "I" then
    return "Index Status: Indicative (I)"
  end
  if value == "C" then
    return "Index Status: Closing (C)"
  end

  return "Index Status: Unknown("..value..")"
end

-- Dissect: Index Status
cboe_cboeeurope_depthofbook_pitch_v6_49.index_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.index_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.index_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_status, range, value, display)

  return offset + length, value
end

-- Index Ticker
cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker = {}

-- Size: Index Ticker
cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker.size = 10

-- Display: Index Ticker
cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker.display = function(value)
  return "Index Ticker: "..value
end

-- Dissect: Index Ticker
cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_ticker, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price = {}

-- Size: Indicative Price
cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price.size = 4

-- Display: Indicative Price
cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Indicative Price
cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price.translate(raw)
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Indicative Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_shares = {}

-- Size: Indicative Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_shares.size = 4

-- Display: Indicative Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_shares.display = function(value)
  return "Indicative Shares: "..value
end

-- Dissect: Indicative Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.indicative_shares, range, value, display)

  return offset + length, value
end

-- Length
cboe_cboeeurope_depthofbook_pitch_v6_49.length = {}

-- Size: Length
cboe_cboeeurope_depthofbook_pitch_v6_49.length.size = 2

-- Display: Length
cboe_cboeeurope_depthofbook_pitch_v6_49.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cboeeurope_depthofbook_pitch_v6_49.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.length, range, value, display)

  return offset + length, value
end

-- Market Mechanism
cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism = {}

-- Size: Market Mechanism
cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism.size = 1

-- Display: Market Mechanism
cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism.display = function(value)
  if value == "1" then
    return "Market Mechanism: Central Limit Order Book (1)"
  end
  if value == "2" then
    return "Market Mechanism: Quote Driven Market (2)"
  end
  if value == "3" then
    return "Market Mechanism: Dark Order Book (3)"
  end
  if value == "4" then
    return "Market Mechanism: Off Book (4)"
  end
  if value == "5" then
    return "Market Mechanism: Periodic Auction (5)"
  end
  if value == "6" then
    return "Market Mechanism: Request For Quotes (6)"
  end
  if value == "7" then
    return "Market Mechanism: Any Other Including Hybrid (7)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cboeeurope_depthofbook_pitch_v6_49.message_length = {}

-- Size: Message Length
cboe_cboeeurope_depthofbook_pitch_v6_49.message_length.size = 1

-- Display: Message Length
cboe_cboeeurope_depthofbook_pitch_v6_49.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cboeeurope_depthofbook_pitch_v6_49.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cboeeurope_depthofbook_pitch_v6_49.message_type = {}

-- Size: Message Type
cboe_cboeeurope_depthofbook_pitch_v6_49.message_type.size = 1

-- Display: Message Type
cboe_cboeeurope_depthofbook_pitch_v6_49.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x40 then
    return "Message Type: Add Order Long Message (0x40)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x2f then
    return "Message Type: Add Order Expanded Message (0x2f)"
  end
  if value == 0x23 then
    return "Message Type: Order Executed Message (0x23)"
  end
  if value == 0x24 then
    return "Message Type: Order Executed At Price Size Message (0x24)"
  end
  if value == 0x25 then
    return "Message Type: Reduce Size Long Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Reduce Size Short Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Modify Order Long Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Modify Order Short Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: Delete Order Message (0x29)"
  end
  if value == 0x41 then
    return "Message Type: Trade Long Message (0x41)"
  end
  if value == 0x2B then
    return "Message Type: Trade Short Message (0x2B)"
  end
  if value == 0x32 then
    return "Message Type: Trade Extended Message (0x32)"
  end
  if value == 0x35 then
    return "Message Type: Trade Unknown Symbol Message (0x35)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session (0x2D)"
  end
  if value == 0xBC then
    return "Message Type: Transaction Begin Message (0xBC)"
  end
  if value == 0xBD then
    return "Message Type: Transaction Begin Message (0xBD)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0x34 then
    return "Message Type: Statistics Message (0x34)"
  end
  if value == 0xAC then
    return "Message Type: Auction Update Message (0xAC)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0xD8 then
    return "Message Type: Index Quote Message (0xD8)"
  end
  if value == 0xD9 then
    return "Message Type: Index Quote Edsp Message (0xD9)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_cboeeurope_depthofbook_pitch_v6_49.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cboeeurope_depthofbook_pitch_v6_49.order_id = {}

-- Size: Order Id
cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size = 8

-- Display: Order Id
cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.order_id, range, value, display)

  return offset + length, value
end

-- Outside Tolerance
cboe_cboeeurope_depthofbook_pitch_v6_49.outside_tolerance = {}

-- Size: Outside Tolerance
cboe_cboeeurope_depthofbook_pitch_v6_49.outside_tolerance.size = 1

-- Display: Outside Tolerance
cboe_cboeeurope_depthofbook_pitch_v6_49.outside_tolerance.display = function(value)
  if value == "O" then
    return "Outside Tolerance: Outside Tolerance (O)"
  end
  if value == "I" then
    return "Outside Tolerance: Inside Tolerance (I)"
  end
  if value == "-" then
    return "Outside Tolerance: Not Specified (-)"
  end

  return "Outside Tolerance: Unknown("..value..")"
end

-- Dissect: Outside Tolerance
cboe_cboeeurope_depthofbook_pitch_v6_49.outside_tolerance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.outside_tolerance.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.outside_tolerance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.outside_tolerance, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_cboeeurope_depthofbook_pitch_v6_49.participant_id = {}

-- Size: Participant Id
cboe_cboeeurope_depthofbook_pitch_v6_49.participant_id.size = 4

-- Display: Participant Id
cboe_cboeeurope_depthofbook_pitch_v6_49.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_cboeeurope_depthofbook_pitch_v6_49.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Binary Long Price 8
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8 = {}

-- Size: Price Binary Long Price 8
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size = 8

-- Display: Price Binary Long Price 8
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.display = function(value)
  return "Price Binary Long Price 8: "..value
end

-- Translate: Price Binary Long Price 8
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Binary Long Price 8
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.translate(raw)
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.price_binary_long_price_8, range, value, display)

  return offset + length, value
end

-- Price Binary Short Price 2
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2 = {}

-- Size: Price Binary Short Price 2
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2.size = 2

-- Display: Price Binary Short Price 2
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2.display = function(value)
  return "Price Binary Short Price 2: "..value
end

-- Translate: Price Binary Short Price 2
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price Binary Short Price 2
cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2.translate(raw)
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.price_binary_short_price_2, range, value, display)

  return offset + length, value
end

-- Price Determination
cboe_cboeeurope_depthofbook_pitch_v6_49.price_determination = {}

-- Size: Price Determination
cboe_cboeeurope_depthofbook_pitch_v6_49.price_determination.size = 1

-- Display: Price Determination
cboe_cboeeurope_depthofbook_pitch_v6_49.price_determination.display = function(value)
  if value == "0" then
    return "Price Determination: Normal (0)"
  end
  if value == "1" then
    return "Price Determination: Manual (1)"
  end

  return "Price Determination: Unknown("..value..")"
end

-- Dissect: Price Determination
cboe_cboeeurope_depthofbook_pitch_v6_49.price_determination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.price_determination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.price_determination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.price_determination, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_cboeeurope_depthofbook_pitch_v6_49.price_short = {}

-- Size: Price Short
cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.size = 2

-- Display: Price Short
cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.translate(raw)
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_cboeeurope_depthofbook_pitch_v6_49.quantity = {}

-- Size: Quantity
cboe_cboeeurope_depthofbook_pitch_v6_49.quantity.size = 4

-- Display: Quantity
cboe_cboeeurope_depthofbook_pitch_v6_49.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_cboeeurope_depthofbook_pitch_v6_49.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_cboeeurope_depthofbook_pitch_v6_49.quantity_short = {}

-- Size: Quantity Short
cboe_cboeeurope_depthofbook_pitch_v6_49.quantity_short.size = 2

-- Display: Quantity Short
cboe_cboeeurope_depthofbook_pitch_v6_49.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_cboeeurope_depthofbook_pitch_v6_49.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price = {}

-- Size: Reference Price
cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price.size = 8

-- Display: Reference Price
cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price.translate(raw)
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remaining Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.remaining_shares = {}

-- Size: Remaining Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.remaining_shares.size = 4

-- Display: Remaining Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.remaining_shares.display = function(value)
  return "Remaining Shares: "..value
end

-- Dissect: Remaining Shares
cboe_cboeeurope_depthofbook_pitch_v6_49.remaining_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.remaining_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.remaining_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.remaining_shares, range, value, display)

  return offset + length, value
end

-- Reserved
cboe_cboeeurope_depthofbook_pitch_v6_49.reserved = {}

-- Size: Reserved
cboe_cboeeurope_depthofbook_pitch_v6_49.reserved.size = 3

-- Display: Reserved
cboe_cboeeurope_depthofbook_pitch_v6_49.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_cboeeurope_depthofbook_pitch_v6_49.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.reserved.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.reserved, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cboeeurope_depthofbook_pitch_v6_49.sequence = {}

-- Size: Sequence
cboe_cboeeurope_depthofbook_pitch_v6_49.sequence.size = 4

-- Display: Sequence
cboe_cboeeurope_depthofbook_pitch_v6_49.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cboeeurope_depthofbook_pitch_v6_49.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares Binary 2
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_2 = {}

-- Size: Shares Binary 2
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_2.size = 2

-- Display: Shares Binary 2
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_2.display = function(value)
  return "Shares Binary 2: "..value
end

-- Dissect: Shares Binary 2
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.shares_binary_2, range, value, display)

  return offset + length, value
end

-- Shares Binary 4
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4 = {}

-- Size: Shares Binary 4
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.size = 4

-- Display: Shares Binary 4
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.display = function(value)
  return "Shares Binary 4: "..value
end

-- Dissect: Shares Binary 4
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.shares_binary_4, range, value, display)

  return offset + length, value
end

-- Shares Binary 8
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8 = {}

-- Size: Shares Binary 8
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8.size = 8

-- Display: Shares Binary 8
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8.display = function(value)
  return "Shares Binary 8: "..value
end

-- Dissect: Shares Binary 8
cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.shares_binary_8, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator = {}

-- Size: Side Indicator
cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.size = 1

-- Display: Side Indicator
cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Statistic Type
cboe_cboeeurope_depthofbook_pitch_v6_49.statistic_type = {}

-- Size: Statistic Type
cboe_cboeeurope_depthofbook_pitch_v6_49.statistic_type.size = 1

-- Display: Statistic Type
cboe_cboeeurope_depthofbook_pitch_v6_49.statistic_type.display = function(value)
  if value == "C" then
    return "Statistic Type: Closing Price (C)"
  end
  if value == "H" then
    return "Statistic Type: High Price (H)"
  end
  if value == "L" then
    return "Statistic Type: Low Price (L)"
  end
  if value == "O" then
    return "Statistic Type: Opening Price (O)"
  end
  if value == "P" then
    return "Statistic Type: Previous Closing Price (P)"
  end

  return "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
cboe_cboeeurope_depthofbook_pitch_v6_49.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.statistic_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Symbol Alphanumeric 12
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_12 = {}

-- Size: Symbol Alphanumeric 12
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_12.size = 12

-- Display: Symbol Alphanumeric 12
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_12.display = function(value)
  return "Symbol Alphanumeric 12: "..value
end

-- Dissect: Symbol Alphanumeric 12
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_12.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_12.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.symbol_alphanumeric_12, range, value, display)

  return offset + length, value
end

-- Symbol Alphanumeric 8
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8 = {}

-- Size: Symbol Alphanumeric 8
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size = 8

-- Display: Symbol Alphanumeric 8
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.display = function(value)
  return "Symbol Alphanumeric 8: "..value
end

-- Dissect: Symbol Alphanumeric 8
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.symbol_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_short = {}

-- Size: Symbol Short
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_short.size = 6

-- Display: Symbol Short
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Time
cboe_cboeeurope_depthofbook_pitch_v6_49.time = {}

-- Size: Time
cboe_cboeeurope_depthofbook_pitch_v6_49.time.size = 4

-- Store: Time
cboe_cboeeurope_depthofbook_pitch_v6_49.time.current = nil

-- Generated: Time
cboe_cboeeurope_depthofbook_pitch_v6_49.time.generated = function(value, range, packet, parent)
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.time.display(value)
  local time = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_cboeeurope_depthofbook_pitch_v6_49.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_cboeeurope_depthofbook_pitch_v6_49.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset = {}

-- Size: Time Offset
cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size = 4

-- Display: Time Offset
cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id = {}

-- Size: Trade Id
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id.size = 8

-- Display: Trade Id
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Timestamp
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp = {}

-- Size: Trade Timestamp
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp.size = 8

-- Display: Trade Timestamp
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp.display = function(value)
  return "Trade Timestamp: "..value
end

-- Dissect: Trade Timestamp
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_timestamp, range, value, display)

  return offset + length, value
end

-- Trade Types
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_types = {}

-- Size: Trade Types
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_types.size = 1

-- Display: Trade Types
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_types.display = function(value)
  return "Trade Types: "..value
end

-- Dissect: Trade Types
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_types.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_types.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_types.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_types, range, value, display)

  return offset + length, value
end

-- Trading Mode
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode = {}

-- Size: Trading Mode
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode.size = 1

-- Display: Trading Mode
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode.display = function(value)
  if value == "1" then
    return "Trading Mode: Undefined Auction (1)"
  end
  if value == "2" then
    return "Trading Mode: Continuous Trading (2)"
  end
  if value == "3" then
    return "Trading Mode: At Market Close Trading (3)"
  end
  if value == "4" then
    return "Trading Mode: Out Of Main Session (4)"
  end
  if value == "5" then
    return "Trading Mode: Trade Reporting On Exchange (5)"
  end
  if value == "6" then
    return "Trading Mode: Trade Reporting Off Exchange (6)"
  end
  if value == "7" then
    return "Trading Mode: Trade Reporting Systematic Internaliser (7)"
  end
  if value == "O" then
    return "Trading Mode: Scheduled Opening Auction (O)"
  end
  if value == "K" then
    return "Trading Mode: Scheduled Closing Auction (K)"
  end
  if value == "I" then
    return "Trading Mode: Scheduled Intraday Auction (I)"
  end
  if value == "U" then
    return "Trading Mode: Unscheduled Auction (U)"
  end

  return "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status = {}

-- Size: Trading Status
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status.size = 1

-- Display: Trading Status
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status.display = function(value)
  if value == "T" then
    return "Trading Status: Trading (T)"
  end
  if value == "R" then
    return "Trading Status: Off Book Reporting (R)"
  end
  if value == "C" then
    return "Trading Status: Closed (C)"
  end
  if value == "S" then
    return "Trading Status: Suspension (S)"
  end
  if value == "N" then
    return "Trading Status: No Reference Price (N)"
  end
  if value == "V" then
    return "Trading Status: Volatility Interruption (V)"
  end
  if value == "O" then
    return "Trading Status: Opening Auction (O)"
  end
  if value == "E" then
    return "Trading Status: Closing Auction (E)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "M" then
    return "Trading Status: Market Order Imbalance Extension (M)"
  end
  if value == "P" then
    return "Trading Status: Price Monitoring Extension (P)"
  end
  if value == "U" then
    return "Trading Status: Cboe Closing Cross (U)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_category = {}

-- Size: Transaction Category
cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_category.size = 1

-- Display: Transaction Category
cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_category.display = function(value)
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end
  if value == "R" then
    return "Transaction Category: Trade That Has Received Price Improvement (R)"
  end
  if value == "Z" then
    return "Transaction Category: Packaged Trade (Z)"
  end
  if value == "Y" then
    return "Transaction Category: Exchange For Physicals Trade (Y)"
  end
  if value == "-" then
    return "Transaction Category: None Of The Above Apply (-)"
  end
  if value == "1" then
    return "Transaction Category: Negotiated Trade In Liquid Financial Instruments (1)"
  end
  if value == "2" then
    return "Transaction Category: Negotiated Trade In Illiquid Financial Instruments (2)"
  end
  if value == "3" then
    return "Transaction Category: Negotiated Trade Subject To Conditions Other Than The Current Market Price (3)"
  end
  if value == "N" then
    return "Transaction Category: Negotiated Trade Where None Of The Above Apply (N)"
  end
  if value == "4" then
    return "Transaction Category: Pre Trade Transparency Waiver For Illiquid Instrument On An Si (4)"
  end
  if value == "5" then
    return "Transaction Category: Pre Trade Transparency Waiver For Above Standard Market Size On An Si (5)"
  end
  if value == "6" then
    return "Transaction Category: Pre Trade Transparency Waivers For Illiquid Instrument On An Si And Above Standard Market Size On An Si (6)"
  end
  if value == "-" then
    return "Transaction Category: Not Specified (-)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cboeeurope_depthofbook_pitch_v6_49.unit = {}

-- Size: Unit
cboe_cboeeurope_depthofbook_pitch_v6_49.unit.size = 1

-- Display: Unit
cboe_cboeeurope_depthofbook_pitch_v6_49.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cboeeurope_depthofbook_pitch_v6_49.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp = {}

-- Translate: Timestamp
cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_cboeeurope_depthofbook_pitch_v6_49.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.translate(time_offset, stored_time)
  local display = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.display(time_offset, stored_time)
  parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.timestamp, range, value, display)

  cboe_cboeeurope_depthofbook_pitch_v6_49.time.generated(stored_time, range, packet, parent)

  display = cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.display(time_offset)
  parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_time = cboe_cboeeurope_depthofbook_pitch_v6_49.time.current

  if stored_time ~= nil then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.composite(buffer, offset, stored_time, packet, parent)
  end

  return cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe CboeEurope DepthOfBook Pitch 6.49
-----------------------------------------------------------------------

-- Index Quote Edsp Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_edsp_message = {}

-- Size: Index Quote Edsp Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_edsp_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.size

-- Display: Index Quote Edsp Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_edsp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Quote Edsp Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_edsp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Index Ticker: Alphanumeric
  index, index_ticker = cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker.dissect(buffer, index, packet, parent)

  -- Index Price: Binary Long Price
  index, index_price = cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Quote Edsp Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_edsp_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_quote_edsp_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_edsp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_edsp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_edsp_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Quote Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_message = {}

-- Size: Index Quote Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.index_status.size

-- Display: Index Quote Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Quote Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Index Ticker: Alphanumeric
  index, index_ticker = cboe_cboeeurope_depthofbook_pitch_v6_49.index_ticker.dissect(buffer, index, packet, parent)

  -- Index Price: Binary Long Price
  index, index_price = cboe_cboeeurope_depthofbook_pitch_v6_49.index_price.dissect(buffer, index, packet, parent)

  -- Index Status: Alphanumeric
  index, index_status = cboe_cboeeurope_depthofbook_pitch_v6_49.index_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Quote Message
cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.index_quote_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_summary_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.size

-- Display: Auction Summary Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Shares Binary 4: Binary
  index, shares_binary_4 = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_update_message = {}

-- Size: Auction Update Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_update_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_shares.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.outside_tolerance.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.includes_primary.size

-- Display: Auction Update Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_cboeeurope_depthofbook_pitch_v6_49.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_cboeeurope_depthofbook_pitch_v6_49.reference_price.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Long Price
  index, indicative_price = cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_price.dissect(buffer, index, packet, parent)

  -- Indicative Shares: Binary
  index, indicative_shares = cboe_cboeeurope_depthofbook_pitch_v6_49.indicative_shares.dissect(buffer, index, packet, parent)

  -- Outside Tolerance: Alphanumeric
  index, outside_tolerance = cboe_cboeeurope_depthofbook_pitch_v6_49.outside_tolerance.dissect(buffer, index, packet, parent)

  -- Includes Primary: Alphanumeric
  index, includes_primary = cboe_cboeeurope_depthofbook_pitch_v6_49.includes_primary.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_cboeeurope_depthofbook_pitch_v6_49.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
cboe_cboeeurope_depthofbook_pitch_v6_49.statistics_message = {}

-- Size: Statistics Message
cboe_cboeeurope_depthofbook_pitch_v6_49.statistics_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.statistic_type.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_determination.size

-- Display: Statistics Message
cboe_cboeeurope_depthofbook_pitch_v6_49.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
cboe_cboeeurope_depthofbook_pitch_v6_49.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Statistic Type: Alphanumeric
  index, statistic_type = cboe_cboeeurope_depthofbook_pitch_v6_49.statistic_type.dissect(buffer, index, packet, parent)

  -- Price Determination: Alphanumeric
  index, price_determination = cboe_cboeeurope_depthofbook_pitch_v6_49.price_determination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
cboe_cboeeurope_depthofbook_pitch_v6_49.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.statistics_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status_message = {}

-- Size: Trading Status Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.reserved.size

-- Display: Trading Status Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = cboe_cboeeurope_depthofbook_pitch_v6_49.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin Message
cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message = {}

-- Size: Transaction Begin Message
cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size

-- Display: Transaction Begin Message
cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session
cboe_cboeeurope_depthofbook_pitch_v6_49.end_of_session = {}

-- Size: End Of Session
cboe_cboeeurope_depthofbook_pitch_v6_49.end_of_session.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size

-- Display: End Of Session
cboe_cboeeurope_depthofbook_pitch_v6_49.end_of_session.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session
cboe_cboeeurope_depthofbook_pitch_v6_49.end_of_session.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session
cboe_cboeeurope_depthofbook_pitch_v6_49.end_of_session.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.end_of_session, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.end_of_session.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.end_of_session.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.end_of_session.fields(buffer, offset, packet, parent)
  end
end

-- Trade Unknown Symbol Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_unknown_symbol_message = {}

-- Size: Trade Unknown Symbol Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_unknown_symbol_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_12.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.currency.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.extended_trade_flags.size

-- Display: Trade Unknown Symbol Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_unknown_symbol_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Unknown Symbol Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_unknown_symbol_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Shares Binary 8: Binary
  index, shares_binary_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 12: Alphanumeric
  index, symbol_alphanumeric_12 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_12.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: Binary
  index, trade_timestamp = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alphanumeric
  index, execution_venue = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_cboeeurope_depthofbook_pitch_v6_49.currency.dissect(buffer, index, packet, parent)

  -- Cboe Trade Flags: Alphanumeric
  index, cboe_trade_flags = cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags.dissect(buffer, index, packet, parent)

  -- Extended Trade Flags
  index, extended_trade_flags = cboe_cboeeurope_depthofbook_pitch_v6_49.extended_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Unknown Symbol Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_unknown_symbol_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_unknown_symbol_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_unknown_symbol_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_unknown_symbol_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trade_unknown_symbol_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Extended Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_extended_message = {}

-- Size: Trade Extended Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_extended_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.currency.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.extended_trade_flags.size

-- Display: Trade Extended Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Extended Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Shares Binary 8: Binary
  index, shares_binary_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_8.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: Binary
  index, trade_timestamp = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alphanumeric
  index, execution_venue = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_venue.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_cboeeurope_depthofbook_pitch_v6_49.currency.dissect(buffer, index, packet, parent)

  -- Cboe Trade Flags: Alphanumeric
  index, cboe_trade_flags = cboe_cboeeurope_depthofbook_pitch_v6_49.cboe_trade_flags.dissect(buffer, index, packet, parent)

  -- Extended Trade Flags
  index, extended_trade_flags = cboe_cboeeurope_depthofbook_pitch_v6_49.extended_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Extended Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_extended_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trade_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags = {}

-- Size: Trade Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_category.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trade_types.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade.size

-- Display: Trade Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alphanumeric
  index, transaction_category = cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_category.dissect(buffer, index, packet, parent)

  -- Trade Types: Alphanumeric
  index, trade_types = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_types.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade: Alphanumeric
  index, algorithmic_trade = cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.dissect = function(buffer, offset, packet, parent)
  if show.trade_flags then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_flags, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_short_message = {}

-- Size: Trade Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_short_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.contracts_short.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.size

-- Display: Trade Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.dissect(buffer, index, packet, parent)

  -- Contracts Short: Binary
  index, contracts_short = cboe_cboeeurope_depthofbook_pitch_v6_49.contracts_short.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_long_message = {}

-- Size: Trade Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_long_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.size

-- Display: Trade Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Binary 4: Binary
  index, shares_binary_4 = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_cboeeurope_depthofbook_pitch_v6_49.delete_order_message = {}

-- Size: Delete Order Message
cboe_cboeeurope_depthofbook_pitch_v6_49.delete_order_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size

-- Display: Delete Order Message
cboe_cboeeurope_depthofbook_pitch_v6_49.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_cboeeurope_depthofbook_pitch_v6_49.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_cboeeurope_depthofbook_pitch_v6_49.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_short_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_2.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2.size

-- Display: Modify Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Shares Binary 2: Binary
  index, shares_binary_2 = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_2.dissect(buffer, index, packet, parent)

  -- Price Binary Short Price 2: Binary Short Price
  index, price_binary_short_price_2 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_short_price_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_long_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size

-- Display: Modify Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Shares Binary 4: Binary
  index, shares_binary_4 = cboe_cboeeurope_depthofbook_pitch_v6_49.shares_binary_4.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_short_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_2.size

-- Display: Reduce Size Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Shares Binary 2: Binary
  index, canceled_shares_binary_2 = cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_long_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_4.size

-- Display: Reduce Size Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Shares Binary 4: Binary
  index, canceled_shares_binary_4 = cboe_cboeeurope_depthofbook_pitch_v6_49.canceled_shares_binary_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags = {}

-- Size: Execution Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.ex_cum_dividend.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade.size

-- Display: Execution Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_cboeeurope_depthofbook_pitch_v6_49.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_cboeeurope_depthofbook_pitch_v6_49.trading_mode.dissect(buffer, index, packet, parent)

  -- Ex Cum Dividend: Alphanumeric
  index, ex_cum_dividend = cboe_cboeeurope_depthofbook_pitch_v6_49.ex_cum_dividend.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade: Alphanumeric
  index, algorithmic_trade = cboe_cboeeurope_depthofbook_pitch_v6_49.algorithmic_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Flags
cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.dissect = function(buffer, offset, packet, parent)
  if show.execution_flags then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.execution_flags, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_at_price_size_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.remaining_shares.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.size

-- Display: Order Executed At Price Size Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares: Binary
  index, executed_shares = cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares.dissect(buffer, index, packet, parent)

  -- Remaining Shares: Binary
  index, remaining_shares = cboe_cboeeurope_depthofbook_pitch_v6_49.remaining_shares.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_message = {}

-- Size: Order Executed Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.size

-- Display: Order Executed Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares: Binary
  index, executed_shares = cboe_cboeeurope_depthofbook_pitch_v6_49.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_id.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_cboeeurope_depthofbook_pitch_v6_49.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Expanded Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_expanded_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.quantity.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_flags.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.participant_id.size

-- Display: Add Order Expanded Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_cboeeurope_depthofbook_pitch_v6_49.quantity.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Add Order Flags
  index, add_order_flags = cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_cboeeurope_depthofbook_pitch_v6_49.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_short_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.quantity_short.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_short.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.size

-- Display: Add Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_cboeeurope_depthofbook_pitch_v6_49.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cboeeurope_depthofbook_pitch_v6_49.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_long_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.quantity.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.size

-- Display: Add Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cboeeurope_depthofbook_pitch_v6_49.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cboeeurope_depthofbook_pitch_v6_49.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_cboeeurope_depthofbook_pitch_v6_49.quantity.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_cboeeurope_depthofbook_pitch_v6_49.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_cboeeurope_depthofbook_pitch_v6_49.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_cboeeurope_depthofbook_pitch_v6_49.unit_clear_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time_offset.size

-- Display: Unit Clear Message
cboe_cboeeurope_depthofbook_pitch_v6_49.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_cboeeurope_depthofbook_pitch_v6_49.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cboeeurope_depthofbook_pitch_v6_49.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_cboeeurope_depthofbook_pitch_v6_49.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_cboeeurope_depthofbook_pitch_v6_49.time_message = {}

-- Size: Time Message
cboe_cboeeurope_depthofbook_pitch_v6_49.time_message.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.time.size

-- Display: Time Message
cboe_cboeeurope_depthofbook_pitch_v6_49.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_cboeeurope_depthofbook_pitch_v6_49.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_cboeeurope_depthofbook_pitch_v6_49.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_cboeeurope_depthofbook_pitch_v6_49.time.current = time

  if not packet.visited then
    cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_cboeeurope_depthofbook_pitch_v6_49.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.time_message, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cboeeurope_depthofbook_pitch_v6_49.payload = {}

-- Dissect: Payload
cboe_cboeeurope_depthofbook_pitch_v6_49.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x40 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2f then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x41 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Extended Message
  if message_type == 0x32 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trade_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Unknown Symbol Message
  if message_type == 0x35 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trade_unknown_symbol_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_type == 0x2D then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBD then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x34 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0xAC then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Quote Message
  if message_type == 0xD8 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Quote Edsp Message
  if message_type == 0xD9 then
    return cboe_cboeeurope_depthofbook_pitch_v6_49.index_quote_edsp_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cboeeurope_depthofbook_pitch_v6_49.message_header = {}

-- Size: Message Header
cboe_cboeeurope_depthofbook_pitch_v6_49.message_header.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.message_length.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.message_type.size

-- Display: Message Header
cboe_cboeeurope_depthofbook_pitch_v6_49.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cboeeurope_depthofbook_pitch_v6_49.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cboeeurope_depthofbook_pitch_v6_49.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = cboe_cboeeurope_depthofbook_pitch_v6_49.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cboeeurope_depthofbook_pitch_v6_49.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message_header, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cboeeurope_depthofbook_pitch_v6_49.message = {}

-- Read runtime size of: Message
cboe_cboeeurope_depthofbook_pitch_v6_49.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_cboeeurope_depthofbook_pitch_v6_49.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cboeeurope_depthofbook_pitch_v6_49.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cboeeurope_depthofbook_pitch_v6_49.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = cboe_cboeeurope_depthofbook_pitch_v6_49.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cboeeurope_depthofbook_pitch_v6_49.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_cboeeurope_depthofbook_pitch_v6_49.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.message, buffer(offset, 0))
    local current = cboe_cboeeurope_depthofbook_pitch_v6_49.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cboeeurope_depthofbook_pitch_v6_49.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_cboeeurope_depthofbook_pitch_v6_49.messages = {}

-- Dissect: Messages
cboe_cboeeurope_depthofbook_pitch_v6_49.messages.dissect = function(buffer, offset, packet, parent, sequence)
  -- Dissect Heartbeat
  if sequence == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_cboeeurope_depthofbook_pitch_v6_49.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header = {}

-- Size: Packet Header
cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header.size =
  cboe_cboeeurope_depthofbook_pitch_v6_49.length.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.count.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.unit.size + 
  cboe_cboeeurope_depthofbook_pitch_v6_49.sequence.size

-- Display: Packet Header
cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cboeeurope_depthofbook_pitch_v6_49.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_cboeeurope_depthofbook_pitch_v6_49.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cboeeurope_depthofbook_pitch_v6_49.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_cboeeurope_depthofbook_pitch_v6_49.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49.fields.packet_header, buffer(offset, 0))
    local index = cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cboeeurope_depthofbook_pitch_v6_49.packet = {}

-- Verify required size of Udp packet
cboe_cboeeurope_depthofbook_pitch_v6_49.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header.size
end

-- Dissect Packet
cboe_cboeeurope_depthofbook_pitch_v6_49.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_cboeeurope_depthofbook_pitch_v6_49.time.current = data.time.frames[packet.number]
  cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cboeeurope_depthofbook_pitch_v6_49.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequence
  local sequence = buffer(index - 4, 4):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_cboeeurope_depthofbook_pitch_v6_49.messages.dissect(buffer, index, packet, parent, sequence)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cboeeurope_depthofbook_pitch_v6_49.init()
  cboe_cboeeurope_depthofbook_pitch_v6_49.time.current = nil
  cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.current = nil
  cboe_cboeeurope_depthofbook_pitch_v6_49.conversation.flows = {}
end

-- Dissector for Cboe CboeEurope DepthOfBook Pitch 6.49
function omi_cboe_cboeeurope_depthofbook_pitch_v6_49.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_cboeeurope_depthofbook_pitch_v6_49.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cboeeurope_depthofbook_pitch_v6_49, buffer(), omi_cboe_cboeeurope_depthofbook_pitch_v6_49.description, "("..buffer:len().." Bytes)")
  return cboe_cboeeurope_depthofbook_pitch_v6_49.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CboeEurope DepthOfBook Pitch 6.49 (Udp)
local function omi_cboe_cboeeurope_depthofbook_pitch_v6_49_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cboeeurope_depthofbook_pitch_v6_49.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cboeeurope_depthofbook_pitch_v6_49
  omi_cboe_cboeeurope_depthofbook_pitch_v6_49.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CboeEurope DepthOfBook Pitch 6.49
omi_cboe_cboeeurope_depthofbook_pitch_v6_49:register_heuristic("udp", omi_cboe_cboeeurope_depthofbook_pitch_v6_49_udp_heuristic)

-- Register Cboe CboeEurope DepthOfBook Pitch 6.49 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_cboeeurope_depthofbook_pitch_v6_49)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 6.49
--   Date: Thursday, November 16, 2023
--   Specification: BATS_Europe_MC_PITCH_Specification.pdf
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
