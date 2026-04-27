-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CfeFutures DepthOfBook Pitch 1.1.6 Protocol
local omi_cboe_cfefutures_depthofbook_pitch_v1_1_6 = Proto("Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.Lua", "Cboe CfeFutures DepthOfBook Pitch 1.1.6")

-- Protocol table
local cboe_cfefutures_depthofbook_pitch_v1_1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CfeFutures DepthOfBook Pitch 1.1.6 Fields
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.block_volume = ProtoField.new("Block Volume", "cboe.cfefutures.depthofbook.pitch.v1.1.6.blockvolume", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.canceled_long_quantity = ProtoField.new("Canceled Long Quantity", "cboe.cfefutures.depthofbook.pitch.v1.1.6.canceledlongquantity", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.canceled_short_quantity = ProtoField.new("Canceled Short Quantity", "cboe.cfefutures.depthofbook.pitch.v1.1.6.canceledshortquantity", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.close_price = ProtoField.new("Close Price", "cboe.cfefutures.depthofbook.pitch.v1.1.6.closeprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.contract_size = ProtoField.new("Contract Size", "cboe.cfefutures.depthofbook.pitch.v1.1.6.contractsize", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.count = ProtoField.new("Count", "cboe.cfefutures.depthofbook.pitch.v1.1.6.count", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.discount_factor = ProtoField.new("Discount Factor", "cboe.cfefutures.depthofbook.pitch.v1.1.6.discountfactor", ftypes.INT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.cfefutures.depthofbook.pitch.v1.1.6.ecrpvolume", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.epoch = ProtoField.new("Epoch", "cboe.cfefutures.depthofbook.pitch.v1.1.6.epoch", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.cfefutures.depthofbook.pitch.v1.1.6.executedquantity", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.execution_id = ProtoField.new("Execution Id", "cboe.cfefutures.depthofbook.pitch.v1.1.6.executionid", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.expiration_date = ProtoField.new("Expiration Date", "cboe.cfefutures.depthofbook.pitch.v1.1.6.expirationdate", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.fed_funds_rate = ProtoField.new("Fed Funds Rate", "cboe.cfefutures.depthofbook.pitch.v1.1.6.fedfundsrate", ftypes.INT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.future_leg = ProtoField.new("Future Leg", "cboe.cfefutures.depthofbook.pitch.v1.1.6.futureleg", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.futures_flags = ProtoField.new("Futures Flags", "cboe.cfefutures.depthofbook.pitch.v1.1.6.futuresflags", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.high_price = ProtoField.new("High Price", "cboe.cfefutures.depthofbook.pitch.v1.1.6.highprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.high_price_is_bid = ProtoField.new("High Price Is Bid", "cboe.cfefutures.depthofbook.pitch.v1.1.6.highpriceisbid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.high_price_valid = ProtoField.new("High Price Valid", "cboe.cfefutures.depthofbook.pitch.v1.1.6.highpricevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.initial_strike = ProtoField.new("Initial Strike", "cboe.cfefutures.depthofbook.pitch.v1.1.6.initialstrike", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.issue = ProtoField.new("Issue", "cboe.cfefutures.depthofbook.pitch.v1.1.6.issue", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.leg_count = ProtoField.new("Leg Count", "cboe.cfefutures.depthofbook.pitch.v1.1.6.legcount", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.leg_offset = ProtoField.new("Leg Offset", "cboe.cfefutures.depthofbook.pitch.v1.1.6.legoffset", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.cfefutures.depthofbook.pitch.v1.1.6.legratio", ftypes.INT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.cfefutures.depthofbook.pitch.v1.1.6.legsymbol", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.length = ProtoField.new("Length", "cboe.cfefutures.depthofbook.pitch.v1.1.6.length", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.listing_state = ProtoField.new("Listing State", "cboe.cfefutures.depthofbook.pitch.v1.1.6.listingstate", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.long_price = ProtoField.new("Long Price", "cboe.cfefutures.depthofbook.pitch.v1.1.6.longprice", ftypes.DOUBLE)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.long_quantity = ProtoField.new("Long Quantity", "cboe.cfefutures.depthofbook.pitch.v1.1.6.longquantity", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.low_price = ProtoField.new("Low Price", "cboe.cfefutures.depthofbook.pitch.v1.1.6.lowprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.low_price_is_offer = ProtoField.new("Low Price Is Offer", "cboe.cfefutures.depthofbook.pitch.v1.1.6.lowpriceisoffer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.low_price_valid = ProtoField.new("Low Price Valid", "cboe.cfefutures.depthofbook.pitch.v1.1.6.lowpricevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message = ProtoField.new("Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.message", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message_header = ProtoField.new("Message Header", "cboe.cfefutures.depthofbook.pitch.v1.1.6.messageheader", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message_length = ProtoField.new("Message Length", "cboe.cfefutures.depthofbook.pitch.v1.1.6.messagelength", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message_type = ProtoField.new("Message Type", "cboe.cfefutures.depthofbook.pitch.v1.1.6.messagetype", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.cfefutures.depthofbook.pitch.v1.1.6.midnightreference", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.num_elapsed_returns = ProtoField.new("Num Elapsed Returns", "cboe.cfefutures.depthofbook.pitch.v1.1.6.numelapsedreturns", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.num_expected_prices = ProtoField.new("Num Expected Prices", "cboe.cfefutures.depthofbook.pitch.v1.1.6.numexpectedprices", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.offer_close_valid = ProtoField.new("Offer Close Valid", "cboe.cfefutures.depthofbook.pitch.v1.1.6.offerclosevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.open_interest = ProtoField.new("Open Interest", "cboe.cfefutures.depthofbook.pitch.v1.1.6.openinterest", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.open_price = ProtoField.new("Open Price", "cboe.cfefutures.depthofbook.pitch.v1.1.6.openprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.order_id = ProtoField.new("Order Id", "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderid", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.packet = ProtoField.new("Packet", "cboe.cfefutures.depthofbook.pitch.v1.1.6.packet", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.packet_header = ProtoField.new("Packet Header", "cboe.cfefutures.depthofbook.pitch.v1.1.6.packetheader", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.previous_armvm = ProtoField.new("Previous Armvm", "cboe.cfefutures.depthofbook.pitch.v1.1.6.previousarmvm", ftypes.INT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.previous_settlement = ProtoField.new("Previous Settlement", "cboe.cfefutures.depthofbook.pitch.v1.1.6.previoussettlement", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.price_increment = ProtoField.new("Price Increment", "cboe.cfefutures.depthofbook.pitch.v1.1.6.priceincrement", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.realized_variance = ProtoField.new("Realized Variance", "cboe.cfefutures.depthofbook.pitch.v1.1.6.realizedvariance", ftypes.INT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.report_symbol = ProtoField.new("Report Symbol", "cboe.cfefutures.depthofbook.pitch.v1.1.6.reportsymbol", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved2", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved3", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.cfefutures.depthofbook.pitch.v1.1.6.reservedflags", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.sequence = ProtoField.new("Sequence", "cboe.cfefutures.depthofbook.pitch.v1.1.6.sequence", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.cfefutures.depthofbook.pitch.v1.1.6.settlementprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.short_price = ProtoField.new("Short Price", "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortprice", ftypes.DOUBLE)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.short_quantity = ProtoField.new("Short Quantity", "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortquantity", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.cfefutures.depthofbook.pitch.v1.1.6.sideindicator", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.standard = ProtoField.new("Standard", "cboe.cfefutures.depthofbook.pitch.v1.1.6.standard", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.summary_flags = ProtoField.new("Summary Flags", "cboe.cfefutures.depthofbook.pitch.v1.1.6.summaryflags", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.symbol = ProtoField.new("Symbol", "cboe.cfefutures.depthofbook.pitch.v1.1.6.symbol", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.time = ProtoField.new("Time", "cboe.cfefutures.depthofbook.pitch.v1.1.6.time", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.time_offset = ProtoField.new("Time Offset", "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.total_volume = ProtoField.new("Total Volume", "cboe.cfefutures.depthofbook.pitch.v1.1.6.totalvolume", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradecondition", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_date = ProtoField.new("Trade Date", "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradedate", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trading_status = ProtoField.new("Trading Status", "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradingstatus", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.unit = ProtoField.new("Unit", "cboe.cfefutures.depthofbook.pitch.v1.1.6.unit", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.unit_timestamp = ProtoField.new("Unit Timestamp", "cboe.cfefutures.depthofbook.pitch.v1.1.6.unittimestamp", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.variance = ProtoField.new("Variance", "cboe.cfefutures.depthofbook.pitch.v1.1.6.variance", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.variance_block_offset = ProtoField.new("Variance Block Offset", "cboe.cfefutures.depthofbook.pitch.v1.1.6.varianceblockoffset", ftypes.UINT8)

-- Cboe CfeFutures Pitch DepthOfBook 1.1.6 Application Messages
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.addorderlongmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.addordershortmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.deleteordermessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.end_of_day_summary_message = ProtoField.new("End Of Day Summary Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.endofdaysummarymessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.endofsessionmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.futures_instrument_definition_message = ProtoField.new("Futures Instrument Definition Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.futuresinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.modifyorderlongmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.modifyordershortmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderexecutedmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.reducesizelongmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.reducesizeshortmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.settlementmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.time_message = ProtoField.new("Time Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.timemessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.timereferencemessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradebreakmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradelongmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradeshortmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradingstatusmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.transaction_begin = ProtoField.new("Transaction Begin", "cboe.cfefutures.depthofbook.pitch.v1.1.6.transactionbegin", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.transaction_end = ProtoField.new("Transaction End", "cboe.cfefutures.depthofbook.pitch.v1.1.6.transactionend", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.cfefutures.depthofbook.pitch.v1.1.6.unitclearmessage", ftypes.STRING)

-- Cboe CfeFutures DepthOfBook Pitch 1.1.6 generated fields
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.future_leg_index = ProtoField.new("Future Leg Index", "cboe.cfefutures.depthofbook.pitch.v1.1.6.futurelegindex", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message_index = ProtoField.new("Message Index", "cboe.cfefutures.depthofbook.pitch.v1.1.6.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CfeFutures DepthOfBook Pitch 1.1.6 Element Dissection Options
show.application_messages = true
show.future_leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.standard = true
show.summary_flags = true
show.variance = true
show.message_index = true
show.future_leg_index = true

-- Register Cboe CfeFutures DepthOfBook Pitch 1.1.6 Show Options
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_future_leg = Pref.bool("Show Future Leg", show.future_leg, "Parse and add Future Leg to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_standard = Pref.bool("Show Standard", show.standard, "Parse and add Standard to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_summary_flags = Pref.bool("Show Summary Flags", show.summary_flags, "Parse and add Summary Flags to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_variance = Pref.bool("Show Variance", show.variance, "Parse and add Variance to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_future_leg_index = Pref.bool("Show Future Leg Index", show.future_leg_index, "Show generated future leg index in protocol tree")

-- Handle changed preferences
function omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_application_messages then
    show.application_messages = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_application_messages
  end
  if show.future_leg ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_future_leg then
    show.future_leg = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_future_leg
  end
  if show.message ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_message then
    show.message = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_message
  end
  if show.message_header ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_message_header then
    show.message_header = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_packet then
    show.packet = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_packet_header then
    show.packet_header = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_packet_header
  end
  if show.standard ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_standard then
    show.standard = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_standard
  end
  if show.summary_flags ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_summary_flags then
    show.summary_flags = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_summary_flags
  end
  if show.variance ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_variance then
    show.variance = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_variance
  end
  if show.message_index ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_message_index then
    show.message_index = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_message_index
  end
  if show.future_leg_index ~= omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_future_leg_index then
    show.future_leg_index = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.prefs.show_future_leg_index
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
-- Cboe CfeFutures DepthOfBook Pitch 1.1.6 Fields
-----------------------------------------------------------------------

-- Block Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.block_volume = {}

-- Size: Block Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.block_volume.size = 4

-- Display: Block Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.block_volume.display = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.block_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.block_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.block_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Canceled Long Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_long_quantity = {}

-- Size: Canceled Long Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_long_quantity.size = 4

-- Display: Canceled Long Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_long_quantity.display = function(value)
  return "Canceled Long Quantity: "..value
end

-- Dissect: Canceled Long Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.canceled_long_quantity, range, value, display)

  return offset + length, value
end

-- Canceled Short Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_short_quantity = {}

-- Size: Canceled Short Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_short_quantity.size = 2

-- Display: Canceled Short Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_short_quantity.display = function(value)
  return "Canceled Short Quantity: "..value
end

-- Dissect: Canceled Short Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.canceled_short_quantity, range, value, display)

  return offset + length, value
end

-- Close Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.close_price = {}

-- Size: Close Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.close_price.size = 8

-- Display: Close Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.close_price.display = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.close_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.close_price, range, value, display)

  return offset + length, value
end

-- Contract Size
cboe_cfefutures_depthofbook_pitch_v1_1_6.contract_size = {}

-- Size: Contract Size
cboe_cfefutures_depthofbook_pitch_v1_1_6.contract_size.size = 2

-- Display: Contract Size
cboe_cfefutures_depthofbook_pitch_v1_1_6.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_cfefutures_depthofbook_pitch_v1_1_6.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Count
cboe_cfefutures_depthofbook_pitch_v1_1_6.count = {}

-- Size: Count
cboe_cfefutures_depthofbook_pitch_v1_1_6.count.size = 1

-- Display: Count
cboe_cfefutures_depthofbook_pitch_v1_1_6.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_cfefutures_depthofbook_pitch_v1_1_6.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.count, range, value, display)

  return offset + length, value
end

-- Discount Factor
cboe_cfefutures_depthofbook_pitch_v1_1_6.discount_factor = {}

-- Size: Discount Factor
cboe_cfefutures_depthofbook_pitch_v1_1_6.discount_factor.size = 8

-- Display: Discount Factor
cboe_cfefutures_depthofbook_pitch_v1_1_6.discount_factor.display = function(value)
  return "Discount Factor: "..value
end

-- Dissect: Discount Factor
cboe_cfefutures_depthofbook_pitch_v1_1_6.discount_factor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.discount_factor.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.discount_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.discount_factor, range, value, display)

  return offset + length, value
end

-- Ecrp Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.ecrp_volume = {}

-- Size: Ecrp Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.ecrp_volume.size = 4

-- Display: Ecrp Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.ecrp_volume.display = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.ecrp_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.ecrp_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.ecrp_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Epoch
cboe_cfefutures_depthofbook_pitch_v1_1_6.epoch = {}

-- Size: Epoch
cboe_cfefutures_depthofbook_pitch_v1_1_6.epoch.size = 4

-- Display: Epoch
cboe_cfefutures_depthofbook_pitch_v1_1_6.epoch.display = function(value)
  return "Epoch: "..value
end

-- Dissect: Epoch
cboe_cfefutures_depthofbook_pitch_v1_1_6.epoch.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.epoch.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.epoch.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.epoch, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.executed_quantity = {}

-- Size: Executed Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id = {}

-- Size: Execution Id
cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.size = 8

-- Display: Execution Id
cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expiration Date
cboe_cfefutures_depthofbook_pitch_v1_1_6.expiration_date = {}

-- Size: Expiration Date
cboe_cfefutures_depthofbook_pitch_v1_1_6.expiration_date.size = 4

-- Display: Expiration Date
cboe_cfefutures_depthofbook_pitch_v1_1_6.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
cboe_cfefutures_depthofbook_pitch_v1_1_6.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Fed Funds Rate
cboe_cfefutures_depthofbook_pitch_v1_1_6.fed_funds_rate = {}

-- Size: Fed Funds Rate
cboe_cfefutures_depthofbook_pitch_v1_1_6.fed_funds_rate.size = 8

-- Display: Fed Funds Rate
cboe_cfefutures_depthofbook_pitch_v1_1_6.fed_funds_rate.display = function(value)
  return "Fed Funds Rate: "..value
end

-- Dissect: Fed Funds Rate
cboe_cfefutures_depthofbook_pitch_v1_1_6.fed_funds_rate.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.fed_funds_rate.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.fed_funds_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.fed_funds_rate, range, value, display)

  return offset + length, value
end

-- Futures Flags
cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_flags = {}

-- Size: Futures Flags
cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_flags.size = 1

-- Display: Futures Flags
cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_flags.display = function(value)
  if value == 0 then
    return "Futures Flags: Standard (0)"
  end
  if value == 1 then
    return "Futures Flags: Variance (1)"
  end

  return "Futures Flags: Unknown("..value..")"
end

-- Dissect: Futures Flags
cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_flags.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.futures_flags, range, value, display)

  return offset + length, value
end

-- High Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.high_price = {}

-- Size: High Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.high_price.size = 8

-- Display: High Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.high_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.high_price, range, value, display)

  return offset + length, value
end

-- Initial Strike
cboe_cfefutures_depthofbook_pitch_v1_1_6.initial_strike = {}

-- Size: Initial Strike
cboe_cfefutures_depthofbook_pitch_v1_1_6.initial_strike.size = 8

-- Display: Initial Strike
cboe_cfefutures_depthofbook_pitch_v1_1_6.initial_strike.display = function(value)
  return "Initial Strike: "..value
end

-- Dissect: Initial Strike
cboe_cfefutures_depthofbook_pitch_v1_1_6.initial_strike.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.initial_strike.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.initial_strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.initial_strike, range, value, display)

  return offset + length, value
end

-- Issue
cboe_cfefutures_depthofbook_pitch_v1_1_6.issue = {}

-- Size: Issue
cboe_cfefutures_depthofbook_pitch_v1_1_6.issue.size = 1

-- Display: Issue
cboe_cfefutures_depthofbook_pitch_v1_1_6.issue.display = function(value)
  if value == "S" then
    return "Issue: Initial Settlement (S)"
  end
  if value == "R" then
    return "Issue: Reissued Settlement (R)"
  end

  return "Issue: Unknown("..value..")"
end

-- Dissect: Issue
cboe_cfefutures_depthofbook_pitch_v1_1_6.issue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.issue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.issue, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_count = {}

-- Size: Leg Count
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_count.size = 1

-- Display: Leg Count
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_offset = {}

-- Size: Leg Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_offset.size = 1

-- Display: Leg Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_offset.display = function(value)
  return "Leg Offset: "..value
end

-- Dissect: Leg Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.leg_offset, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_ratio = {}

-- Size: Leg Ratio
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_symbol = {}

-- Size: Leg Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_symbol.size = 6

-- Display: Leg Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_cfefutures_depthofbook_pitch_v1_1_6.length = {}

-- Size: Length
cboe_cfefutures_depthofbook_pitch_v1_1_6.length.size = 2

-- Display: Length
cboe_cfefutures_depthofbook_pitch_v1_1_6.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cfefutures_depthofbook_pitch_v1_1_6.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.length, range, value, display)

  return offset + length, value
end

-- Listing State
cboe_cfefutures_depthofbook_pitch_v1_1_6.listing_state = {}

-- Size: Listing State
cboe_cfefutures_depthofbook_pitch_v1_1_6.listing_state.size = 1

-- Display: Listing State
cboe_cfefutures_depthofbook_pitch_v1_1_6.listing_state.display = function(value)
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
cboe_cfefutures_depthofbook_pitch_v1_1_6.listing_state.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.listing_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.listing_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.listing_state, range, value, display)

  return offset + length, value
end

-- Long Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price = {}

-- Size: Long Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.size = 8

-- Display: Long Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.display = function(value)
  return "Long Price: "..value
end

-- Translate: Long Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Long Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.translate(raw)
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.long_price, range, value, display)

  return offset + length, value
end

-- Long Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity = {}

-- Size: Long Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.size = 4

-- Display: Long Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.display = function(value)
  return "Long Quantity: "..value
end

-- Dissect: Long Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.long_quantity, range, value, display)

  return offset + length, value
end

-- Low Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.low_price = {}

-- Size: Low Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.low_price.size = 8

-- Display: Low Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.low_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.low_price, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_length = {}

-- Size: Message Length
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_length.size = 1

-- Display: Message Length
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_type = {}

-- Size: Message Type
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_type.size = 1

-- Display: Message Type
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_type.display = function(value)
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
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_cfefutures_depthofbook_pitch_v1_1_6.midnight_reference = {}

-- Size: Midnight Reference
cboe_cfefutures_depthofbook_pitch_v1_1_6.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_cfefutures_depthofbook_pitch_v1_1_6.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_cfefutures_depthofbook_pitch_v1_1_6.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Num Elapsed Returns
cboe_cfefutures_depthofbook_pitch_v1_1_6.num_elapsed_returns = {}

-- Size: Num Elapsed Returns
cboe_cfefutures_depthofbook_pitch_v1_1_6.num_elapsed_returns.size = 2

-- Display: Num Elapsed Returns
cboe_cfefutures_depthofbook_pitch_v1_1_6.num_elapsed_returns.display = function(value)
  return "Num Elapsed Returns: "..value
end

-- Dissect: Num Elapsed Returns
cboe_cfefutures_depthofbook_pitch_v1_1_6.num_elapsed_returns.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.num_elapsed_returns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.num_elapsed_returns.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.num_elapsed_returns, range, value, display)

  return offset + length, value
end

-- Num Expected Prices
cboe_cfefutures_depthofbook_pitch_v1_1_6.num_expected_prices = {}

-- Size: Num Expected Prices
cboe_cfefutures_depthofbook_pitch_v1_1_6.num_expected_prices.size = 2

-- Display: Num Expected Prices
cboe_cfefutures_depthofbook_pitch_v1_1_6.num_expected_prices.display = function(value)
  return "Num Expected Prices: "..value
end

-- Dissect: Num Expected Prices
cboe_cfefutures_depthofbook_pitch_v1_1_6.num_expected_prices.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.num_expected_prices.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.num_expected_prices.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.num_expected_prices, range, value, display)

  return offset + length, value
end

-- Open Interest
cboe_cfefutures_depthofbook_pitch_v1_1_6.open_interest = {}

-- Size: Open Interest
cboe_cfefutures_depthofbook_pitch_v1_1_6.open_interest.size = 4

-- Display: Open Interest
cboe_cfefutures_depthofbook_pitch_v1_1_6.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_cfefutures_depthofbook_pitch_v1_1_6.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.open_price = {}

-- Size: Open Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.open_price.size = 8

-- Display: Open Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.open_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.open_price, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id = {}

-- Size: Order Id
cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size = 8

-- Display: Order Id
cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Previous Armvm
cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_armvm = {}

-- Size: Previous Armvm
cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_armvm.size = 8

-- Display: Previous Armvm
cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_armvm.display = function(value)
  return "Previous Armvm: "..value
end

-- Dissect: Previous Armvm
cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_armvm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_armvm.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_armvm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.previous_armvm, range, value, display)

  return offset + length, value
end

-- Previous Settlement
cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_settlement = {}

-- Size: Previous Settlement
cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_settlement.size = 8

-- Display: Previous Settlement
cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_settlement.display = function(value)
  return "Previous Settlement: "..value
end

-- Dissect: Previous Settlement
cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_settlement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_settlement.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.previous_settlement, range, value, display)

  return offset + length, value
end

-- Price Increment
cboe_cfefutures_depthofbook_pitch_v1_1_6.price_increment = {}

-- Size: Price Increment
cboe_cfefutures_depthofbook_pitch_v1_1_6.price_increment.size = 8

-- Display: Price Increment
cboe_cfefutures_depthofbook_pitch_v1_1_6.price_increment.display = function(value)
  return "Price Increment: "..value
end

-- Dissect: Price Increment
cboe_cfefutures_depthofbook_pitch_v1_1_6.price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.price_increment.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Realized Variance
cboe_cfefutures_depthofbook_pitch_v1_1_6.realized_variance = {}

-- Size: Realized Variance
cboe_cfefutures_depthofbook_pitch_v1_1_6.realized_variance.size = 8

-- Display: Realized Variance
cboe_cfefutures_depthofbook_pitch_v1_1_6.realized_variance.display = function(value)
  return "Realized Variance: "..value
end

-- Dissect: Realized Variance
cboe_cfefutures_depthofbook_pitch_v1_1_6.realized_variance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.realized_variance.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.realized_variance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.realized_variance, range, value, display)

  return offset + length, value
end

-- Report Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.report_symbol = {}

-- Size: Report Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.report_symbol.size = 6

-- Display: Report Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.report_symbol.display = function(value)
  return "Report Symbol: "..value
end

-- Dissect: Report Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.report_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.report_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.report_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.report_symbol, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_2 = {}

-- Size: Reserved 2
cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_2.size = 2

-- Display: Reserved 2
cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_3 = {}

-- Size: Reserved 3
cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_3.size = 3

-- Display: Reserved 3
cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cfefutures_depthofbook_pitch_v1_1_6.sequence = {}

-- Size: Sequence
cboe_cfefutures_depthofbook_pitch_v1_1_6.sequence.size = 4

-- Display: Sequence
cboe_cfefutures_depthofbook_pitch_v1_1_6.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cfefutures_depthofbook_pitch_v1_1_6.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.sequence, range, value, display)

  return offset + length, value
end

-- Settlement Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_price = {}

-- Size: Settlement Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_price.size = 8

-- Display: Settlement Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Short Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price = {}

-- Size: Short Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.size = 2

-- Display: Short Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.display = function(value)
  return "Short Price: "..value
end

-- Translate: Short Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.translate = function(raw)
  return raw/100
end

-- Dissect: Short Price
cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.translate(raw)
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.short_price, range, value, display)

  return offset + length, value
end

-- Short Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity = {}

-- Size: Short Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.size = 2

-- Display: Short Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.display = function(value)
  return "Short Quantity: "..value
end

-- Dissect: Short Quantity
cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.short_quantity, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator = {}

-- Size: Side Indicator
cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.size = 1

-- Display: Side Indicator
cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol = {}

-- Size: Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size = 6

-- Display: Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time
cboe_cfefutures_depthofbook_pitch_v1_1_6.time = {}

-- Size: Time
cboe_cfefutures_depthofbook_pitch_v1_1_6.time.size = 4

-- Display: Time
cboe_cfefutures_depthofbook_pitch_v1_1_6.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_cfefutures_depthofbook_pitch_v1_1_6.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset = {}

-- Size: Time Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size = 4

-- Display: Time Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.total_volume = {}

-- Size: Total Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.total_volume.size = 4

-- Display: Total Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_cfefutures_depthofbook_pitch_v1_1_6.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition = {}

-- Size: Trade Condition
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.size = 1

-- Display: Trade Condition
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.display = function(value)
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
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date = {}

-- Size: Trade Date
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.size = 4

-- Display: Trade Date
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status = {}

-- Size: Trading Status
cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status.size = 1

-- Display: Trading Status
cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status.display = function(value)
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
cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit = {}

-- Size: Unit
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit.size = 1

-- Display: Unit
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.unit, range, value, display)

  return offset + length, value
end

-- Unit Timestamp
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_timestamp = {}

-- Size: Unit Timestamp
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_timestamp.size = 4

-- Display: Unit Timestamp
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_timestamp.display = function(value)
  return "Unit Timestamp: "..value
end

-- Dissect: Unit Timestamp
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.unit_timestamp, range, value, display)

  return offset + length, value
end

-- Variance Block Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.variance_block_offset = {}

-- Size: Variance Block Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.variance_block_offset.size = 1

-- Display: Variance Block Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.variance_block_offset.display = function(value)
  return "Variance Block Offset: "..value
end

-- Dissect: Variance Block Offset
cboe_cfefutures_depthofbook_pitch_v1_1_6.variance_block_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_1_6.variance_block_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.variance_block_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.variance_block_offset, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CfeFutures DepthOfBook Pitch 1.1.6
-----------------------------------------------------------------------

-- End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_session_message = {}

-- Size: End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_session_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size

-- Display: End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status_message = {}

-- Size: Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_2.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_3.size

-- Display: Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alphanumeric
  index, reserved_3 = cboe_cfefutures_depthofbook_pitch_v1_1_6.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags = {}

-- Size: Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags.size = 1

-- Display: Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is High Price Valid flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "High Price Valid"
  end
  -- Is High Price Is Bid flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "High Price Is Bid"
  end
  -- Is Low Price Valid flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Low Price Valid"
  end
  -- Is Low Price Is Offer flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Low Price Is Offer"
  end
  -- Is Offer Close Valid flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Offer Close Valid"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags.bits = function(range, value, packet, parent)

  -- High Price Valid: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.high_price_valid, range, value)

  -- High Price Is Bid: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.high_price_is_bid, range, value)

  -- Low Price Valid: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.low_price_valid, range, value)

  -- Low Price Is Offer: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.low_price_is_offer, range, value)

  -- Offer Close Valid: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.offer_close_valid, range, value)

  -- Reserved Flags: 3 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reserved_flags, range, value)
end

-- Dissect: Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.summary_flags, range, display)

  if show.summary_flags then
    cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_day_summary_message = {}

-- Size: End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_day_summary_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.open_interest.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.high_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.low_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.open_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.close_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.total_volume.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.block_volume.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.ecrp_volume.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags.size

-- Display: End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Binary
  index, open_interest = cboe_cfefutures_depthofbook_pitch_v1_1_6.open_interest.dissect(buffer, index, packet, parent)

  -- High Price: Binary Price
  index, high_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary Price
  index, low_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.low_price.dissect(buffer, index, packet, parent)

  -- Open Price: Binary Price
  index, open_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.open_price.dissect(buffer, index, packet, parent)

  -- Close Price: Binary Price
  index, close_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.close_price.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_cfefutures_depthofbook_pitch_v1_1_6.total_volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Binary
  index, block_volume = cboe_cfefutures_depthofbook_pitch_v1_1_6.block_volume.dissect(buffer, index, packet, parent)

  -- Ecrp Volume: Binary
  index, ecrp_volume = cboe_cfefutures_depthofbook_pitch_v1_1_6.ecrp_volume.dissect(buffer, index, packet, parent)

  -- Summary Flags: Struct of 6 fields
  index, summary_flags = cboe_cfefutures_depthofbook_pitch_v1_1_6.summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_message = {}

-- Size: Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.issue.size

-- Display: Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Settlement Price: Binary Price
  index, settlement_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_price.dissect(buffer, index, packet, parent)

  -- Issue: Alphanumeric
  index, issue = cboe_cfefutures_depthofbook_pitch_v1_1_6.issue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.settlement_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_break_message = {}

-- Size: Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_break_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.size

-- Display: Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_end = {}

-- Size: Transaction End
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_end.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size

-- Display: Transaction End
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_end.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_end.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_end.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.transaction_end, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_end.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_end.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_end.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_begin = {}

-- Size: Transaction Begin
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_begin.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size

-- Display: Transaction Begin
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_begin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_begin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin
cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_begin.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.transaction_begin, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_begin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_begin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_begin.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_short_message = {}

-- Size: Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_short_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.size

-- Display: Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: Binary
  index, short_quantity = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: Binary Short Price
  index, short_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_long_message = {}

-- Size: Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_long_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.size

-- Display: Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: Binary
  index, long_quantity = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.delete_order_message = {}

-- Size: Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.delete_order_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size

-- Display: Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_short_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.size

-- Display: Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  -- Short Quantity: Binary
  index, short_quantity = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.dissect(buffer, index, packet, parent)

  -- Short Price: Binary Short Price
  index, short_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_long_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.size

-- Display: Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  -- Long Quantity: Binary
  index, long_quantity = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_short_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_short_quantity.size

-- Display: Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Short Quantity: Binary
  index, canceled_short_quantity = cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_short_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_long_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_long_quantity.size

-- Display: Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Long Quantity: Binary
  index, canceled_long_quantity = cboe_cfefutures_depthofbook_pitch_v1_1_6.canceled_long_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.order_executed_message = {}

-- Size: Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.order_executed_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.executed_quantity.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.size

-- Display: Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_cfefutures_depthofbook_pitch_v1_1_6.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_short_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.size

-- Display: Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: Binary
  index, short_quantity = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: Binary Short Price
  index, short_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.short_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_long_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.size

-- Display: Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_1_6.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_depthofbook_pitch_v1_1_6.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: Binary
  index, long_quantity = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_cfefutures_depthofbook_pitch_v1_1_6.long_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Leg
cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg = {}

-- Size: Future Leg
cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_ratio.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_symbol.size

-- Display: Future Leg
cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Leg
cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg.fields = function(buffer, offset, packet, parent, future_leg_index)
  local index = offset

  -- Implicit Future Leg Index
  if future_leg_index ~= nil and show.future_leg_index then
    local iteration = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.future_leg_index, future_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Symbol: Alphanumeric
  index, leg_symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Leg
cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg.dissect = function(buffer, offset, packet, parent, future_leg_index)
  if show.future_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.future_leg, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg.fields(buffer, offset, packet, parent, future_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg.fields(buffer, offset, packet, parent, future_leg_index)
  end
end

-- Variance
cboe_cfefutures_depthofbook_pitch_v1_1_6.variance = {}

-- Calculate size of: Variance
cboe_cfefutures_depthofbook_pitch_v1_1_6.variance.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.realized_variance.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.num_expected_prices.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.num_elapsed_returns.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_settlement.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.discount_factor.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.initial_strike.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_armvm.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.fed_funds_rate.size

  -- Calculate field size from count
  local future_leg_count = buffer(offset + index - 55, 1):le_uint()
  index = index + future_leg_count * 10

  return index
end

-- Display: Variance
cboe_cfefutures_depthofbook_pitch_v1_1_6.variance.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Variance
cboe_cfefutures_depthofbook_pitch_v1_1_6.variance.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Realized Variance: Signed Binary
  index, realized_variance = cboe_cfefutures_depthofbook_pitch_v1_1_6.realized_variance.dissect(buffer, index, packet, parent)

  -- Num Expected Prices: Binary
  index, num_expected_prices = cboe_cfefutures_depthofbook_pitch_v1_1_6.num_expected_prices.dissect(buffer, index, packet, parent)

  -- Num Elapsed Returns: Binary
  index, num_elapsed_returns = cboe_cfefutures_depthofbook_pitch_v1_1_6.num_elapsed_returns.dissect(buffer, index, packet, parent)

  -- Previous Settlement: Binary Price
  index, previous_settlement = cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_settlement.dissect(buffer, index, packet, parent)

  -- Discount Factor: Signed Binary
  index, discount_factor = cboe_cfefutures_depthofbook_pitch_v1_1_6.discount_factor.dissect(buffer, index, packet, parent)

  -- Initial Strike: Binary Price
  index, initial_strike = cboe_cfefutures_depthofbook_pitch_v1_1_6.initial_strike.dissect(buffer, index, packet, parent)

  -- Previous Armvm: Signed Binary
  index, previous_armvm = cboe_cfefutures_depthofbook_pitch_v1_1_6.previous_armvm.dissect(buffer, index, packet, parent)

  -- Fed Funds Rate: Signed Binary
  index, fed_funds_rate = cboe_cfefutures_depthofbook_pitch_v1_1_6.fed_funds_rate.dissect(buffer, index, packet, parent)

  -- Dependency element: Leg Count
  local leg_count = buffer(offset - 3, 1):le_uint()

  -- Repeating: Future Leg
  for future_leg_index = 1, leg_count do
    index, future_leg = cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg.dissect(buffer, index, packet, parent, future_leg_index)
  end

  return index
end

-- Dissect: Variance
cboe_cfefutures_depthofbook_pitch_v1_1_6.variance.dissect = function(buffer, offset, packet, parent)
  if show.variance then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.variance, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.variance.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.variance.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.variance.fields(buffer, offset, packet, parent)
  end
end

-- Standard
cboe_cfefutures_depthofbook_pitch_v1_1_6.standard = {}

-- Calculate size of: Standard
cboe_cfefutures_depthofbook_pitch_v1_1_6.standard.size = function(buffer, offset)
  local index = 0

  -- Calculate field size from count
  local future_leg_count = buffer(offset + index - 3, 1):le_uint()
  index = index + future_leg_count * 10

  return index
end

-- Display: Standard
cboe_cfefutures_depthofbook_pitch_v1_1_6.standard.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Standard
cboe_cfefutures_depthofbook_pitch_v1_1_6.standard.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Leg Count
  local leg_count = buffer(offset - 3, 1):le_uint()

  -- Repeating: Future Leg
  for future_leg_index = 1, leg_count do
    index, future_leg = cboe_cfefutures_depthofbook_pitch_v1_1_6.future_leg.dissect(buffer, index, packet, parent, future_leg_index)
  end

  return index
end

-- Dissect: Standard
cboe_cfefutures_depthofbook_pitch_v1_1_6.standard.dissect = function(buffer, offset, packet, parent)
  if show.standard then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.standard, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.standard.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.standard.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.standard.fields(buffer, offset, packet, parent)
  end
end

-- Future Block
cboe_cfefutures_depthofbook_pitch_v1_1_6.future_block = {}

-- Dissect: Future Block
cboe_cfefutures_depthofbook_pitch_v1_1_6.future_block.dissect = function(buffer, offset, packet, parent, futures_flags)
  -- Dissect Standard
  if futures_flags == 0 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.standard.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Variance
  if futures_flags == 1 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.variance.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_instrument_definition_message = {}

-- Calculate size of: Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_timestamp.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.report_symbol.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_flags.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.expiration_date.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.contract_size.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.listing_state.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.price_increment.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_count.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_offset.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.variance_block_offset.size

  -- Calculate runtime size of Future Block field
  local future_block_offset = offset + index
  local future_block_type = buffer(future_block_offset - 19, 1):le_uint()
  index = index + cboe_cfefutures_depthofbook_pitch_v1_1_6.future_block.size(buffer, future_block_offset, future_block_type)

  return index
end

-- Display: Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.symbol.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: Binary
  index, unit_timestamp = cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Report Symbol: Alphanumeric
  index, report_symbol = cboe_cfefutures_depthofbook_pitch_v1_1_6.report_symbol.dissect(buffer, index, packet, parent)

  -- Futures Flags: Binary
  index, futures_flags = cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_flags.dissect(buffer, index, packet, parent)

  -- Expiration Date: Binary Date
  index, expiration_date = cboe_cfefutures_depthofbook_pitch_v1_1_6.expiration_date.dissect(buffer, index, packet, parent)

  -- Contract Size: Binary
  index, contract_size = cboe_cfefutures_depthofbook_pitch_v1_1_6.contract_size.dissect(buffer, index, packet, parent)

  -- Listing State: Alphanumeric
  index, listing_state = cboe_cfefutures_depthofbook_pitch_v1_1_6.listing_state.dissect(buffer, index, packet, parent)

  -- Price Increment: Binary Price
  index, price_increment = cboe_cfefutures_depthofbook_pitch_v1_1_6.price_increment.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_count.dissect(buffer, index, packet, parent)

  -- Leg Offset: Binary
  index, leg_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.leg_offset.dissect(buffer, index, packet, parent)

  -- Variance Block Offset: Binary
  index, variance_block_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.variance_block_offset.dissect(buffer, index, packet, parent)

  -- Future Block: Runtime Type with 2 branches
  index = cboe_cfefutures_depthofbook_pitch_v1_1_6.future_block.dissect(buffer, index, packet, parent, futures_flags)

  return index
end

-- Dissect: Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.futures_instrument_definition_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_reference_message = {}

-- Size: Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_reference_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.midnight_reference.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.size

-- Display: Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_cfefutures_depthofbook_pitch_v1_1_6.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_cfefutures_depthofbook_pitch_v1_1_6.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_clear_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.size

-- Display: Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_message = {}

-- Size: Time Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.time.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.epoch.size

-- Display: Time Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_cfefutures_depthofbook_pitch_v1_1_6.time.dissect(buffer, index, packet, parent)

  -- Epoch: Binary
  index, epoch = cboe_cfefutures_depthofbook_pitch_v1_1_6.epoch.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.time_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cfefutures_depthofbook_pitch_v1_1_6.payload = {}

-- Dissect: Payload
cboe_cfefutures_depthofbook_pitch_v1_1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Definition Message
  if message_type == 0xBB then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.futures_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin
  if message_type == 0xBC then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_begin.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End
  if message_type == 0xBD then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.transaction_end.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Message
  if message_type == 0xB9 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.settlement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_header = {}

-- Size: Message Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_header.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.message_length.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.message_type.size

-- Display: Message Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cfefutures_depthofbook_pitch_v1_1_6.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = cboe_cfefutures_depthofbook_pitch_v1_1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message_header, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.message = {}

-- Display: Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cfefutures_depthofbook_pitch_v1_1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = cboe_cfefutures_depthofbook_pitch_v1_1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cfefutures_depthofbook_pitch_v1_1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.message, buffer(offset, 0))
    local current = cboe_cfefutures_depthofbook_pitch_v1_1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_depthofbook_pitch_v1_1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.packet_header = {}

-- Size: Packet Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.packet_header.size =
  cboe_cfefutures_depthofbook_pitch_v1_1_6.length.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.count.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.unit.size + 
  cboe_cfefutures_depthofbook_pitch_v1_1_6.sequence.size

-- Display: Packet Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cfefutures_depthofbook_pitch_v1_1_6.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_cfefutures_depthofbook_pitch_v1_1_6.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cfefutures_depthofbook_pitch_v1_1_6.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_cfefutures_depthofbook_pitch_v1_1_6.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_cfefutures_depthofbook_pitch_v1_1_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.fields.packet_header, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_1_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_1_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_1_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cfefutures_depthofbook_pitch_v1_1_6.packet = {}

-- Verify size of Udp packet
cboe_cfefutures_depthofbook_pitch_v1_1_6.packet.requiredsize = function(buffer)

  return true
end

-- Dissect Packet
cboe_cfefutures_depthofbook_pitch_v1_1_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cfefutures_depthofbook_pitch_v1_1_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_cfefutures_depthofbook_pitch_v1_1_6.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.init()
end

-- Dissector for Cboe CfeFutures DepthOfBook Pitch 1.1.6
function omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_1_6, buffer(), omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.description, "("..buffer:len().." Bytes)")
  return cboe_cfefutures_depthofbook_pitch_v1_1_6.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_cfefutures_depthofbook_pitch_v1_1_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CfeFutures DepthOfBook Pitch 1.1.6 (Udp)
local function omi_cboe_cfefutures_depthofbook_pitch_v1_1_6_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cfefutures_depthofbook_pitch_v1_1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cfefutures_depthofbook_pitch_v1_1_6
  omi_cboe_cfefutures_depthofbook_pitch_v1_1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CfeFutures DepthOfBook Pitch 1.1.6
omi_cboe_cfefutures_depthofbook_pitch_v1_1_6:register_heuristic("udp", omi_cboe_cfefutures_depthofbook_pitch_v1_1_6_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.6
--   Date: Monday, April 8, 2019
--   Specification: CBOE_FUTURES_EXCHANGE_MULTICAST_PITCH_SPECIFICATION.pdf
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
