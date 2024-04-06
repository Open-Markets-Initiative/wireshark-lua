-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Futures DepthOfBook Pitch 1.1.12 Protocol
local cboe_futures_depthofbook_pitch_v1_1_12 = Proto("Cboe.Futures.DepthOfBook.Pitch.v1.1.12.Lua", "Cboe Futures DepthOfBook Pitch 1.1.12")

-- Component Tables
local show = {}
local format = {}
local cboe_futures_depthofbook_pitch_v1_1_12_display = {}
local cboe_futures_depthofbook_pitch_v1_1_12_dissect = {}
local cboe_futures_depthofbook_pitch_v1_1_12_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Futures DepthOfBook Pitch 1.1.12 Fields
cboe_futures_depthofbook_pitch_v1_1_12.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.futures.depthofbook.pitch.v1.1.12.addorderlongmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.futures.depthofbook.pitch.v1.1.12.addordershortmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.block_volume = ProtoField.new("Block Volume", "cboe.futures.depthofbook.pitch.v1.1.12.blockvolume", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.canceled_long_quantity = ProtoField.new("Canceled Long Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.canceledlongquantity", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.canceled_short_quantity = ProtoField.new("Canceled Short Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.canceledshortquantity", ftypes.UINT16)
cboe_futures_depthofbook_pitch_v1_1_12.fields.close_price = ProtoField.new("Close Price", "cboe.futures.depthofbook.pitch.v1.1.12.closeprice", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.contract_date = ProtoField.new("Contract Date", "cboe.futures.depthofbook.pitch.v1.1.12.contractdate", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.contract_size = ProtoField.new("Contract Size", "cboe.futures.depthofbook.pitch.v1.1.12.contractsize", ftypes.UINT16)
cboe_futures_depthofbook_pitch_v1_1_12.fields.count = ProtoField.new("Count", "cboe.futures.depthofbook.pitch.v1.1.12.count", ftypes.UINT8)
cboe_futures_depthofbook_pitch_v1_1_12.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.futures.depthofbook.pitch.v1.1.12.deleteordermessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.discount_factor = ProtoField.new("Discount Factor", "cboe.futures.depthofbook.pitch.v1.1.12.discountfactor", ftypes.INT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.futures.depthofbook.pitch.v1.1.12.ecrpvolume", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.end_of_day_summary_message = ProtoField.new("End Of Day Summary Message", "cboe.futures.depthofbook.pitch.v1.1.12.endofdaysummarymessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.futures.depthofbook.pitch.v1.1.12.endofsessionmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.epoch = ProtoField.new("Epoch", "cboe.futures.depthofbook.pitch.v1.1.12.epoch", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.executedquantity", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.execution_id = ProtoField.new("Execution Id", "cboe.futures.depthofbook.pitch.v1.1.12.executionid", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.expiration_date = ProtoField.new("Expiration Date", "cboe.futures.depthofbook.pitch.v1.1.12.expirationdate", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.fed_funds_rate = ProtoField.new("Fed Funds Rate", "cboe.futures.depthofbook.pitch.v1.1.12.fedfundsrate", ftypes.INT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.future_block = ProtoField.new("Future Block", "cboe.futures.depthofbook.pitch.v1.1.12.futureblock", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.future_leg = ProtoField.new("Future Leg", "cboe.futures.depthofbook.pitch.v1.1.12.futureleg", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.futures_flags = ProtoField.new("Futures Flags", "cboe.futures.depthofbook.pitch.v1.1.12.futuresflags", ftypes.UINT8)
cboe_futures_depthofbook_pitch_v1_1_12.fields.futures_instrument_definition_message = ProtoField.new("Futures Instrument Definition Message", "cboe.futures.depthofbook.pitch.v1.1.12.futuresinstrumentdefinitionmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price = ProtoField.new("High Price", "cboe.futures.depthofbook.pitch.v1.1.12.highprice", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price_is_bid = ProtoField.new("High Price Is Bid", "cboe.futures.depthofbook.pitch.v1.1.12.highpriceisbid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price_valid = ProtoField.new("High Price Valid", "cboe.futures.depthofbook.pitch.v1.1.12.highpricevalid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
cboe_futures_depthofbook_pitch_v1_1_12.fields.initial_strike = ProtoField.new("Initial Strike", "cboe.futures.depthofbook.pitch.v1.1.12.initialstrike", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.issue = ProtoField.new("Issue", "cboe.futures.depthofbook.pitch.v1.1.12.issue", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_count = ProtoField.new("Leg Count", "cboe.futures.depthofbook.pitch.v1.1.12.legcount", ftypes.UINT8)
cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_offset = ProtoField.new("Leg Offset", "cboe.futures.depthofbook.pitch.v1.1.12.legoffset", ftypes.UINT8)
cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.futures.depthofbook.pitch.v1.1.12.legratio", ftypes.INT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.futures.depthofbook.pitch.v1.1.12.legsymbol", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.length = ProtoField.new("Length", "cboe.futures.depthofbook.pitch.v1.1.12.length", ftypes.UINT16)
cboe_futures_depthofbook_pitch_v1_1_12.fields.listing_state = ProtoField.new("Listing State", "cboe.futures.depthofbook.pitch.v1.1.12.listingstate", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.long_price = ProtoField.new("Long Price", "cboe.futures.depthofbook.pitch.v1.1.12.longprice", ftypes.DOUBLE)
cboe_futures_depthofbook_pitch_v1_1_12.fields.long_quantity = ProtoField.new("Long Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.longquantity", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price = ProtoField.new("Low Price", "cboe.futures.depthofbook.pitch.v1.1.12.lowprice", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price_is_offer = ProtoField.new("Low Price Is Offer", "cboe.futures.depthofbook.pitch.v1.1.12.lowpriceisoffer", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price_valid = ProtoField.new("Low Price Valid", "cboe.futures.depthofbook.pitch.v1.1.12.lowpricevalid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
cboe_futures_depthofbook_pitch_v1_1_12.fields.message = ProtoField.new("Message", "cboe.futures.depthofbook.pitch.v1.1.12.message", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.message_header = ProtoField.new("Message Header", "cboe.futures.depthofbook.pitch.v1.1.12.messageheader", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.message_length = ProtoField.new("Message Length", "cboe.futures.depthofbook.pitch.v1.1.12.messagelength", ftypes.UINT8)
cboe_futures_depthofbook_pitch_v1_1_12.fields.message_type = ProtoField.new("Message Type", "cboe.futures.depthofbook.pitch.v1.1.12.messagetype", ftypes.UINT8)
cboe_futures_depthofbook_pitch_v1_1_12.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.futures.depthofbook.pitch.v1.1.12.midnightreference", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.futures.depthofbook.pitch.v1.1.12.modifyorderlongmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.futures.depthofbook.pitch.v1.1.12.modifyordershortmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.num_elapsed_returns = ProtoField.new("Num Elapsed Returns", "cboe.futures.depthofbook.pitch.v1.1.12.numelapsedreturns", ftypes.UINT16)
cboe_futures_depthofbook_pitch_v1_1_12.fields.num_expected_prices = ProtoField.new("Num Expected Prices", "cboe.futures.depthofbook.pitch.v1.1.12.numexpectedprices", ftypes.UINT16)
cboe_futures_depthofbook_pitch_v1_1_12.fields.offer_close_valid = ProtoField.new("Offer Close Valid", "cboe.futures.depthofbook.pitch.v1.1.12.offerclosevalid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
cboe_futures_depthofbook_pitch_v1_1_12.fields.open_interest = ProtoField.new("Open Interest", "cboe.futures.depthofbook.pitch.v1.1.12.openinterest", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.open_price = ProtoField.new("Open Price", "cboe.futures.depthofbook.pitch.v1.1.12.openprice", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.futures.depthofbook.pitch.v1.1.12.orderexecutedmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.order_id = ProtoField.new("Order Id", "cboe.futures.depthofbook.pitch.v1.1.12.orderid", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.packet = ProtoField.new("Packet", "cboe.futures.depthofbook.pitch.v1.1.12.packet", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.packet_header = ProtoField.new("Packet Header", "cboe.futures.depthofbook.pitch.v1.1.12.packetheader", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.payload = ProtoField.new("Payload", "cboe.futures.depthofbook.pitch.v1.1.12.payload", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.previous_armvm = ProtoField.new("Previous Armvm", "cboe.futures.depthofbook.pitch.v1.1.12.previousarmvm", ftypes.INT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.previous_settlement = ProtoField.new("Previous Settlement", "cboe.futures.depthofbook.pitch.v1.1.12.previoussettlement", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.price_increment = ProtoField.new("Price Increment", "cboe.futures.depthofbook.pitch.v1.1.12.priceincrement", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.realized_variance = ProtoField.new("Realized Variance", "cboe.futures.depthofbook.pitch.v1.1.12.realizedvariance", ftypes.INT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.futures.depthofbook.pitch.v1.1.12.reducesizelongmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.futures.depthofbook.pitch.v1.1.12.reducesizeshortmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.report_symbol = ProtoField.new("Report Symbol", "cboe.futures.depthofbook.pitch.v1.1.12.reportsymbol", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.futures.depthofbook.pitch.v1.1.12.reserved2", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.futures.depthofbook.pitch.v1.1.12.reserved3", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.futures.depthofbook.pitch.v1.1.12.reservedflags", ftypes.UINT8, nil, base.DEC, 0xFE00)
cboe_futures_depthofbook_pitch_v1_1_12.fields.sequence = ProtoField.new("Sequence", "cboe.futures.depthofbook.pitch.v1.1.12.sequence", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.futures.depthofbook.pitch.v1.1.12.settlementmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.futures.depthofbook.pitch.v1.1.12.settlementprice", ftypes.UINT64)
cboe_futures_depthofbook_pitch_v1_1_12.fields.short_price = ProtoField.new("Short Price", "cboe.futures.depthofbook.pitch.v1.1.12.shortprice", ftypes.DOUBLE)
cboe_futures_depthofbook_pitch_v1_1_12.fields.short_quantity = ProtoField.new("Short Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.shortquantity", ftypes.UINT16)
cboe_futures_depthofbook_pitch_v1_1_12.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.futures.depthofbook.pitch.v1.1.12.sideindicator", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.standard = ProtoField.new("Standard", "cboe.futures.depthofbook.pitch.v1.1.12.standard", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.summary_flags = ProtoField.new("Summary Flags", "cboe.futures.depthofbook.pitch.v1.1.12.summaryflags", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.symbol = ProtoField.new("Symbol", "cboe.futures.depthofbook.pitch.v1.1.12.symbol", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.time = ProtoField.new("Time", "cboe.futures.depthofbook.pitch.v1.1.12.time", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.time_message = ProtoField.new("Time Message", "cboe.futures.depthofbook.pitch.v1.1.12.timemessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.time_offset = ProtoField.new("Time Offset", "cboe.futures.depthofbook.pitch.v1.1.12.timeoffset", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.futures.depthofbook.pitch.v1.1.12.timereferencemessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.total_volume = ProtoField.new("Total Volume", "cboe.futures.depthofbook.pitch.v1.1.12.totalvolume", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.futures.depthofbook.pitch.v1.1.12.tradebreakmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.futures.depthofbook.pitch.v1.1.12.tradecondition", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_date = ProtoField.new("Trade Date", "cboe.futures.depthofbook.pitch.v1.1.12.tradedate", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.futures.depthofbook.pitch.v1.1.12.tradelongmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.futures.depthofbook.pitch.v1.1.12.tradeshortmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.trading_status = ProtoField.new("Trading Status", "cboe.futures.depthofbook.pitch.v1.1.12.tradingstatus", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.futures.depthofbook.pitch.v1.1.12.tradingstatusmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.transaction_begin = ProtoField.new("Transaction Begin", "cboe.futures.depthofbook.pitch.v1.1.12.transactionbegin", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.transaction_end = ProtoField.new("Transaction End", "cboe.futures.depthofbook.pitch.v1.1.12.transactionend", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.unit = ProtoField.new("Unit", "cboe.futures.depthofbook.pitch.v1.1.12.unit", ftypes.UINT8)
cboe_futures_depthofbook_pitch_v1_1_12.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.futures.depthofbook.pitch.v1.1.12.unitclearmessage", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.unit_timestamp = ProtoField.new("Unit Timestamp", "cboe.futures.depthofbook.pitch.v1.1.12.unittimestamp", ftypes.UINT32)
cboe_futures_depthofbook_pitch_v1_1_12.fields.variance = ProtoField.new("Variance", "cboe.futures.depthofbook.pitch.v1.1.12.variance", ftypes.STRING)
cboe_futures_depthofbook_pitch_v1_1_12.fields.variance_block_offset = ProtoField.new("Variance Block Offset", "cboe.futures.depthofbook.pitch.v1.1.12.varianceblockoffset", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Futures DepthOfBook Pitch 1.1.12 Element Dissection Options
show.add_order_long_message = true
show.add_order_short_message = true
show.delete_order_message = true
show.end_of_day_summary_message = true
show.end_of_session_message = true
show.future_leg = true
show.futures_instrument_definition_message = true
show.message = true
show.message_header = true
show.modify_order_long_message = true
show.modify_order_short_message = true
show.order_executed_message = true
show.packet = true
show.packet_header = true
show.reduce_size_long_message = true
show.reduce_size_short_message = true
show.settlement_message = true
show.standard = true
show.summary_flags = true
show.time_message = true
show.time_reference_message = true
show.trade_break_message = true
show.trade_long_message = true
show.trade_short_message = true
show.trading_status_message = true
show.transaction_begin = true
show.transaction_end = true
show.unit_clear_message = true
show.variance = true
show.future_block = false
show.payload = false

-- Register Cboe Futures DepthOfBook Pitch 1.1.12 Show Options
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_day_summary_message = Pref.bool("Show End Of Day Summary Message", show.end_of_day_summary_message, "Parse and add End Of Day Summary Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_leg = Pref.bool("Show Future Leg", show.future_leg, "Parse and add Future Leg to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_futures_instrument_definition_message = Pref.bool("Show Futures Instrument Definition Message", show.futures_instrument_definition_message, "Parse and add Futures Instrument Definition Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_settlement_message = Pref.bool("Show Settlement Message", show.settlement_message, "Parse and add Settlement Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_standard = Pref.bool("Show Standard", show.standard, "Parse and add Standard to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_summary_flags = Pref.bool("Show Summary Flags", show.summary_flags, "Parse and add Summary Flags to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_reference_message = Pref.bool("Show Time Reference Message", show.time_reference_message, "Parse and add Time Reference Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_begin = Pref.bool("Show Transaction Begin", show.transaction_begin, "Parse and add Transaction Begin to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_end = Pref.bool("Show Transaction End", show.transaction_end, "Parse and add Transaction End to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_variance = Pref.bool("Show Variance", show.variance, "Parse and add Variance to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_block = Pref.bool("Show Future Block", show.future_block, "Parse and add Future Block to protocol tree")
cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_futures_depthofbook_pitch_v1_1_12.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_long_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_long_message then
    show.add_order_long_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_short_message then
    show.add_order_short_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_short_message
    changed = true
  end
  if show.delete_order_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_delete_order_message then
    show.delete_order_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_day_summary_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_day_summary_message then
    show.end_of_day_summary_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_day_summary_message
    changed = true
  end
  if show.end_of_session_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_session_message then
    show.end_of_session_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_session_message
    changed = true
  end
  if show.future_leg ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_leg then
    show.future_leg = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_leg
    changed = true
  end
  if show.futures_instrument_definition_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_futures_instrument_definition_message then
    show.futures_instrument_definition_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_futures_instrument_definition_message
    changed = true
  end
  if show.message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message then
    show.message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message_header then
    show.message_header = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_long_message then
    show.modify_order_long_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_short_message then
    show.modify_order_short_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_order_executed_message then
    show.order_executed_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet then
    show.packet = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet_header then
    show.packet_header = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.settlement_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_settlement_message then
    show.settlement_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_settlement_message
    changed = true
  end
  if show.standard ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_standard then
    show.standard = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_standard
    changed = true
  end
  if show.summary_flags ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_summary_flags then
    show.summary_flags = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_summary_flags
    changed = true
  end
  if show.time_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_message then
    show.time_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_message
    changed = true
  end
  if show.time_reference_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_reference_message then
    show.time_reference_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_reference_message
    changed = true
  end
  if show.trade_break_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_break_message then
    show.trade_break_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_long_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_long_message then
    show.trade_long_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_short_message then
    show.trade_short_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trading_status_message then
    show.trading_status_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trading_status_message
    changed = true
  end
  if show.transaction_begin ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_begin then
    show.transaction_begin = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_begin
    changed = true
  end
  if show.transaction_end ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_end then
    show.transaction_end = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_end
    changed = true
  end
  if show.unit_clear_message ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_unit_clear_message
    changed = true
  end
  if show.variance ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_variance then
    show.variance = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_variance
    changed = true
  end
  if show.future_block ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_block then
    show.future_block = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_block
    changed = true
  end
  if show.payload ~= cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_payload then
    show.payload = cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Futures DepthOfBook Pitch 1.1.12
-----------------------------------------------------------------------

-- Size: Time Offset
cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset = 4

-- Display: Time Offset
cboe_futures_depthofbook_pitch_v1_1_12_display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Session Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.end_of_session_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  return index
end

-- Display: End Of Session Message
cboe_futures_depthofbook_pitch_v1_1_12_display.end_of_session_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.end_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.end_of_session_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_session_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.end_of_session_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.end_of_session_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.end_of_session_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.end_of_session_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 3
cboe_futures_depthofbook_pitch_v1_1_12_size_of.reserved_3 = 3

-- Display: Reserved 3
cboe_futures_depthofbook_pitch_v1_1_12_display.reserved_3 = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_futures_depthofbook_pitch_v1_1_12_dissect.reserved_3 = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.reserved_3
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.reserved_3(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
cboe_futures_depthofbook_pitch_v1_1_12_size_of.trading_status = 1

-- Display: Trading Status
cboe_futures_depthofbook_pitch_v1_1_12_display.trading_status = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "S" then
    return "Trading Status: Exchange Specific Suspension (S)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Reserved 2
cboe_futures_depthofbook_pitch_v1_1_12_size_of.reserved_2 = 2

-- Display: Reserved 2
cboe_futures_depthofbook_pitch_v1_1_12_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_futures_depthofbook_pitch_v1_1_12_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.reserved_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol = 6

-- Display: Symbol
cboe_futures_depthofbook_pitch_v1_1_12_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_futures_depthofbook_pitch_v1_1_12_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.reserved_2

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.trading_status

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.reserved_3

  return index
end

-- Display: Trading Status Message
cboe_futures_depthofbook_pitch_v1_1_12_display.trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.symbol(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte Ascii String
  index, reserved_2 = cboe_futures_depthofbook_pitch_v1_1_12_dissect.reserved_2(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 4 values
  index, trading_status = cboe_futures_depthofbook_pitch_v1_1_12_dissect.trading_status(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte Ascii String
  index, reserved_3 = cboe_futures_depthofbook_pitch_v1_1_12_dissect.reserved_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_status_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.trading_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.trading_status_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.trading_status_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.trading_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Summary Flags
cboe_futures_depthofbook_pitch_v1_1_12_size_of.summary_flags = 1

-- Display: Summary Flags
cboe_futures_depthofbook_pitch_v1_1_12_display.summary_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Offer Close Valid flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Offer Close Valid|"
  end
  -- Is Low Price Is Offer flag set?
  if buffer:bitfield(8) > 0 then
    display = display.."Low Price Is Offer|"
  end
  -- Is Low Price Valid flag set?
  if buffer:bitfield(9) > 0 then
    display = display.."Low Price Valid|"
  end
  -- Is High Price Is Bid flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."High Price Is Bid|"
  end
  -- Is High Price Valid flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."High Price Valid|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Summary Flags
cboe_futures_depthofbook_pitch_v1_1_12_dissect.summary_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved Flags: 7 Bit
  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_flags, buffer(offset, 1))

  -- Offer Close Valid: 1 Bit
  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.offer_close_valid, buffer(offset, 1))

  -- Low Price Is Offer: 1 Bit
  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price_is_offer, buffer(offset, 1))

  -- Low Price Valid: 1 Bit
  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price_valid, buffer(offset, 1))

  -- High Price Is Bid: 1 Bit
  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price_is_bid, buffer(offset, 1))

  -- High Price Valid: 1 Bit
  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price_valid, buffer(offset, 1))
end

-- Dissect: Summary Flags
cboe_futures_depthofbook_pitch_v1_1_12_dissect.summary_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.summary_flags(range, packet, parent)
  local element = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.summary_flags, range, display)

  if show.summary_flags then
    cboe_futures_depthofbook_pitch_v1_1_12_dissect.summary_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Ecrp Volume
cboe_futures_depthofbook_pitch_v1_1_12_size_of.ecrp_volume = 4

-- Display: Ecrp Volume
cboe_futures_depthofbook_pitch_v1_1_12_display.ecrp_volume = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_futures_depthofbook_pitch_v1_1_12_dissect.ecrp_volume = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.ecrp_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.ecrp_volume(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Size: Block Volume
cboe_futures_depthofbook_pitch_v1_1_12_size_of.block_volume = 4

-- Display: Block Volume
cboe_futures_depthofbook_pitch_v1_1_12_display.block_volume = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_futures_depthofbook_pitch_v1_1_12_dissect.block_volume = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.block_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.block_volume(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Size: Total Volume
cboe_futures_depthofbook_pitch_v1_1_12_size_of.total_volume = 4

-- Display: Total Volume
cboe_futures_depthofbook_pitch_v1_1_12_display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_futures_depthofbook_pitch_v1_1_12_dissect.total_volume = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.total_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.total_volume(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Size: Close Price
cboe_futures_depthofbook_pitch_v1_1_12_size_of.close_price = 8

-- Display: Close Price
cboe_futures_depthofbook_pitch_v1_1_12_display.close_price = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
cboe_futures_depthofbook_pitch_v1_1_12_dissect.close_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.close_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.close_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.close_price, range, value, display)

  return offset + length, value
end

-- Size: Open Price
cboe_futures_depthofbook_pitch_v1_1_12_size_of.open_price = 8

-- Display: Open Price
cboe_futures_depthofbook_pitch_v1_1_12_display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
cboe_futures_depthofbook_pitch_v1_1_12_dissect.open_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.open_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.open_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price
cboe_futures_depthofbook_pitch_v1_1_12_size_of.low_price = 8

-- Display: Low Price
cboe_futures_depthofbook_pitch_v1_1_12_display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
cboe_futures_depthofbook_pitch_v1_1_12_dissect.low_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.low_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.low_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
cboe_futures_depthofbook_pitch_v1_1_12_size_of.high_price = 8

-- Display: High Price
cboe_futures_depthofbook_pitch_v1_1_12_display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
cboe_futures_depthofbook_pitch_v1_1_12_dissect.high_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.high_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.high_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
cboe_futures_depthofbook_pitch_v1_1_12_size_of.open_interest = 4

-- Display: Open Interest
cboe_futures_depthofbook_pitch_v1_1_12_display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_futures_depthofbook_pitch_v1_1_12_dissect.open_interest = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.open_interest
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.open_interest(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_date = 4

-- Display: Trade Date
cboe_futures_depthofbook_pitch_v1_1_12_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Day Summary Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.end_of_day_summary_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_date

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.open_interest

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.high_price

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.low_price

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.open_price

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.close_price

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.total_volume

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.block_volume

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.ecrp_volume

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.summary_flags

  return index
end

-- Display: End Of Day Summary Message
cboe_futures_depthofbook_pitch_v1_1_12_display.end_of_day_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Day Summary Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.end_of_day_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.symbol(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_date(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Unsigned Fixed Width Integer
  index, open_interest = cboe_futures_depthofbook_pitch_v1_1_12_dissect.open_interest(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.low_price(buffer, index, packet, parent)

  -- Open Price: 8 Byte Unsigned Fixed Width Integer
  index, open_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.open_price(buffer, index, packet, parent)

  -- Close Price: 8 Byte Unsigned Fixed Width Integer
  index, close_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.close_price(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = cboe_futures_depthofbook_pitch_v1_1_12_dissect.total_volume(buffer, index, packet, parent)

  -- Block Volume: 4 Byte Unsigned Fixed Width Integer
  index, block_volume = cboe_futures_depthofbook_pitch_v1_1_12_dissect.block_volume(buffer, index, packet, parent)

  -- Ecrp Volume: 4 Byte Unsigned Fixed Width Integer
  index, ecrp_volume = cboe_futures_depthofbook_pitch_v1_1_12_dissect.ecrp_volume(buffer, index, packet, parent)

  -- Summary Flags: Struct of 6 fields
  index, summary_flags = cboe_futures_depthofbook_pitch_v1_1_12_dissect.summary_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Summary Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.end_of_day_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_day_summary_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.end_of_day_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.end_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.end_of_day_summary_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.end_of_day_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Issue
cboe_futures_depthofbook_pitch_v1_1_12_size_of.issue = 1

-- Display: Issue
cboe_futures_depthofbook_pitch_v1_1_12_display.issue = function(value)
  if value == "S" then
    return "Issue: Initial Settlement (S)"
  end
  if value == "R" then
    return "Issue: Reissued Settlement (R)"
  end
  if value == "I" then
    return "Issue: Indicative Settlement (I)"
  end

  return "Issue: Unknown("..value..")"
end

-- Dissect: Issue
cboe_futures_depthofbook_pitch_v1_1_12_dissect.issue = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.issue
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.issue(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.issue, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price
cboe_futures_depthofbook_pitch_v1_1_12_size_of.settlement_price = 8

-- Display: Settlement Price
cboe_futures_depthofbook_pitch_v1_1_12_display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
cboe_futures_depthofbook_pitch_v1_1_12_dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.settlement_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Settlement Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.settlement_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_date

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.settlement_price

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.issue

  return index
end

-- Display: Settlement Message
cboe_futures_depthofbook_pitch_v1_1_12_display.settlement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.settlement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.symbol(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_date(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Unsigned Fixed Width Integer
  index, settlement_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.settlement_price(buffer, index, packet, parent)

  -- Issue: 1 Byte Ascii String Enum with 3 values
  index, issue = cboe_futures_depthofbook_pitch_v1_1_12_dissect.issue(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.settlement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.settlement_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.settlement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.settlement_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.settlement_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.settlement_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Id
cboe_futures_depthofbook_pitch_v1_1_12_size_of.execution_id = 8

-- Display: Execution Id
cboe_futures_depthofbook_pitch_v1_1_12_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_futures_depthofbook_pitch_v1_1_12_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Break Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_break_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.execution_id

  return index
end

-- Display: Trade Break Message
cboe_futures_depthofbook_pitch_v1_1_12_display.trade_break_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_break_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_break_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_break_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.trade_break_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_break_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_break_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Transaction End
cboe_futures_depthofbook_pitch_v1_1_12_size_of.transaction_end = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  return index
end

-- Display: Transaction End
cboe_futures_depthofbook_pitch_v1_1_12_display.transaction_end = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Transaction End
cboe_futures_depthofbook_pitch_v1_1_12_dissect.transaction_end_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End
cboe_futures_depthofbook_pitch_v1_1_12_dissect.transaction_end = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.transaction_end then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.transaction_end(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.transaction_end(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.transaction_end, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.transaction_end_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Transaction Begin
cboe_futures_depthofbook_pitch_v1_1_12_size_of.transaction_begin = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  return index
end

-- Display: Transaction Begin
cboe_futures_depthofbook_pitch_v1_1_12_display.transaction_begin = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Transaction Begin
cboe_futures_depthofbook_pitch_v1_1_12_dissect.transaction_begin_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin
cboe_futures_depthofbook_pitch_v1_1_12_dissect.transaction_begin = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.transaction_begin then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.transaction_begin(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.transaction_begin(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.transaction_begin, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.transaction_begin_fields(buffer, offset, packet, parent)
end

-- Size: Trade Condition
cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_condition = 1

-- Display: Trade Condition
cboe_futures_depthofbook_pitch_v1_1_12_display.trade_condition = function(value)
  if value == " " then
    return "Trade Condition: Normal Trade (<whitespace>)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end
  if value == "S" then
    return "Trade Condition: Spread Trade (S)"
  end
  if value == "B" then
    return "Trade Condition: Block Trade (B)"
  end
  if value == "E" then
    return "Trade Condition: Ecrp Trade (E)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Short Price
cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_price = 2

-- Display: Short Price
cboe_futures_depthofbook_pitch_v1_1_12_display.short_price = function(value)
  return "Short Price: "..value
end

-- Translate: Short Price
translate.short_price = function(raw)
  return raw*100
end

-- Dissect: Short Price
cboe_futures_depthofbook_pitch_v1_1_12_dissect.short_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.short_price(raw)
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.short_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.short_price, range, value, display)

  return offset + length, value
end

-- Size: Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_quantity = 2

-- Display: Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12_display.short_quantity = function(value)
  return "Short Quantity: "..value
end

-- Dissect: Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12_dissect.short_quantity = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.short_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.short_quantity, range, value, display)

  return offset + length, value
end

-- Size: Side Indicator
cboe_futures_depthofbook_pitch_v1_1_12_size_of.side_indicator = 1

-- Display: Side Indicator
cboe_futures_depthofbook_pitch_v1_1_12_display.side_indicator = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_futures_depthofbook_pitch_v1_1_12_dissect.side_indicator = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.side_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.side_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Id
cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id = 8

-- Display: Order Id
cboe_futures_depthofbook_pitch_v1_1_12_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Short Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.side_indicator

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_quantity

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_price

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.execution_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_condition

  return index
end

-- Display: Trade Short Message
cboe_futures_depthofbook_pitch_v1_1_12_display.trade_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_futures_depthofbook_pitch_v1_1_12_dissect.side_indicator(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_futures_depthofbook_pitch_v1_1_12_dissect.short_quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.symbol(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.short_price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 5 values
  index, trade_condition = cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_short_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.trade_short_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_short_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_short_message_fields(buffer, offset, packet, parent)
end

-- Size: Long Price
cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_price = 8

-- Display: Long Price
cboe_futures_depthofbook_pitch_v1_1_12_display.long_price = function(value)
  return "Long Price: "..value
end

-- Translate: Long Price
translate.long_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Long Price
cboe_futures_depthofbook_pitch_v1_1_12_dissect.long_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.long_price(raw)
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.long_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.long_price, range, value, display)

  return offset + length, value
end

-- Size: Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_quantity = 4

-- Display: Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12_display.long_quantity = function(value)
  return "Long Quantity: "..value
end

-- Dissect: Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12_dissect.long_quantity = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.long_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.long_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Long Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.side_indicator

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_quantity

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_price

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.execution_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_condition

  return index
end

-- Display: Trade Long Message
cboe_futures_depthofbook_pitch_v1_1_12_display.trade_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_futures_depthofbook_pitch_v1_1_12_dissect.side_indicator(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_futures_depthofbook_pitch_v1_1_12_dissect.long_quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.symbol(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.long_price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 5 values
  index, trade_condition = cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_long_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.trade_long_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_long_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_long_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  return index
end

-- Display: Delete Order Message
cboe_futures_depthofbook_pitch_v1_1_12_display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.delete_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.delete_order_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.delete_order_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.modify_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_quantity

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_price

  return index
end

-- Display: Modify Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12_display.modify_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.modify_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_futures_depthofbook_pitch_v1_1_12_dissect.short_quantity(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.short_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.modify_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_short_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.modify_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.modify_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.modify_order_short_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.modify_order_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.modify_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_quantity

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_price

  return index
end

-- Display: Modify Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12_display.modify_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.modify_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_futures_depthofbook_pitch_v1_1_12_dissect.long_quantity(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.long_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.modify_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_long_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.modify_order_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.modify_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.modify_order_long_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.modify_order_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12_size_of.canceled_short_quantity = 2

-- Display: Canceled Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12_display.canceled_short_quantity = function(value)
  return "Canceled Short Quantity: "..value
end

-- Dissect: Canceled Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12_dissect.canceled_short_quantity = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.canceled_short_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.canceled_short_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.canceled_short_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Short Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.reduce_size_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.canceled_short_quantity

  return index
end

-- Display: Reduce Size Short Message
cboe_futures_depthofbook_pitch_v1_1_12_display.reduce_size_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.reduce_size_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, canceled_short_quantity = cboe_futures_depthofbook_pitch_v1_1_12_dissect.canceled_short_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.reduce_size_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_short_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.reduce_size_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.reduce_size_short_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.reduce_size_short_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.reduce_size_short_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12_size_of.canceled_long_quantity = 4

-- Display: Canceled Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12_display.canceled_long_quantity = function(value)
  return "Canceled Long Quantity: "..value
end

-- Dissect: Canceled Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12_dissect.canceled_long_quantity = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.canceled_long_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.canceled_long_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.canceled_long_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Long Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.reduce_size_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.canceled_long_quantity

  return index
end

-- Display: Reduce Size Long Message
cboe_futures_depthofbook_pitch_v1_1_12_display.reduce_size_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.reduce_size_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_long_quantity = cboe_futures_depthofbook_pitch_v1_1_12_dissect.canceled_long_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.reduce_size_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_long_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.reduce_size_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.reduce_size_long_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.reduce_size_long_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.reduce_size_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Executed Quantity
cboe_futures_depthofbook_pitch_v1_1_12_size_of.executed_quantity = 4

-- Display: Executed Quantity
cboe_futures_depthofbook_pitch_v1_1_12_display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_futures_depthofbook_pitch_v1_1_12_dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.executed_quantity

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.execution_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_condition

  return index
end

-- Display: Order Executed Message
cboe_futures_depthofbook_pitch_v1_1_12_display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_futures_depthofbook_pitch_v1_1_12_dissect.executed_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 5 values
  index, trade_condition = cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.order_executed_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.order_executed_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.add_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.side_indicator

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_quantity

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.short_price

  return index
end

-- Display: Add Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12_display.add_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.add_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_futures_depthofbook_pitch_v1_1_12_dissect.side_indicator(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_futures_depthofbook_pitch_v1_1_12_dissect.short_quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.symbol(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.short_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.add_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_short_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.add_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.add_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.add_order_short_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.add_order_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.add_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_id

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.side_indicator

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_quantity

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.long_price

  return index
end

-- Display: Add Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12_display.add_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.add_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_futures_depthofbook_pitch_v1_1_12_dissect.side_indicator(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_futures_depthofbook_pitch_v1_1_12_dissect.long_quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.symbol(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_futures_depthofbook_pitch_v1_1_12_dissect.long_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.add_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_long_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.add_order_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.add_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.add_order_long_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.add_order_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Symbol
cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_symbol = 6

-- Display: Leg Symbol
cboe_futures_depthofbook_pitch_v1_1_12_display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_futures_depthofbook_pitch_v1_1_12_dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_ratio = 4

-- Display: Leg Ratio
cboe_futures_depthofbook_pitch_v1_1_12_display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_futures_depthofbook_pitch_v1_1_12_dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Leg
cboe_futures_depthofbook_pitch_v1_1_12_size_of.future_leg = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_ratio

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_symbol

  return index
end

-- Display: Future Leg
cboe_futures_depthofbook_pitch_v1_1_12_display.future_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Leg
cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Ratio: 4 Byte Signed Fixed Width Integer
  index, leg_ratio = cboe_futures_depthofbook_pitch_v1_1_12_dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Symbol: 6 Byte Ascii String
  index, leg_symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.leg_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Leg
cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_leg then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.future_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.future_leg(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.future_leg, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_leg_fields(buffer, offset, packet, parent)
end

-- Size: Fed Funds Rate
cboe_futures_depthofbook_pitch_v1_1_12_size_of.fed_funds_rate = 8

-- Display: Fed Funds Rate
cboe_futures_depthofbook_pitch_v1_1_12_display.fed_funds_rate = function(value)
  return "Fed Funds Rate: "..value
end

-- Dissect: Fed Funds Rate
cboe_futures_depthofbook_pitch_v1_1_12_dissect.fed_funds_rate = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.fed_funds_rate
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.fed_funds_rate(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.fed_funds_rate, range, value, display)

  return offset + length, value
end

-- Size: Previous Armvm
cboe_futures_depthofbook_pitch_v1_1_12_size_of.previous_armvm = 8

-- Display: Previous Armvm
cboe_futures_depthofbook_pitch_v1_1_12_display.previous_armvm = function(value)
  return "Previous Armvm: "..value
end

-- Dissect: Previous Armvm
cboe_futures_depthofbook_pitch_v1_1_12_dissect.previous_armvm = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.previous_armvm
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.previous_armvm(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.previous_armvm, range, value, display)

  return offset + length, value
end

-- Size: Initial Strike
cboe_futures_depthofbook_pitch_v1_1_12_size_of.initial_strike = 8

-- Display: Initial Strike
cboe_futures_depthofbook_pitch_v1_1_12_display.initial_strike = function(value)
  return "Initial Strike: "..value
end

-- Dissect: Initial Strike
cboe_futures_depthofbook_pitch_v1_1_12_dissect.initial_strike = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.initial_strike
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.initial_strike(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.initial_strike, range, value, display)

  return offset + length, value
end

-- Size: Discount Factor
cboe_futures_depthofbook_pitch_v1_1_12_size_of.discount_factor = 8

-- Display: Discount Factor
cboe_futures_depthofbook_pitch_v1_1_12_display.discount_factor = function(value)
  return "Discount Factor: "..value
end

-- Dissect: Discount Factor
cboe_futures_depthofbook_pitch_v1_1_12_dissect.discount_factor = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.discount_factor
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.discount_factor(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.discount_factor, range, value, display)

  return offset + length, value
end

-- Size: Previous Settlement
cboe_futures_depthofbook_pitch_v1_1_12_size_of.previous_settlement = 8

-- Display: Previous Settlement
cboe_futures_depthofbook_pitch_v1_1_12_display.previous_settlement = function(value)
  return "Previous Settlement: "..value
end

-- Dissect: Previous Settlement
cboe_futures_depthofbook_pitch_v1_1_12_dissect.previous_settlement = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.previous_settlement
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.previous_settlement(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.previous_settlement, range, value, display)

  return offset + length, value
end

-- Size: Num Elapsed Returns
cboe_futures_depthofbook_pitch_v1_1_12_size_of.num_elapsed_returns = 2

-- Display: Num Elapsed Returns
cboe_futures_depthofbook_pitch_v1_1_12_display.num_elapsed_returns = function(value)
  return "Num Elapsed Returns: "..value
end

-- Dissect: Num Elapsed Returns
cboe_futures_depthofbook_pitch_v1_1_12_dissect.num_elapsed_returns = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.num_elapsed_returns
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.num_elapsed_returns(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.num_elapsed_returns, range, value, display)

  return offset + length, value
end

-- Size: Num Expected Prices
cboe_futures_depthofbook_pitch_v1_1_12_size_of.num_expected_prices = 2

-- Display: Num Expected Prices
cboe_futures_depthofbook_pitch_v1_1_12_display.num_expected_prices = function(value)
  return "Num Expected Prices: "..value
end

-- Dissect: Num Expected Prices
cboe_futures_depthofbook_pitch_v1_1_12_dissect.num_expected_prices = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.num_expected_prices
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.num_expected_prices(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.num_expected_prices, range, value, display)

  return offset + length, value
end

-- Size: Realized Variance
cboe_futures_depthofbook_pitch_v1_1_12_size_of.realized_variance = 8

-- Display: Realized Variance
cboe_futures_depthofbook_pitch_v1_1_12_display.realized_variance = function(value)
  return "Realized Variance: "..value
end

-- Dissect: Realized Variance
cboe_futures_depthofbook_pitch_v1_1_12_dissect.realized_variance = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.realized_variance
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.realized_variance(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.realized_variance, range, value, display)

  return offset + length, value
end

-- Calculate size of: Variance
cboe_futures_depthofbook_pitch_v1_1_12_size_of.variance = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.realized_variance

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.num_expected_prices

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.num_elapsed_returns

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.previous_settlement

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.discount_factor

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.initial_strike

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.previous_armvm

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.fed_funds_rate

  -- Calculate field size from count
  local future_leg_count = buffer(offset + index - 59, 1):le_uint()
  index = index + future_leg_count * 10

  return index
end

-- Display: Variance
cboe_futures_depthofbook_pitch_v1_1_12_display.variance = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Variance
cboe_futures_depthofbook_pitch_v1_1_12_dissect.variance_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Realized Variance: 8 Byte Signed Fixed Width Integer
  index, realized_variance = cboe_futures_depthofbook_pitch_v1_1_12_dissect.realized_variance(buffer, index, packet, parent)

  -- Num Expected Prices: 2 Byte Unsigned Fixed Width Integer
  index, num_expected_prices = cboe_futures_depthofbook_pitch_v1_1_12_dissect.num_expected_prices(buffer, index, packet, parent)

  -- Num Elapsed Returns: 2 Byte Unsigned Fixed Width Integer
  index, num_elapsed_returns = cboe_futures_depthofbook_pitch_v1_1_12_dissect.num_elapsed_returns(buffer, index, packet, parent)

  -- Previous Settlement: 8 Byte Unsigned Fixed Width Integer
  index, previous_settlement = cboe_futures_depthofbook_pitch_v1_1_12_dissect.previous_settlement(buffer, index, packet, parent)

  -- Discount Factor: 8 Byte Signed Fixed Width Integer
  index, discount_factor = cboe_futures_depthofbook_pitch_v1_1_12_dissect.discount_factor(buffer, index, packet, parent)

  -- Initial Strike: 8 Byte Unsigned Fixed Width Integer
  index, initial_strike = cboe_futures_depthofbook_pitch_v1_1_12_dissect.initial_strike(buffer, index, packet, parent)

  -- Previous Armvm: 8 Byte Signed Fixed Width Integer
  index, previous_armvm = cboe_futures_depthofbook_pitch_v1_1_12_dissect.previous_armvm(buffer, index, packet, parent)

  -- Fed Funds Rate: 8 Byte Signed Fixed Width Integer
  index, fed_funds_rate = cboe_futures_depthofbook_pitch_v1_1_12_dissect.fed_funds_rate(buffer, index, packet, parent)

  -- Dependency element: Leg Count
  local leg_count = buffer(offset - 7, 1):le_uint()

  -- Future Leg: Struct of 2 fields
  for i = 1, leg_count do
    index = cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Variance
cboe_futures_depthofbook_pitch_v1_1_12_dissect.variance = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.variance then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.variance(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.variance(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.variance, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.variance_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Standard
cboe_futures_depthofbook_pitch_v1_1_12_size_of.standard = function(buffer, offset)
  local index = 0

  -- Calculate field size from count
  local future_leg_count = buffer(offset + index - 7, 1):le_uint()
  index = index + future_leg_count * 10

  return index
end

-- Display: Standard
cboe_futures_depthofbook_pitch_v1_1_12_display.standard = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Standard
cboe_futures_depthofbook_pitch_v1_1_12_dissect.standard_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Leg Count
  local leg_count = buffer(offset - 7, 1):le_uint()

  -- Future Leg: Struct of 2 fields
  for i = 1, leg_count do
    index = cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Standard
cboe_futures_depthofbook_pitch_v1_1_12_dissect.standard = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.standard then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.standard(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.standard(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.standard, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.standard_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Future Block
cboe_futures_depthofbook_pitch_v1_1_12_size_of.future_block = function(buffer, offset, futures_flags)
  -- Size of Standard
  if futures_flags == 0 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.standard(buffer, offset)
  end
  -- Size of Variance
  if futures_flags == 1 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.variance(buffer, offset)
  end

  return 0
end

-- Display: Future Block
cboe_futures_depthofbook_pitch_v1_1_12_display.future_block = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Future Block
cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_block_branches = function(buffer, offset, packet, parent, futures_flags)
  -- Dissect Standard
  if futures_flags == 0 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.standard(buffer, offset, packet, parent)
  end
  -- Dissect Variance
  if futures_flags == 1 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.variance(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Future Block
cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_block = function(buffer, offset, packet, parent, futures_flags)
  if not show.future_block then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_block_branches(buffer, offset, packet, parent, futures_flags)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_futures_depthofbook_pitch_v1_1_12_size_of.future_block(buffer, offset, futures_flags)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.future_block(buffer, packet, parent)
  local element = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.future_block, range, display)

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_block_branches(buffer, offset, packet, parent, futures_flags)
end

-- Size: Contract Date
cboe_futures_depthofbook_pitch_v1_1_12_size_of.contract_date = 4

-- Display: Contract Date
cboe_futures_depthofbook_pitch_v1_1_12_display.contract_date = function(value)
  return "Contract Date: "..value
end

-- Dissect: Contract Date
cboe_futures_depthofbook_pitch_v1_1_12_dissect.contract_date = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.contract_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.contract_date(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.contract_date, range, value, display)

  return offset + length, value
end

-- Size: Variance Block Offset
cboe_futures_depthofbook_pitch_v1_1_12_size_of.variance_block_offset = 1

-- Display: Variance Block Offset
cboe_futures_depthofbook_pitch_v1_1_12_display.variance_block_offset = function(value)
  return "Variance Block Offset: "..value
end

-- Dissect: Variance Block Offset
cboe_futures_depthofbook_pitch_v1_1_12_dissect.variance_block_offset = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.variance_block_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.variance_block_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.variance_block_offset, range, value, display)

  return offset + length, value
end

-- Size: Leg Offset
cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_offset = 1

-- Display: Leg Offset
cboe_futures_depthofbook_pitch_v1_1_12_display.leg_offset = function(value)
  return "Leg Offset: "..value
end

-- Dissect: Leg Offset
cboe_futures_depthofbook_pitch_v1_1_12_dissect.leg_offset = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.leg_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_offset, range, value, display)

  return offset + length, value
end

-- Size: Leg Count
cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_count = 1

-- Display: Leg Count
cboe_futures_depthofbook_pitch_v1_1_12_display.leg_count = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_futures_depthofbook_pitch_v1_1_12_dissect.leg_count = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.leg_count(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Size: Price Increment
cboe_futures_depthofbook_pitch_v1_1_12_size_of.price_increment = 8

-- Display: Price Increment
cboe_futures_depthofbook_pitch_v1_1_12_display.price_increment = function(value)
  return "Price Increment: "..value
end

-- Dissect: Price Increment
cboe_futures_depthofbook_pitch_v1_1_12_dissect.price_increment = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.price_increment
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.price_increment(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Size: Listing State
cboe_futures_depthofbook_pitch_v1_1_12_size_of.listing_state = 1

-- Display: Listing State
cboe_futures_depthofbook_pitch_v1_1_12_display.listing_state = function(value)
  if value == "A" then
    return "Listing State: Active (A)"
  end
  if value == "I" then
    return "Listing State: Inactive (I)"
  end
  if value == "T" then
    return "Listing State: Test (T)"
  end

  return "Listing State: Unknown("..value..")"
end

-- Dissect: Listing State
cboe_futures_depthofbook_pitch_v1_1_12_dissect.listing_state = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.listing_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.listing_state(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.listing_state, range, value, display)

  return offset + length, value
end

-- Size: Contract Size
cboe_futures_depthofbook_pitch_v1_1_12_size_of.contract_size = 2

-- Display: Contract Size
cboe_futures_depthofbook_pitch_v1_1_12_display.contract_size = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_futures_depthofbook_pitch_v1_1_12_dissect.contract_size = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.contract_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.contract_size(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Size: Expiration Date
cboe_futures_depthofbook_pitch_v1_1_12_size_of.expiration_date = 4

-- Display: Expiration Date
cboe_futures_depthofbook_pitch_v1_1_12_display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
cboe_futures_depthofbook_pitch_v1_1_12_dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.expiration_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Futures Flags
cboe_futures_depthofbook_pitch_v1_1_12_size_of.futures_flags = 1

-- Display: Futures Flags
cboe_futures_depthofbook_pitch_v1_1_12_display.futures_flags = function(value)
  if value == 0 then
    return "Futures Flags: Standard (0)"
  end
  if value == 1 then
    return "Futures Flags: Variance (1)"
  end

  return "Futures Flags: Unknown("..value..")"
end

-- Dissect: Futures Flags
cboe_futures_depthofbook_pitch_v1_1_12_dissect.futures_flags = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.futures_flags
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.futures_flags(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.futures_flags, range, value, display)

  return offset + length, value
end

-- Size: Report Symbol
cboe_futures_depthofbook_pitch_v1_1_12_size_of.report_symbol = 6

-- Display: Report Symbol
cboe_futures_depthofbook_pitch_v1_1_12_display.report_symbol = function(value)
  return "Report Symbol: "..value
end

-- Dissect: Report Symbol
cboe_futures_depthofbook_pitch_v1_1_12_dissect.report_symbol = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.report_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.report_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.report_symbol, range, value, display)

  return offset + length, value
end

-- Size: Unit Timestamp
cboe_futures_depthofbook_pitch_v1_1_12_size_of.unit_timestamp = 4

-- Display: Unit Timestamp
cboe_futures_depthofbook_pitch_v1_1_12_display.unit_timestamp = function(value)
  return "Unit Timestamp: "..value
end

-- Dissect: Unit Timestamp
cboe_futures_depthofbook_pitch_v1_1_12_dissect.unit_timestamp = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.unit_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.unit_timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.unit_timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Futures Instrument Definition Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.futures_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.symbol

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.unit_timestamp

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.report_symbol

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.futures_flags

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.expiration_date

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.contract_size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.listing_state

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.price_increment

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_count

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.leg_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.variance_block_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.contract_date

  -- Calculate runtime size of Future Block field
  local future_block_offset = offset + index
  local future_block_type = buffer(future_block_offset - 23, 1):le_uint()
  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.future_block(buffer, future_block_offset, future_block_type)

  return index
end

-- Display: Futures Instrument Definition Message
cboe_futures_depthofbook_pitch_v1_1_12_display.futures_instrument_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Instrument Definition Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.futures_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.symbol(buffer, index, packet, parent)

  -- Unit Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, unit_timestamp = cboe_futures_depthofbook_pitch_v1_1_12_dissect.unit_timestamp(buffer, index, packet, parent)

  -- Report Symbol: 6 Byte Ascii String
  index, report_symbol = cboe_futures_depthofbook_pitch_v1_1_12_dissect.report_symbol(buffer, index, packet, parent)

  -- Futures Flags: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, futures_flags = cboe_futures_depthofbook_pitch_v1_1_12_dissect.futures_flags(buffer, index, packet, parent)

  -- Expiration Date: 4 Byte Unsigned Fixed Width Integer
  index, expiration_date = cboe_futures_depthofbook_pitch_v1_1_12_dissect.expiration_date(buffer, index, packet, parent)

  -- Contract Size: 2 Byte Unsigned Fixed Width Integer
  index, contract_size = cboe_futures_depthofbook_pitch_v1_1_12_dissect.contract_size(buffer, index, packet, parent)

  -- Listing State: 1 Byte Ascii String Enum with 3 values
  index, listing_state = cboe_futures_depthofbook_pitch_v1_1_12_dissect.listing_state(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Unsigned Fixed Width Integer
  index, price_increment = cboe_futures_depthofbook_pitch_v1_1_12_dissect.price_increment(buffer, index, packet, parent)

  -- Leg Count: 1 Byte Unsigned Fixed Width Integer
  index, leg_count = cboe_futures_depthofbook_pitch_v1_1_12_dissect.leg_count(buffer, index, packet, parent)

  -- Leg Offset: 1 Byte Unsigned Fixed Width Integer
  index, leg_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.leg_offset(buffer, index, packet, parent)

  -- Variance Block Offset: 1 Byte Unsigned Fixed Width Integer
  index, variance_block_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.variance_block_offset(buffer, index, packet, parent)

  -- Contract Date: 4 Byte Unsigned Fixed Width Integer
  index, contract_date = cboe_futures_depthofbook_pitch_v1_1_12_dissect.contract_date(buffer, index, packet, parent)

  -- Future Block: Runtime Type with 2 branches
  index = cboe_futures_depthofbook_pitch_v1_1_12_dissect.future_block(buffer, index, packet, parent, futures_flags)

  return index
end

-- Dissect: Futures Instrument Definition Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.futures_instrument_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.futures_instrument_definition_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.futures_instrument_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.futures_instrument_definition_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.futures_instrument_definition_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.futures_instrument_definition_message_fields(buffer, offset, packet, parent)
end

-- Size: Time
cboe_futures_depthofbook_pitch_v1_1_12_size_of.time = 4

-- Display: Time
cboe_futures_depthofbook_pitch_v1_1_12_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_futures_depthofbook_pitch_v1_1_12_dissect.time = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.time, range, value, display)

  return offset + length, value
end

-- Size: Midnight Reference
cboe_futures_depthofbook_pitch_v1_1_12_size_of.midnight_reference = 4

-- Display: Midnight Reference
cboe_futures_depthofbook_pitch_v1_1_12_display.midnight_reference = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_futures_depthofbook_pitch_v1_1_12_dissect.midnight_reference = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.midnight_reference
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.midnight_reference(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Reference Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_reference_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.midnight_reference

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_date

  return index
end

-- Display: Time Reference Message
cboe_futures_depthofbook_pitch_v1_1_12_display.time_reference_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: 4 Byte Unsigned Fixed Width Integer
  index, midnight_reference = cboe_futures_depthofbook_pitch_v1_1_12_dissect.midnight_reference(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time(buffer, index, packet, parent)

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_reference_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_reference_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.time_reference_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.time_reference_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_reference_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Unit Clear Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.unit_clear_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_offset

  return index
end

-- Display: Unit Clear Message
cboe_futures_depthofbook_pitch_v1_1_12_display.unit_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.unit_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_clear_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.unit_clear_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.unit_clear_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.unit_clear_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.unit_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: Epoch
cboe_futures_depthofbook_pitch_v1_1_12_size_of.epoch = 4

-- Display: Epoch
cboe_futures_depthofbook_pitch_v1_1_12_display.epoch = function(value)
  return "Epoch: "..value
end

-- Dissect: Epoch
cboe_futures_depthofbook_pitch_v1_1_12_dissect.epoch = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.epoch
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.epoch(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.epoch, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.time

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.epoch

  return index
end

-- Display: Time Message
cboe_futures_depthofbook_pitch_v1_1_12_display.time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_futures_depthofbook_pitch_v1_1_12_dissect.time(buffer, index, packet, parent)

  -- Epoch: 4 Byte Unsigned Fixed Width Integer
  index, epoch = cboe_futures_depthofbook_pitch_v1_1_12_dissect.epoch(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.time_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.time_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cboe_futures_depthofbook_pitch_v1_1_12_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_message(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.unit_clear_message(buffer, offset)
  end
  -- Size of Time Reference Message
  if message_type == 0xB1 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.time_reference_message(buffer, offset)
  end
  -- Size of Futures Instrument Definition Message
  if message_type == 0xBB then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.futures_instrument_definition_message(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x21 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.add_order_long_message(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.add_order_short_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.reduce_size_long_message(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.reduce_size_short_message(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.modify_order_long_message(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.modify_order_short_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.delete_order_message(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x2A then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_long_message(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_short_message(buffer, offset)
  end
  -- Size of Transaction Begin
  if message_type == 0xBC then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.transaction_begin(buffer, offset)
  end
  -- Size of Transaction End
  if message_type == 0xBD then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.transaction_end(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0x2C then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.trade_break_message(buffer, offset)
  end
  -- Size of Settlement Message
  if message_type == 0xB9 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.settlement_message(buffer, offset)
  end
  -- Size of End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.end_of_day_summary_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.trading_status_message(buffer, offset)
  end
  -- Size of End Of Session Message
  if message_type == 0x2D then
    return cboe_futures_depthofbook_pitch_v1_1_12_size_of.end_of_session_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_futures_depthofbook_pitch_v1_1_12_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_futures_depthofbook_pitch_v1_1_12_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.time_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Definition Message
  if message_type == 0xBB then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.futures_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.add_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.add_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.reduce_size_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.reduce_size_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.modify_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.modify_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin
  if message_type == 0xBC then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.transaction_begin(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End
  if message_type == 0xBD then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.transaction_end(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Message
  if message_type == 0xB9 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.settlement_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.end_of_day_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.end_of_session_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_futures_depthofbook_pitch_v1_1_12_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_futures_depthofbook_pitch_v1_1_12_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_futures_depthofbook_pitch_v1_1_12_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.payload, range, display)

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
cboe_futures_depthofbook_pitch_v1_1_12_size_of.message_type = 1

-- Display: Message Type
cboe_futures_depthofbook_pitch_v1_1_12_display.message_type = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0xB1 then
    return "Message Type: Time Reference Message (0xB1)"
  end
  if value == 0xBB then
    return "Message Type: Futures Instrument Definition Message (0xBB)"
  end
  if value == 0x21 then
    return "Message Type: Add Order Long Message (0x21)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x23 then
    return "Message Type: Order Executed Message (0x23)"
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
  if value == 0x2A then
    return "Message Type: Trade Long Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Trade Short Message (0x2B)"
  end
  if value == 0xBC then
    return "Message Type: Transaction Begin (0xBC)"
  end
  if value == 0xBD then
    return "Message Type: Transaction End (0xBD)"
  end
  if value == 0x2C then
    return "Message Type: Trade Break Message (0x2C)"
  end
  if value == 0xB9 then
    return "Message Type: Settlement Message (0xB9)"
  end
  if value == 0xBA then
    return "Message Type: End Of Day Summary Message (0xBA)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_futures_depthofbook_pitch_v1_1_12_size_of.message_length = 1

-- Display: Message Length
cboe_futures_depthofbook_pitch_v1_1_12_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_futures_depthofbook_pitch_v1_1_12_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.message_length

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.message_type

  return index
end

-- Display: Message Header
cboe_futures_depthofbook_pitch_v1_1_12_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.message_header, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
cboe_futures_depthofbook_pitch_v1_1_12_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = cboe_futures_depthofbook_pitch_v1_1_12_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_futures_depthofbook_pitch_v1_1_12_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.message(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.message, range, display)
  end

  cboe_futures_depthofbook_pitch_v1_1_12_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Sequence
cboe_futures_depthofbook_pitch_v1_1_12_size_of.sequence = 4

-- Display: Sequence
cboe_futures_depthofbook_pitch_v1_1_12_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_futures_depthofbook_pitch_v1_1_12_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_futures_depthofbook_pitch_v1_1_12_size_of.unit = 1

-- Display: Unit
cboe_futures_depthofbook_pitch_v1_1_12_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_futures_depthofbook_pitch_v1_1_12_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_futures_depthofbook_pitch_v1_1_12_size_of.count = 1

-- Display: Count
cboe_futures_depthofbook_pitch_v1_1_12_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_futures_depthofbook_pitch_v1_1_12_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_futures_depthofbook_pitch_v1_1_12_size_of.length = 2

-- Display: Length
cboe_futures_depthofbook_pitch_v1_1_12_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_futures_depthofbook_pitch_v1_1_12_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_futures_depthofbook_pitch_v1_1_12_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.length

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.count

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.unit

  index = index + cboe_futures_depthofbook_pitch_v1_1_12_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_futures_depthofbook_pitch_v1_1_12_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
cboe_futures_depthofbook_pitch_v1_1_12_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_futures_depthofbook_pitch_v1_1_12_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_futures_depthofbook_pitch_v1_1_12_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_futures_depthofbook_pitch_v1_1_12_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_futures_depthofbook_pitch_v1_1_12_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_futures_depthofbook_pitch_v1_1_12_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = cboe_futures_depthofbook_pitch_v1_1_12_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12_display.packet_header(buffer, packet, parent)
    parent = parent:add(cboe_futures_depthofbook_pitch_v1_1_12.fields.packet_header, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
cboe_futures_depthofbook_pitch_v1_1_12_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_futures_depthofbook_pitch_v1_1_12_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Message: Struct of 2 fields
    index = cboe_futures_depthofbook_pitch_v1_1_12_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_futures_depthofbook_pitch_v1_1_12.init()
end

-- Dissector for Cboe Futures DepthOfBook Pitch 1.1.12
function cboe_futures_depthofbook_pitch_v1_1_12.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_futures_depthofbook_pitch_v1_1_12.name

  -- Dissect protocol
  local protocol = parent:add(cboe_futures_depthofbook_pitch_v1_1_12, buffer(), cboe_futures_depthofbook_pitch_v1_1_12.description, "("..buffer:len().." Bytes)")
  return cboe_futures_depthofbook_pitch_v1_1_12_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_futures_depthofbook_pitch_v1_1_12)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_futures_depthofbook_pitch_v1_1_12_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Futures DepthOfBook Pitch 1.1.12
local function cboe_futures_depthofbook_pitch_v1_1_12_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_futures_depthofbook_pitch_v1_1_12_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_futures_depthofbook_pitch_v1_1_12
  cboe_futures_depthofbook_pitch_v1_1_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Futures DepthOfBook Pitch 1.1.12
cboe_futures_depthofbook_pitch_v1_1_12:register_heuristic("udp", cboe_futures_depthofbook_pitch_v1_1_12_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.12
--   Date: Tuesday, January 12, 2021
--   Specification: CBOE_FUTURES_EXCHANGE_MULTICAST_PITCH_SPECIFICATION.pdf
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
