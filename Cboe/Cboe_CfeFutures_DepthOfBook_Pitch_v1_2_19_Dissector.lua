-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CfeFutures DepthOfBook Pitch 1.2.19 Protocol
local omi_cboe_cfefutures_depthofbook_pitch_v1_2_19 = Proto("Cboe.CfeFutures.DepthOfBook.Pitch.v1.2.19.Lua", "Cboe CfeFutures DepthOfBook Pitch 1.2.19")

-- Protocol table
local cboe_cfefutures_depthofbook_pitch_v1_2_19 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CfeFutures DepthOfBook Pitch 1.2.19 Fields
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.accrued_day_variance = ProtoField.new("Accrued Day Variance", "cboe.cfefutures.depthofbook.pitch.v1.2.19.accrueddayvariance", ftypes.INT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.block_volume = ProtoField.new("Block Volume", "cboe.cfefutures.depthofbook.pitch.v1.2.19.blockvolume", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.canceled_quantity_long = ProtoField.new("Canceled Quantity Long", "cboe.cfefutures.depthofbook.pitch.v1.2.19.canceledquantitylong", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.cfefutures.depthofbook.pitch.v1.2.19.canceledquantityshort", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.close_price = ProtoField.new("Close Price", "cboe.cfefutures.depthofbook.pitch.v1.2.19.closeprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.contract_date = ProtoField.new("Contract Date", "cboe.cfefutures.depthofbook.pitch.v1.2.19.contractdate", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.contract_size = ProtoField.new("Contract Size", "cboe.cfefutures.depthofbook.pitch.v1.2.19.contractsize", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.count = ProtoField.new("Count", "cboe.cfefutures.depthofbook.pitch.v1.2.19.count", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.cfefutures.depthofbook.pitch.v1.2.19.ecrpvolume", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.cfefutures.depthofbook.pitch.v1.2.19.epochtime", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.cfefutures.depthofbook.pitch.v1.2.19.executedquantity", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.execution_id = ProtoField.new("Execution Id", "cboe.cfefutures.depthofbook.pitch.v1.2.19.executionid", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.expiration_date = ProtoField.new("Expiration Date", "cboe.cfefutures.depthofbook.pitch.v1.2.19.expirationdate", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.cfefutures.depthofbook.pitch.v1.2.19.feedsymbol", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.future_leg = ProtoField.new("Future Leg", "cboe.cfefutures.depthofbook.pitch.v1.2.19.futureleg", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.futures_symbol = ProtoField.new("Futures Symbol", "cboe.cfefutures.depthofbook.pitch.v1.2.19.futuressymbol", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.high_price = ProtoField.new("High Price", "cboe.cfefutures.depthofbook.pitch.v1.2.19.highprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.high_price_is_bid = ProtoField.new("High Price Is Bid", "cboe.cfefutures.depthofbook.pitch.v1.2.19.highpriceisbid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.high_price_valid = ProtoField.new("High Price Valid", "cboe.cfefutures.depthofbook.pitch.v1.2.19.highpricevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.issue = ProtoField.new("Issue", "cboe.cfefutures.depthofbook.pitch.v1.2.19.issue", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.leg_count = ProtoField.new("Leg Count", "cboe.cfefutures.depthofbook.pitch.v1.2.19.legcount", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.leg_offset = ProtoField.new("Leg Offset", "cboe.cfefutures.depthofbook.pitch.v1.2.19.legoffset", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.cfefutures.depthofbook.pitch.v1.2.19.legratio", ftypes.INT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.cfefutures.depthofbook.pitch.v1.2.19.legsymbol", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.length = ProtoField.new("Length", "cboe.cfefutures.depthofbook.pitch.v1.2.19.length", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.listing_state = ProtoField.new("Listing State", "cboe.cfefutures.depthofbook.pitch.v1.2.19.listingstate", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.low_price = ProtoField.new("Low Price", "cboe.cfefutures.depthofbook.pitch.v1.2.19.lowprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.low_price_is_offer = ProtoField.new("Low Price Is Offer", "cboe.cfefutures.depthofbook.pitch.v1.2.19.lowpriceisoffer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.low_price_valid = ProtoField.new("Low Price Valid", "cboe.cfefutures.depthofbook.pitch.v1.2.19.lowpricevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "cboe.cfefutures.depthofbook.pitch.v1.2.19.lowerpricelimit", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message = ProtoField.new("Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.message", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message_header = ProtoField.new("Message Header", "cboe.cfefutures.depthofbook.pitch.v1.2.19.messageheader", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message_length = ProtoField.new("Message Length", "cboe.cfefutures.depthofbook.pitch.v1.2.19.messagelength", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message_type = ProtoField.new("Message Type", "cboe.cfefutures.depthofbook.pitch.v1.2.19.messagetype", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.cfefutures.depthofbook.pitch.v1.2.19.midnightreference", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.num_elapsed_returns = ProtoField.new("Num Elapsed Returns", "cboe.cfefutures.depthofbook.pitch.v1.2.19.numelapsedreturns", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.num_final_returns = ProtoField.new("Num Final Returns", "cboe.cfefutures.depthofbook.pitch.v1.2.19.numfinalreturns", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.open_close_valid = ProtoField.new("Open Close Valid", "cboe.cfefutures.depthofbook.pitch.v1.2.19.openclosevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.open_interest = ProtoField.new("Open Interest", "cboe.cfefutures.depthofbook.pitch.v1.2.19.openinterest", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.open_price = ProtoField.new("Open Price", "cboe.cfefutures.depthofbook.pitch.v1.2.19.openprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.order_id = ProtoField.new("Order Id", "cboe.cfefutures.depthofbook.pitch.v1.2.19.orderid", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.packet = ProtoField.new("Packet", "cboe.cfefutures.depthofbook.pitch.v1.2.19.packet", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.packet_header = ProtoField.new("Packet Header", "cboe.cfefutures.depthofbook.pitch.v1.2.19.packetheader", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.price_increment = ProtoField.new("Price Increment", "cboe.cfefutures.depthofbook.pitch.v1.2.19.priceincrement", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.price_long = ProtoField.new("Price Long", "cboe.cfefutures.depthofbook.pitch.v1.2.19.pricelong", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.price_short = ProtoField.new("Price Short", "cboe.cfefutures.depthofbook.pitch.v1.2.19.priceshort", ftypes.DOUBLE)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.cfefutures.depthofbook.pitch.v1.2.19.quantitylong", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.cfefutures.depthofbook.pitch.v1.2.19.quantityshort", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.report_symbol = ProtoField.new("Report Symbol", "cboe.cfefutures.depthofbook.pitch.v1.2.19.reportsymbol", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.cfefutures.depthofbook.pitch.v1.2.19.reserved1", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.cfefutures.depthofbook.pitch.v1.2.19.reserved2", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.cfefutures.depthofbook.pitch.v1.2.19.reserved3", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.cfefutures.depthofbook.pitch.v1.2.19.reservedflags", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.sequence = ProtoField.new("Sequence", "cboe.cfefutures.depthofbook.pitch.v1.2.19.sequence", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.cfefutures.depthofbook.pitch.v1.2.19.settlementprice", ftypes.UINT64)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.cfefutures.depthofbook.pitch.v1.2.19.sideindicator", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.summary_flags = ProtoField.new("Summary Flags", "cboe.cfefutures.depthofbook.pitch.v1.2.19.summaryflags", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.symbol = ProtoField.new("Symbol", "cboe.cfefutures.depthofbook.pitch.v1.2.19.symbol", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.time = ProtoField.new("Time", "cboe.cfefutures.depthofbook.pitch.v1.2.19.time", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.time_offset = ProtoField.new("Time Offset", "cboe.cfefutures.depthofbook.pitch.v1.2.19.timeoffset", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.total_volume = ProtoField.new("Total Volume", "cboe.cfefutures.depthofbook.pitch.v1.2.19.totalvolume", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.cfefutures.depthofbook.pitch.v1.2.19.tradecondition", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_date = ProtoField.new("Trade Date", "cboe.cfefutures.depthofbook.pitch.v1.2.19.tradedate", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trading_status = ProtoField.new("Trading Status", "cboe.cfefutures.depthofbook.pitch.v1.2.19.tradingstatus", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.unit = ProtoField.new("Unit", "cboe.cfefutures.depthofbook.pitch.v1.2.19.unit", ftypes.UINT8)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.unit_timestamp = ProtoField.new("Unit Timestamp", "cboe.cfefutures.depthofbook.pitch.v1.2.19.unittimestamp", ftypes.UINT32)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "cboe.cfefutures.depthofbook.pitch.v1.2.19.upperpricelimit", ftypes.UINT64)

-- Cboe CfeFutures Pitch DepthOfBook 1.2.19 Application Messages
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.addorderlongmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.addordershortmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.deleteordermessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.end_of_day_summary_message = ProtoField.new("End Of Day Summary Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.endofdaysummarymessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.endofsessionmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.futures_instrument_definition_message = ProtoField.new("Futures Instrument Definition Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.futuresinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.futures_variance_symbol_mapping_message = ProtoField.new("Futures Variance Symbol Mapping Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.futuresvariancesymbolmappingmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.modifyorderlongmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.modifyordershortmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.open_interest_message = ProtoField.new("Open Interest Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.openinterestmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.orderexecutedmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.price_limits_message = ProtoField.new("Price Limits Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.pricelimitsmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.reducesizelongmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.reducesizeshortmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.settlementmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.time_message = ProtoField.new("Time Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.timemessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.timereferencemessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.tradebreakmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.tradelongmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.tradeshortmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.tradingstatusmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.transactionbeginmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.transactionendmessage", ftypes.STRING)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.cfefutures.depthofbook.pitch.v1.2.19.unitclearmessage", ftypes.STRING)

-- Cboe CfeFutures DepthOfBook Pitch 1.2.19 generated fields
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.future_leg_index = ProtoField.new("Future Leg Index", "cboe.cfefutures.depthofbook.pitch.v1.2.19.futurelegindex", ftypes.UINT16)
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message_index = ProtoField.new("Message Index", "cboe.cfefutures.depthofbook.pitch.v1.2.19.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CfeFutures DepthOfBook Pitch 1.2.19 Element Dissection Options
show.application_messages = true
show.future_leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.summary_flags = true
show.message_index = true
show.future_leg_index = true

-- Register Cboe CfeFutures DepthOfBook Pitch 1.2.19 Show Options
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_future_leg = Pref.bool("Show Future Leg", show.future_leg, "Parse and add Future Leg to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_summary_flags = Pref.bool("Show Summary Flags", show.summary_flags, "Parse and add Summary Flags to protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_future_leg_index = Pref.bool("Show Future Leg Index", show.future_leg_index, "Show generated future leg index in protocol tree")

-- Handle changed preferences
function omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_application_messages then
    show.application_messages = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_application_messages
  end
  if show.future_leg ~= omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_future_leg then
    show.future_leg = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_future_leg
  end
  if show.message ~= omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_message then
    show.message = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_message
  end
  if show.message_header ~= omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_message_header then
    show.message_header = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_packet then
    show.packet = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_packet_header then
    show.packet_header = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_packet_header
  end
  if show.summary_flags ~= omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_summary_flags then
    show.summary_flags = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_summary_flags
  end
  if show.message_index ~= omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_message_index then
    show.message_index = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_message_index
  end
  if show.future_leg_index ~= omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_future_leg_index then
    show.future_leg_index = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.prefs.show_future_leg_index
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
-- Cboe CfeFutures DepthOfBook Pitch 1.2.19 Fields
-----------------------------------------------------------------------

-- Accrued Day Variance
cboe_cfefutures_depthofbook_pitch_v1_2_19.accrued_day_variance = {}

-- Size: Accrued Day Variance
cboe_cfefutures_depthofbook_pitch_v1_2_19.accrued_day_variance.size = 8

-- Display: Accrued Day Variance
cboe_cfefutures_depthofbook_pitch_v1_2_19.accrued_day_variance.display = function(value)
  return "Accrued Day Variance: "..value
end

-- Dissect: Accrued Day Variance
cboe_cfefutures_depthofbook_pitch_v1_2_19.accrued_day_variance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.accrued_day_variance.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.accrued_day_variance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.accrued_day_variance, range, value, display)

  return offset + length, value
end

-- Block Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.block_volume = {}

-- Size: Block Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.block_volume.size = 4

-- Display: Block Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.block_volume.display = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.block_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.block_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.block_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_long = {}

-- Size: Canceled Quantity Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_long.size = 4

-- Display: Canceled Quantity Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_long.display = function(value)
  return "Canceled Quantity Long: "..value
end

-- Dissect: Canceled Quantity Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.canceled_quantity_long, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Close Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.close_price = {}

-- Size: Close Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.close_price.size = 8

-- Display: Close Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.close_price.display = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.close_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.close_price, range, value, display)

  return offset + length, value
end

-- Contract Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_date = {}

-- Size: Contract Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_date.size = 4

-- Display: Contract Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_date.display = function(value)
  return "Contract Date: "..value
end

-- Dissect: Contract Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.contract_date, range, value, display)

  return offset + length, value
end

-- Contract Size
cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_size = {}

-- Size: Contract Size
cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_size.size = 2

-- Display: Contract Size
cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Count
cboe_cfefutures_depthofbook_pitch_v1_2_19.count = {}

-- Size: Count
cboe_cfefutures_depthofbook_pitch_v1_2_19.count.size = 1

-- Display: Count
cboe_cfefutures_depthofbook_pitch_v1_2_19.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_cfefutures_depthofbook_pitch_v1_2_19.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.count, range, value, display)

  return offset + length, value
end

-- Ecrp Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.ecrp_volume = {}

-- Size: Ecrp Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.ecrp_volume.size = 4

-- Display: Ecrp Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.ecrp_volume.display = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.ecrp_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.ecrp_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.ecrp_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_cfefutures_depthofbook_pitch_v1_2_19.epoch_time = {}

-- Size: Epoch Time
cboe_cfefutures_depthofbook_pitch_v1_2_19.epoch_time.size = 4

-- Display: Epoch Time
cboe_cfefutures_depthofbook_pitch_v1_2_19.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_cfefutures_depthofbook_pitch_v1_2_19.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_cfefutures_depthofbook_pitch_v1_2_19.executed_quantity = {}

-- Size: Executed Quantity
cboe_cfefutures_depthofbook_pitch_v1_2_19.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_cfefutures_depthofbook_pitch_v1_2_19.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_cfefutures_depthofbook_pitch_v1_2_19.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id = {}

-- Size: Execution Id
cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.size = 8

-- Display: Execution Id
cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expiration Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.expiration_date = {}

-- Size: Expiration Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.expiration_date.size = 4

-- Display: Expiration Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.feed_symbol = {}

-- Size: Feed Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Futures Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_symbol = {}

-- Size: Futures Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_symbol.size = 12

-- Display: Futures Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_symbol.display = function(value)
  return "Futures Symbol: "..value
end

-- Dissect: Futures Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.futures_symbol, range, value, display)

  return offset + length, value
end

-- High Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.high_price = {}

-- Size: High Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.high_price.size = 8

-- Display: High Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.high_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.high_price, range, value, display)

  return offset + length, value
end

-- Issue
cboe_cfefutures_depthofbook_pitch_v1_2_19.issue = {}

-- Size: Issue
cboe_cfefutures_depthofbook_pitch_v1_2_19.issue.size = 1

-- Display: Issue
cboe_cfefutures_depthofbook_pitch_v1_2_19.issue.display = function(value)
  if value == "i" then
    return "Issue: Periodic Indicative Settlement (i)"
  end
  if value == "I" then
    return "Issue: Indicative Settlement (I)"
  end
  if value == "S" then
    return "Issue: Initial Settlement (S)"
  end
  if value == "R" then
    return "Issue: Reissued Settlement (R)"
  end

  return "Issue: Unknown("..value..")"
end

-- Dissect: Issue
cboe_cfefutures_depthofbook_pitch_v1_2_19.issue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.issue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.issue, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_count = {}

-- Size: Leg Count
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_count.size = 1

-- Display: Leg Count
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Offset
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_offset = {}

-- Size: Leg Offset
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_offset.size = 1

-- Display: Leg Offset
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_offset.display = function(value)
  return "Leg Offset: "..value
end

-- Dissect: Leg Offset
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.leg_offset, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_ratio = {}

-- Size: Leg Ratio
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_symbol = {}

-- Size: Leg Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_symbol.size = 6

-- Display: Leg Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_cfefutures_depthofbook_pitch_v1_2_19.length = {}

-- Size: Length
cboe_cfefutures_depthofbook_pitch_v1_2_19.length.size = 2

-- Display: Length
cboe_cfefutures_depthofbook_pitch_v1_2_19.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cfefutures_depthofbook_pitch_v1_2_19.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.length, range, value, display)

  return offset + length, value
end

-- Listing State
cboe_cfefutures_depthofbook_pitch_v1_2_19.listing_state = {}

-- Size: Listing State
cboe_cfefutures_depthofbook_pitch_v1_2_19.listing_state.size = 1

-- Display: Listing State
cboe_cfefutures_depthofbook_pitch_v1_2_19.listing_state.display = function(value)
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
cboe_cfefutures_depthofbook_pitch_v1_2_19.listing_state.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.listing_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.listing_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.listing_state, range, value, display)

  return offset + length, value
end

-- Low Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.low_price = {}

-- Size: Low Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.low_price.size = 8

-- Display: Low Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.low_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Price Limit
cboe_cfefutures_depthofbook_pitch_v1_2_19.lower_price_limit = {}

-- Size: Lower Price Limit
cboe_cfefutures_depthofbook_pitch_v1_2_19.lower_price_limit.size = 8

-- Display: Lower Price Limit
cboe_cfefutures_depthofbook_pitch_v1_2_19.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Dissect: Lower Price Limit
cboe_cfefutures_depthofbook_pitch_v1_2_19.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.lower_price_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_length = {}

-- Size: Message Length
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_length.size = 1

-- Display: Message Length
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_type = {}

-- Size: Message Type
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_type.size = 1

-- Display: Message Type
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_type.display = function(value)
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
  if value == 0xFA then
    return "Message Type: Futures Variance Symbol Mapping Message (0xFA)"
  end
  if value == 0xBE then
    return "Message Type: Price Limits Message (0xBE)"
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
    return "Message Type: Transaction Begin Message (0xBC)"
  end
  if value == 0xBD then
    return "Message Type: Transaction End Message (0xBD)"
  end
  if value == 0x2C then
    return "Message Type: Trade Break Message (0x2C)"
  end
  if value == 0xB9 then
    return "Message Type: Settlement Message (0xB9)"
  end
  if value == 0xD3 then
    return "Message Type: Open Interest Message (0xD3)"
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
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_cfefutures_depthofbook_pitch_v1_2_19.midnight_reference = {}

-- Size: Midnight Reference
cboe_cfefutures_depthofbook_pitch_v1_2_19.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_cfefutures_depthofbook_pitch_v1_2_19.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_cfefutures_depthofbook_pitch_v1_2_19.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Num Elapsed Returns
cboe_cfefutures_depthofbook_pitch_v1_2_19.num_elapsed_returns = {}

-- Size: Num Elapsed Returns
cboe_cfefutures_depthofbook_pitch_v1_2_19.num_elapsed_returns.size = 2

-- Display: Num Elapsed Returns
cboe_cfefutures_depthofbook_pitch_v1_2_19.num_elapsed_returns.display = function(value)
  return "Num Elapsed Returns: "..value
end

-- Dissect: Num Elapsed Returns
cboe_cfefutures_depthofbook_pitch_v1_2_19.num_elapsed_returns.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.num_elapsed_returns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.num_elapsed_returns.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.num_elapsed_returns, range, value, display)

  return offset + length, value
end

-- Num Final Returns
cboe_cfefutures_depthofbook_pitch_v1_2_19.num_final_returns = {}

-- Size: Num Final Returns
cboe_cfefutures_depthofbook_pitch_v1_2_19.num_final_returns.size = 2

-- Display: Num Final Returns
cboe_cfefutures_depthofbook_pitch_v1_2_19.num_final_returns.display = function(value)
  return "Num Final Returns: "..value
end

-- Dissect: Num Final Returns
cboe_cfefutures_depthofbook_pitch_v1_2_19.num_final_returns.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.num_final_returns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.num_final_returns.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.num_final_returns, range, value, display)

  return offset + length, value
end

-- Open Interest
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest = {}

-- Size: Open Interest
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest.size = 4

-- Display: Open Interest
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_price = {}

-- Size: Open Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_price.size = 8

-- Display: Open Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.open_price, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id = {}

-- Size: Order Id
cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size = 8

-- Display: Order Id
cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.order_id, range, value, display)

  return offset + length, value
end

-- Price Increment
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_increment = {}

-- Size: Price Increment
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_increment.size = 8

-- Display: Price Increment
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_increment.display = function(value)
  return "Price Increment: "..value
end

-- Dissect: Price Increment
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_increment.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long = {}

-- Size: Price Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.size = 8

-- Display: Price Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.display = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short = {}

-- Size: Price Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.size = 2

-- Display: Price Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.translate(raw)
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long = {}

-- Size: Quantity Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.size = 4

-- Display: Quantity Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short = {}

-- Size: Quantity Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.size = 2

-- Display: Quantity Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Report Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.report_symbol = {}

-- Size: Report Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.report_symbol.size = 6

-- Display: Report Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.report_symbol.display = function(value)
  return "Report Symbol: "..value
end

-- Dissect: Report Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.report_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.report_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.report_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.report_symbol, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_1 = {}

-- Size: Reserved 1
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_1.size = 1

-- Display: Reserved 1
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_2 = {}

-- Size: Reserved 2
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_2.size = 2

-- Display: Reserved 2
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_3 = {}

-- Size: Reserved 3
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_3.size = 3

-- Display: Reserved 3
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cfefutures_depthofbook_pitch_v1_2_19.sequence = {}

-- Size: Sequence
cboe_cfefutures_depthofbook_pitch_v1_2_19.sequence.size = 4

-- Display: Sequence
cboe_cfefutures_depthofbook_pitch_v1_2_19.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cfefutures_depthofbook_pitch_v1_2_19.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.sequence, range, value, display)

  return offset + length, value
end

-- Settlement Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_price = {}

-- Size: Settlement Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_price.size = 8

-- Display: Settlement Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator = {}

-- Size: Side Indicator
cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.size = 1

-- Display: Side Indicator
cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol = {}

-- Size: Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size = 6

-- Display: Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time
cboe_cfefutures_depthofbook_pitch_v1_2_19.time = {}

-- Size: Time
cboe_cfefutures_depthofbook_pitch_v1_2_19.time.size = 4

-- Display: Time
cboe_cfefutures_depthofbook_pitch_v1_2_19.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_cfefutures_depthofbook_pitch_v1_2_19.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset = {}

-- Size: Time Offset
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size = 4

-- Display: Time Offset
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.total_volume = {}

-- Size: Total Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.total_volume.size = 4

-- Display: Total Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_cfefutures_depthofbook_pitch_v1_2_19.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition = {}

-- Size: Trade Condition
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.size = 1

-- Display: Trade Condition
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.display = function(value)
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
  if value == "D" then
    return "Trade Condition: Derived (D)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date = {}

-- Size: Trade Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.size = 4

-- Display: Trade Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status = {}

-- Size: Trading Status
cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status.size = 1

-- Display: Trading Status
cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status.display = function(value)
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
cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit = {}

-- Size: Unit
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit.size = 1

-- Display: Unit
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.unit, range, value, display)

  return offset + length, value
end

-- Unit Timestamp
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp = {}

-- Size: Unit Timestamp
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp.size = 4

-- Display: Unit Timestamp
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp.display = function(value)
  return "Unit Timestamp: "..value
end

-- Dissect: Unit Timestamp
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.unit_timestamp, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
cboe_cfefutures_depthofbook_pitch_v1_2_19.upper_price_limit = {}

-- Size: Upper Price Limit
cboe_cfefutures_depthofbook_pitch_v1_2_19.upper_price_limit.size = 8

-- Display: Upper Price Limit
cboe_cfefutures_depthofbook_pitch_v1_2_19.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Dissect: Upper Price Limit
cboe_cfefutures_depthofbook_pitch_v1_2_19.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cfefutures_depthofbook_pitch_v1_2_19.upper_price_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.upper_price_limit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CfeFutures DepthOfBook Pitch 1.2.19
-----------------------------------------------------------------------

-- End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_session_message = {}

-- Size: End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_session_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size

-- Display: End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status_message = {}

-- Size: Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_2.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_3.size

-- Display: Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alphanumeric
  index, reserved_3 = cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags = {}

-- Size: Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags.size = 1

-- Display: Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags.display = function(range, value, packet, parent)
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
  -- Is Open Close Valid flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Open Close Valid"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags.bits = function(range, value, packet, parent)

  -- High Price Valid: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.high_price_valid, range, value)

  -- High Price Is Bid: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.high_price_is_bid, range, value)

  -- Low Price Valid: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.low_price_valid, range, value)

  -- Low Price Is Offer: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.low_price_is_offer, range, value)

  -- Open Close Valid: 1 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.open_close_valid, range, value)

  -- Reserved Flags: 3 Bit
  parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reserved_flags, range, value)
end

-- Dissect: Summary Flags
cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.summary_flags, range, display)

  if show.summary_flags then
    cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_day_summary_message = {}

-- Size: End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_day_summary_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.high_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.low_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.open_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.close_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.total_volume.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.block_volume.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.ecrp_volume.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags.size

-- Display: End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Binary
  index, open_interest = cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest.dissect(buffer, index, packet, parent)

  -- High Price: Binary Price
  index, high_price = cboe_cfefutures_depthofbook_pitch_v1_2_19.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary Price
  index, low_price = cboe_cfefutures_depthofbook_pitch_v1_2_19.low_price.dissect(buffer, index, packet, parent)

  -- Open Price: Binary Price
  index, open_price = cboe_cfefutures_depthofbook_pitch_v1_2_19.open_price.dissect(buffer, index, packet, parent)

  -- Close Price: Binary Price
  index, close_price = cboe_cfefutures_depthofbook_pitch_v1_2_19.close_price.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_cfefutures_depthofbook_pitch_v1_2_19.total_volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Binary
  index, block_volume = cboe_cfefutures_depthofbook_pitch_v1_2_19.block_volume.dissect(buffer, index, packet, parent)

  -- Ecrp Volume: Binary
  index, ecrp_volume = cboe_cfefutures_depthofbook_pitch_v1_2_19.ecrp_volume.dissect(buffer, index, packet, parent)

  -- Summary Flags: Struct of 6 fields
  index, summary_flags = cboe_cfefutures_depthofbook_pitch_v1_2_19.summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Summary Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest_message = {}

-- Size: Open Interest Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest.size

-- Display: Open Interest Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Binary
  index, open_interest = cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.open_interest_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_message = {}

-- Size: Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_price.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.issue.size

-- Display: Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.dissect(buffer, index, packet, parent)

  -- Settlement Price: Binary Price
  index, settlement_price = cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_price.dissect(buffer, index, packet, parent)

  -- Issue: Alphanumeric
  index, issue = cboe_cfefutures_depthofbook_pitch_v1_2_19.issue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.settlement_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_break_message = {}

-- Size: Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_break_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.size

-- Display: Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_end_message = {}

-- Size: Transaction End Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_end_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size

-- Display: Transaction End Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.transaction_end_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_begin_message = {}

-- Size: Transaction Begin Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_begin_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size

-- Display: Transaction Begin Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_short_message = {}

-- Size: Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_short_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.size

-- Display: Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_long_message = {}

-- Size: Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_long_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.size

-- Display: Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Price
  index, price_long = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.delete_order_message = {}

-- Size: Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.delete_order_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size

-- Display: Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_short_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.size

-- Display: Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_long_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.size

-- Display: Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Price
  index, price_long = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_short_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_long_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_long.size

-- Display: Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Long: Binary
  index, canceled_quantity_long = cboe_cfefutures_depthofbook_pitch_v1_2_19.canceled_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.order_executed_message = {}

-- Size: Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.order_executed_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.executed_quantity.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.size

-- Display: Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_cfefutures_depthofbook_pitch_v1_2_19.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_short_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.size

-- Display: Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_long_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.size

-- Display: Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cfefutures_depthofbook_pitch_v1_2_19.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cfefutures_depthofbook_pitch_v1_2_19.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_cfefutures_depthofbook_pitch_v1_2_19.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Price
  index, price_long = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Limits Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_limits_message = {}

-- Size: Price Limits Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_limits_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.upper_price_limit.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.lower_price_limit.size

-- Display: Price Limits Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_limits_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Limits Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_limits_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: Binary Price
  index, upper_price_limit = cboe_cfefutures_depthofbook_pitch_v1_2_19.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: Binary Price
  index, lower_price_limit = cboe_cfefutures_depthofbook_pitch_v1_2_19.lower_price_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Limits Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.price_limits_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.price_limits_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_limits_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_limits_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.price_limits_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Variance Symbol Mapping Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_variance_symbol_mapping_message = {}

-- Size: Futures Variance Symbol Mapping Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_variance_symbol_mapping_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.feed_symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_symbol.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.accrued_day_variance.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.num_final_returns.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.num_elapsed_returns.size

-- Display: Futures Variance Symbol Mapping Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_variance_symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Variance Symbol Mapping Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_variance_symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: Binary
  index, unit_timestamp = cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.feed_symbol.dissect(buffer, index, packet, parent)

  -- Futures Symbol: Alphanumeric
  index, futures_symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_symbol.dissect(buffer, index, packet, parent)

  -- Accrued Day Variance: Signed Binary
  index, accrued_day_variance = cboe_cfefutures_depthofbook_pitch_v1_2_19.accrued_day_variance.dissect(buffer, index, packet, parent)

  -- Num Final Returns: Binary
  index, num_final_returns = cboe_cfefutures_depthofbook_pitch_v1_2_19.num_final_returns.dissect(buffer, index, packet, parent)

  -- Num Elapsed Returns: Binary
  index, num_elapsed_returns = cboe_cfefutures_depthofbook_pitch_v1_2_19.num_elapsed_returns.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Variance Symbol Mapping Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_variance_symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.futures_variance_symbol_mapping_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_variance_symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_variance_symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_variance_symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Leg
cboe_cfefutures_depthofbook_pitch_v1_2_19.future_leg = {}

-- Size: Future Leg
cboe_cfefutures_depthofbook_pitch_v1_2_19.future_leg.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_ratio.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_symbol.size

-- Display: Future Leg
cboe_cfefutures_depthofbook_pitch_v1_2_19.future_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Leg
cboe_cfefutures_depthofbook_pitch_v1_2_19.future_leg.fields = function(buffer, offset, packet, parent, future_leg_index)
  local index = offset

  -- Implicit Future Leg Index
  if future_leg_index ~= nil and show.future_leg_index then
    local iteration = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.future_leg_index, future_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Symbol: Alphanumeric
  index, leg_symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Leg
cboe_cfefutures_depthofbook_pitch_v1_2_19.future_leg.dissect = function(buffer, offset, packet, parent, future_leg_index)
  if show.future_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.future_leg, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.future_leg.fields(buffer, offset, packet, parent, future_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.future_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.future_leg.fields(buffer, offset, packet, parent, future_leg_index)
  end
end

-- Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_instrument_definition_message = {}

-- Calculate size of: Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.report_symbol.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_flags.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.expiration_date.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_size.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.listing_state.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.price_increment.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_count.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_offset.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_1.size

  index = index + cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_date.size

  -- Calculate field size from count
  local future_leg_count = buffer(offset + index - 7, 1):le_uint()
  index = index + future_leg_count * 10

  return index
end

-- Display: Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.symbol.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: Binary
  index, unit_timestamp = cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Report Symbol: Alphanumeric
  index, report_symbol = cboe_cfefutures_depthofbook_pitch_v1_2_19.report_symbol.dissect(buffer, index, packet, parent)

  -- Futures Flags
  index, futures_flags = cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_flags.dissect(buffer, index, packet, parent)

  -- Expiration Date: Binary Date
  index, expiration_date = cboe_cfefutures_depthofbook_pitch_v1_2_19.expiration_date.dissect(buffer, index, packet, parent)

  -- Contract Size: Binary
  index, contract_size = cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_size.dissect(buffer, index, packet, parent)

  -- Listing State: Alphanumeric
  index, listing_state = cboe_cfefutures_depthofbook_pitch_v1_2_19.listing_state.dissect(buffer, index, packet, parent)

  -- Price Increment: Binary Price
  index, price_increment = cboe_cfefutures_depthofbook_pitch_v1_2_19.price_increment.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_count.dissect(buffer, index, packet, parent)

  -- Leg Offset: Binary
  index, leg_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.leg_offset.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_cfefutures_depthofbook_pitch_v1_2_19.reserved_1.dissect(buffer, index, packet, parent)

  -- Contract Date: Binary Date
  index, contract_date = cboe_cfefutures_depthofbook_pitch_v1_2_19.contract_date.dissect(buffer, index, packet, parent)

  -- Repeating: Future Leg
  for future_leg_index = 1, leg_count do
    index, future_leg = cboe_cfefutures_depthofbook_pitch_v1_2_19.future_leg.dissect(buffer, index, packet, parent, future_leg_index)
  end

  return index
end

-- Dissect: Futures Instrument Definition Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.futures_instrument_definition_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_reference_message = {}

-- Size: Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_reference_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.midnight_reference.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.size

-- Display: Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_cfefutures_depthofbook_pitch_v1_2_19.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_cfefutures_depthofbook_pitch_v1_2_19.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_clear_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.size

-- Display: Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_message = {}

-- Size: Time Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_message.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.time.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.epoch_time.size

-- Display: Time Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_cfefutures_depthofbook_pitch_v1_2_19.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_cfefutures_depthofbook_pitch_v1_2_19.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.time_message, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cfefutures_depthofbook_pitch_v1_2_19.payload = {}

-- Dissect: Payload
cboe_cfefutures_depthofbook_pitch_v1_2_19.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Definition Message
  if message_type == 0xBB then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Variance Symbol Mapping Message
  if message_type == 0xFA then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.futures_variance_symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Limits Message
  if message_type == 0xBE then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.price_limits_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End Message
  if message_type == 0xBD then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.transaction_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Message
  if message_type == 0xB9 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.settlement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if message_type == 0xD3 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_header = {}

-- Size: Message Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_header.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.message_length.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.message_type.size

-- Display: Message Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cfefutures_depthofbook_pitch_v1_2_19.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, message_type = cboe_cfefutures_depthofbook_pitch_v1_2_19.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message_header, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.message = {}

-- Display: Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cfefutures_depthofbook_pitch_v1_2_19.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 24 branches
  index = cboe_cfefutures_depthofbook_pitch_v1_2_19.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cfefutures_depthofbook_pitch_v1_2_19.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.message, buffer(offset, 0))
    local current = cboe_cfefutures_depthofbook_pitch_v1_2_19.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cfefutures_depthofbook_pitch_v1_2_19.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.packet_header = {}

-- Size: Packet Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.packet_header.size =
  cboe_cfefutures_depthofbook_pitch_v1_2_19.length.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.count.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.unit.size + 
  cboe_cfefutures_depthofbook_pitch_v1_2_19.sequence.size

-- Display: Packet Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cfefutures_depthofbook_pitch_v1_2_19.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_cfefutures_depthofbook_pitch_v1_2_19.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cfefutures_depthofbook_pitch_v1_2_19.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_cfefutures_depthofbook_pitch_v1_2_19.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_cfefutures_depthofbook_pitch_v1_2_19.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.fields.packet_header, buffer(offset, 0))
    local index = cboe_cfefutures_depthofbook_pitch_v1_2_19.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cfefutures_depthofbook_pitch_v1_2_19.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cfefutures_depthofbook_pitch_v1_2_19.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cfefutures_depthofbook_pitch_v1_2_19.packet = {}

-- Dissect Packet
cboe_cfefutures_depthofbook_pitch_v1_2_19.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cfefutures_depthofbook_pitch_v1_2_19.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_cfefutures_depthofbook_pitch_v1_2_19.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.init()
end

-- Dissector for Cboe CfeFutures DepthOfBook Pitch 1.2.19
function omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cfefutures_depthofbook_pitch_v1_2_19, buffer(), omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.description, "("..buffer:len().." Bytes)")
  return cboe_cfefutures_depthofbook_pitch_v1_2_19.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_cfefutures_depthofbook_pitch_v1_2_19)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Udp packet
cboe_cfefutures_depthofbook_pitch_v1_2_19.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe CfeFutures DepthOfBook Pitch 1.2.19 (Udp)
local function omi_cboe_cfefutures_depthofbook_pitch_v1_2_19_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cfefutures_depthofbook_pitch_v1_2_19.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cfefutures_depthofbook_pitch_v1_2_19
  omi_cboe_cfefutures_depthofbook_pitch_v1_2_19.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CfeFutures DepthOfBook Pitch 1.2.19
omi_cboe_cfefutures_depthofbook_pitch_v1_2_19:register_heuristic("udp", omi_cboe_cfefutures_depthofbook_pitch_v1_2_19_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.2.19
--   Date: Monday, January 5, 2026
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
