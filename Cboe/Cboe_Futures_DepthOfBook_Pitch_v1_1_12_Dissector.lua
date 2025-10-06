-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Futures DepthOfBook Pitch 1.1.12 Protocol
local omi_cboe_futures_depthofbook_pitch_v1_1_12 = Proto("Cboe.Futures.DepthOfBook.Pitch.v1.1.12.Lua", "Cboe Futures DepthOfBook Pitch 1.1.12")

-- Protocol table
local cboe_futures_depthofbook_pitch_v1_1_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Futures DepthOfBook Pitch 1.1.12 Fields
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.block_volume = ProtoField.new("Block Volume", "cboe.futures.depthofbook.pitch.v1.1.12.blockvolume", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.canceled_long_quantity = ProtoField.new("Canceled Long Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.canceledlongquantity", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.canceled_short_quantity = ProtoField.new("Canceled Short Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.canceledshortquantity", ftypes.UINT16)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.close_price = ProtoField.new("Close Price", "cboe.futures.depthofbook.pitch.v1.1.12.closeprice", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.contract_date = ProtoField.new("Contract Date", "cboe.futures.depthofbook.pitch.v1.1.12.contractdate", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.contract_size = ProtoField.new("Contract Size", "cboe.futures.depthofbook.pitch.v1.1.12.contractsize", ftypes.UINT16)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.count = ProtoField.new("Count", "cboe.futures.depthofbook.pitch.v1.1.12.count", ftypes.UINT8)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.discount_factor = ProtoField.new("Discount Factor", "cboe.futures.depthofbook.pitch.v1.1.12.discountfactor", ftypes.INT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.futures.depthofbook.pitch.v1.1.12.ecrpvolume", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.epoch = ProtoField.new("Epoch", "cboe.futures.depthofbook.pitch.v1.1.12.epoch", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.executedquantity", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.execution_id = ProtoField.new("Execution Id", "cboe.futures.depthofbook.pitch.v1.1.12.executionid", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.expiration_date = ProtoField.new("Expiration Date", "cboe.futures.depthofbook.pitch.v1.1.12.expirationdate", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.fed_funds_rate = ProtoField.new("Fed Funds Rate", "cboe.futures.depthofbook.pitch.v1.1.12.fedfundsrate", ftypes.INT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.future_block = ProtoField.new("Future Block", "cboe.futures.depthofbook.pitch.v1.1.12.futureblock", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.future_leg = ProtoField.new("Future Leg", "cboe.futures.depthofbook.pitch.v1.1.12.futureleg", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.futures_flags = ProtoField.new("Futures Flags", "cboe.futures.depthofbook.pitch.v1.1.12.futuresflags", ftypes.UINT8)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price = ProtoField.new("High Price", "cboe.futures.depthofbook.pitch.v1.1.12.highprice", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price_is_bid = ProtoField.new("High Price Is Bid", "cboe.futures.depthofbook.pitch.v1.1.12.highpriceisbid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price_valid = ProtoField.new("High Price Valid", "cboe.futures.depthofbook.pitch.v1.1.12.highpricevalid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.initial_strike = ProtoField.new("Initial Strike", "cboe.futures.depthofbook.pitch.v1.1.12.initialstrike", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.issue = ProtoField.new("Issue", "cboe.futures.depthofbook.pitch.v1.1.12.issue", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_count = ProtoField.new("Leg Count", "cboe.futures.depthofbook.pitch.v1.1.12.legcount", ftypes.UINT8)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_offset = ProtoField.new("Leg Offset", "cboe.futures.depthofbook.pitch.v1.1.12.legoffset", ftypes.UINT8)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.futures.depthofbook.pitch.v1.1.12.legratio", ftypes.INT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.futures.depthofbook.pitch.v1.1.12.legsymbol", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.length = ProtoField.new("Length", "cboe.futures.depthofbook.pitch.v1.1.12.length", ftypes.UINT16)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.listing_state = ProtoField.new("Listing State", "cboe.futures.depthofbook.pitch.v1.1.12.listingstate", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.long_price = ProtoField.new("Long Price", "cboe.futures.depthofbook.pitch.v1.1.12.longprice", ftypes.DOUBLE)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.long_quantity = ProtoField.new("Long Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.longquantity", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price = ProtoField.new("Low Price", "cboe.futures.depthofbook.pitch.v1.1.12.lowprice", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price_is_offer = ProtoField.new("Low Price Is Offer", "cboe.futures.depthofbook.pitch.v1.1.12.lowpriceisoffer", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price_valid = ProtoField.new("Low Price Valid", "cboe.futures.depthofbook.pitch.v1.1.12.lowpricevalid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message = ProtoField.new("Message", "cboe.futures.depthofbook.pitch.v1.1.12.message", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message_header = ProtoField.new("Message Header", "cboe.futures.depthofbook.pitch.v1.1.12.messageheader", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message_length = ProtoField.new("Message Length", "cboe.futures.depthofbook.pitch.v1.1.12.messagelength", ftypes.UINT8)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message_type = ProtoField.new("Message Type", "cboe.futures.depthofbook.pitch.v1.1.12.messagetype", ftypes.UINT8)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.futures.depthofbook.pitch.v1.1.12.midnightreference", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.num_elapsed_returns = ProtoField.new("Num Elapsed Returns", "cboe.futures.depthofbook.pitch.v1.1.12.numelapsedreturns", ftypes.UINT16)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.num_expected_prices = ProtoField.new("Num Expected Prices", "cboe.futures.depthofbook.pitch.v1.1.12.numexpectedprices", ftypes.UINT16)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.offer_close_valid = ProtoField.new("Offer Close Valid", "cboe.futures.depthofbook.pitch.v1.1.12.offerclosevalid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.open_interest = ProtoField.new("Open Interest", "cboe.futures.depthofbook.pitch.v1.1.12.openinterest", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.open_price = ProtoField.new("Open Price", "cboe.futures.depthofbook.pitch.v1.1.12.openprice", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.order_id = ProtoField.new("Order Id", "cboe.futures.depthofbook.pitch.v1.1.12.orderid", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.packet = ProtoField.new("Packet", "cboe.futures.depthofbook.pitch.v1.1.12.packet", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.packet_header = ProtoField.new("Packet Header", "cboe.futures.depthofbook.pitch.v1.1.12.packetheader", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.payload = ProtoField.new("Payload", "cboe.futures.depthofbook.pitch.v1.1.12.payload", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.previous_armvm = ProtoField.new("Previous Armvm", "cboe.futures.depthofbook.pitch.v1.1.12.previousarmvm", ftypes.INT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.previous_settlement = ProtoField.new("Previous Settlement", "cboe.futures.depthofbook.pitch.v1.1.12.previoussettlement", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.price_increment = ProtoField.new("Price Increment", "cboe.futures.depthofbook.pitch.v1.1.12.priceincrement", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.realized_variance = ProtoField.new("Realized Variance", "cboe.futures.depthofbook.pitch.v1.1.12.realizedvariance", ftypes.INT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.report_symbol = ProtoField.new("Report Symbol", "cboe.futures.depthofbook.pitch.v1.1.12.reportsymbol", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.futures.depthofbook.pitch.v1.1.12.reserved2", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.futures.depthofbook.pitch.v1.1.12.reserved3", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.futures.depthofbook.pitch.v1.1.12.reservedflags", ftypes.UINT8, nil, base.DEC, 0xFE00)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.sequence = ProtoField.new("Sequence", "cboe.futures.depthofbook.pitch.v1.1.12.sequence", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.futures.depthofbook.pitch.v1.1.12.settlementprice", ftypes.UINT64)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.short_price = ProtoField.new("Short Price", "cboe.futures.depthofbook.pitch.v1.1.12.shortprice", ftypes.DOUBLE)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.short_quantity = ProtoField.new("Short Quantity", "cboe.futures.depthofbook.pitch.v1.1.12.shortquantity", ftypes.UINT16)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.futures.depthofbook.pitch.v1.1.12.sideindicator", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.standard = ProtoField.new("Standard", "cboe.futures.depthofbook.pitch.v1.1.12.standard", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.summary_flags = ProtoField.new("Summary Flags", "cboe.futures.depthofbook.pitch.v1.1.12.summaryflags", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.symbol = ProtoField.new("Symbol", "cboe.futures.depthofbook.pitch.v1.1.12.symbol", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.time = ProtoField.new("Time", "cboe.futures.depthofbook.pitch.v1.1.12.time", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.time_offset = ProtoField.new("Time Offset", "cboe.futures.depthofbook.pitch.v1.1.12.timeoffset", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.total_volume = ProtoField.new("Total Volume", "cboe.futures.depthofbook.pitch.v1.1.12.totalvolume", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.futures.depthofbook.pitch.v1.1.12.tradecondition", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_date = ProtoField.new("Trade Date", "cboe.futures.depthofbook.pitch.v1.1.12.tradedate", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trading_status = ProtoField.new("Trading Status", "cboe.futures.depthofbook.pitch.v1.1.12.tradingstatus", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.unit = ProtoField.new("Unit", "cboe.futures.depthofbook.pitch.v1.1.12.unit", ftypes.UINT8)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.unit_timestamp = ProtoField.new("Unit Timestamp", "cboe.futures.depthofbook.pitch.v1.1.12.unittimestamp", ftypes.UINT32)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.variance = ProtoField.new("Variance", "cboe.futures.depthofbook.pitch.v1.1.12.variance", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.variance_block_offset = ProtoField.new("Variance Block Offset", "cboe.futures.depthofbook.pitch.v1.1.12.varianceblockoffset", ftypes.UINT8)

-- Cboe Futures DepthOfBook Pitch 1.1.12 messages
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.futures.depthofbook.pitch.v1.1.12.addorderlongmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.futures.depthofbook.pitch.v1.1.12.addordershortmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.futures.depthofbook.pitch.v1.1.12.deleteordermessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.end_of_day_summary_message = ProtoField.new("End Of Day Summary Message", "cboe.futures.depthofbook.pitch.v1.1.12.endofdaysummarymessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.futures.depthofbook.pitch.v1.1.12.endofsessionmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.futures_instrument_definition_message = ProtoField.new("Futures Instrument Definition Message", "cboe.futures.depthofbook.pitch.v1.1.12.futuresinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.futures.depthofbook.pitch.v1.1.12.modifyorderlongmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.futures.depthofbook.pitch.v1.1.12.modifyordershortmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.futures.depthofbook.pitch.v1.1.12.orderexecutedmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.futures.depthofbook.pitch.v1.1.12.reducesizelongmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.futures.depthofbook.pitch.v1.1.12.reducesizeshortmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.futures.depthofbook.pitch.v1.1.12.settlementmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.time_message = ProtoField.new("Time Message", "cboe.futures.depthofbook.pitch.v1.1.12.timemessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.futures.depthofbook.pitch.v1.1.12.timereferencemessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.futures.depthofbook.pitch.v1.1.12.tradebreakmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.futures.depthofbook.pitch.v1.1.12.tradelongmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.futures.depthofbook.pitch.v1.1.12.tradeshortmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.futures.depthofbook.pitch.v1.1.12.tradingstatusmessage", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.transaction_begin = ProtoField.new("Transaction Begin", "cboe.futures.depthofbook.pitch.v1.1.12.transactionbegin", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.transaction_end = ProtoField.new("Transaction End", "cboe.futures.depthofbook.pitch.v1.1.12.transactionend", ftypes.STRING)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.futures.depthofbook.pitch.v1.1.12.unitclearmessage", ftypes.STRING)

-- Cboe Futures DepthOfBook Pitch 1.1.12 generated fields
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.future_leg_index = ProtoField.new("Future Leg Index", "cboe.futures.depthofbook.pitch.v1.1.12.futurelegindex", ftypes.UINT16)
omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message_index = ProtoField.new("Message Index", "cboe.futures.depthofbook.pitch.v1.1.12.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_day_summary_message = Pref.bool("Show End Of Day Summary Message", show.end_of_day_summary_message, "Parse and add End Of Day Summary Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_leg = Pref.bool("Show Future Leg", show.future_leg, "Parse and add Future Leg to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_futures_instrument_definition_message = Pref.bool("Show Futures Instrument Definition Message", show.futures_instrument_definition_message, "Parse and add Futures Instrument Definition Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_settlement_message = Pref.bool("Show Settlement Message", show.settlement_message, "Parse and add Settlement Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_standard = Pref.bool("Show Standard", show.standard, "Parse and add Standard to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_summary_flags = Pref.bool("Show Summary Flags", show.summary_flags, "Parse and add Summary Flags to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_reference_message = Pref.bool("Show Time Reference Message", show.time_reference_message, "Parse and add Time Reference Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_begin = Pref.bool("Show Transaction Begin", show.transaction_begin, "Parse and add Transaction Begin to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_end = Pref.bool("Show Transaction End", show.transaction_end, "Parse and add Transaction End to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_variance = Pref.bool("Show Variance", show.variance, "Parse and add Variance to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_block = Pref.bool("Show Future Block", show.future_block, "Parse and add Future Block to protocol tree")
omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_long_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_long_message then
    show.add_order_long_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_short_message then
    show.add_order_short_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_add_order_short_message
    changed = true
  end
  if show.delete_order_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_delete_order_message then
    show.delete_order_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_day_summary_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_day_summary_message then
    show.end_of_day_summary_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_day_summary_message
    changed = true
  end
  if show.end_of_session_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_session_message then
    show.end_of_session_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_end_of_session_message
    changed = true
  end
  if show.future_leg ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_leg then
    show.future_leg = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_leg
    changed = true
  end
  if show.futures_instrument_definition_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_futures_instrument_definition_message then
    show.futures_instrument_definition_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_futures_instrument_definition_message
    changed = true
  end
  if show.message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message then
    show.message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message_header then
    show.message_header = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_long_message then
    show.modify_order_long_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_short_message then
    show.modify_order_short_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_order_executed_message then
    show.order_executed_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet then
    show.packet = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet_header then
    show.packet_header = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.settlement_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_settlement_message then
    show.settlement_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_settlement_message
    changed = true
  end
  if show.standard ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_standard then
    show.standard = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_standard
    changed = true
  end
  if show.summary_flags ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_summary_flags then
    show.summary_flags = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_summary_flags
    changed = true
  end
  if show.time_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_message then
    show.time_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_message
    changed = true
  end
  if show.time_reference_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_reference_message then
    show.time_reference_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_time_reference_message
    changed = true
  end
  if show.trade_break_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_break_message then
    show.trade_break_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_long_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_long_message then
    show.trade_long_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_short_message then
    show.trade_short_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trading_status_message then
    show.trading_status_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_trading_status_message
    changed = true
  end
  if show.transaction_begin ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_begin then
    show.transaction_begin = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_begin
    changed = true
  end
  if show.transaction_end ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_end then
    show.transaction_end = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_transaction_end
    changed = true
  end
  if show.unit_clear_message ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_unit_clear_message then
    show.unit_clear_message = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_unit_clear_message
    changed = true
  end
  if show.variance ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_variance then
    show.variance = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_variance
    changed = true
  end
  if show.future_block ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_block then
    show.future_block = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_future_block
    changed = true
  end
  if show.payload ~= omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_payload then
    show.payload = omi_cboe_futures_depthofbook_pitch_v1_1_12.prefs.show_payload
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

-- Time Offset
cboe_futures_depthofbook_pitch_v1_1_12.time_offset = {}

-- Size Of: Time Offset
cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size = 4

-- Display: Time Offset
cboe_futures_depthofbook_pitch_v1_1_12.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.time_offset, range, value, display)

  return offset + length, value
end

-- End Of Session Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message = {}

-- Size Of: End Of Session Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size;

-- Display: End Of Session Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 3
cboe_futures_depthofbook_pitch_v1_1_12.reserved_3 = {}

-- Size Of: Reserved 3
cboe_futures_depthofbook_pitch_v1_1_12.reserved_3.size = 3

-- Display: Reserved 3
cboe_futures_depthofbook_pitch_v1_1_12.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_futures_depthofbook_pitch_v1_1_12.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.reserved_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_futures_depthofbook_pitch_v1_1_12.trading_status = {}

-- Size Of: Trading Status
cboe_futures_depthofbook_pitch_v1_1_12.trading_status.size = 1

-- Display: Trading Status
cboe_futures_depthofbook_pitch_v1_1_12.trading_status.display = function(value)
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
cboe_futures_depthofbook_pitch_v1_1_12.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_futures_depthofbook_pitch_v1_1_12.reserved_2 = {}

-- Size Of: Reserved 2
cboe_futures_depthofbook_pitch_v1_1_12.reserved_2.size = 2

-- Display: Reserved 2
cboe_futures_depthofbook_pitch_v1_1_12.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_futures_depthofbook_pitch_v1_1_12.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_futures_depthofbook_pitch_v1_1_12.symbol = {}

-- Size Of: Symbol
cboe_futures_depthofbook_pitch_v1_1_12.symbol.size = 6

-- Display: Symbol
cboe_futures_depthofbook_pitch_v1_1_12.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_futures_depthofbook_pitch_v1_1_12.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Trading Status Message
cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message = {}

-- Size Of: Trading Status Message
cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.symbol.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.reserved_2.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.trading_status.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.reserved_3.size;

-- Display: Trading Status Message
cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte Ascii String
  index, reserved_2 = cboe_futures_depthofbook_pitch_v1_1_12.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 4 values
  index, trading_status = cboe_futures_depthofbook_pitch_v1_1_12.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte Ascii String
  index, reserved_3 = cboe_futures_depthofbook_pitch_v1_1_12.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Summary Flags
cboe_futures_depthofbook_pitch_v1_1_12.summary_flags = {}

-- Size Of: Summary Flags
cboe_futures_depthofbook_pitch_v1_1_12.summary_flags.size = 1

-- Display: Summary Flags
cboe_futures_depthofbook_pitch_v1_1_12.summary_flags.display = function(buffer, packet, parent)
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
cboe_futures_depthofbook_pitch_v1_1_12.summary_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved Flags: 7 Bit
  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reserved_flags, buffer(offset, 1))

  -- Offer Close Valid: 1 Bit
  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.offer_close_valid, buffer(offset, 1))

  -- Low Price Is Offer: 1 Bit
  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price_is_offer, buffer(offset, 1))

  -- Low Price Valid: 1 Bit
  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price_valid, buffer(offset, 1))

  -- High Price Is Bid: 1 Bit
  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price_is_bid, buffer(offset, 1))

  -- High Price Valid: 1 Bit
  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price_valid, buffer(offset, 1))
end

-- Dissect: Summary Flags
cboe_futures_depthofbook_pitch_v1_1_12.summary_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_futures_depthofbook_pitch_v1_1_12.summary_flags.display(range, packet, parent)
  local element = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.summary_flags, range, display)

  if show.summary_flags then
    cboe_futures_depthofbook_pitch_v1_1_12.summary_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Ecrp Volume
cboe_futures_depthofbook_pitch_v1_1_12.ecrp_volume = {}

-- Size Of: Ecrp Volume
cboe_futures_depthofbook_pitch_v1_1_12.ecrp_volume.size = 4

-- Display: Ecrp Volume
cboe_futures_depthofbook_pitch_v1_1_12.ecrp_volume.display = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_futures_depthofbook_pitch_v1_1_12.ecrp_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.ecrp_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.ecrp_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Block Volume
cboe_futures_depthofbook_pitch_v1_1_12.block_volume = {}

-- Size Of: Block Volume
cboe_futures_depthofbook_pitch_v1_1_12.block_volume.size = 4

-- Display: Block Volume
cboe_futures_depthofbook_pitch_v1_1_12.block_volume.display = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_futures_depthofbook_pitch_v1_1_12.block_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.block_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.block_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_futures_depthofbook_pitch_v1_1_12.total_volume = {}

-- Size Of: Total Volume
cboe_futures_depthofbook_pitch_v1_1_12.total_volume.size = 4

-- Display: Total Volume
cboe_futures_depthofbook_pitch_v1_1_12.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_futures_depthofbook_pitch_v1_1_12.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Close Price
cboe_futures_depthofbook_pitch_v1_1_12.close_price = {}

-- Size Of: Close Price
cboe_futures_depthofbook_pitch_v1_1_12.close_price.size = 8

-- Display: Close Price
cboe_futures_depthofbook_pitch_v1_1_12.close_price.display = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
cboe_futures_depthofbook_pitch_v1_1_12.close_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.close_price, range, value, display)

  return offset + length, value
end

-- Open Price
cboe_futures_depthofbook_pitch_v1_1_12.open_price = {}

-- Size Of: Open Price
cboe_futures_depthofbook_pitch_v1_1_12.open_price.size = 8

-- Display: Open Price
cboe_futures_depthofbook_pitch_v1_1_12.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
cboe_futures_depthofbook_pitch_v1_1_12.open_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.open_price, range, value, display)

  return offset + length, value
end

-- Low Price
cboe_futures_depthofbook_pitch_v1_1_12.low_price = {}

-- Size Of: Low Price
cboe_futures_depthofbook_pitch_v1_1_12.low_price.size = 8

-- Display: Low Price
cboe_futures_depthofbook_pitch_v1_1_12.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
cboe_futures_depthofbook_pitch_v1_1_12.low_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.low_price, range, value, display)

  return offset + length, value
end

-- High Price
cboe_futures_depthofbook_pitch_v1_1_12.high_price = {}

-- Size Of: High Price
cboe_futures_depthofbook_pitch_v1_1_12.high_price.size = 8

-- Display: High Price
cboe_futures_depthofbook_pitch_v1_1_12.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
cboe_futures_depthofbook_pitch_v1_1_12.high_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.high_price, range, value, display)

  return offset + length, value
end

-- Open Interest
cboe_futures_depthofbook_pitch_v1_1_12.open_interest = {}

-- Size Of: Open Interest
cboe_futures_depthofbook_pitch_v1_1_12.open_interest.size = 4

-- Display: Open Interest
cboe_futures_depthofbook_pitch_v1_1_12.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_futures_depthofbook_pitch_v1_1_12.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_futures_depthofbook_pitch_v1_1_12.trade_date = {}

-- Size Of: Trade Date
cboe_futures_depthofbook_pitch_v1_1_12.trade_date.size = 4

-- Display: Trade Date
cboe_futures_depthofbook_pitch_v1_1_12.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_futures_depthofbook_pitch_v1_1_12.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_date, range, value, display)

  return offset + length, value
end

-- End Of Day Summary Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message = {}

-- Size Of: End Of Day Summary Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.symbol.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.trade_date.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.open_interest.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.high_price.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.low_price.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.open_price.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.close_price.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.total_volume.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.block_volume.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.ecrp_volume.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.summary_flags.size;

-- Display: End Of Day Summary Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Summary Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_futures_depthofbook_pitch_v1_1_12.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Unsigned Fixed Width Integer
  index, open_interest = cboe_futures_depthofbook_pitch_v1_1_12.open_interest.dissect(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = cboe_futures_depthofbook_pitch_v1_1_12.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = cboe_futures_depthofbook_pitch_v1_1_12.low_price.dissect(buffer, index, packet, parent)

  -- Open Price: 8 Byte Unsigned Fixed Width Integer
  index, open_price = cboe_futures_depthofbook_pitch_v1_1_12.open_price.dissect(buffer, index, packet, parent)

  -- Close Price: 8 Byte Unsigned Fixed Width Integer
  index, close_price = cboe_futures_depthofbook_pitch_v1_1_12.close_price.dissect(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = cboe_futures_depthofbook_pitch_v1_1_12.total_volume.dissect(buffer, index, packet, parent)

  -- Block Volume: 4 Byte Unsigned Fixed Width Integer
  index, block_volume = cboe_futures_depthofbook_pitch_v1_1_12.block_volume.dissect(buffer, index, packet, parent)

  -- Ecrp Volume: 4 Byte Unsigned Fixed Width Integer
  index, ecrp_volume = cboe_futures_depthofbook_pitch_v1_1_12.ecrp_volume.dissect(buffer, index, packet, parent)

  -- Summary Flags: Struct of 6 fields
  index, summary_flags = cboe_futures_depthofbook_pitch_v1_1_12.summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Summary Message
cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_day_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue
cboe_futures_depthofbook_pitch_v1_1_12.issue = {}

-- Size Of: Issue
cboe_futures_depthofbook_pitch_v1_1_12.issue.size = 1

-- Display: Issue
cboe_futures_depthofbook_pitch_v1_1_12.issue.display = function(value)
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
cboe_futures_depthofbook_pitch_v1_1_12.issue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.issue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.issue, range, value, display)

  return offset + length, value
end

-- Settlement Price
cboe_futures_depthofbook_pitch_v1_1_12.settlement_price = {}

-- Size Of: Settlement Price
cboe_futures_depthofbook_pitch_v1_1_12.settlement_price.size = 8

-- Display: Settlement Price
cboe_futures_depthofbook_pitch_v1_1_12.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
cboe_futures_depthofbook_pitch_v1_1_12.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.settlement_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Message
cboe_futures_depthofbook_pitch_v1_1_12.settlement_message = {}

-- Size Of: Settlement Message
cboe_futures_depthofbook_pitch_v1_1_12.settlement_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.symbol.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.trade_date.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.settlement_price.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.issue.size;

-- Display: Settlement Message
cboe_futures_depthofbook_pitch_v1_1_12.settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_futures_depthofbook_pitch_v1_1_12.settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_futures_depthofbook_pitch_v1_1_12.trade_date.dissect(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Unsigned Fixed Width Integer
  index, settlement_price = cboe_futures_depthofbook_pitch_v1_1_12.settlement_price.dissect(buffer, index, packet, parent)

  -- Issue: 1 Byte Ascii String Enum with 3 values
  index, issue = cboe_futures_depthofbook_pitch_v1_1_12.issue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_futures_depthofbook_pitch_v1_1_12.settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.settlement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.settlement_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Id
cboe_futures_depthofbook_pitch_v1_1_12.execution_id = {}

-- Size Of: Execution Id
cboe_futures_depthofbook_pitch_v1_1_12.execution_id.size = 8

-- Display: Execution Id
cboe_futures_depthofbook_pitch_v1_1_12.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_futures_depthofbook_pitch_v1_1_12.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Trade Break Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message = {}

-- Size Of: Trade Break Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.execution_id.size;

-- Display: Trade Break Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_futures_depthofbook_pitch_v1_1_12.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End
cboe_futures_depthofbook_pitch_v1_1_12.transaction_end = {}

-- Size Of: Transaction End
cboe_futures_depthofbook_pitch_v1_1_12.transaction_end.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size;

-- Display: Transaction End
cboe_futures_depthofbook_pitch_v1_1_12.transaction_end.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End
cboe_futures_depthofbook_pitch_v1_1_12.transaction_end.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End
cboe_futures_depthofbook_pitch_v1_1_12.transaction_end.dissect = function(buffer, offset, packet, parent)
  if show.transaction_end then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.transaction_end, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.transaction_end.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.transaction_end.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.transaction_end.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin
cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin = {}

-- Size Of: Transaction Begin
cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size;

-- Display: Transaction Begin
cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin
cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin
cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin.dissect = function(buffer, offset, packet, parent)
  if show.transaction_begin then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.transaction_begin, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin.fields(buffer, offset, packet, parent)
  end
end

-- Trade Condition
cboe_futures_depthofbook_pitch_v1_1_12.trade_condition = {}

-- Size Of: Trade Condition
cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.size = 1

-- Display: Trade Condition
cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.display = function(value)
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
cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Short Price
cboe_futures_depthofbook_pitch_v1_1_12.short_price = {}

-- Size Of: Short Price
cboe_futures_depthofbook_pitch_v1_1_12.short_price.size = 2

-- Display: Short Price
cboe_futures_depthofbook_pitch_v1_1_12.short_price.display = function(value)
  return "Short Price: "..value
end

-- Translate: Short Price
cboe_futures_depthofbook_pitch_v1_1_12.short_price.translate = function(raw)
  return raw/100
end

-- Dissect: Short Price
cboe_futures_depthofbook_pitch_v1_1_12.short_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.short_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_futures_depthofbook_pitch_v1_1_12.short_price.translate(raw)
  local display = cboe_futures_depthofbook_pitch_v1_1_12.short_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.short_price, range, value, display)

  return offset + length, value
end

-- Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12.short_quantity = {}

-- Size Of: Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.size = 2

-- Display: Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.display = function(value)
  return "Short Quantity: "..value
end

-- Dissect: Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.short_quantity, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_futures_depthofbook_pitch_v1_1_12.side_indicator = {}

-- Size Of: Side Indicator
cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.size = 1

-- Display: Side Indicator
cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_futures_depthofbook_pitch_v1_1_12.order_id = {}

-- Size Of: Order Id
cboe_futures_depthofbook_pitch_v1_1_12.order_id.size = 8

-- Display: Order Id
cboe_futures_depthofbook_pitch_v1_1_12.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Short Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message = {}

-- Size Of: Trade Short Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.symbol.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.short_price.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.execution_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.size;

-- Display: Trade Short Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_futures_depthofbook_pitch_v1_1_12.short_price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_futures_depthofbook_pitch_v1_1_12.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 5 values
  index, trade_condition = cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Price
cboe_futures_depthofbook_pitch_v1_1_12.long_price = {}

-- Size Of: Long Price
cboe_futures_depthofbook_pitch_v1_1_12.long_price.size = 8

-- Display: Long Price
cboe_futures_depthofbook_pitch_v1_1_12.long_price.display = function(value)
  return "Long Price: "..value
end

-- Translate: Long Price
cboe_futures_depthofbook_pitch_v1_1_12.long_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Long Price
cboe_futures_depthofbook_pitch_v1_1_12.long_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.long_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_futures_depthofbook_pitch_v1_1_12.long_price.translate(raw)
  local display = cboe_futures_depthofbook_pitch_v1_1_12.long_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.long_price, range, value, display)

  return offset + length, value
end

-- Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12.long_quantity = {}

-- Size Of: Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.size = 4

-- Display: Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.display = function(value)
  return "Long Quantity: "..value
end

-- Dissect: Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.long_quantity, range, value, display)

  return offset + length, value
end

-- Trade Long Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message = {}

-- Size Of: Trade Long Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.symbol.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.long_price.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.execution_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.size;

-- Display: Trade Long Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_futures_depthofbook_pitch_v1_1_12.long_price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_futures_depthofbook_pitch_v1_1_12.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 5 values
  index, trade_condition = cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message = {}

-- Size Of: Delete Order Message
cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size;

-- Display: Delete Order Message
cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message = {}

-- Size Of: Modify Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.short_price.size;

-- Display: Modify Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_futures_depthofbook_pitch_v1_1_12.short_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message = {}

-- Size Of: Modify Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.long_price.size;

-- Display: Modify Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_futures_depthofbook_pitch_v1_1_12.long_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12.canceled_short_quantity = {}

-- Size Of: Canceled Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12.canceled_short_quantity.size = 2

-- Display: Canceled Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12.canceled_short_quantity.display = function(value)
  return "Canceled Short Quantity: "..value
end

-- Dissect: Canceled Short Quantity
cboe_futures_depthofbook_pitch_v1_1_12.canceled_short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.canceled_short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.canceled_short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.canceled_short_quantity, range, value, display)

  return offset + length, value
end

-- Reduce Size Short Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message = {}

-- Size Of: Reduce Size Short Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.canceled_short_quantity.size;

-- Display: Reduce Size Short Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, canceled_short_quantity = cboe_futures_depthofbook_pitch_v1_1_12.canceled_short_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12.canceled_long_quantity = {}

-- Size Of: Canceled Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12.canceled_long_quantity.size = 4

-- Display: Canceled Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12.canceled_long_quantity.display = function(value)
  return "Canceled Long Quantity: "..value
end

-- Dissect: Canceled Long Quantity
cboe_futures_depthofbook_pitch_v1_1_12.canceled_long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.canceled_long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.canceled_long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.canceled_long_quantity, range, value, display)

  return offset + length, value
end

-- Reduce Size Long Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message = {}

-- Size Of: Reduce Size Long Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.canceled_long_quantity.size;

-- Display: Reduce Size Long Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_long_quantity = cboe_futures_depthofbook_pitch_v1_1_12.canceled_long_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed Quantity
cboe_futures_depthofbook_pitch_v1_1_12.executed_quantity = {}

-- Size Of: Executed Quantity
cboe_futures_depthofbook_pitch_v1_1_12.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_futures_depthofbook_pitch_v1_1_12.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_futures_depthofbook_pitch_v1_1_12.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed Message
cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message = {}

-- Size Of: Order Executed Message
cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.executed_quantity.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.execution_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.size;

-- Display: Order Executed Message
cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_futures_depthofbook_pitch_v1_1_12.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_futures_depthofbook_pitch_v1_1_12.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 5 values
  index, trade_condition = cboe_futures_depthofbook_pitch_v1_1_12.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message = {}

-- Size Of: Add Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.symbol.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.short_price.size;

-- Display: Add Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_futures_depthofbook_pitch_v1_1_12.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_futures_depthofbook_pitch_v1_1_12.short_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message = {}

-- Size Of: Add Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.order_id.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.symbol.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.long_price.size;

-- Display: Add Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_futures_depthofbook_pitch_v1_1_12.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_futures_depthofbook_pitch_v1_1_12.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_futures_depthofbook_pitch_v1_1_12.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_futures_depthofbook_pitch_v1_1_12.long_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Symbol
cboe_futures_depthofbook_pitch_v1_1_12.leg_symbol = {}

-- Size Of: Leg Symbol
cboe_futures_depthofbook_pitch_v1_1_12.leg_symbol.size = 6

-- Display: Leg Symbol
cboe_futures_depthofbook_pitch_v1_1_12.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_futures_depthofbook_pitch_v1_1_12.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.leg_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_futures_depthofbook_pitch_v1_1_12.leg_ratio = {}

-- Size Of: Leg Ratio
cboe_futures_depthofbook_pitch_v1_1_12.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_futures_depthofbook_pitch_v1_1_12.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_futures_depthofbook_pitch_v1_1_12.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Future Leg
cboe_futures_depthofbook_pitch_v1_1_12.future_leg = {}

-- Size Of: Future Leg
cboe_futures_depthofbook_pitch_v1_1_12.future_leg.size =
  cboe_futures_depthofbook_pitch_v1_1_12.leg_ratio.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.leg_symbol.size;

-- Display: Future Leg
cboe_futures_depthofbook_pitch_v1_1_12.future_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Leg
cboe_futures_depthofbook_pitch_v1_1_12.future_leg.fields = function(buffer, offset, packet, parent, future_leg_index)
  local index = offset

  -- Implicit Future Leg Index
  if future_leg_index ~= nil then
    local iteration = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.future_leg_index, future_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio: 4 Byte Signed Fixed Width Integer
  index, leg_ratio = cboe_futures_depthofbook_pitch_v1_1_12.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Symbol: 6 Byte Ascii String
  index, leg_symbol = cboe_futures_depthofbook_pitch_v1_1_12.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Leg
cboe_futures_depthofbook_pitch_v1_1_12.future_leg.dissect = function(buffer, offset, packet, parent, future_leg_index)
  if show.future_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.future_leg, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.future_leg.fields(buffer, offset, packet, parent, future_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.future_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.future_leg.fields(buffer, offset, packet, parent, future_leg_index)
  end
end

-- Fed Funds Rate
cboe_futures_depthofbook_pitch_v1_1_12.fed_funds_rate = {}

-- Size Of: Fed Funds Rate
cboe_futures_depthofbook_pitch_v1_1_12.fed_funds_rate.size = 8

-- Display: Fed Funds Rate
cboe_futures_depthofbook_pitch_v1_1_12.fed_funds_rate.display = function(value)
  return "Fed Funds Rate: "..value
end

-- Dissect: Fed Funds Rate
cboe_futures_depthofbook_pitch_v1_1_12.fed_funds_rate.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.fed_funds_rate.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.fed_funds_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.fed_funds_rate, range, value, display)

  return offset + length, value
end

-- Previous Armvm
cboe_futures_depthofbook_pitch_v1_1_12.previous_armvm = {}

-- Size Of: Previous Armvm
cboe_futures_depthofbook_pitch_v1_1_12.previous_armvm.size = 8

-- Display: Previous Armvm
cboe_futures_depthofbook_pitch_v1_1_12.previous_armvm.display = function(value)
  return "Previous Armvm: "..value
end

-- Dissect: Previous Armvm
cboe_futures_depthofbook_pitch_v1_1_12.previous_armvm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.previous_armvm.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.previous_armvm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.previous_armvm, range, value, display)

  return offset + length, value
end

-- Initial Strike
cboe_futures_depthofbook_pitch_v1_1_12.initial_strike = {}

-- Size Of: Initial Strike
cboe_futures_depthofbook_pitch_v1_1_12.initial_strike.size = 8

-- Display: Initial Strike
cboe_futures_depthofbook_pitch_v1_1_12.initial_strike.display = function(value)
  return "Initial Strike: "..value
end

-- Dissect: Initial Strike
cboe_futures_depthofbook_pitch_v1_1_12.initial_strike.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.initial_strike.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.initial_strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.initial_strike, range, value, display)

  return offset + length, value
end

-- Discount Factor
cboe_futures_depthofbook_pitch_v1_1_12.discount_factor = {}

-- Size Of: Discount Factor
cboe_futures_depthofbook_pitch_v1_1_12.discount_factor.size = 8

-- Display: Discount Factor
cboe_futures_depthofbook_pitch_v1_1_12.discount_factor.display = function(value)
  return "Discount Factor: "..value
end

-- Dissect: Discount Factor
cboe_futures_depthofbook_pitch_v1_1_12.discount_factor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.discount_factor.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.discount_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.discount_factor, range, value, display)

  return offset + length, value
end

-- Previous Settlement
cboe_futures_depthofbook_pitch_v1_1_12.previous_settlement = {}

-- Size Of: Previous Settlement
cboe_futures_depthofbook_pitch_v1_1_12.previous_settlement.size = 8

-- Display: Previous Settlement
cboe_futures_depthofbook_pitch_v1_1_12.previous_settlement.display = function(value)
  return "Previous Settlement: "..value
end

-- Dissect: Previous Settlement
cboe_futures_depthofbook_pitch_v1_1_12.previous_settlement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.previous_settlement.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.previous_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.previous_settlement, range, value, display)

  return offset + length, value
end

-- Num Elapsed Returns
cboe_futures_depthofbook_pitch_v1_1_12.num_elapsed_returns = {}

-- Size Of: Num Elapsed Returns
cboe_futures_depthofbook_pitch_v1_1_12.num_elapsed_returns.size = 2

-- Display: Num Elapsed Returns
cboe_futures_depthofbook_pitch_v1_1_12.num_elapsed_returns.display = function(value)
  return "Num Elapsed Returns: "..value
end

-- Dissect: Num Elapsed Returns
cboe_futures_depthofbook_pitch_v1_1_12.num_elapsed_returns.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.num_elapsed_returns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.num_elapsed_returns.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.num_elapsed_returns, range, value, display)

  return offset + length, value
end

-- Num Expected Prices
cboe_futures_depthofbook_pitch_v1_1_12.num_expected_prices = {}

-- Size Of: Num Expected Prices
cboe_futures_depthofbook_pitch_v1_1_12.num_expected_prices.size = 2

-- Display: Num Expected Prices
cboe_futures_depthofbook_pitch_v1_1_12.num_expected_prices.display = function(value)
  return "Num Expected Prices: "..value
end

-- Dissect: Num Expected Prices
cboe_futures_depthofbook_pitch_v1_1_12.num_expected_prices.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.num_expected_prices.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.num_expected_prices.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.num_expected_prices, range, value, display)

  return offset + length, value
end

-- Realized Variance
cboe_futures_depthofbook_pitch_v1_1_12.realized_variance = {}

-- Size Of: Realized Variance
cboe_futures_depthofbook_pitch_v1_1_12.realized_variance.size = 8

-- Display: Realized Variance
cboe_futures_depthofbook_pitch_v1_1_12.realized_variance.display = function(value)
  return "Realized Variance: "..value
end

-- Dissect: Realized Variance
cboe_futures_depthofbook_pitch_v1_1_12.realized_variance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.realized_variance.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.realized_variance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.realized_variance, range, value, display)

  return offset + length, value
end

-- Variance
cboe_futures_depthofbook_pitch_v1_1_12.variance = {}

-- Calculate size of: Variance
cboe_futures_depthofbook_pitch_v1_1_12.variance.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.realized_variance.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.num_expected_prices.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.num_elapsed_returns.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.previous_settlement.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.discount_factor.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.initial_strike.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.previous_armvm.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.fed_funds_rate.size

  -- Calculate field size from count
  local future_leg_count = buffer(offset + index - 59, 1):le_uint()
  index = index + future_leg_count * 10

  return index
end

-- Display: Variance
cboe_futures_depthofbook_pitch_v1_1_12.variance.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Variance
cboe_futures_depthofbook_pitch_v1_1_12.variance.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Realized Variance: 8 Byte Signed Fixed Width Integer
  index, realized_variance = cboe_futures_depthofbook_pitch_v1_1_12.realized_variance.dissect(buffer, index, packet, parent)

  -- Num Expected Prices: 2 Byte Unsigned Fixed Width Integer
  index, num_expected_prices = cboe_futures_depthofbook_pitch_v1_1_12.num_expected_prices.dissect(buffer, index, packet, parent)

  -- Num Elapsed Returns: 2 Byte Unsigned Fixed Width Integer
  index, num_elapsed_returns = cboe_futures_depthofbook_pitch_v1_1_12.num_elapsed_returns.dissect(buffer, index, packet, parent)

  -- Previous Settlement: 8 Byte Unsigned Fixed Width Integer
  index, previous_settlement = cboe_futures_depthofbook_pitch_v1_1_12.previous_settlement.dissect(buffer, index, packet, parent)

  -- Discount Factor: 8 Byte Signed Fixed Width Integer
  index, discount_factor = cboe_futures_depthofbook_pitch_v1_1_12.discount_factor.dissect(buffer, index, packet, parent)

  -- Initial Strike: 8 Byte Unsigned Fixed Width Integer
  index, initial_strike = cboe_futures_depthofbook_pitch_v1_1_12.initial_strike.dissect(buffer, index, packet, parent)

  -- Previous Armvm: 8 Byte Signed Fixed Width Integer
  index, previous_armvm = cboe_futures_depthofbook_pitch_v1_1_12.previous_armvm.dissect(buffer, index, packet, parent)

  -- Fed Funds Rate: 8 Byte Signed Fixed Width Integer
  index, fed_funds_rate = cboe_futures_depthofbook_pitch_v1_1_12.fed_funds_rate.dissect(buffer, index, packet, parent)

  -- Dependency element: Leg Count
  local leg_count = buffer(offset - 7, 1):le_uint()

  -- Repeating: Future Leg
  for future_leg_index = 1, leg_count do
    index, future_leg = cboe_futures_depthofbook_pitch_v1_1_12.future_leg.dissect(buffer, index, packet, parent, future_leg_index)
  end

  return index
end

-- Dissect: Variance
cboe_futures_depthofbook_pitch_v1_1_12.variance.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.variance then
    local length = cboe_futures_depthofbook_pitch_v1_1_12.variance.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.variance.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.variance, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12.variance.fields(buffer, offset, packet, parent)
end

-- Standard
cboe_futures_depthofbook_pitch_v1_1_12.standard = {}

-- Calculate size of: Standard
cboe_futures_depthofbook_pitch_v1_1_12.standard.size = function(buffer, offset)
  local index = 0

  -- Calculate field size from count
  local future_leg_count = buffer(offset + index - 7, 1):le_uint()
  index = index + future_leg_count * 10

  return index
end

-- Display: Standard
cboe_futures_depthofbook_pitch_v1_1_12.standard.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Standard
cboe_futures_depthofbook_pitch_v1_1_12.standard.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Leg Count
  local leg_count = buffer(offset - 7, 1):le_uint()

  -- Repeating: Future Leg
  for future_leg_index = 1, leg_count do
    index, future_leg = cboe_futures_depthofbook_pitch_v1_1_12.future_leg.dissect(buffer, index, packet, parent, future_leg_index)
  end

  return index
end

-- Dissect: Standard
cboe_futures_depthofbook_pitch_v1_1_12.standard.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.standard then
    local length = cboe_futures_depthofbook_pitch_v1_1_12.standard.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.standard.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.standard, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12.standard.fields(buffer, offset, packet, parent)
end

-- Future Block
cboe_futures_depthofbook_pitch_v1_1_12.future_block = {}

-- Calculate runtime size of: Future Block
cboe_futures_depthofbook_pitch_v1_1_12.future_block.size = function(buffer, offset, futures_flags)
  -- Size of Standard
  if futures_flags == 0 then
    return cboe_futures_depthofbook_pitch_v1_1_12.standard.size(buffer, offset)
  end
  -- Size of Variance
  if futures_flags == 1 then
    return cboe_futures_depthofbook_pitch_v1_1_12.variance.size(buffer, offset)
  end

  return 0
end

-- Display: Future Block
cboe_futures_depthofbook_pitch_v1_1_12.future_block.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Future Block
cboe_futures_depthofbook_pitch_v1_1_12.future_block.branches = function(buffer, offset, packet, parent, futures_flags)
  -- Dissect Standard
  if futures_flags == 0 then
    return cboe_futures_depthofbook_pitch_v1_1_12.standard.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Variance
  if futures_flags == 1 then
    return cboe_futures_depthofbook_pitch_v1_1_12.variance.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Future Block
cboe_futures_depthofbook_pitch_v1_1_12.future_block.dissect = function(buffer, offset, packet, parent, futures_flags)
  if not show.future_block then
    return cboe_futures_depthofbook_pitch_v1_1_12.future_block.branches(buffer, offset, packet, parent, futures_flags)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_futures_depthofbook_pitch_v1_1_12.future_block.size(buffer, offset, futures_flags)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_futures_depthofbook_pitch_v1_1_12.future_block.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.future_block, range, display)

  return cboe_futures_depthofbook_pitch_v1_1_12.future_block.branches(buffer, offset, packet, parent, futures_flags)
end

-- Contract Date
cboe_futures_depthofbook_pitch_v1_1_12.contract_date = {}

-- Size Of: Contract Date
cboe_futures_depthofbook_pitch_v1_1_12.contract_date.size = 4

-- Display: Contract Date
cboe_futures_depthofbook_pitch_v1_1_12.contract_date.display = function(value)
  return "Contract Date: "..value
end

-- Dissect: Contract Date
cboe_futures_depthofbook_pitch_v1_1_12.contract_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.contract_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.contract_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.contract_date, range, value, display)

  return offset + length, value
end

-- Variance Block Offset
cboe_futures_depthofbook_pitch_v1_1_12.variance_block_offset = {}

-- Size Of: Variance Block Offset
cboe_futures_depthofbook_pitch_v1_1_12.variance_block_offset.size = 1

-- Display: Variance Block Offset
cboe_futures_depthofbook_pitch_v1_1_12.variance_block_offset.display = function(value)
  return "Variance Block Offset: "..value
end

-- Dissect: Variance Block Offset
cboe_futures_depthofbook_pitch_v1_1_12.variance_block_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.variance_block_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.variance_block_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.variance_block_offset, range, value, display)

  return offset + length, value
end

-- Leg Offset
cboe_futures_depthofbook_pitch_v1_1_12.leg_offset = {}

-- Size Of: Leg Offset
cboe_futures_depthofbook_pitch_v1_1_12.leg_offset.size = 1

-- Display: Leg Offset
cboe_futures_depthofbook_pitch_v1_1_12.leg_offset.display = function(value)
  return "Leg Offset: "..value
end

-- Dissect: Leg Offset
cboe_futures_depthofbook_pitch_v1_1_12.leg_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.leg_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.leg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_offset, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_futures_depthofbook_pitch_v1_1_12.leg_count = {}

-- Size Of: Leg Count
cboe_futures_depthofbook_pitch_v1_1_12.leg_count.size = 1

-- Display: Leg Count
cboe_futures_depthofbook_pitch_v1_1_12.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_futures_depthofbook_pitch_v1_1_12.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Price Increment
cboe_futures_depthofbook_pitch_v1_1_12.price_increment = {}

-- Size Of: Price Increment
cboe_futures_depthofbook_pitch_v1_1_12.price_increment.size = 8

-- Display: Price Increment
cboe_futures_depthofbook_pitch_v1_1_12.price_increment.display = function(value)
  return "Price Increment: "..value
end

-- Dissect: Price Increment
cboe_futures_depthofbook_pitch_v1_1_12.price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.price_increment.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Listing State
cboe_futures_depthofbook_pitch_v1_1_12.listing_state = {}

-- Size Of: Listing State
cboe_futures_depthofbook_pitch_v1_1_12.listing_state.size = 1

-- Display: Listing State
cboe_futures_depthofbook_pitch_v1_1_12.listing_state.display = function(value)
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
cboe_futures_depthofbook_pitch_v1_1_12.listing_state.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.listing_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.listing_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.listing_state, range, value, display)

  return offset + length, value
end

-- Contract Size
cboe_futures_depthofbook_pitch_v1_1_12.contract_size = {}

-- Size Of: Contract Size
cboe_futures_depthofbook_pitch_v1_1_12.contract_size.size = 2

-- Display: Contract Size
cboe_futures_depthofbook_pitch_v1_1_12.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_futures_depthofbook_pitch_v1_1_12.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Expiration Date
cboe_futures_depthofbook_pitch_v1_1_12.expiration_date = {}

-- Size Of: Expiration Date
cboe_futures_depthofbook_pitch_v1_1_12.expiration_date.size = 4

-- Display: Expiration Date
cboe_futures_depthofbook_pitch_v1_1_12.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
cboe_futures_depthofbook_pitch_v1_1_12.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Futures Flags
cboe_futures_depthofbook_pitch_v1_1_12.futures_flags = {}

-- Size Of: Futures Flags
cboe_futures_depthofbook_pitch_v1_1_12.futures_flags.size = 1

-- Display: Futures Flags
cboe_futures_depthofbook_pitch_v1_1_12.futures_flags.display = function(value)
  if value == 0 then
    return "Futures Flags: Standard (0)"
  end
  if value == 1 then
    return "Futures Flags: Variance (1)"
  end

  return "Futures Flags: Unknown("..value..")"
end

-- Dissect: Futures Flags
cboe_futures_depthofbook_pitch_v1_1_12.futures_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.futures_flags.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.futures_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.futures_flags, range, value, display)

  return offset + length, value
end

-- Report Symbol
cboe_futures_depthofbook_pitch_v1_1_12.report_symbol = {}

-- Size Of: Report Symbol
cboe_futures_depthofbook_pitch_v1_1_12.report_symbol.size = 6

-- Display: Report Symbol
cboe_futures_depthofbook_pitch_v1_1_12.report_symbol.display = function(value)
  return "Report Symbol: "..value
end

-- Dissect: Report Symbol
cboe_futures_depthofbook_pitch_v1_1_12.report_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.report_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.report_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.report_symbol, range, value, display)

  return offset + length, value
end

-- Unit Timestamp
cboe_futures_depthofbook_pitch_v1_1_12.unit_timestamp = {}

-- Size Of: Unit Timestamp
cboe_futures_depthofbook_pitch_v1_1_12.unit_timestamp.size = 4

-- Display: Unit Timestamp
cboe_futures_depthofbook_pitch_v1_1_12.unit_timestamp.display = function(value)
  return "Unit Timestamp: "..value
end

-- Dissect: Unit Timestamp
cboe_futures_depthofbook_pitch_v1_1_12.unit_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.unit_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.unit_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.unit_timestamp, range, value, display)

  return offset + length, value
end

-- Futures Instrument Definition Message
cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message = {}

-- Calculate size of: Futures Instrument Definition Message
cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.symbol.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.unit_timestamp.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.report_symbol.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.futures_flags.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.expiration_date.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.contract_size.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.listing_state.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.price_increment.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.leg_count.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.leg_offset.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.variance_block_offset.size

  index = index + cboe_futures_depthofbook_pitch_v1_1_12.contract_date.size

  -- Calculate runtime size of Future Block field
  local future_block_offset = offset + index
  local future_block_type = buffer(future_block_offset - 23, 1):le_uint()
  index = index + cboe_futures_depthofbook_pitch_v1_1_12.future_block.size(buffer, future_block_offset, future_block_type)

  return index
end

-- Display: Futures Instrument Definition Message
cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Definition Message
cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_futures_depthofbook_pitch_v1_1_12.symbol.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, unit_timestamp = cboe_futures_depthofbook_pitch_v1_1_12.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Report Symbol: 6 Byte Ascii String
  index, report_symbol = cboe_futures_depthofbook_pitch_v1_1_12.report_symbol.dissect(buffer, index, packet, parent)

  -- Futures Flags: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, futures_flags = cboe_futures_depthofbook_pitch_v1_1_12.futures_flags.dissect(buffer, index, packet, parent)

  -- Expiration Date: 4 Byte Unsigned Fixed Width Integer
  index, expiration_date = cboe_futures_depthofbook_pitch_v1_1_12.expiration_date.dissect(buffer, index, packet, parent)

  -- Contract Size: 2 Byte Unsigned Fixed Width Integer
  index, contract_size = cboe_futures_depthofbook_pitch_v1_1_12.contract_size.dissect(buffer, index, packet, parent)

  -- Listing State: 1 Byte Ascii String Enum with 3 values
  index, listing_state = cboe_futures_depthofbook_pitch_v1_1_12.listing_state.dissect(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Unsigned Fixed Width Integer
  index, price_increment = cboe_futures_depthofbook_pitch_v1_1_12.price_increment.dissect(buffer, index, packet, parent)

  -- Leg Count: 1 Byte Unsigned Fixed Width Integer
  index, leg_count = cboe_futures_depthofbook_pitch_v1_1_12.leg_count.dissect(buffer, index, packet, parent)

  -- Leg Offset: 1 Byte Unsigned Fixed Width Integer
  index, leg_offset = cboe_futures_depthofbook_pitch_v1_1_12.leg_offset.dissect(buffer, index, packet, parent)

  -- Variance Block Offset: 1 Byte Unsigned Fixed Width Integer
  index, variance_block_offset = cboe_futures_depthofbook_pitch_v1_1_12.variance_block_offset.dissect(buffer, index, packet, parent)

  -- Contract Date: 4 Byte Unsigned Fixed Width Integer
  index, contract_date = cboe_futures_depthofbook_pitch_v1_1_12.contract_date.dissect(buffer, index, packet, parent)

  -- Future Block: Runtime Type with 2 branches
  index = cboe_futures_depthofbook_pitch_v1_1_12.future_block.dissect(buffer, index, packet, parent, futures_flags)

  return index
end

-- Dissect: Futures Instrument Definition Message
cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.futures_instrument_definition_message then
    local length = cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.futures_instrument_definition_message, range, display)
  end

  return cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
end

-- Time
cboe_futures_depthofbook_pitch_v1_1_12.time = {}

-- Size Of: Time
cboe_futures_depthofbook_pitch_v1_1_12.time.size = 4

-- Display: Time
cboe_futures_depthofbook_pitch_v1_1_12.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_futures_depthofbook_pitch_v1_1_12.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.time, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_futures_depthofbook_pitch_v1_1_12.midnight_reference = {}

-- Size Of: Midnight Reference
cboe_futures_depthofbook_pitch_v1_1_12.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_futures_depthofbook_pitch_v1_1_12.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_futures_depthofbook_pitch_v1_1_12.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Time Reference Message
cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message = {}

-- Size Of: Time Reference Message
cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.midnight_reference.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.time.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.trade_date.size;

-- Display: Time Reference Message
cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: 4 Byte Unsigned Fixed Width Integer
  index, midnight_reference = cboe_futures_depthofbook_pitch_v1_1_12.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_futures_depthofbook_pitch_v1_1_12.time.dissect(buffer, index, packet, parent)

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_futures_depthofbook_pitch_v1_1_12.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.time_reference_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message = {}

-- Size Of: Unit Clear Message
cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time_offset.size;

-- Display: Unit Clear Message
cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_futures_depthofbook_pitch_v1_1_12.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Epoch
cboe_futures_depthofbook_pitch_v1_1_12.epoch = {}

-- Size Of: Epoch
cboe_futures_depthofbook_pitch_v1_1_12.epoch.size = 4

-- Display: Epoch
cboe_futures_depthofbook_pitch_v1_1_12.epoch.display = function(value)
  return "Epoch: "..value
end

-- Dissect: Epoch
cboe_futures_depthofbook_pitch_v1_1_12.epoch.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.epoch.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.epoch.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.epoch, range, value, display)

  return offset + length, value
end

-- Time Message
cboe_futures_depthofbook_pitch_v1_1_12.time_message = {}

-- Size Of: Time Message
cboe_futures_depthofbook_pitch_v1_1_12.time_message.size =
  cboe_futures_depthofbook_pitch_v1_1_12.time.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.epoch.size;

-- Display: Time Message
cboe_futures_depthofbook_pitch_v1_1_12.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_futures_depthofbook_pitch_v1_1_12.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_futures_depthofbook_pitch_v1_1_12.time.dissect(buffer, index, packet, parent)

  -- Epoch: 4 Byte Unsigned Fixed Width Integer
  index, epoch = cboe_futures_depthofbook_pitch_v1_1_12.epoch.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_futures_depthofbook_pitch_v1_1_12.time_message.dissect = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.time_message, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_futures_depthofbook_pitch_v1_1_12.payload = {}

-- Calculate runtime size of: Payload
cboe_futures_depthofbook_pitch_v1_1_12.payload.size = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_futures_depthofbook_pitch_v1_1_12.time_message.size(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message.size(buffer, offset)
  end
  -- Size of Time Reference Message
  if message_type == 0xB1 then
    return cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message.size(buffer, offset)
  end
  -- Size of Futures Instrument Definition Message
  if message_type == 0xBB then
    return cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message.size(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x21 then
    return cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message.size(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message.size(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message.size(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message.size(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message.size(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message.size(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message.size(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x2A then
    return cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message.size(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message.size(buffer, offset)
  end
  -- Size of Transaction Begin
  if message_type == 0xBC then
    return cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin.size(buffer, offset)
  end
  -- Size of Transaction End
  if message_type == 0xBD then
    return cboe_futures_depthofbook_pitch_v1_1_12.transaction_end.size(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0x2C then
    return cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message.size(buffer, offset)
  end
  -- Size of Settlement Message
  if message_type == 0xB9 then
    return cboe_futures_depthofbook_pitch_v1_1_12.settlement_message.size(buffer, offset)
  end
  -- Size of End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message.size(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message.size(buffer, offset)
  end
  -- Size of End Of Session Message
  if message_type == 0x2D then
    return cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_futures_depthofbook_pitch_v1_1_12.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_futures_depthofbook_pitch_v1_1_12.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_futures_depthofbook_pitch_v1_1_12.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_futures_depthofbook_pitch_v1_1_12.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_futures_depthofbook_pitch_v1_1_12.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Definition Message
  if message_type == 0xBB then
    return cboe_futures_depthofbook_pitch_v1_1_12.futures_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_futures_depthofbook_pitch_v1_1_12.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_futures_depthofbook_pitch_v1_1_12.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_futures_depthofbook_pitch_v1_1_12.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_futures_depthofbook_pitch_v1_1_12.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_futures_depthofbook_pitch_v1_1_12.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_futures_depthofbook_pitch_v1_1_12.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_futures_depthofbook_pitch_v1_1_12.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_futures_depthofbook_pitch_v1_1_12.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_futures_depthofbook_pitch_v1_1_12.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin
  if message_type == 0xBC then
    return cboe_futures_depthofbook_pitch_v1_1_12.transaction_begin.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End
  if message_type == 0xBD then
    return cboe_futures_depthofbook_pitch_v1_1_12.transaction_end.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_futures_depthofbook_pitch_v1_1_12.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Message
  if message_type == 0xB9 then
    return cboe_futures_depthofbook_pitch_v1_1_12.settlement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_futures_depthofbook_pitch_v1_1_12.end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_futures_depthofbook_pitch_v1_1_12.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_futures_depthofbook_pitch_v1_1_12.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_futures_depthofbook_pitch_v1_1_12.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_futures_depthofbook_pitch_v1_1_12.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_futures_depthofbook_pitch_v1_1_12.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_futures_depthofbook_pitch_v1_1_12.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.payload, range, display)

  return cboe_futures_depthofbook_pitch_v1_1_12.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
cboe_futures_depthofbook_pitch_v1_1_12.message_type = {}

-- Size Of: Message Type
cboe_futures_depthofbook_pitch_v1_1_12.message_type.size = 1

-- Display: Message Type
cboe_futures_depthofbook_pitch_v1_1_12.message_type.display = function(value)
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
cboe_futures_depthofbook_pitch_v1_1_12.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_futures_depthofbook_pitch_v1_1_12.message_length = {}

-- Size Of: Message Length
cboe_futures_depthofbook_pitch_v1_1_12.message_length.size = 1

-- Display: Message Length
cboe_futures_depthofbook_pitch_v1_1_12.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_futures_depthofbook_pitch_v1_1_12.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_futures_depthofbook_pitch_v1_1_12.message_header = {}

-- Size Of: Message Header
cboe_futures_depthofbook_pitch_v1_1_12.message_header.size =
  cboe_futures_depthofbook_pitch_v1_1_12.message_length.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.message_type.size;

-- Display: Message Header
cboe_futures_depthofbook_pitch_v1_1_12.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_futures_depthofbook_pitch_v1_1_12.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_futures_depthofbook_pitch_v1_1_12.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = cboe_futures_depthofbook_pitch_v1_1_12.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_futures_depthofbook_pitch_v1_1_12.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message_header, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_futures_depthofbook_pitch_v1_1_12.message = {}

-- Display: Message
cboe_futures_depthofbook_pitch_v1_1_12.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_futures_depthofbook_pitch_v1_1_12.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_futures_depthofbook_pitch_v1_1_12.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = cboe_futures_depthofbook_pitch_v1_1_12.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_futures_depthofbook_pitch_v1_1_12.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.message, buffer(offset, 0))
    local current = cboe_futures_depthofbook_pitch_v1_1_12.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_futures_depthofbook_pitch_v1_1_12.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequence
cboe_futures_depthofbook_pitch_v1_1_12.sequence = {}

-- Size Of: Sequence
cboe_futures_depthofbook_pitch_v1_1_12.sequence.size = 4

-- Display: Sequence
cboe_futures_depthofbook_pitch_v1_1_12.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_futures_depthofbook_pitch_v1_1_12.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.sequence, range, value, display)

  return offset + length, value
end

-- Unit
cboe_futures_depthofbook_pitch_v1_1_12.unit = {}

-- Size Of: Unit
cboe_futures_depthofbook_pitch_v1_1_12.unit.size = 1

-- Display: Unit
cboe_futures_depthofbook_pitch_v1_1_12.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_futures_depthofbook_pitch_v1_1_12.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.unit, range, value, display)

  return offset + length, value
end

-- Count
cboe_futures_depthofbook_pitch_v1_1_12.count = {}

-- Size Of: Count
cboe_futures_depthofbook_pitch_v1_1_12.count.size = 1

-- Display: Count
cboe_futures_depthofbook_pitch_v1_1_12.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_futures_depthofbook_pitch_v1_1_12.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.count, range, value, display)

  return offset + length, value
end

-- Length
cboe_futures_depthofbook_pitch_v1_1_12.length = {}

-- Size Of: Length
cboe_futures_depthofbook_pitch_v1_1_12.length.size = 2

-- Display: Length
cboe_futures_depthofbook_pitch_v1_1_12.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_futures_depthofbook_pitch_v1_1_12.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_depthofbook_pitch_v1_1_12.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_depthofbook_pitch_v1_1_12.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.length, range, value, display)

  return offset + length, value
end

-- Packet Header
cboe_futures_depthofbook_pitch_v1_1_12.packet_header = {}

-- Size Of: Packet Header
cboe_futures_depthofbook_pitch_v1_1_12.packet_header.size =
  cboe_futures_depthofbook_pitch_v1_1_12.length.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.count.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.unit.size + 
  cboe_futures_depthofbook_pitch_v1_1_12.sequence.size;

-- Display: Packet Header
cboe_futures_depthofbook_pitch_v1_1_12.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_futures_depthofbook_pitch_v1_1_12.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_futures_depthofbook_pitch_v1_1_12.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_futures_depthofbook_pitch_v1_1_12.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_futures_depthofbook_pitch_v1_1_12.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_futures_depthofbook_pitch_v1_1_12.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_futures_depthofbook_pitch_v1_1_12.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12.fields.packet_header, buffer(offset, 0))
    local index = cboe_futures_depthofbook_pitch_v1_1_12.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_depthofbook_pitch_v1_1_12.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_depthofbook_pitch_v1_1_12.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_futures_depthofbook_pitch_v1_1_12.packet = {}

-- Dissect Packet
cboe_futures_depthofbook_pitch_v1_1_12.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_futures_depthofbook_pitch_v1_1_12.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_futures_depthofbook_pitch_v1_1_12.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_futures_depthofbook_pitch_v1_1_12.init()
end

-- Dissector for Cboe Futures DepthOfBook Pitch 1.1.12
function omi_cboe_futures_depthofbook_pitch_v1_1_12.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_futures_depthofbook_pitch_v1_1_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_futures_depthofbook_pitch_v1_1_12, buffer(), omi_cboe_futures_depthofbook_pitch_v1_1_12.description, "("..buffer:len().." Bytes)")
  return cboe_futures_depthofbook_pitch_v1_1_12.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_futures_depthofbook_pitch_v1_1_12)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_futures_depthofbook_pitch_v1_1_12.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Futures DepthOfBook Pitch 1.1.12
local function omi_cboe_futures_depthofbook_pitch_v1_1_12_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_futures_depthofbook_pitch_v1_1_12.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_futures_depthofbook_pitch_v1_1_12
  omi_cboe_futures_depthofbook_pitch_v1_1_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Futures DepthOfBook Pitch 1.1.12
omi_cboe_futures_depthofbook_pitch_v1_1_12:register_heuristic("udp", omi_cboe_futures_depthofbook_pitch_v1_1_12_heuristic)

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
