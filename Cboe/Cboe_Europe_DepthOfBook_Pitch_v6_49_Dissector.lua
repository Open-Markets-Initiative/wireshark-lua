-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Europe DepthOfBook Pitch 6.49 Protocol
local cboe_europe_depthofbook_pitch_v6_49 = Proto("Cboe.Europe.DepthOfBook.Pitch.v6.49.Lua", "Cboe Europe DepthOfBook Pitch 6.49")

-- Component Tables
local show = {}
local format = {}
local cboe_europe_depthofbook_pitch_v6_49_display = {}
local cboe_europe_depthofbook_pitch_v6_49_dissect = {}
local cboe_europe_depthofbook_pitch_v6_49_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Europe DepthOfBook Pitch 6.49 Fields
cboe_europe_depthofbook_pitch_v6_49.fields.algorithmic_trade = ProtoField.new("Algorithmic Trade", "cboe.europe.depthofbook.pitch.v6.49.algorithmictrade", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.auction_type = ProtoField.new("Auction Type", "cboe.europe.depthofbook.pitch.v6.49.auctiontype", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.canceled_shares_binary_2 = ProtoField.new("Canceled Shares Binary 2", "cboe.europe.depthofbook.pitch.v6.49.canceledsharesbinary2", ftypes.UINT16)
cboe_europe_depthofbook_pitch_v6_49.fields.canceled_shares_binary_4 = ProtoField.new("Canceled Shares Binary 4", "cboe.europe.depthofbook.pitch.v6.49.canceledsharesbinary4", ftypes.UINT32)
cboe_europe_depthofbook_pitch_v6_49.fields.cboe_trade_flags = ProtoField.new("Cboe Trade Flags", "cboe.europe.depthofbook.pitch.v6.49.cboetradeflags", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.contracts_short = ProtoField.new("Contracts Short", "cboe.europe.depthofbook.pitch.v6.49.contractsshort", ftypes.UINT16)
cboe_europe_depthofbook_pitch_v6_49.fields.count = ProtoField.new("Count", "cboe.europe.depthofbook.pitch.v6.49.count", ftypes.UINT8)
cboe_europe_depthofbook_pitch_v6_49.fields.currency = ProtoField.new("Currency", "cboe.europe.depthofbook.pitch.v6.49.currency", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.ex_cum_dividend = ProtoField.new("Ex Cum Dividend", "cboe.europe.depthofbook.pitch.v6.49.excumdividend", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.europe.depthofbook.pitch.v6.49.executedshares", ftypes.UINT32)
cboe_europe_depthofbook_pitch_v6_49.fields.execution_flags = ProtoField.new("Execution Flags", "cboe.europe.depthofbook.pitch.v6.49.executionflags", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.execution_id = ProtoField.new("Execution Id", "cboe.europe.depthofbook.pitch.v6.49.executionid", ftypes.UINT64)
cboe_europe_depthofbook_pitch_v6_49.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.europe.depthofbook.pitch.v6.49.executionvenue", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.includes_primary = ProtoField.new("Includes Primary", "cboe.europe.depthofbook.pitch.v6.49.includesprimary", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.index_price = ProtoField.new("Index Price", "cboe.europe.depthofbook.pitch.v6.49.indexprice", ftypes.DOUBLE)
cboe_europe_depthofbook_pitch_v6_49.fields.index_status = ProtoField.new("Index Status", "cboe.europe.depthofbook.pitch.v6.49.indexstatus", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.index_ticker = ProtoField.new("Index Ticker", "cboe.europe.depthofbook.pitch.v6.49.indexticker", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.europe.depthofbook.pitch.v6.49.indicativeprice", ftypes.DOUBLE)
cboe_europe_depthofbook_pitch_v6_49.fields.indicative_shares = ProtoField.new("Indicative Shares", "cboe.europe.depthofbook.pitch.v6.49.indicativeshares", ftypes.UINT32)
cboe_europe_depthofbook_pitch_v6_49.fields.length = ProtoField.new("Length", "cboe.europe.depthofbook.pitch.v6.49.length", ftypes.UINT16)
cboe_europe_depthofbook_pitch_v6_49.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.europe.depthofbook.pitch.v6.49.marketmechanism", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.message = ProtoField.new("Message", "cboe.europe.depthofbook.pitch.v6.49.message", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.message_header = ProtoField.new("Message Header", "cboe.europe.depthofbook.pitch.v6.49.messageheader", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.message_length = ProtoField.new("Message Length", "cboe.europe.depthofbook.pitch.v6.49.messagelength", ftypes.UINT8)
cboe_europe_depthofbook_pitch_v6_49.fields.message_type = ProtoField.new("Message Type", "cboe.europe.depthofbook.pitch.v6.49.messagetype", ftypes.UINT8)
cboe_europe_depthofbook_pitch_v6_49.fields.order_id = ProtoField.new("Order Id", "cboe.europe.depthofbook.pitch.v6.49.orderid", ftypes.UINT64)
cboe_europe_depthofbook_pitch_v6_49.fields.outside_tolerance = ProtoField.new("Outside Tolerance", "cboe.europe.depthofbook.pitch.v6.49.outsidetolerance", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.packet = ProtoField.new("Packet", "cboe.europe.depthofbook.pitch.v6.49.packet", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.packet_header = ProtoField.new("Packet Header", "cboe.europe.depthofbook.pitch.v6.49.packetheader", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.participant_id = ProtoField.new("Participant Id", "cboe.europe.depthofbook.pitch.v6.49.participantid", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.payload = ProtoField.new("Payload", "cboe.europe.depthofbook.pitch.v6.49.payload", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.price_binary_long_price_8 = ProtoField.new("Price Binary Long Price 8", "cboe.europe.depthofbook.pitch.v6.49.pricebinarylongprice8", ftypes.DOUBLE)
cboe_europe_depthofbook_pitch_v6_49.fields.price_binary_short_price_2 = ProtoField.new("Price Binary Short Price 2", "cboe.europe.depthofbook.pitch.v6.49.pricebinaryshortprice2", ftypes.DOUBLE)
cboe_europe_depthofbook_pitch_v6_49.fields.price_determination = ProtoField.new("Price Determination", "cboe.europe.depthofbook.pitch.v6.49.pricedetermination", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.price_short = ProtoField.new("Price Short", "cboe.europe.depthofbook.pitch.v6.49.priceshort", ftypes.DOUBLE)
cboe_europe_depthofbook_pitch_v6_49.fields.quantity = ProtoField.new("Quantity", "cboe.europe.depthofbook.pitch.v6.49.quantity", ftypes.UINT32)
cboe_europe_depthofbook_pitch_v6_49.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.europe.depthofbook.pitch.v6.49.quantityshort", ftypes.UINT16)
cboe_europe_depthofbook_pitch_v6_49.fields.reference_price = ProtoField.new("Reference Price", "cboe.europe.depthofbook.pitch.v6.49.referenceprice", ftypes.DOUBLE)
cboe_europe_depthofbook_pitch_v6_49.fields.remaining_shares = ProtoField.new("Remaining Shares", "cboe.europe.depthofbook.pitch.v6.49.remainingshares", ftypes.UINT32)
cboe_europe_depthofbook_pitch_v6_49.fields.reserved = ProtoField.new("Reserved", "cboe.europe.depthofbook.pitch.v6.49.reserved", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.sequence = ProtoField.new("Sequence", "cboe.europe.depthofbook.pitch.v6.49.sequence", ftypes.UINT32)
cboe_europe_depthofbook_pitch_v6_49.fields.shares_binary_2 = ProtoField.new("Shares Binary 2", "cboe.europe.depthofbook.pitch.v6.49.sharesbinary2", ftypes.UINT16)
cboe_europe_depthofbook_pitch_v6_49.fields.shares_binary_4 = ProtoField.new("Shares Binary 4", "cboe.europe.depthofbook.pitch.v6.49.sharesbinary4", ftypes.UINT32)
cboe_europe_depthofbook_pitch_v6_49.fields.shares_binary_8 = ProtoField.new("Shares Binary 8", "cboe.europe.depthofbook.pitch.v6.49.sharesbinary8", ftypes.UINT64)
cboe_europe_depthofbook_pitch_v6_49.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.europe.depthofbook.pitch.v6.49.sideindicator", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.statistic_type = ProtoField.new("Statistic Type", "cboe.europe.depthofbook.pitch.v6.49.statistictype", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.symbol_alphanumeric_12 = ProtoField.new("Symbol Alphanumeric 12", "cboe.europe.depthofbook.pitch.v6.49.symbolalphanumeric12", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.symbol_alphanumeric_8 = ProtoField.new("Symbol Alphanumeric 8", "cboe.europe.depthofbook.pitch.v6.49.symbolalphanumeric8", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.europe.depthofbook.pitch.v6.49.symbolshort", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.time = ProtoField.new("Time", "cboe.europe.depthofbook.pitch.v6.49.time", ftypes.UINT32)
cboe_europe_depthofbook_pitch_v6_49.fields.time_offset = ProtoField.new("Time Offset", "cboe.europe.depthofbook.pitch.v6.49.timeoffset", ftypes.UINT32)
cboe_europe_depthofbook_pitch_v6_49.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.europe.depthofbook.pitch.v6.49.tradeflags", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.trade_id = ProtoField.new("Trade Id", "cboe.europe.depthofbook.pitch.v6.49.tradeid", ftypes.UINT64)
cboe_europe_depthofbook_pitch_v6_49.fields.trade_timestamp = ProtoField.new("Trade Timestamp", "cboe.europe.depthofbook.pitch.v6.49.tradetimestamp", ftypes.UINT64)
cboe_europe_depthofbook_pitch_v6_49.fields.trade_types = ProtoField.new("Trade Types", "cboe.europe.depthofbook.pitch.v6.49.tradetypes", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.europe.depthofbook.pitch.v6.49.tradingmode", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.trading_status = ProtoField.new("Trading Status", "cboe.europe.depthofbook.pitch.v6.49.tradingstatus", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.europe.depthofbook.pitch.v6.49.transactioncategory", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.unit = ProtoField.new("Unit", "cboe.europe.depthofbook.pitch.v6.49.unit", ftypes.UINT8)

-- Cboe Europe DepthOfBook Pitch 6.49 messages
cboe_europe_depthofbook_pitch_v6_49.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.europe.depthofbook.pitch.v6.49.addorderexpandedmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.europe.depthofbook.pitch.v6.49.addorderlongmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.europe.depthofbook.pitch.v6.49.addordershortmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.europe.depthofbook.pitch.v6.49.auctionsummarymessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.europe.depthofbook.pitch.v6.49.auctionupdatemessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.europe.depthofbook.pitch.v6.49.deleteordermessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.end_of_session = ProtoField.new("End Of Session", "cboe.europe.depthofbook.pitch.v6.49.endofsession", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.index_quote_edsp_message = ProtoField.new("Index Quote Edsp Message", "cboe.europe.depthofbook.pitch.v6.49.indexquoteedspmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.index_quote_message = ProtoField.new("Index Quote Message", "cboe.europe.depthofbook.pitch.v6.49.indexquotemessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.europe.depthofbook.pitch.v6.49.modifyorderlongmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.europe.depthofbook.pitch.v6.49.modifyordershortmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.europe.depthofbook.pitch.v6.49.orderexecutedatpricesizemessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.europe.depthofbook.pitch.v6.49.orderexecutedmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.europe.depthofbook.pitch.v6.49.reducesizelongmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.europe.depthofbook.pitch.v6.49.reducesizeshortmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.statistics_message = ProtoField.new("Statistics Message", "cboe.europe.depthofbook.pitch.v6.49.statisticsmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.time_message = ProtoField.new("Time Message", "cboe.europe.depthofbook.pitch.v6.49.timemessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.trade_extended_message = ProtoField.new("Trade Extended Message", "cboe.europe.depthofbook.pitch.v6.49.tradeextendedmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.europe.depthofbook.pitch.v6.49.tradelongmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.europe.depthofbook.pitch.v6.49.tradeshortmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.trade_unknown_symbol_message = ProtoField.new("Trade Unknown Symbol Message", "cboe.europe.depthofbook.pitch.v6.49.tradeunknownsymbolmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.europe.depthofbook.pitch.v6.49.tradingstatusmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.europe.depthofbook.pitch.v6.49.transactionbeginmessage", ftypes.STRING)
cboe_europe_depthofbook_pitch_v6_49.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.europe.depthofbook.pitch.v6.49.unitclearmessage", ftypes.STRING)

-- Cboe Europe DepthOfBook Pitch 6.49 generated fields
cboe_europe_depthofbook_pitch_v6_49.fields.message_index = ProtoField.new("Message Index", "cboe.europe.depthofbook.pitch.v6.49.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Europe DepthOfBook Pitch 6.49 Element Dissection Options
show.add_order_expanded_message = true
show.add_order_long_message = true
show.add_order_short_message = true
show.auction_summary_message = true
show.auction_update_message = true
show.delete_order_message = true
show.end_of_session = true
show.execution_flags = true
show.index_quote_edsp_message = true
show.index_quote_message = true
show.message = true
show.message_header = true
show.modify_order_long_message = true
show.modify_order_short_message = true
show.order_executed_at_price_size_message = true
show.order_executed_message = true
show.packet = true
show.packet_header = true
show.reduce_size_long_message = true
show.reduce_size_short_message = true
show.statistics_message = true
show.time_message = true
show.trade_extended_message = true
show.trade_flags = true
show.trade_long_message = true
show.trade_short_message = true
show.trade_unknown_symbol_message = true
show.trading_status_message = true
show.transaction_begin_message = true
show.unit_clear_message = true
show.payload = false

-- Register Cboe Europe DepthOfBook Pitch 6.49 Show Options
cboe_europe_depthofbook_pitch_v6_49.prefs.show_add_order_expanded_message = Pref.bool("Show Add Order Expanded Message", show.add_order_expanded_message, "Parse and add Add Order Expanded Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_end_of_session = Pref.bool("Show End Of Session", show.end_of_session, "Parse and add End Of Session to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_execution_flags = Pref.bool("Show Execution Flags", show.execution_flags, "Parse and add Execution Flags to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_index_quote_edsp_message = Pref.bool("Show Index Quote Edsp Message", show.index_quote_edsp_message, "Parse and add Index Quote Edsp Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_index_quote_message = Pref.bool("Show Index Quote Message", show.index_quote_message, "Parse and add Index Quote Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_statistics_message = Pref.bool("Show Statistics Message", show.statistics_message, "Parse and add Statistics Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_extended_message = Pref.bool("Show Trade Extended Message", show.trade_extended_message, "Parse and add Trade Extended Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_unknown_symbol_message = Pref.bool("Show Trade Unknown Symbol Message", show.trade_unknown_symbol_message, "Parse and add Trade Unknown Symbol Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_transaction_begin_message = Pref.bool("Show Transaction Begin Message", show.transaction_begin_message, "Parse and add Transaction Begin Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_europe_depthofbook_pitch_v6_49.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_europe_depthofbook_pitch_v6_49.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_expanded_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_add_order_expanded_message then
    show.add_order_expanded_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_add_order_expanded_message
    changed = true
  end
  if show.add_order_long_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_add_order_long_message then
    show.add_order_long_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_add_order_short_message then
    show.add_order_short_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_summary_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_auction_summary_message then
    show.auction_summary_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_update_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_auction_update_message then
    show.auction_update_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_auction_update_message
    changed = true
  end
  if show.delete_order_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_delete_order_message then
    show.delete_order_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_session ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_end_of_session then
    show.end_of_session = cboe_europe_depthofbook_pitch_v6_49.prefs.show_end_of_session
    changed = true
  end
  if show.execution_flags ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_execution_flags then
    show.execution_flags = cboe_europe_depthofbook_pitch_v6_49.prefs.show_execution_flags
    changed = true
  end
  if show.index_quote_edsp_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_index_quote_edsp_message then
    show.index_quote_edsp_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_index_quote_edsp_message
    changed = true
  end
  if show.index_quote_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_index_quote_message then
    show.index_quote_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_index_quote_message
    changed = true
  end
  if show.message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_message then
    show.message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_message_header then
    show.message_header = cboe_europe_depthofbook_pitch_v6_49.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_modify_order_long_message then
    show.modify_order_long_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_modify_order_short_message then
    show.modify_order_short_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_order_executed_message then
    show.order_executed_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_packet then
    show.packet = cboe_europe_depthofbook_pitch_v6_49.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_packet_header then
    show.packet_header = cboe_europe_depthofbook_pitch_v6_49.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.statistics_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_statistics_message then
    show.statistics_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_statistics_message
    changed = true
  end
  if show.time_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_time_message then
    show.time_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_time_message
    changed = true
  end
  if show.trade_extended_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_extended_message then
    show.trade_extended_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_extended_message
    changed = true
  end
  if show.trade_flags ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_flags then
    show.trade_flags = cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_flags
    changed = true
  end
  if show.trade_long_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_long_message then
    show.trade_long_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_short_message then
    show.trade_short_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_short_message
    changed = true
  end
  if show.trade_unknown_symbol_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_unknown_symbol_message then
    show.trade_unknown_symbol_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_trade_unknown_symbol_message
    changed = true
  end
  if show.trading_status_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_trading_status_message then
    show.trading_status_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_trading_status_message
    changed = true
  end
  if show.transaction_begin_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_transaction_begin_message then
    show.transaction_begin_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_transaction_begin_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_europe_depthofbook_pitch_v6_49.prefs.show_unit_clear_message
    changed = true
  end
  if show.payload ~= cboe_europe_depthofbook_pitch_v6_49.prefs.show_payload then
    show.payload = cboe_europe_depthofbook_pitch_v6_49.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Europe DepthOfBook Pitch 6.49
-----------------------------------------------------------------------

-- Size: Index Price
cboe_europe_depthofbook_pitch_v6_49_size_of.index_price = 8

-- Display: Index Price
cboe_europe_depthofbook_pitch_v6_49_display.index_price = function(value)
  return "Index Price: "..value
end

-- Translate: Index Price
translate.index_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Index Price
cboe_europe_depthofbook_pitch_v6_49_dissect.index_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.index_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.index_price(raw)
  local display = cboe_europe_depthofbook_pitch_v6_49_display.index_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.index_price, range, value, display)

  return offset + length, value
end

-- Size: Index Ticker
cboe_europe_depthofbook_pitch_v6_49_size_of.index_ticker = 10

-- Display: Index Ticker
cboe_europe_depthofbook_pitch_v6_49_display.index_ticker = function(value)
  return "Index Ticker: "..value
end

-- Dissect: Index Ticker
cboe_europe_depthofbook_pitch_v6_49_dissect.index_ticker = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.index_ticker
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.index_ticker(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.index_ticker, range, value, display)

  return offset + length, value
end

-- Size: Time Offset
cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset = 4

-- Display: Time Offset
cboe_europe_depthofbook_pitch_v6_49_display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Calculate size of: Index Quote Edsp Message
cboe_europe_depthofbook_pitch_v6_49_size_of.index_quote_edsp_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.index_ticker

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.index_price

  return index
end

-- Display: Index Quote Edsp Message
cboe_europe_depthofbook_pitch_v6_49_display.index_quote_edsp_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Quote Edsp Message
cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_edsp_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Index Ticker: 10 Byte Ascii String
  index, index_ticker = cboe_europe_depthofbook_pitch_v6_49_dissect.index_ticker(buffer, index, packet, parent)

  -- Index Price: 8 Byte Unsigned Fixed Width Integer
  index, index_price = cboe_europe_depthofbook_pitch_v6_49_dissect.index_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Quote Edsp Message
cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_edsp_message = function(buffer, offset, packet, parent)
  if show.index_quote_edsp_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.index_quote_edsp_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_edsp_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.index_quote_edsp_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_edsp_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Index Status
cboe_europe_depthofbook_pitch_v6_49_size_of.index_status = 1

-- Display: Index Status
cboe_europe_depthofbook_pitch_v6_49_display.index_status = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.index_status = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.index_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.index_status(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.index_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Index Quote Message
cboe_europe_depthofbook_pitch_v6_49_size_of.index_quote_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.index_ticker

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.index_price

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.index_status

  return index
end

-- Display: Index Quote Message
cboe_europe_depthofbook_pitch_v6_49_display.index_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Quote Message
cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Index Ticker: 10 Byte Ascii String
  index, index_ticker = cboe_europe_depthofbook_pitch_v6_49_dissect.index_ticker(buffer, index, packet, parent)

  -- Index Price: 8 Byte Unsigned Fixed Width Integer
  index, index_price = cboe_europe_depthofbook_pitch_v6_49_dissect.index_price(buffer, index, packet, parent)

  -- Index Status: 1 Byte Ascii String Enum with 3 values
  index, index_status = cboe_europe_depthofbook_pitch_v6_49_dissect.index_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Quote Message
cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_message = function(buffer, offset, packet, parent)
  if show.index_quote_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.index_quote_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.index_quote_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Shares Binary 4
cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_4 = 4

-- Display: Shares Binary 4
cboe_europe_depthofbook_pitch_v6_49_display.shares_binary_4 = function(value)
  return "Shares Binary 4: "..value
end

-- Dissect: Shares Binary 4
cboe_europe_depthofbook_pitch_v6_49_dissect.shares_binary_4 = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.shares_binary_4(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.shares_binary_4, range, value, display)

  return offset + length, value
end

-- Size: Price Binary Long Price 8
cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8 = 8

-- Display: Price Binary Long Price 8
cboe_europe_depthofbook_pitch_v6_49_display.price_binary_long_price_8 = function(value)
  return "Price Binary Long Price 8: "..value
end

-- Translate: Price Binary Long Price 8
translate.price_binary_long_price_8 = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Binary Long Price 8
cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8 = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price_binary_long_price_8(raw)
  local display = cboe_europe_depthofbook_pitch_v6_49_display.price_binary_long_price_8(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.price_binary_long_price_8, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
cboe_europe_depthofbook_pitch_v6_49_size_of.auction_type = 1

-- Display: Auction Type
cboe_europe_depthofbook_pitch_v6_49_display.auction_type = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Symbol Alphanumeric 8
cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8 = 8

-- Display: Symbol Alphanumeric 8
cboe_europe_depthofbook_pitch_v6_49_display.symbol_alphanumeric_8 = function(value)
  return "Symbol Alphanumeric 8: "..value
end

-- Dissect: Symbol Alphanumeric 8
cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8 = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.symbol_alphanumeric_8(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.symbol_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Summary Message
cboe_europe_depthofbook_pitch_v6_49_size_of.auction_summary_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.auction_type

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_4

  return index
end

-- Display: Auction Summary Message
cboe_europe_depthofbook_pitch_v6_49_display.auction_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_europe_depthofbook_pitch_v6_49_dissect.auction_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 6 values
  index, auction_type = cboe_europe_depthofbook_pitch_v6_49_dissect.auction_type(buffer, index, packet, parent)

  -- Price Binary Long Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_long_price_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8(buffer, index, packet, parent)

  -- Shares Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, shares_binary_4 = cboe_europe_depthofbook_pitch_v6_49_dissect.shares_binary_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_europe_depthofbook_pitch_v6_49_dissect.auction_summary_message = function(buffer, offset, packet, parent)
  if show.auction_summary_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.auction_summary_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.auction_summary_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.auction_summary_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Includes Primary
cboe_europe_depthofbook_pitch_v6_49_size_of.includes_primary = 1

-- Display: Includes Primary
cboe_europe_depthofbook_pitch_v6_49_display.includes_primary = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.includes_primary = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.includes_primary
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.includes_primary(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.includes_primary, range, value, display)

  return offset + length, value
end

-- Size: Outside Tolerance
cboe_europe_depthofbook_pitch_v6_49_size_of.outside_tolerance = 1

-- Display: Outside Tolerance
cboe_europe_depthofbook_pitch_v6_49_display.outside_tolerance = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.outside_tolerance = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.outside_tolerance
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.outside_tolerance(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.outside_tolerance, range, value, display)

  return offset + length, value
end

-- Size: Indicative Shares
cboe_europe_depthofbook_pitch_v6_49_size_of.indicative_shares = 4

-- Display: Indicative Shares
cboe_europe_depthofbook_pitch_v6_49_display.indicative_shares = function(value)
  return "Indicative Shares: "..value
end

-- Dissect: Indicative Shares
cboe_europe_depthofbook_pitch_v6_49_dissect.indicative_shares = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.indicative_shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.indicative_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.indicative_shares, range, value, display)

  return offset + length, value
end

-- Size: Indicative Price
cboe_europe_depthofbook_pitch_v6_49_size_of.indicative_price = 4

-- Display: Indicative Price
cboe_europe_depthofbook_pitch_v6_49_display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
translate.indicative_price = function(raw)
  return raw/10000
end

-- Dissect: Indicative Price
cboe_europe_depthofbook_pitch_v6_49_dissect.indicative_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.indicative_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.indicative_price(raw)
  local display = cboe_europe_depthofbook_pitch_v6_49_display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
cboe_europe_depthofbook_pitch_v6_49_size_of.reference_price = 8

-- Display: Reference Price
cboe_europe_depthofbook_pitch_v6_49_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
translate.reference_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_europe_depthofbook_pitch_v6_49_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.reference_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.reference_price(raw)
  local display = cboe_europe_depthofbook_pitch_v6_49_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Update Message
cboe_europe_depthofbook_pitch_v6_49_size_of.auction_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.auction_type

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.reference_price

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.indicative_price

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.indicative_shares

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.outside_tolerance

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.includes_primary

  return index
end

-- Display: Auction Update Message
cboe_europe_depthofbook_pitch_v6_49_display.auction_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_europe_depthofbook_pitch_v6_49_dissect.auction_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 6 values
  index, auction_type = cboe_europe_depthofbook_pitch_v6_49_dissect.auction_type(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = cboe_europe_depthofbook_pitch_v6_49_dissect.reference_price(buffer, index, packet, parent)

  -- Indicative Price: 4 Byte Unsigned Fixed Width Integer
  index, indicative_price = cboe_europe_depthofbook_pitch_v6_49_dissect.indicative_price(buffer, index, packet, parent)

  -- Indicative Shares: 4 Byte Unsigned Fixed Width Integer
  index, indicative_shares = cboe_europe_depthofbook_pitch_v6_49_dissect.indicative_shares(buffer, index, packet, parent)

  -- Outside Tolerance: 1 Byte Ascii String Enum with 3 values
  index, outside_tolerance = cboe_europe_depthofbook_pitch_v6_49_dissect.outside_tolerance(buffer, index, packet, parent)

  -- Includes Primary: 1 Byte Ascii String Enum with 3 values
  index, includes_primary = cboe_europe_depthofbook_pitch_v6_49_dissect.includes_primary(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_europe_depthofbook_pitch_v6_49_dissect.auction_update_message = function(buffer, offset, packet, parent)
  if show.auction_update_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.auction_update_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.auction_update_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.auction_update_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Price Determination
cboe_europe_depthofbook_pitch_v6_49_size_of.price_determination = 1

-- Display: Price Determination
cboe_europe_depthofbook_pitch_v6_49_display.price_determination = function(value)
  if value == "0" then
    return "Price Determination: Normal (0)"
  end
  if value == "1" then
    return "Price Determination: Manual (1)"
  end

  return "Price Determination: Unknown("..value..")"
end

-- Dissect: Price Determination
cboe_europe_depthofbook_pitch_v6_49_dissect.price_determination = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.price_determination
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.price_determination(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.price_determination, range, value, display)

  return offset + length, value
end

-- Size: Statistic Type
cboe_europe_depthofbook_pitch_v6_49_size_of.statistic_type = 1

-- Display: Statistic Type
cboe_europe_depthofbook_pitch_v6_49_display.statistic_type = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.statistic_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.statistic_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.statistic_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Statistics Message
cboe_europe_depthofbook_pitch_v6_49_size_of.statistics_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.statistic_type

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_determination

  return index
end

-- Display: Statistics Message
cboe_europe_depthofbook_pitch_v6_49_display.statistics_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
cboe_europe_depthofbook_pitch_v6_49_dissect.statistics_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price Binary Long Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_long_price_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8(buffer, index, packet, parent)

  -- Statistic Type: 1 Byte Ascii String Enum with 5 values
  index, statistic_type = cboe_europe_depthofbook_pitch_v6_49_dissect.statistic_type(buffer, index, packet, parent)

  -- Price Determination: 1 Byte Ascii String Enum with 2 values
  index, price_determination = cboe_europe_depthofbook_pitch_v6_49_dissect.price_determination(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
cboe_europe_depthofbook_pitch_v6_49_dissect.statistics_message = function(buffer, offset, packet, parent)
  if show.statistics_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.statistics_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.statistics_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.statistics_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.statistics_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reserved
cboe_europe_depthofbook_pitch_v6_49_size_of.reserved = 3

-- Display: Reserved
cboe_europe_depthofbook_pitch_v6_49_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_europe_depthofbook_pitch_v6_49_dissect.reserved = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.reserved(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
cboe_europe_depthofbook_pitch_v6_49_size_of.trading_status = 1

-- Display: Trading Status
cboe_europe_depthofbook_pitch_v6_49_display.trading_status = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
cboe_europe_depthofbook_pitch_v6_49_size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trading_status

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.reserved

  return index
end

-- Display: Trading Status Message
cboe_europe_depthofbook_pitch_v6_49_display.trading_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 12 values
  index, trading_status = cboe_europe_depthofbook_pitch_v6_49_dissect.trading_status(buffer, index, packet, parent)

  -- Reserved: 3 Byte Ascii String
  index, reserved = cboe_europe_depthofbook_pitch_v6_49_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trading_status_message = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.trading_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.trading_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trading_status_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Transaction Begin Message
cboe_europe_depthofbook_pitch_v6_49_size_of.transaction_begin_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  return index
end

-- Display: Transaction Begin Message
cboe_europe_depthofbook_pitch_v6_49_display.transaction_begin_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_europe_depthofbook_pitch_v6_49_dissect.transaction_begin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_europe_depthofbook_pitch_v6_49_dissect.transaction_begin_message = function(buffer, offset, packet, parent)
  if show.transaction_begin_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.transaction_begin_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.transaction_begin_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.transaction_begin_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: End Of Session
cboe_europe_depthofbook_pitch_v6_49_size_of.end_of_session = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  return index
end

-- Display: End Of Session
cboe_europe_depthofbook_pitch_v6_49_display.end_of_session = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session
cboe_europe_depthofbook_pitch_v6_49_dissect.end_of_session_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session
cboe_europe_depthofbook_pitch_v6_49_dissect.end_of_session = function(buffer, offset, packet, parent)
  if show.end_of_session then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.end_of_session, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.end_of_session_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.end_of_session(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.end_of_session_fields(buffer, offset, packet, element)
  end
end

-- Size: Cboe Trade Flags
cboe_europe_depthofbook_pitch_v6_49_size_of.cboe_trade_flags = 1

-- Display: Cboe Trade Flags
cboe_europe_depthofbook_pitch_v6_49_display.cboe_trade_flags = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.cboe_trade_flags = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.cboe_trade_flags
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.cboe_trade_flags(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.cboe_trade_flags, range, value, display)

  return offset + length, value
end

-- Size: Currency
cboe_europe_depthofbook_pitch_v6_49_size_of.currency = 3

-- Display: Currency
cboe_europe_depthofbook_pitch_v6_49_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_europe_depthofbook_pitch_v6_49_dissect.currency = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.currency(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Execution Venue
cboe_europe_depthofbook_pitch_v6_49_size_of.execution_venue = 4

-- Display: Execution Venue
cboe_europe_depthofbook_pitch_v6_49_display.execution_venue = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_europe_depthofbook_pitch_v6_49_dissect.execution_venue = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.execution_venue
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.execution_venue(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Size: Trade Timestamp
cboe_europe_depthofbook_pitch_v6_49_size_of.trade_timestamp = 8

-- Display: Trade Timestamp
cboe_europe_depthofbook_pitch_v6_49_display.trade_timestamp = function(value)
  return "Trade Timestamp: "..value
end

-- Dissect: Trade Timestamp
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_timestamp = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.trade_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.trade_timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trade_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
cboe_europe_depthofbook_pitch_v6_49_size_of.trade_id = 8

-- Display: Trade Id
cboe_europe_depthofbook_pitch_v6_49_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Symbol Alphanumeric 12
cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_12 = 12

-- Display: Symbol Alphanumeric 12
cboe_europe_depthofbook_pitch_v6_49_display.symbol_alphanumeric_12 = function(value)
  return "Symbol Alphanumeric 12: "..value
end

-- Dissect: Symbol Alphanumeric 12
cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_12 = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_12
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.symbol_alphanumeric_12(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.symbol_alphanumeric_12, range, value, display)

  return offset + length, value
end

-- Size: Shares Binary 8
cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_8 = 8

-- Display: Shares Binary 8
cboe_europe_depthofbook_pitch_v6_49_display.shares_binary_8 = function(value)
  return "Shares Binary 8: "..value
end

-- Dissect: Shares Binary 8
cboe_europe_depthofbook_pitch_v6_49_dissect.shares_binary_8 = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.shares_binary_8(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.shares_binary_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Unknown Symbol Message
cboe_europe_depthofbook_pitch_v6_49_size_of.trade_unknown_symbol_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_12

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trade_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trade_timestamp

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.execution_venue

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.currency

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.cboe_trade_flags

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.extended_trade_flags

  return index
end

-- Display: Trade Unknown Symbol Message
cboe_europe_depthofbook_pitch_v6_49_display.trade_unknown_symbol_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Unknown Symbol Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_unknown_symbol_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Shares Binary 8: 8 Byte Unsigned Fixed Width Integer
  index, shares_binary_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.shares_binary_8(buffer, index, packet, parent)

  -- Symbol Alphanumeric 12: 12 Byte Ascii String
  index, symbol_alphanumeric_12 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_12(buffer, index, packet, parent)

  -- Price Binary Long Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_long_price_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_id(buffer, index, packet, parent)

  -- Trade Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, trade_timestamp = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_timestamp(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_europe_depthofbook_pitch_v6_49_dissect.execution_venue(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cboe_europe_depthofbook_pitch_v6_49_dissect.currency(buffer, index, packet, parent)

  -- Cboe Trade Flags: 1 Byte Ascii String Enum with 8 values
  index, cboe_trade_flags = cboe_europe_depthofbook_pitch_v6_49_dissect.cboe_trade_flags(buffer, index, packet, parent)

  -- Extended Trade Flags
  index, extended_trade_flags = cboe_europe_depthofbook_pitch_v6_49_dissect.extended_trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Unknown Symbol Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_unknown_symbol_message = function(buffer, offset, packet, parent)
  if show.trade_unknown_symbol_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trade_unknown_symbol_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_unknown_symbol_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.trade_unknown_symbol_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trade_unknown_symbol_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Extended Message
cboe_europe_depthofbook_pitch_v6_49_size_of.trade_extended_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trade_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trade_timestamp

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.execution_venue

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.currency

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.cboe_trade_flags

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.extended_trade_flags

  return index
end

-- Display: Trade Extended Message
cboe_europe_depthofbook_pitch_v6_49_display.trade_extended_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Extended Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_extended_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Shares Binary 8: 8 Byte Unsigned Fixed Width Integer
  index, shares_binary_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.shares_binary_8(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price Binary Long Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_long_price_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_id(buffer, index, packet, parent)

  -- Trade Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, trade_timestamp = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_timestamp(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_europe_depthofbook_pitch_v6_49_dissect.execution_venue(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cboe_europe_depthofbook_pitch_v6_49_dissect.currency(buffer, index, packet, parent)

  -- Cboe Trade Flags: 1 Byte Ascii String Enum with 8 values
  index, cboe_trade_flags = cboe_europe_depthofbook_pitch_v6_49_dissect.cboe_trade_flags(buffer, index, packet, parent)

  -- Extended Trade Flags
  index, extended_trade_flags = cboe_europe_depthofbook_pitch_v6_49_dissect.extended_trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Extended Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_extended_message = function(buffer, offset, packet, parent)
  if show.trade_extended_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trade_extended_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_extended_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.trade_extended_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trade_extended_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Algorithmic Trade
cboe_europe_depthofbook_pitch_v6_49_size_of.algorithmic_trade = 1

-- Display: Algorithmic Trade
cboe_europe_depthofbook_pitch_v6_49_display.algorithmic_trade = function(value)
  if value == "H" then
    return "Algorithmic Trade: Algorithmic Trade (H)"
  end
  if value == "-" then
    return "Algorithmic Trade: Nonalgorithmic Trade (-)"
  end

  return "Algorithmic Trade: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade
cboe_europe_depthofbook_pitch_v6_49_dissect.algorithmic_trade = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.algorithmic_trade
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.algorithmic_trade(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.algorithmic_trade, range, value, display)

  return offset + length, value
end

-- Size: Trade Types
cboe_europe_depthofbook_pitch_v6_49_size_of.trade_types = 1

-- Display: Trade Types
cboe_europe_depthofbook_pitch_v6_49_display.trade_types = function(value)
  return "Trade Types: "..value
end

-- Dissect: Trade Types
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_types = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.trade_types
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.trade_types(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trade_types, range, value, display)

  return offset + length, value
end

-- Size: Transaction Category
cboe_europe_depthofbook_pitch_v6_49_size_of.transaction_category = 1

-- Display: Transaction Category
cboe_europe_depthofbook_pitch_v6_49_display.transaction_category = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.transaction_category = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.transaction_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.transaction_category(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Trading Mode
cboe_europe_depthofbook_pitch_v6_49_size_of.trading_mode = 1

-- Display: Trading Mode
cboe_europe_depthofbook_pitch_v6_49_display.trading_mode = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.trading_mode = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.trading_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.trading_mode(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Market Mechanism
cboe_europe_depthofbook_pitch_v6_49_size_of.market_mechanism = 1

-- Display: Market Mechanism
cboe_europe_depthofbook_pitch_v6_49_display.market_mechanism = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.market_mechanism = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.market_mechanism
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.market_mechanism(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Flags
cboe_europe_depthofbook_pitch_v6_49_size_of.trade_flags = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.market_mechanism

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trading_mode

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.transaction_category

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trade_types

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.algorithmic_trade

  return index
end

-- Display: Trade Flags
cboe_europe_depthofbook_pitch_v6_49_display.trade_flags = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Flags
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_flags_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: 1 Byte Ascii String Enum with 7 values
  index, market_mechanism = cboe_europe_depthofbook_pitch_v6_49_dissect.market_mechanism(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 11 values
  index, trading_mode = cboe_europe_depthofbook_pitch_v6_49_dissect.trading_mode(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 13 values
  index, transaction_category = cboe_europe_depthofbook_pitch_v6_49_dissect.transaction_category(buffer, index, packet, parent)

  -- Trade Types: 1 Byte Ascii String
  index, trade_types = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_types(buffer, index, packet, parent)

  -- Algorithmic Trade: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_trade = cboe_europe_depthofbook_pitch_v6_49_dissect.algorithmic_trade(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Flags
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_flags = function(buffer, offset, packet, parent)
  if show.trade_flags then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trade_flags, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_flags_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.trade_flags(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trade_flags_fields(buffer, offset, packet, element)
  end
end

-- Size: Execution Id
cboe_europe_depthofbook_pitch_v6_49_size_of.execution_id = 8

-- Display: Execution Id
cboe_europe_depthofbook_pitch_v6_49_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_europe_depthofbook_pitch_v6_49_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Price Short
cboe_europe_depthofbook_pitch_v6_49_size_of.price_short = 2

-- Display: Price Short
cboe_europe_depthofbook_pitch_v6_49_display.price_short = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
translate.price_short = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_europe_depthofbook_pitch_v6_49_dissect.price_short = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.price_short
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.price_short(raw)
  local display = cboe_europe_depthofbook_pitch_v6_49_display.price_short(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.price_short, range, value, display)

  return offset + length, value
end

-- Size: Contracts Short
cboe_europe_depthofbook_pitch_v6_49_size_of.contracts_short = 2

-- Display: Contracts Short
cboe_europe_depthofbook_pitch_v6_49_display.contracts_short = function(value)
  return "Contracts Short: "..value
end

-- Dissect: Contracts Short
cboe_europe_depthofbook_pitch_v6_49_dissect.contracts_short = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.contracts_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.contracts_short(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.contracts_short, range, value, display)

  return offset + length, value
end

-- Size: Side Indicator
cboe_europe_depthofbook_pitch_v6_49_size_of.side_indicator = 1

-- Display: Side Indicator
cboe_europe_depthofbook_pitch_v6_49_display.side_indicator = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_europe_depthofbook_pitch_v6_49_dissect.side_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.side_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.side_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Id
cboe_europe_depthofbook_pitch_v6_49_size_of.order_id = 8

-- Display: Order Id
cboe_europe_depthofbook_pitch_v6_49_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_europe_depthofbook_pitch_v6_49_dissect.order_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Short Message
cboe_europe_depthofbook_pitch_v6_49_size_of.trade_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.side_indicator

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.contracts_short

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_short

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.execution_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trade_flags(buffer, offset + index)

  return index
end

-- Display: Trade Short Message
cboe_europe_depthofbook_pitch_v6_49_display.trade_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_depthofbook_pitch_v6_49_dissect.side_indicator(buffer, index, packet, parent)

  -- Contracts Short: 2 Byte Unsigned Fixed Width Integer
  index, contracts_short = cboe_europe_depthofbook_pitch_v6_49_dissect.contracts_short(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_europe_depthofbook_pitch_v6_49_dissect.price_short(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_depthofbook_pitch_v6_49_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_short_message = function(buffer, offset, packet, parent)
  if show.trade_short_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_short_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.trade_short_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trade_short_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Long Message
cboe_europe_depthofbook_pitch_v6_49_size_of.trade_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.side_indicator

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_4

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.execution_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trade_flags(buffer, offset + index)

  return index
end

-- Display: Trade Long Message
cboe_europe_depthofbook_pitch_v6_49_display.trade_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_depthofbook_pitch_v6_49_dissect.side_indicator(buffer, index, packet, parent)

  -- Shares Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, shares_binary_4 = cboe_europe_depthofbook_pitch_v6_49_dissect.shares_binary_4(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price Binary Long Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_long_price_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_depthofbook_pitch_v6_49_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_europe_depthofbook_pitch_v6_49_dissect.trade_long_message = function(buffer, offset, packet, parent)
  if show.trade_long_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.trade_long_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.trade_long_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trade_long_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Delete Order Message
cboe_europe_depthofbook_pitch_v6_49_size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  return index
end

-- Display: Delete Order Message
cboe_europe_depthofbook_pitch_v6_49_display.delete_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_europe_depthofbook_pitch_v6_49_dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_europe_depthofbook_pitch_v6_49_dissect.delete_order_message = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.delete_order_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.delete_order_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.delete_order_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Price Binary Short Price 2
cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_short_price_2 = 2

-- Display: Price Binary Short Price 2
cboe_europe_depthofbook_pitch_v6_49_display.price_binary_short_price_2 = function(value)
  return "Price Binary Short Price 2: "..value
end

-- Translate: Price Binary Short Price 2
translate.price_binary_short_price_2 = function(raw)
  return raw/100
end

-- Dissect: Price Binary Short Price 2
cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_short_price_2 = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_short_price_2
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.price_binary_short_price_2(raw)
  local display = cboe_europe_depthofbook_pitch_v6_49_display.price_binary_short_price_2(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.price_binary_short_price_2, range, value, display)

  return offset + length, value
end

-- Size: Shares Binary 2
cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_2 = 2

-- Display: Shares Binary 2
cboe_europe_depthofbook_pitch_v6_49_display.shares_binary_2 = function(value)
  return "Shares Binary 2: "..value
end

-- Dissect: Shares Binary 2
cboe_europe_depthofbook_pitch_v6_49_dissect.shares_binary_2 = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.shares_binary_2(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.shares_binary_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Short Message
cboe_europe_depthofbook_pitch_v6_49_size_of.modify_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_2

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_short_price_2

  return index
end

-- Display: Modify Order Short Message
cboe_europe_depthofbook_pitch_v6_49_display.modify_order_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Shares Binary 2: 2 Byte Unsigned Fixed Width Integer
  index, shares_binary_2 = cboe_europe_depthofbook_pitch_v6_49_dissect.shares_binary_2(buffer, index, packet, parent)

  -- Price Binary Short Price 2: 2 Byte Unsigned Fixed Width Integer
  index, price_binary_short_price_2 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_short_price_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_short_message = function(buffer, offset, packet, parent)
  if show.modify_order_short_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_short_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.modify_order_short_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_short_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Modify Order Long Message
cboe_europe_depthofbook_pitch_v6_49_size_of.modify_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.shares_binary_4

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8

  return index
end

-- Display: Modify Order Long Message
cboe_europe_depthofbook_pitch_v6_49_display.modify_order_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Shares Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, shares_binary_4 = cboe_europe_depthofbook_pitch_v6_49_dissect.shares_binary_4(buffer, index, packet, parent)

  -- Price Binary Long Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_long_price_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_long_message = function(buffer, offset, packet, parent)
  if show.modify_order_long_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_long_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.modify_order_long_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_long_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Canceled Shares Binary 2
cboe_europe_depthofbook_pitch_v6_49_size_of.canceled_shares_binary_2 = 2

-- Display: Canceled Shares Binary 2
cboe_europe_depthofbook_pitch_v6_49_display.canceled_shares_binary_2 = function(value)
  return "Canceled Shares Binary 2: "..value
end

-- Dissect: Canceled Shares Binary 2
cboe_europe_depthofbook_pitch_v6_49_dissect.canceled_shares_binary_2 = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.canceled_shares_binary_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.canceled_shares_binary_2(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.canceled_shares_binary_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Short Message
cboe_europe_depthofbook_pitch_v6_49_size_of.reduce_size_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.canceled_shares_binary_2

  return index
end

-- Display: Reduce Size Short Message
cboe_europe_depthofbook_pitch_v6_49_display.reduce_size_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Shares Binary 2: 2 Byte Unsigned Fixed Width Integer
  index, canceled_shares_binary_2 = cboe_europe_depthofbook_pitch_v6_49_dissect.canceled_shares_binary_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_short_message = function(buffer, offset, packet, parent)
  if show.reduce_size_short_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_short_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.reduce_size_short_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_short_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Canceled Shares Binary 4
cboe_europe_depthofbook_pitch_v6_49_size_of.canceled_shares_binary_4 = 4

-- Display: Canceled Shares Binary 4
cboe_europe_depthofbook_pitch_v6_49_display.canceled_shares_binary_4 = function(value)
  return "Canceled Shares Binary 4: "..value
end

-- Dissect: Canceled Shares Binary 4
cboe_europe_depthofbook_pitch_v6_49_dissect.canceled_shares_binary_4 = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.canceled_shares_binary_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.canceled_shares_binary_4(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.canceled_shares_binary_4, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Long Message
cboe_europe_depthofbook_pitch_v6_49_size_of.reduce_size_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.canceled_shares_binary_4

  return index
end

-- Display: Reduce Size Long Message
cboe_europe_depthofbook_pitch_v6_49_display.reduce_size_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Shares Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, canceled_shares_binary_4 = cboe_europe_depthofbook_pitch_v6_49_dissect.canceled_shares_binary_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_long_message = function(buffer, offset, packet, parent)
  if show.reduce_size_long_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_long_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.reduce_size_long_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_long_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Ex Cum Dividend
cboe_europe_depthofbook_pitch_v6_49_size_of.ex_cum_dividend = 1

-- Display: Ex Cum Dividend
cboe_europe_depthofbook_pitch_v6_49_display.ex_cum_dividend = function(value)
  if value == "E" then
    return "Ex Cum Dividend: Ex Cum Special Dividend If Optionally Set By Reporting Party (E)"
  end
  if value == "-" then
    return "Ex Cum Dividend: Not Specified (-)"
  end

  return "Ex Cum Dividend: Unknown("..value..")"
end

-- Dissect: Ex Cum Dividend
cboe_europe_depthofbook_pitch_v6_49_dissect.ex_cum_dividend = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.ex_cum_dividend
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.ex_cum_dividend(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.ex_cum_dividend, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Flags
cboe_europe_depthofbook_pitch_v6_49_size_of.execution_flags = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.market_mechanism

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.trading_mode

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.ex_cum_dividend

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.algorithmic_trade

  return index
end

-- Display: Execution Flags
cboe_europe_depthofbook_pitch_v6_49_display.execution_flags = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Flags
cboe_europe_depthofbook_pitch_v6_49_dissect.execution_flags_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: 1 Byte Ascii String Enum with 7 values
  index, market_mechanism = cboe_europe_depthofbook_pitch_v6_49_dissect.market_mechanism(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 11 values
  index, trading_mode = cboe_europe_depthofbook_pitch_v6_49_dissect.trading_mode(buffer, index, packet, parent)

  -- Ex Cum Dividend: 1 Byte Ascii String Enum with 2 values
  index, ex_cum_dividend = cboe_europe_depthofbook_pitch_v6_49_dissect.ex_cum_dividend(buffer, index, packet, parent)

  -- Algorithmic Trade: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_trade = cboe_europe_depthofbook_pitch_v6_49_dissect.algorithmic_trade(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Flags
cboe_europe_depthofbook_pitch_v6_49_dissect.execution_flags = function(buffer, offset, packet, parent)
  if show.execution_flags then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.execution_flags, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.execution_flags_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.execution_flags(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.execution_flags_fields(buffer, offset, packet, element)
  end
end

-- Size: Remaining Shares
cboe_europe_depthofbook_pitch_v6_49_size_of.remaining_shares = 4

-- Display: Remaining Shares
cboe_europe_depthofbook_pitch_v6_49_display.remaining_shares = function(value)
  return "Remaining Shares: "..value
end

-- Dissect: Remaining Shares
cboe_europe_depthofbook_pitch_v6_49_dissect.remaining_shares = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.remaining_shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.remaining_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.remaining_shares, range, value, display)

  return offset + length, value
end

-- Size: Executed Shares
cboe_europe_depthofbook_pitch_v6_49_size_of.executed_shares = 4

-- Display: Executed Shares
cboe_europe_depthofbook_pitch_v6_49_display.executed_shares = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_europe_depthofbook_pitch_v6_49_dissect.executed_shares = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.executed_shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.executed_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed At Price Size Message
cboe_europe_depthofbook_pitch_v6_49_size_of.order_executed_at_price_size_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.executed_shares

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.remaining_shares

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.execution_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.execution_flags(buffer, offset + index)

  return index
end

-- Display: Order Executed At Price Size Message
cboe_europe_depthofbook_pitch_v6_49_display.order_executed_at_price_size_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_at_price_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = cboe_europe_depthofbook_pitch_v6_49_dissect.executed_shares(buffer, index, packet, parent)

  -- Remaining Shares: 4 Byte Unsigned Fixed Width Integer
  index, remaining_shares = cboe_europe_depthofbook_pitch_v6_49_dissect.remaining_shares(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_depthofbook_pitch_v6_49_dissect.execution_id(buffer, index, packet, parent)

  -- Price Binary Long Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_long_price_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_europe_depthofbook_pitch_v6_49_dissect.execution_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_at_price_size_message = function(buffer, offset, packet, parent)
  if show.order_executed_at_price_size_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.order_executed_at_price_size_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Executed Message
cboe_europe_depthofbook_pitch_v6_49_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.executed_shares

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.execution_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.execution_flags(buffer, offset + index)

  return index
end

-- Display: Order Executed Message
cboe_europe_depthofbook_pitch_v6_49_display.order_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = cboe_europe_depthofbook_pitch_v6_49_dissect.executed_shares(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_depthofbook_pitch_v6_49_dissect.execution_id(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_europe_depthofbook_pitch_v6_49_dissect.execution_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_message = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.order_executed_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Participant Id
cboe_europe_depthofbook_pitch_v6_49_size_of.participant_id = 4

-- Display: Participant Id
cboe_europe_depthofbook_pitch_v6_49_display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_europe_depthofbook_pitch_v6_49_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Quantity
cboe_europe_depthofbook_pitch_v6_49_size_of.quantity = 4

-- Display: Quantity
cboe_europe_depthofbook_pitch_v6_49_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_europe_depthofbook_pitch_v6_49_dissect.quantity = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Expanded Message
cboe_europe_depthofbook_pitch_v6_49_size_of.add_order_expanded_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.side_indicator

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.quantity

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.add_order_flags

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.participant_id

  return index
end

-- Display: Add Order Expanded Message
cboe_europe_depthofbook_pitch_v6_49_display.add_order_expanded_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_depthofbook_pitch_v6_49_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_europe_depthofbook_pitch_v6_49_dissect.quantity(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price Binary Long Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_long_price_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8(buffer, index, packet, parent)

  -- Add Order Flags
  index, add_order_flags = cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_flags(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_europe_depthofbook_pitch_v6_49_dissect.participant_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_expanded_message = function(buffer, offset, packet, parent)
  if show.add_order_expanded_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_expanded_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.add_order_expanded_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_expanded_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Symbol Short
cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_short = 6

-- Display: Symbol Short
cboe_europe_depthofbook_pitch_v6_49_display.symbol_short = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_short = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_short
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.symbol_short(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Size: Quantity Short
cboe_europe_depthofbook_pitch_v6_49_size_of.quantity_short = 2

-- Display: Quantity Short
cboe_europe_depthofbook_pitch_v6_49_display.quantity_short = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_europe_depthofbook_pitch_v6_49_dissect.quantity_short = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Short Message
cboe_europe_depthofbook_pitch_v6_49_size_of.add_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.side_indicator

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.quantity_short

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_short

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_short

  return index
end

-- Display: Add Order Short Message
cboe_europe_depthofbook_pitch_v6_49_display.add_order_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_depthofbook_pitch_v6_49_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_europe_depthofbook_pitch_v6_49_dissect.quantity_short(buffer, index, packet, parent)

  -- Symbol Short: 6 Byte Ascii String
  index, symbol_short = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_short(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_europe_depthofbook_pitch_v6_49_dissect.price_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_short_message = function(buffer, offset, packet, parent)
  if show.add_order_short_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_short_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.add_order_short_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_short_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Add Order Long Message
cboe_europe_depthofbook_pitch_v6_49_size_of.add_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.order_id

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.side_indicator

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.quantity

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.price_binary_long_price_8

  return index
end

-- Display: Add Order Long Message
cboe_europe_depthofbook_pitch_v6_49_display.add_order_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_depthofbook_pitch_v6_49_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_depthofbook_pitch_v6_49_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_europe_depthofbook_pitch_v6_49_dissect.quantity(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price Binary Long Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_long_price_8 = cboe_europe_depthofbook_pitch_v6_49_dissect.price_binary_long_price_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_long_message = function(buffer, offset, packet, parent)
  if show.add_order_long_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_long_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.add_order_long_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_long_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Unit Clear Message
cboe_europe_depthofbook_pitch_v6_49_size_of.unit_clear_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time_offset

  return index
end

-- Display: Unit Clear Message
cboe_europe_depthofbook_pitch_v6_49_display.unit_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_europe_depthofbook_pitch_v6_49_dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_depthofbook_pitch_v6_49_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_europe_depthofbook_pitch_v6_49_dissect.unit_clear_message = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.unit_clear_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.unit_clear_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.unit_clear_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Time
cboe_europe_depthofbook_pitch_v6_49_size_of.time = 4

-- Display: Time
cboe_europe_depthofbook_pitch_v6_49_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_europe_depthofbook_pitch_v6_49_dissect.time = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
cboe_europe_depthofbook_pitch_v6_49_size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.time

  return index
end

-- Display: Time Message
cboe_europe_depthofbook_pitch_v6_49_display.time_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_europe_depthofbook_pitch_v6_49_dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_europe_depthofbook_pitch_v6_49_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_europe_depthofbook_pitch_v6_49_dissect.time_message = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.time_message, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.time_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.time_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.time_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
cboe_europe_depthofbook_pitch_v6_49_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.time_message(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.unit_clear_message(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x40 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.add_order_long_message(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.add_order_short_message(buffer, offset)
  end
  -- Size of Add Order Expanded Message
  if message_type == 0x2f then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.add_order_expanded_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.order_executed_at_price_size_message(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.reduce_size_long_message(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.reduce_size_short_message(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.modify_order_long_message(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.modify_order_short_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.delete_order_message(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x41 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.trade_long_message(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.trade_short_message(buffer, offset)
  end
  -- Size of Trade Extended Message
  if message_type == 0x32 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.trade_extended_message(buffer, offset)
  end
  -- Size of Trade Unknown Symbol Message
  if message_type == 0x35 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.trade_unknown_symbol_message(buffer, offset)
  end
  -- Size of End Of Session
  if message_type == 0x2D then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.end_of_session(buffer, offset)
  end
  -- Size of Transaction Begin Message
  if message_type == 0xBC then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.transaction_begin_message(buffer, offset)
  end
  -- Size of Transaction Begin Message
  if message_type == 0xBD then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.transaction_begin_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.trading_status_message(buffer, offset)
  end
  -- Size of Statistics Message
  if message_type == 0x34 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.statistics_message(buffer, offset)
  end
  -- Size of Auction Update Message
  if message_type == 0xAC then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.auction_update_message(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.auction_summary_message(buffer, offset)
  end
  -- Size of Index Quote Message
  if message_type == 0xD8 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.index_quote_message(buffer, offset)
  end
  -- Size of Index Quote Edsp Message
  if message_type == 0xD9 then
    return cboe_europe_depthofbook_pitch_v6_49_size_of.index_quote_edsp_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_europe_depthofbook_pitch_v6_49_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_europe_depthofbook_pitch_v6_49_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x40 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2f then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.add_order_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.order_executed_at_price_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.reduce_size_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.modify_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x41 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trade_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trade_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Extended Message
  if message_type == 0x32 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trade_extended_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Unknown Symbol Message
  if message_type == 0x35 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trade_unknown_symbol_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_type == 0x2D then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.end_of_session(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.transaction_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBD then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.transaction_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x34 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.statistics_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0xAC then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.auction_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.auction_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Index Quote Message
  if message_type == 0xD8 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Index Quote Edsp Message
  if message_type == 0xD9 then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.index_quote_edsp_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_europe_depthofbook_pitch_v6_49_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_europe_depthofbook_pitch_v6_49_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_europe_depthofbook_pitch_v6_49_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_europe_depthofbook_pitch_v6_49_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.payload, range, display)

  return cboe_europe_depthofbook_pitch_v6_49_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
cboe_europe_depthofbook_pitch_v6_49_size_of.message_type = 1

-- Display: Message Type
cboe_europe_depthofbook_pitch_v6_49_display.message_type = function(value)
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
cboe_europe_depthofbook_pitch_v6_49_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_europe_depthofbook_pitch_v6_49_size_of.message_length = 1

-- Display: Message Length
cboe_europe_depthofbook_pitch_v6_49_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_europe_depthofbook_pitch_v6_49_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_europe_depthofbook_pitch_v6_49_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.message_length

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.message_type

  return index
end

-- Display: Message Header
cboe_europe_depthofbook_pitch_v6_49_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_europe_depthofbook_pitch_v6_49_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_europe_depthofbook_pitch_v6_49_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = cboe_europe_depthofbook_pitch_v6_49_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_europe_depthofbook_pitch_v6_49_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.message_header, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
cboe_europe_depthofbook_pitch_v6_49_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_europe_depthofbook_pitch_v6_49_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_europe_depthofbook_pitch_v6_49_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = cboe_europe_depthofbook_pitch_v6_49_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_europe_depthofbook_pitch_v6_49_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.message, buffer(offset, 0))
    local current = cboe_europe_depthofbook_pitch_v6_49_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_europe_depthofbook_pitch_v6_49_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Sequence
cboe_europe_depthofbook_pitch_v6_49_size_of.sequence = 4

-- Display: Sequence
cboe_europe_depthofbook_pitch_v6_49_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_europe_depthofbook_pitch_v6_49_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_europe_depthofbook_pitch_v6_49_size_of.unit = 1

-- Display: Unit
cboe_europe_depthofbook_pitch_v6_49_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_europe_depthofbook_pitch_v6_49_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_europe_depthofbook_pitch_v6_49_size_of.count = 1

-- Display: Count
cboe_europe_depthofbook_pitch_v6_49_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_europe_depthofbook_pitch_v6_49_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_europe_depthofbook_pitch_v6_49_size_of.length = 2

-- Display: Length
cboe_europe_depthofbook_pitch_v6_49_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_europe_depthofbook_pitch_v6_49_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_europe_depthofbook_pitch_v6_49_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_depthofbook_pitch_v6_49_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_europe_depthofbook_pitch_v6_49_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.length

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.count

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.unit

  index = index + cboe_europe_depthofbook_pitch_v6_49_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_europe_depthofbook_pitch_v6_49_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_europe_depthofbook_pitch_v6_49_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_europe_depthofbook_pitch_v6_49_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_europe_depthofbook_pitch_v6_49_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_europe_depthofbook_pitch_v6_49_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_europe_depthofbook_pitch_v6_49_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_europe_depthofbook_pitch_v6_49_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_europe_depthofbook_pitch_v6_49.fields.packet_header, buffer(offset, 0))
    local index = cboe_europe_depthofbook_pitch_v6_49_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_europe_depthofbook_pitch_v6_49_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_europe_depthofbook_pitch_v6_49_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
cboe_europe_depthofbook_pitch_v6_49_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_europe_depthofbook_pitch_v6_49_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_europe_depthofbook_pitch_v6_49_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_europe_depthofbook_pitch_v6_49.init()
end

-- Dissector for Cboe Europe DepthOfBook Pitch 6.49
function cboe_europe_depthofbook_pitch_v6_49.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_europe_depthofbook_pitch_v6_49.name

  -- Dissect protocol
  local protocol = parent:add(cboe_europe_depthofbook_pitch_v6_49, buffer(), cboe_europe_depthofbook_pitch_v6_49.description, "("..buffer:len().." Bytes)")
  return cboe_europe_depthofbook_pitch_v6_49_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_europe_depthofbook_pitch_v6_49)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_europe_depthofbook_pitch_v6_49_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Europe DepthOfBook Pitch 6.49
local function cboe_europe_depthofbook_pitch_v6_49_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_europe_depthofbook_pitch_v6_49_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_europe_depthofbook_pitch_v6_49
  cboe_europe_depthofbook_pitch_v6_49.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Europe DepthOfBook Pitch 6.49
cboe_europe_depthofbook_pitch_v6_49:register_heuristic("udp", cboe_europe_depthofbook_pitch_v6_49_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
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
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
