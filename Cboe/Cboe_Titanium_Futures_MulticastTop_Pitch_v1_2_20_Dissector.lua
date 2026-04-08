-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Titanium Futures MulticastTop Pitch 1.2.20 Protocol
local omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20 = Proto("Cboe.Titanium.Futures.MulticastTop.Pitch.v1.2.20.Lua", "Cboe Titanium Futures MulticastTop Pitch 1.2.20")

-- Protocol table
local cboe_titanium_futures_multicasttop_pitch_v1_2_20 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Titanium Futures MulticastTop Pitch 1.2.20 Fields
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.accrued_day_variance = ProtoField.new("Accrued Day Variance", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.accrueddayvariance", ftypes.INT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ask_price_long = ProtoField.new("Ask Price Long", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.askpricelong", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ask_price_short = ProtoField.new("Ask Price Short", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.askpriceshort", ftypes.DOUBLE)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ask_quantity_long = ProtoField.new("Ask Quantity Long", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.askquantitylong", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ask_quantity_short = ProtoField.new("Ask Quantity Short", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.askquantityshort", ftypes.UINT16)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.bid_price_long = ProtoField.new("Bid Price Long", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.bidpricelong", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.bid_price_short = ProtoField.new("Bid Price Short", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.bidpriceshort", ftypes.DOUBLE)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.bid_quantity_long = ProtoField.new("Bid Quantity Long", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.bidquantitylong", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.bid_quantity_short = ProtoField.new("Bid Quantity Short", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.bidquantityshort", ftypes.UINT16)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.block_volume = ProtoField.new("Block Volume", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.blockvolume", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.close_price = ProtoField.new("Close Price", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.closeprice", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.contract_date = ProtoField.new("Contract Date", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.contractdate", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.contract_size = ProtoField.new("Contract Size", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.contractsize", ftypes.UINT16)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.count = ProtoField.new("Count", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.count", ftypes.UINT8)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.ecrpvolume", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.epochtime", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.execution_id = ProtoField.new("Execution Id", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.executionid", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.expiration_date = ProtoField.new("Expiration Date", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.expirationdate", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.feedsymbol", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.future_leg = ProtoField.new("Future Leg", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.futureleg", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.futures_symbol = ProtoField.new("Futures Symbol", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.futuressymbol", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.high_price = ProtoField.new("High Price", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.highprice", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.high_price_is_bid = ProtoField.new("High Price Is Bid", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.highpriceisbid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.high_price_valid = ProtoField.new("High Price Valid", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.highpricevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.issue = ProtoField.new("Issue", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.issue", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_condition = ProtoField.new("Last Trade Condition", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.lasttradecondition", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_price_long = ProtoField.new("Last Trade Price Long", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.lasttradepricelong", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_price_short = ProtoField.new("Last Trade Price Short", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.lasttradepriceshort", ftypes.DOUBLE)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_size_long = ProtoField.new("Last Trade Size Long", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.lasttradesizelong", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_size_short = ProtoField.new("Last Trade Size Short", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.lasttradesizeshort", ftypes.UINT16)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.leg_count = ProtoField.new("Leg Count", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.legcount", ftypes.UINT8)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.leg_offset = ProtoField.new("Leg Offset", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.legoffset", ftypes.UINT8)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.legratio", ftypes.INT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.legsymbol", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.length = ProtoField.new("Length", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.length", ftypes.UINT16)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.listing_state = ProtoField.new("Listing State", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.listingstate", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.low_price = ProtoField.new("Low Price", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.lowprice", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.low_price_is_offer = ProtoField.new("Low Price Is Offer", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.lowpriceisoffer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.low_price_valid = ProtoField.new("Low Price Valid", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.lowpricevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.lowerpricelimit", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message = ProtoField.new("Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.message", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message_header = ProtoField.new("Message Header", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.messageheader", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message_length = ProtoField.new("Message Length", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.messagelength", ftypes.UINT8)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message_type = ProtoField.new("Message Type", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.messagetype", ftypes.UINT8)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.midnightreference", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.num_elapsed_returns = ProtoField.new("Num Elapsed Returns", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.numelapsedreturns", ftypes.UINT16)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.num_final_returns = ProtoField.new("Num Final Returns", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.numfinalreturns", ftypes.UINT16)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.open_close_valid = ProtoField.new("Open Close Valid", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.openclosevalid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.open_interest = ProtoField.new("Open Interest", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.openinterest", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.open_price = ProtoField.new("Open Price", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.openprice", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.packet = ProtoField.new("Packet", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.packet", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.packet_header = ProtoField.new("Packet Header", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.packetheader", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.price_increment = ProtoField.new("Price Increment", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.priceincrement", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.price_long = ProtoField.new("Price Long", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.pricelong", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.price_short = ProtoField.new("Price Short", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.priceshort", ftypes.DOUBLE)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.quantitylong", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.quantityshort", ftypes.UINT16)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.report_symbol = ProtoField.new("Report Symbol", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.reportsymbol", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.reserved1", ftypes.UINT8)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.reserved2", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.reserved3", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.reservedflags", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.sequence = ProtoField.new("Sequence", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.sequence", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.settlementprice", ftypes.UINT64)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.side = ProtoField.new("Side", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.side", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.summary_flags = ProtoField.new("Summary Flags", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.summaryflags", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.symbol = ProtoField.new("Symbol", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.symbol", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.time = ProtoField.new("Time", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.time", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.time_offset = ProtoField.new("Time Offset", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.timeoffset", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.timestamp = ProtoField.new("Timestamp", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.timestamp", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.total_volume = ProtoField.new("Total Volume", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.totalvolume", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.tradecondition", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.trade_date = ProtoField.new("Trade Date", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.tradedate", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.trading_status = ProtoField.new("Trading Status", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.tradingstatus", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.unit = ProtoField.new("Unit", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.unit", ftypes.UINT8)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.unit_timestamp = ProtoField.new("Unit Timestamp", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.unittimestamp", ftypes.UINT32)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.upperpricelimit", ftypes.UINT64)

-- Cboe Titanium Futures Pitch MulticastTop 1.2.20 Application Messages
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.end_of_day_summary_message = ProtoField.new("End Of Day Summary Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.endofdaysummarymessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.endofsessionmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.futures_instrument_definition_message = ProtoField.new("Futures Instrument Definition Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.futuresinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.futures_variance_symbol_mapping_message = ProtoField.new("Futures Variance Symbol Mapping Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.futuresvariancesymbolmappingmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.market_snapshot_long_message = ProtoField.new("Market Snapshot Long Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.marketsnapshotlongmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.market_snapshot_short_message = ProtoField.new("Market Snapshot Short Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.marketsnapshotshortmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.open_interest_message = ProtoField.new("Open Interest Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.openinterestmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.price_limits_message = ProtoField.new("Price Limits Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.pricelimitsmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.settlementmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.single_side_update_long_message = ProtoField.new("Single Side Update Long Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.singlesideupdatelongmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.single_side_update_short_message = ProtoField.new("Single Side Update Short Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.singlesideupdateshortmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.time_message = ProtoField.new("Time Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.timemessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.timereferencemessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.top_trade_message = ProtoField.new("Top Trade Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.toptrademessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.tradingstatusmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.two_side_update_long_message = ProtoField.new("Two Side Update Long Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.twosideupdatelongmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.two_side_update_short_message = ProtoField.new("Two Side Update Short Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.twosideupdateshortmessage", ftypes.STRING)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.unitclearmessage", ftypes.STRING)

-- Cboe Titanium Futures MulticastTop Pitch 1.2.20 generated fields
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.future_leg_index = ProtoField.new("Future Leg Index", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.futurelegindex", ftypes.UINT16)
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message_index = ProtoField.new("Message Index", "cboe.titanium.futures.multicasttop.pitch.v1.2.20.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Titanium Futures MulticastTop Pitch 1.2.20 Element Dissection Options
show.application_messages = true
show.future_leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.summary_flags = true
show.message_index = true
show.future_leg_index = true

-- Register Cboe Titanium Futures MulticastTop Pitch 1.2.20 Show Options
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_future_leg = Pref.bool("Show Future Leg", show.future_leg, "Parse and add Future Leg to protocol tree")
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_summary_flags = Pref.bool("Show Summary Flags", show.summary_flags, "Parse and add Summary Flags to protocol tree")
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_future_leg_index = Pref.bool("Show Future Leg Index", show.future_leg_index, "Show generated future leg index in protocol tree")

-- Handle changed preferences
function omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_application_messages then
    show.application_messages = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_application_messages
  end
  if show.future_leg ~= omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_future_leg then
    show.future_leg = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_future_leg
  end
  if show.message ~= omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_message then
    show.message = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_message_header then
    show.message_header = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_packet then
    show.packet = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_packet_header then
    show.packet_header = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_packet_header
  end
  if show.summary_flags ~= omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_summary_flags then
    show.summary_flags = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_summary_flags
  end
  if show.message_index ~= omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_message_index then
    show.message_index = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_message_index
  end
  if show.future_leg_index ~= omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_future_leg_index then
    show.future_leg_index = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.prefs.show_future_leg_index
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
-- Cboe Titanium Futures MulticastTop Pitch 1.2.20 Fields
-----------------------------------------------------------------------

-- Accrued Day Variance
cboe_titanium_futures_multicasttop_pitch_v1_2_20.accrued_day_variance = {}

-- Size: Accrued Day Variance
cboe_titanium_futures_multicasttop_pitch_v1_2_20.accrued_day_variance.size = 8

-- Display: Accrued Day Variance
cboe_titanium_futures_multicasttop_pitch_v1_2_20.accrued_day_variance.display = function(value)
  return "Accrued Day Variance: "..value
end

-- Dissect: Accrued Day Variance
cboe_titanium_futures_multicasttop_pitch_v1_2_20.accrued_day_variance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.accrued_day_variance.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.accrued_day_variance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.accrued_day_variance, range, value, display)

  return offset + length, value
end

-- Ask Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long = {}

-- Size: Ask Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long.size = 8

-- Display: Ask Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Dissect: Ask Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short = {}

-- Size: Ask Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.size = 2

-- Display: Ask Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.translate(raw)
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long = {}

-- Size: Ask Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long.size = 4

-- Display: Ask Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long.display = function(value)
  return "Ask Quantity Long: "..value
end

-- Dissect: Ask Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short = {}

-- Size: Ask Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short.size = 2

-- Display: Ask Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short.display = function(value)
  return "Ask Quantity Short: "..value
end

-- Dissect: Ask Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long = {}

-- Size: Bid Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long.size = 8

-- Display: Bid Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Dissect: Bid Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short = {}

-- Size: Bid Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.size = 2

-- Display: Bid Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.translate(raw)
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long = {}

-- Size: Bid Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long.size = 4

-- Display: Bid Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long.display = function(value)
  return "Bid Quantity Long: "..value
end

-- Dissect: Bid Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short = {}

-- Size: Bid Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short.size = 2

-- Display: Bid Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short.display = function(value)
  return "Bid Quantity Short: "..value
end

-- Dissect: Bid Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Block Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.block_volume = {}

-- Size: Block Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.block_volume.size = 4

-- Display: Block Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.block_volume.display = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.block_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.block_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.block_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Close Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.close_price = {}

-- Size: Close Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.close_price.size = 8

-- Display: Close Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.close_price.display = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.close_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.close_price, range, value, display)

  return offset + length, value
end

-- Contract Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_date = {}

-- Size: Contract Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_date.size = 4

-- Display: Contract Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_date.display = function(value)
  return "Contract Date: "..value
end

-- Dissect: Contract Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.contract_date, range, value, display)

  return offset + length, value
end

-- Contract Size
cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_size = {}

-- Size: Contract Size
cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_size.size = 2

-- Display: Contract Size
cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Count
cboe_titanium_futures_multicasttop_pitch_v1_2_20.count = {}

-- Size: Count
cboe_titanium_futures_multicasttop_pitch_v1_2_20.count.size = 1

-- Display: Count
cboe_titanium_futures_multicasttop_pitch_v1_2_20.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titanium_futures_multicasttop_pitch_v1_2_20.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.count, range, value, display)

  return offset + length, value
end

-- Ecrp Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ecrp_volume = {}

-- Size: Ecrp Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ecrp_volume.size = 4

-- Display: Ecrp Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ecrp_volume.display = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.ecrp_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ecrp_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ecrp_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_titanium_futures_multicasttop_pitch_v1_2_20.epoch_time = {}

-- Size: Epoch Time
cboe_titanium_futures_multicasttop_pitch_v1_2_20.epoch_time.size = 4

-- Display: Epoch Time
cboe_titanium_futures_multicasttop_pitch_v1_2_20.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_titanium_futures_multicasttop_pitch_v1_2_20.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_titanium_futures_multicasttop_pitch_v1_2_20.execution_id = {}

-- Size: Execution Id
cboe_titanium_futures_multicasttop_pitch_v1_2_20.execution_id.size = 8

-- Display: Execution Id
cboe_titanium_futures_multicasttop_pitch_v1_2_20.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_titanium_futures_multicasttop_pitch_v1_2_20.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expiration Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.expiration_date = {}

-- Size: Expiration Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.expiration_date.size = 4

-- Display: Expiration Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.feed_symbol = {}

-- Size: Feed Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Futures Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_symbol = {}

-- Size: Futures Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_symbol.size = 12

-- Display: Futures Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_symbol.display = function(value)
  return "Futures Symbol: "..value
end

-- Dissect: Futures Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.futures_symbol, range, value, display)

  return offset + length, value
end

-- High Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.high_price = {}

-- Size: High Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.high_price.size = 8

-- Display: High Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.high_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.high_price, range, value, display)

  return offset + length, value
end

-- Issue
cboe_titanium_futures_multicasttop_pitch_v1_2_20.issue = {}

-- Size: Issue
cboe_titanium_futures_multicasttop_pitch_v1_2_20.issue.size = 1

-- Display: Issue
cboe_titanium_futures_multicasttop_pitch_v1_2_20.issue.display = function(value)
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
cboe_titanium_futures_multicasttop_pitch_v1_2_20.issue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.issue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.issue, range, value, display)

  return offset + length, value
end

-- Last Trade Condition
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition = {}

-- Size: Last Trade Condition
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition.size = 1

-- Display: Last Trade Condition
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition.display = function(value)
  if value == " " then
    return "Last Trade Condition: Normal Trade (<whitespace>)"
  end
  if value == "O" then
    return "Last Trade Condition: Opening Trade (O)"
  end
  if value == "S" then
    return "Last Trade Condition: Spread Trade (S)"
  end
  if value == "B" then
    return "Last Trade Condition: Block Trade (B)"
  end
  if value == "E" then
    return "Last Trade Condition: Ecrp Trade (E)"
  end
  if value == "X" then
    return "Last Trade Condition: Trade Break (X)"
  end
  if value == "D" then
    return "Last Trade Condition: Derived (D)"
  end

  return "Last Trade Condition: Unknown("..value..")"
end

-- Dissect: Last Trade Condition
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_condition, range, value, display)

  return offset + length, value
end

-- Last Trade Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_long = {}

-- Size: Last Trade Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_long.size = 8

-- Display: Last Trade Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_long.display = function(value)
  return "Last Trade Price Long: "..value
end

-- Dissect: Last Trade Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_price_long, range, value, display)

  return offset + length, value
end

-- Last Trade Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short = {}

-- Size: Last Trade Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short.size = 2

-- Display: Last Trade Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short.display = function(value)
  return "Last Trade Price Short: "..value
end

-- Translate: Last Trade Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Last Trade Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short.translate(raw)
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_price_short, range, value, display)

  return offset + length, value
end

-- Last Trade Size Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_long = {}

-- Size: Last Trade Size Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_long.size = 4

-- Display: Last Trade Size Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_long.display = function(value)
  return "Last Trade Size Long: "..value
end

-- Dissect: Last Trade Size Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_size_long, range, value, display)

  return offset + length, value
end

-- Last Trade Size Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_short = {}

-- Size: Last Trade Size Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_short.size = 2

-- Display: Last Trade Size Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_short.display = function(value)
  return "Last Trade Size Short: "..value
end

-- Dissect: Last Trade Size Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.last_trade_size_short, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_count = {}

-- Size: Leg Count
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_count.size = 1

-- Display: Leg Count
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Offset
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_offset = {}

-- Size: Leg Offset
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_offset.size = 1

-- Display: Leg Offset
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_offset.display = function(value)
  return "Leg Offset: "..value
end

-- Dissect: Leg Offset
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.leg_offset, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_ratio = {}

-- Size: Leg Ratio
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_symbol = {}

-- Size: Leg Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_symbol.size = 6

-- Display: Leg Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_titanium_futures_multicasttop_pitch_v1_2_20.length = {}

-- Size: Length
cboe_titanium_futures_multicasttop_pitch_v1_2_20.length.size = 2

-- Display: Length
cboe_titanium_futures_multicasttop_pitch_v1_2_20.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titanium_futures_multicasttop_pitch_v1_2_20.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.length, range, value, display)

  return offset + length, value
end

-- Listing State
cboe_titanium_futures_multicasttop_pitch_v1_2_20.listing_state = {}

-- Size: Listing State
cboe_titanium_futures_multicasttop_pitch_v1_2_20.listing_state.size = 1

-- Display: Listing State
cboe_titanium_futures_multicasttop_pitch_v1_2_20.listing_state.display = function(value)
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
cboe_titanium_futures_multicasttop_pitch_v1_2_20.listing_state.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.listing_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.listing_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.listing_state, range, value, display)

  return offset + length, value
end

-- Low Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.low_price = {}

-- Size: Low Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.low_price.size = 8

-- Display: Low Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.low_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Price Limit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.lower_price_limit = {}

-- Size: Lower Price Limit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.lower_price_limit.size = 8

-- Display: Lower Price Limit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Dissect: Lower Price Limit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.lower_price_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_length = {}

-- Size: Message Length
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_length.size = 1

-- Display: Message Length
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_type = {}

-- Size: Message Type
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_type.size = 1

-- Display: Message Type
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_type.display = function(value)
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
  if value == 0xB2 then
    return "Message Type: Market Snapshot Short Message (0xB2)"
  end
  if value == 0xB3 then
    return "Message Type: Market Snapshot Long Message (0xB3)"
  end
  if value == 0xB4 then
    return "Message Type: Single Side Update Short Message (0xB4)"
  end
  if value == 0xB5 then
    return "Message Type: Single Side Update Long Message (0xB5)"
  end
  if value == 0xB6 then
    return "Message Type: Two Side Update Short Message (0xB6)"
  end
  if value == 0xB7 then
    return "Message Type: Two Side Update Long Message (0xB7)"
  end
  if value == 0xB8 then
    return "Message Type: Top Trade Message (0xB8)"
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
  if value == 0xD3 then
    return "Message Type: Open Interest Message (0xD3)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_titanium_futures_multicasttop_pitch_v1_2_20.midnight_reference = {}

-- Size: Midnight Reference
cboe_titanium_futures_multicasttop_pitch_v1_2_20.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_titanium_futures_multicasttop_pitch_v1_2_20.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_titanium_futures_multicasttop_pitch_v1_2_20.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Num Elapsed Returns
cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_elapsed_returns = {}

-- Size: Num Elapsed Returns
cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_elapsed_returns.size = 2

-- Display: Num Elapsed Returns
cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_elapsed_returns.display = function(value)
  return "Num Elapsed Returns: "..value
end

-- Dissect: Num Elapsed Returns
cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_elapsed_returns.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_elapsed_returns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_elapsed_returns.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.num_elapsed_returns, range, value, display)

  return offset + length, value
end

-- Num Final Returns
cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_final_returns = {}

-- Size: Num Final Returns
cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_final_returns.size = 2

-- Display: Num Final Returns
cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_final_returns.display = function(value)
  return "Num Final Returns: "..value
end

-- Dissect: Num Final Returns
cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_final_returns.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_final_returns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_final_returns.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.num_final_returns, range, value, display)

  return offset + length, value
end

-- Open Interest
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest = {}

-- Size: Open Interest
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest.size = 4

-- Display: Open Interest
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_price = {}

-- Size: Open Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_price.size = 8

-- Display: Open Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.open_price, range, value, display)

  return offset + length, value
end

-- Price Increment
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_increment = {}

-- Size: Price Increment
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_increment.size = 8

-- Display: Price Increment
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_increment.display = function(value)
  return "Price Increment: "..value
end

-- Dissect: Price Increment
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_increment.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long = {}

-- Size: Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long.size = 8

-- Display: Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long.display = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short = {}

-- Size: Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short.size = 2

-- Display: Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short.translate(raw)
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long = {}

-- Size: Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long.size = 4

-- Display: Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_short = {}

-- Size: Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_short.size = 2

-- Display: Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Report Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.report_symbol = {}

-- Size: Report Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.report_symbol.size = 6

-- Display: Report Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.report_symbol.display = function(value)
  return "Report Symbol: "..value
end

-- Dissect: Report Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.report_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.report_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.report_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.report_symbol, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_1 = {}

-- Size: Reserved 1
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_1.size = 1

-- Display: Reserved 1
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_2 = {}

-- Size: Reserved 2
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_2.size = 2

-- Display: Reserved 2
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3 = {}

-- Size: Reserved 3
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.size = 3

-- Display: Reserved 3
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titanium_futures_multicasttop_pitch_v1_2_20.sequence = {}

-- Size: Sequence
cboe_titanium_futures_multicasttop_pitch_v1_2_20.sequence.size = 4

-- Display: Sequence
cboe_titanium_futures_multicasttop_pitch_v1_2_20.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titanium_futures_multicasttop_pitch_v1_2_20.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.sequence, range, value, display)

  return offset + length, value
end

-- Settlement Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_price = {}

-- Size: Settlement Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_price.size = 8

-- Display: Settlement Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Side
cboe_titanium_futures_multicasttop_pitch_v1_2_20.side = {}

-- Size: Side
cboe_titanium_futures_multicasttop_pitch_v1_2_20.side.size = 1

-- Display: Side
cboe_titanium_futures_multicasttop_pitch_v1_2_20.side.display = function(value)
  if value == "B" then
    return "Side: Bid Side (B)"
  end
  if value == "S" then
    return "Side: Ask Side (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_titanium_futures_multicasttop_pitch_v1_2_20.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol = {}

-- Size: Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size = 6

-- Display: Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time = {}

-- Size: Time
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time.size = 4

-- Display: Time
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset = {}

-- Size: Time Offset
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size = 4

-- Display: Time Offset
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titanium_futures_multicasttop_pitch_v1_2_20.timestamp = {}

-- Size: Timestamp
cboe_titanium_futures_multicasttop_pitch_v1_2_20.timestamp.size = 4

-- Display: Timestamp
cboe_titanium_futures_multicasttop_pitch_v1_2_20.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titanium_futures_multicasttop_pitch_v1_2_20.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume = {}

-- Size: Total Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.size = 4

-- Display: Total Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_condition = {}

-- Size: Trade Condition
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_condition.size = 1

-- Display: Trade Condition
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_condition.display = function(value)
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
  if value == "X" then
    return "Trade Condition: Trade Break (X)"
  end
  if value == "D" then
    return "Trade Condition: Derived (D)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date = {}

-- Size: Trade Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.size = 4

-- Display: Trade Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status = {}

-- Size: Trading Status
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.size = 1

-- Display: Trading Status
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.display = function(value)
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
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit = {}

-- Size: Unit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit.size = 1

-- Display: Unit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.unit, range, value, display)

  return offset + length, value
end

-- Unit Timestamp
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp = {}

-- Size: Unit Timestamp
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.size = 4

-- Display: Unit Timestamp
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.display = function(value)
  return "Unit Timestamp: "..value
end

-- Dissect: Unit Timestamp
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.unit_timestamp, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.upper_price_limit = {}

-- Size: Upper Price Limit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.upper_price_limit.size = 8

-- Display: Upper Price Limit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Dissect: Upper Price Limit
cboe_titanium_futures_multicasttop_pitch_v1_2_20.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.upper_price_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.upper_price_limit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe Titanium Futures MulticastTop Pitch 1.2.20
-----------------------------------------------------------------------

-- End Of Session Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_session_message = {}

-- Size: End Of Session Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_session_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.timestamp.size

-- Display: End Of Session Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titanium_futures_multicasttop_pitch_v1_2_20.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest_message = {}

-- Size: Open Interest Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest.size

-- Display: Open Interest Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Binary
  index, open_interest = cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.open_interest_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status_message = {}

-- Size: Trading Status Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_2.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.size

-- Display: Trading Status Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alphanumeric
  index, reserved_3 = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Summary Flags
cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags = {}

-- Size: Summary Flags
cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags.size = 1

-- Display: Summary Flags
cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags.display = function(range, value, packet, parent)
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
cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags.bits = function(range, value, packet, parent)

  -- High Price Valid: 1 Bit
  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.high_price_valid, range, value)

  -- High Price Is Bid: 1 Bit
  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.high_price_is_bid, range, value)

  -- Low Price Valid: 1 Bit
  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.low_price_valid, range, value)

  -- Low Price Is Offer: 1 Bit
  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.low_price_is_offer, range, value)

  -- Open Close Valid: 1 Bit
  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.open_close_valid, range, value)

  -- Reserved Flags: 3 Bit
  parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.reserved_flags, range, value)
end

-- Dissect: Summary Flags
cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.summary_flags, range, display)

  if show.summary_flags then
    cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- End Of Day Summary Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_day_summary_message = {}

-- Size: End Of Day Summary Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_day_summary_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.high_price.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.low_price.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_price.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.close_price.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.block_volume.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.ecrp_volume.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags.size

-- Display: End Of Day Summary Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Summary Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: Binary
  index, open_interest = cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest.dissect(buffer, index, packet, parent)

  -- High Price: Binary Price
  index, high_price = cboe_titanium_futures_multicasttop_pitch_v1_2_20.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary Price
  index, low_price = cboe_titanium_futures_multicasttop_pitch_v1_2_20.low_price.dissect(buffer, index, packet, parent)

  -- Open Price: Binary Price
  index, open_price = cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_price.dissect(buffer, index, packet, parent)

  -- Close Price: Binary Price
  index, close_price = cboe_titanium_futures_multicasttop_pitch_v1_2_20.close_price.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Binary
  index, block_volume = cboe_titanium_futures_multicasttop_pitch_v1_2_20.block_volume.dissect(buffer, index, packet, parent)

  -- Ecrp Volume: Binary
  index, ecrp_volume = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ecrp_volume.dissect(buffer, index, packet, parent)

  -- Summary Flags: Struct of 6 fields
  index, summary_flags = cboe_titanium_futures_multicasttop_pitch_v1_2_20.summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Summary Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_message = {}

-- Size: Settlement Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_price.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.issue.size

-- Display: Settlement Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.dissect(buffer, index, packet, parent)

  -- Settlement Price: Binary Price
  index, settlement_price = cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_price.dissect(buffer, index, packet, parent)

  -- Issue: Alphanumeric
  index, issue = cboe_titanium_futures_multicasttop_pitch_v1_2_20.issue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.settlement_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Trade Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.top_trade_message = {}

-- Size: Top Trade Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.top_trade_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.execution_id.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_condition.size

-- Display: Top Trade Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.top_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Trade Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.top_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Price
  index, price_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titanium_futures_multicasttop_pitch_v1_2_20.execution_id.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Trade Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.top_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.top_trade_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.top_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.top_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.top_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Two Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_long_message = {}

-- Size: Two Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_long_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long.size

-- Display: Two Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Binary Price
  index, bid_price_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Binary
  index, bid_quantity_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Binary Price
  index, ask_price_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Binary
  index, ask_quantity_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.two_side_update_long_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Two Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_short_message = {}

-- Size: Two Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_short_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short.size

-- Display: Two Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Binary Short Price
  index, bid_price_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Binary
  index, bid_quantity_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Binary Short Price
  index, ask_price_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Binary
  index, ask_quantity_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.two_side_update_short_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_long_message = {}

-- Size: Single Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_long_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.side.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long.size

-- Display: Single Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titanium_futures_multicasttop_pitch_v1_2_20.side.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Price
  index, price_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.single_side_update_long_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_short_message = {}

-- Size: Single Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_short_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.side.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_short.size

-- Display: Single Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titanium_futures_multicasttop_pitch_v1_2_20.side.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_short.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.single_side_update_short_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Snapshot Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_long_message = {}

-- Size: Market Snapshot Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_long_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_long.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.size

-- Display: Market Snapshot Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Snapshot Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: Binary
  index, unit_timestamp = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Binary Price
  index, bid_price_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Binary
  index, bid_quantity_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Binary Price
  index, ask_price_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Binary
  index, ask_quantity_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Last Trade Price Long: Binary Price
  index, last_trade_price_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_long.dissect(buffer, index, packet, parent)

  -- Last Trade Size Long: Binary
  index, last_trade_size_long = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_long.dissect(buffer, index, packet, parent)

  -- Last Trade Condition: Alphanumeric
  index, last_trade_condition = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alphanumeric
  index, reserved_3 = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Snapshot Long Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.market_snapshot_long_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Snapshot Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_short_message = {}

-- Size: Market Snapshot Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_short_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_short.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.size

-- Display: Market Snapshot Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Snapshot Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: Binary
  index, unit_timestamp = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Binary Short Price
  index, bid_price_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Binary
  index, bid_quantity_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Binary Short Price
  index, ask_price_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Binary
  index, ask_quantity_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.ask_quantity_short.dissect(buffer, index, packet, parent)

  -- Last Trade Price Short: Binary Short Price
  index, last_trade_price_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_price_short.dissect(buffer, index, packet, parent)

  -- Last Trade Size Short: Binary
  index, last_trade_size_short = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_size_short.dissect(buffer, index, packet, parent)

  -- Last Trade Condition: Alphanumeric
  index, last_trade_condition = cboe_titanium_futures_multicasttop_pitch_v1_2_20.last_trade_condition.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_titanium_futures_multicasttop_pitch_v1_2_20.total_volume.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alphanumeric
  index, reserved_3 = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Snapshot Short Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.market_snapshot_short_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Limits Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_limits_message = {}

-- Size: Price Limits Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_limits_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.upper_price_limit.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.lower_price_limit.size

-- Display: Price Limits Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_limits_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Limits Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_limits_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: Binary Price
  index, upper_price_limit = cboe_titanium_futures_multicasttop_pitch_v1_2_20.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: Binary Price
  index, lower_price_limit = cboe_titanium_futures_multicasttop_pitch_v1_2_20.lower_price_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Limits Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_limits_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.price_limits_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_limits_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_limits_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_limits_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Variance Symbol Mapping Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_variance_symbol_mapping_message = {}

-- Size: Futures Variance Symbol Mapping Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_variance_symbol_mapping_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.feed_symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_symbol.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.accrued_day_variance.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_final_returns.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_elapsed_returns.size

-- Display: Futures Variance Symbol Mapping Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_variance_symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Variance Symbol Mapping Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_variance_symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: Binary
  index, unit_timestamp = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.feed_symbol.dissect(buffer, index, packet, parent)

  -- Futures Symbol: Alphanumeric
  index, futures_symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_symbol.dissect(buffer, index, packet, parent)

  -- Accrued Day Variance: Signed Binary
  index, accrued_day_variance = cboe_titanium_futures_multicasttop_pitch_v1_2_20.accrued_day_variance.dissect(buffer, index, packet, parent)

  -- Num Final Returns: Binary
  index, num_final_returns = cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_final_returns.dissect(buffer, index, packet, parent)

  -- Num Elapsed Returns: Binary
  index, num_elapsed_returns = cboe_titanium_futures_multicasttop_pitch_v1_2_20.num_elapsed_returns.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Variance Symbol Mapping Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_variance_symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.futures_variance_symbol_mapping_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_variance_symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_variance_symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_variance_symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Leg
cboe_titanium_futures_multicasttop_pitch_v1_2_20.future_leg = {}

-- Size: Future Leg
cboe_titanium_futures_multicasttop_pitch_v1_2_20.future_leg.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_ratio.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_symbol.size

-- Display: Future Leg
cboe_titanium_futures_multicasttop_pitch_v1_2_20.future_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Leg
cboe_titanium_futures_multicasttop_pitch_v1_2_20.future_leg.fields = function(buffer, offset, packet, parent, future_leg_index)
  local index = offset

  -- Implicit Future Leg Index
  if future_leg_index ~= nil and show.future_leg_index then
    local iteration = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.future_leg_index, future_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Symbol: Alphanumeric
  index, leg_symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Leg
cboe_titanium_futures_multicasttop_pitch_v1_2_20.future_leg.dissect = function(buffer, offset, packet, parent, future_leg_index)
  if show.future_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.future_leg, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.future_leg.fields(buffer, offset, packet, parent, future_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.future_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.future_leg.fields(buffer, offset, packet, parent, future_leg_index)
  end
end

-- Futures Instrument Definition Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_instrument_definition_message = {}

-- Calculate size of: Futures Instrument Definition Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.report_symbol.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_flags.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.expiration_date.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_size.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.listing_state.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_increment.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_count.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_offset.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_1.size

  index = index + cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_date.size

  -- Calculate field size from count
  local future_leg_count = buffer(offset + index - 7, 1):le_uint()
  index = index + future_leg_count * 10

  return index
end

-- Display: Futures Instrument Definition Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Definition Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.symbol.dissect(buffer, index, packet, parent)

  -- Unit Timestamp: Binary
  index, unit_timestamp = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_timestamp.dissect(buffer, index, packet, parent)

  -- Report Symbol: Alphanumeric
  index, report_symbol = cboe_titanium_futures_multicasttop_pitch_v1_2_20.report_symbol.dissect(buffer, index, packet, parent)

  -- Futures Flags
  index, futures_flags = cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_flags.dissect(buffer, index, packet, parent)

  -- Expiration Date: Binary Date
  index, expiration_date = cboe_titanium_futures_multicasttop_pitch_v1_2_20.expiration_date.dissect(buffer, index, packet, parent)

  -- Contract Size: Binary
  index, contract_size = cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_size.dissect(buffer, index, packet, parent)

  -- Listing State: Alphanumeric
  index, listing_state = cboe_titanium_futures_multicasttop_pitch_v1_2_20.listing_state.dissect(buffer, index, packet, parent)

  -- Price Increment: Binary Price
  index, price_increment = cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_increment.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_count.dissect(buffer, index, packet, parent)

  -- Leg Offset: Binary
  index, leg_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.leg_offset.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_titanium_futures_multicasttop_pitch_v1_2_20.reserved_1.dissect(buffer, index, packet, parent)

  -- Contract Date: Binary Date
  index, contract_date = cboe_titanium_futures_multicasttop_pitch_v1_2_20.contract_date.dissect(buffer, index, packet, parent)

  -- Repeating: Future Leg
  for future_leg_index = 1, leg_count do
    index, future_leg = cboe_titanium_futures_multicasttop_pitch_v1_2_20.future_leg.dissect(buffer, index, packet, parent, future_leg_index)
  end

  return index
end

-- Dissect: Futures Instrument Definition Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.futures_instrument_definition_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_reference_message = {}

-- Size: Time Reference Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_reference_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.midnight_reference.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.size

-- Display: Time Reference Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_titanium_futures_multicasttop_pitch_v1_2_20.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_titanium_futures_multicasttop_pitch_v1_2_20.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_clear_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.size

-- Display: Unit Clear Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_message = {}

-- Size: Time Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_message.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.time.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.epoch_time.size

-- Display: Time Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_titanium_futures_multicasttop_pitch_v1_2_20.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.time_message, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titanium_futures_multicasttop_pitch_v1_2_20.payload = {}

-- Dissect: Payload
cboe_titanium_futures_multicasttop_pitch_v1_2_20.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Definition Message
  if message_type == 0xBB then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Variance Symbol Mapping Message
  if message_type == 0xFA then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.futures_variance_symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Limits Message
  if message_type == 0xBE then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.price_limits_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Snapshot Short Message
  if message_type == 0xB2 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Snapshot Long Message
  if message_type == 0xB3 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.market_snapshot_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Short Message
  if message_type == 0xB4 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Long Message
  if message_type == 0xB5 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.single_side_update_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Short Message
  if message_type == 0xB6 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Long Message
  if message_type == 0xB7 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.two_side_update_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Trade Message
  if message_type == 0xB8 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.top_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Message
  if message_type == 0xB9 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.settlement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if message_type == 0xD3 then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_header = {}

-- Size: Message Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_header.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_length.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_type.size

-- Display: Message Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, message_type = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message_header, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message = {}

-- Display: Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 18 branches
  index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titanium_futures_multicasttop_pitch_v1_2_20.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.message, buffer(offset, 0))
    local current = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titanium_futures_multicasttop_pitch_v1_2_20.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet_header = {}

-- Size: Packet Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet_header.size =
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.length.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.count.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit.size + 
  cboe_titanium_futures_multicasttop_pitch_v1_2_20.sequence.size

-- Display: Packet Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titanium_futures_multicasttop_pitch_v1_2_20.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_titanium_futures_multicasttop_pitch_v1_2_20.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titanium_futures_multicasttop_pitch_v1_2_20.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_titanium_futures_multicasttop_pitch_v1_2_20.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.fields.packet_header, buffer(offset, 0))
    local index = cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet = {}

-- Dissect Packet
cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_titanium_futures_multicasttop_pitch_v1_2_20.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.init()
end

-- Dissector for Cboe Titanium Futures MulticastTop Pitch 1.2.20
function omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20, buffer(), omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.description, "("..buffer:len().." Bytes)")
  return cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Titanium Futures MulticastTop Pitch 1.2.20
local function omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titanium_futures_multicasttop_pitch_v1_2_20.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20
  omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Titanium Futures MulticastTop Pitch 1.2.20
omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20:register_heuristic("udp", omi_cboe_titanium_futures_multicasttop_pitch_v1_2_20_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.2.20
--   Date: Monday, January 5, 2026
--   Specification: CBOE_FUTURES_EXCHANGE_MULTICAST_TOP_SPECIFICATION.pdf
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
