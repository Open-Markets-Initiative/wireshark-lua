-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Europe CedxMulticast Pitch 1.11 Protocol
local cboe_europe_cedxmulticast_pitch_v1_11 = Proto("Cboe.Europe.CedxMulticast.Pitch.v1.11.Lua", "Cboe Europe CedxMulticast Pitch 1.11")

-- Component Tables
local show = {}
local format = {}
local cboe_europe_cedxmulticast_pitch_v1_11_display = {}
local cboe_europe_cedxmulticast_pitch_v1_11_dissect = {}
local cboe_europe_cedxmulticast_pitch_v1_11_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Europe CedxMulticast Pitch 1.11 Fields
cboe_europe_cedxmulticast_pitch_v1_11.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.europe.cedxmulticast.pitch.v1.11.addorderlongmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.europe.cedxmulticast.pitch.v1.11.addordershortmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.algorithmic_trade = ProtoField.new("Algorithmic Trade", "cboe.europe.cedxmulticast.pitch.v1.11.algorithmictrade", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctioncancelmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.europe.cedxmulticast.pitch.v1.11.auctionendoffset", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_id = ProtoField.new("Auction Id", "cboe.europe.cedxmulticast.pitch.v1.11.auctionid", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_liquidity_message = ProtoField.new("Auction Liquidity Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctionliquiditymessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctionnotificationmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.europe.cedxmulticast.pitch.v1.11.auctiononlyprice", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_opening_type = ProtoField.new("Auction Opening Type", "cboe.europe.cedxmulticast.pitch.v1.11.auctionopeningtype", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctionsummarymessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctiontrademessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_type = ProtoField.new("Auction Type", "cboe.europe.cedxmulticast.pitch.v1.11.auctiontype", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.benchmark_reference_price_indicator = ProtoField.new("Benchmark Reference Price Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.benchmarkreferencepriceindicator", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.block_volume = ProtoField.new("Block Volume", "cboe.europe.cedxmulticast.pitch.v1.11.blockvolume", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.europe.cedxmulticast.pitch.v1.11.buycontracts", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.call_put = ProtoField.new("Call Put", "cboe.europe.cedxmulticast.pitch.v1.11.callput", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.canceled_contracts_binary_2 = ProtoField.new("Canceled Contracts Binary 2", "cboe.europe.cedxmulticast.pitch.v1.11.canceledcontractsbinary2", ftypes.UINT16)
cboe_europe_cedxmulticast_pitch_v1_11.fields.canceled_contracts_binary_4 = ProtoField.new("Canceled Contracts Binary 4", "cboe.europe.cedxmulticast.pitch.v1.11.canceledcontractsbinary4", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.cboe_trade_flags = ProtoField.new("Cboe Trade Flags", "cboe.europe.cedxmulticast.pitch.v1.11.cboetradeflags", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.close_price = ProtoField.new("Close Price", "cboe.europe.cedxmulticast.pitch.v1.11.closeprice", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.europe.cedxmulticast.pitch.v1.11.compositemarketbidprice", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.europe.cedxmulticast.pitch.v1.11.compositemarketofferprice", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.contract_size = ProtoField.new("Contract Size", "cboe.europe.cedxmulticast.pitch.v1.11.contractsize", ftypes.UINT16)
cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_binary_4 = ProtoField.new("Contracts Binary 4", "cboe.europe.cedxmulticast.pitch.v1.11.contractsbinary4", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_binary_8 = ProtoField.new("Contracts Binary 8", "cboe.europe.cedxmulticast.pitch.v1.11.contractsbinary8", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_short = ProtoField.new("Contracts Short", "cboe.europe.cedxmulticast.pitch.v1.11.contractsshort", ftypes.UINT16)
cboe_europe_cedxmulticast_pitch_v1_11.fields.count = ProtoField.new("Count", "cboe.europe.cedxmulticast.pitch.v1.11.count", ftypes.UINT8)
cboe_europe_cedxmulticast_pitch_v1_11.fields.currency = ProtoField.new("Currency", "cboe.europe.cedxmulticast.pitch.v1.11.currency", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.customerindicator", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.europe.cedxmulticast.pitch.v1.11.deleteordermessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.europe.cedxmulticast.pitch.v1.11.ecrpvolume", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.end_of_day_summary_message = ProtoField.new("End Of Day Summary Message", "cboe.europe.cedxmulticast.pitch.v1.11.endofdaysummarymessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.end_of_session = ProtoField.new("End Of Session", "cboe.europe.cedxmulticast.pitch.v1.11.endofsession", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.ex_cum_dividend = ProtoField.new("Ex Cum Dividend", "cboe.europe.cedxmulticast.pitch.v1.11.excumdividend", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.europe.cedxmulticast.pitch.v1.11.executedquantity", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_flags = ProtoField.new("Execution Flags", "cboe.europe.cedxmulticast.pitch.v1.11.executionflags", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_id = ProtoField.new("Execution Id", "cboe.europe.cedxmulticast.pitch.v1.11.executionid", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.europe.cedxmulticast.pitch.v1.11.executionvenue", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.expiration_date = ProtoField.new("Expiration Date", "cboe.europe.cedxmulticast.pitch.v1.11.expirationdate", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.fast_status_message = ProtoField.new("Fast Status Message", "cboe.europe.cedxmulticast.pitch.v1.11.faststatusmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.futures_instrument_definition_message = ProtoField.new("Futures Instrument Definition Message", "cboe.europe.cedxmulticast.pitch.v1.11.futuresinstrumentdefinitionmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.high_price_binary_price_8 = ProtoField.new("High Price Binary Price 8", "cboe.europe.cedxmulticast.pitch.v1.11.highpricebinaryprice8", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.high_price_bit_1 = ProtoField.new("High Price Bit 1", "cboe.europe.cedxmulticast.pitch.v1.11.highpricebit1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
cboe_europe_cedxmulticast_pitch_v1_11.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.europe.cedxmulticast.pitch.v1.11.indicativeprice", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.is_fast = ProtoField.new("Is Fast", "cboe.europe.cedxmulticast.pitch.v1.11.isfast", ftypes.UINT8)
cboe_europe_cedxmulticast_pitch_v1_11.fields.issue = ProtoField.new("Issue", "cboe.europe.cedxmulticast.pitch.v1.11.issue", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.length = ProtoField.new("Length", "cboe.europe.cedxmulticast.pitch.v1.11.length", ftypes.UINT16)
cboe_europe_cedxmulticast_pitch_v1_11.fields.listing_state = ProtoField.new("Listing State", "cboe.europe.cedxmulticast.pitch.v1.11.listingstate", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.low_price_binary_price_8 = ProtoField.new("Low Price Binary Price 8", "cboe.europe.cedxmulticast.pitch.v1.11.lowpricebinaryprice8", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.low_price_bit_1 = ProtoField.new("Low Price Bit 1", "cboe.europe.cedxmulticast.pitch.v1.11.lowpricebit1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
cboe_europe_cedxmulticast_pitch_v1_11.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.europe.cedxmulticast.pitch.v1.11.marketmechanism", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.message = ProtoField.new("Message", "cboe.europe.cedxmulticast.pitch.v1.11.message", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.message_header = ProtoField.new("Message Header", "cboe.europe.cedxmulticast.pitch.v1.11.messageheader", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.message_length = ProtoField.new("Message Length", "cboe.europe.cedxmulticast.pitch.v1.11.messagelength", ftypes.UINT8)
cboe_europe_cedxmulticast_pitch_v1_11.fields.message_type = ProtoField.new("Message Type", "cboe.europe.cedxmulticast.pitch.v1.11.messagetype", ftypes.UINT8)
cboe_europe_cedxmulticast_pitch_v1_11.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.europe.cedxmulticast.pitch.v1.11.modifyorderlongmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.europe.cedxmulticast.pitch.v1.11.modifyordershortmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.multiplier = ProtoField.new("Multiplier", "cboe.europe.cedxmulticast.pitch.v1.11.multiplier", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.open_and_close_price = ProtoField.new("Open And Close Price", "cboe.europe.cedxmulticast.pitch.v1.11.openandcloseprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
cboe_europe_cedxmulticast_pitch_v1_11.fields.open_interest = ProtoField.new("Open Interest", "cboe.europe.cedxmulticast.pitch.v1.11.openinterest", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.open_price = ProtoField.new("Open Price", "cboe.europe.cedxmulticast.pitch.v1.11.openprice", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.opening_auction_update_message = ProtoField.new("Opening Auction Update Message", "cboe.europe.cedxmulticast.pitch.v1.11.openingauctionupdatemessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.europe.cedxmulticast.pitch.v1.11.openingcondition", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.options_instrument_definition_message = ProtoField.new("Options Instrument Definition Message", "cboe.europe.cedxmulticast.pitch.v1.11.optionsinstrumentdefinitionmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.europe.cedxmulticast.pitch.v1.11.orderexecutedatpricesizemessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.europe.cedxmulticast.pitch.v1.11.orderexecutedmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.order_id = ProtoField.new("Order Id", "cboe.europe.cedxmulticast.pitch.v1.11.orderid", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.packet = ProtoField.new("Packet", "cboe.europe.cedxmulticast.pitch.v1.11.packet", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.packet_header = ProtoField.new("Packet Header", "cboe.europe.cedxmulticast.pitch.v1.11.packetheader", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.participant_id = ProtoField.new("Participant Id", "cboe.europe.cedxmulticast.pitch.v1.11.participantid", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.payload = ProtoField.new("Payload", "cboe.europe.cedxmulticast.pitch.v1.11.payload", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.price = ProtoField.new("Price", "cboe.europe.cedxmulticast.pitch.v1.11.price", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.price_increment = ProtoField.new("Price Increment", "cboe.europe.cedxmulticast.pitch.v1.11.priceincrement", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level = ProtoField.new("Price Level", "cboe.europe.cedxmulticast.pitch.v1.11.pricelevel", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_count = ProtoField.new("Price Level Count", "cboe.europe.cedxmulticast.pitch.v1.11.pricelevelcount", ftypes.UINT8)
cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_group = ProtoField.new("Price Level Group", "cboe.europe.cedxmulticast.pitch.v1.11.pricelevelgroup", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.price_short = ProtoField.new("Price Short", "cboe.europe.cedxmulticast.pitch.v1.11.priceshort", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.product_code_alphanumeric_6 = ProtoField.new("Product Code Alphanumeric 6", "cboe.europe.cedxmulticast.pitch.v1.11.productcodealphanumeric6", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.product_code_alphanumeric_8 = ProtoField.new("Product Code Alphanumeric 8", "cboe.europe.cedxmulticast.pitch.v1.11.productcodealphanumeric8", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.quantity = ProtoField.new("Quantity", "cboe.europe.cedxmulticast.pitch.v1.11.quantity", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.europe.cedxmulticast.pitch.v1.11.quantityshort", ftypes.UINT16)
cboe_europe_cedxmulticast_pitch_v1_11.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.europe.cedxmulticast.pitch.v1.11.reducesizelongmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.europe.cedxmulticast.pitch.v1.11.reducesizeshortmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.reference_price = ProtoField.new("Reference Price", "cboe.europe.cedxmulticast.pitch.v1.11.referenceprice", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.europe.cedxmulticast.pitch.v1.11.remainingquantity", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.reserved = ProtoField.new("Reserved", "cboe.europe.cedxmulticast.pitch.v1.11.reserved", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.europe.cedxmulticast.pitch.v1.11.reservedflags", ftypes.UINT8, nil, base.DEC, "0xE0")
cboe_europe_cedxmulticast_pitch_v1_11.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.europe.cedxmulticast.pitch.v1.11.sellcontracts", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.sequence = ProtoField.new("Sequence", "cboe.europe.cedxmulticast.pitch.v1.11.sequence", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.europe.cedxmulticast.pitch.v1.11.settlementmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.europe.cedxmulticast.pitch.v1.11.settlementprice", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.side = ProtoField.new("Side", "cboe.europe.cedxmulticast.pitch.v1.11.side", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.sideindicator", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.status = ProtoField.new("Status", "cboe.europe.cedxmulticast.pitch.v1.11.status", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.strike_price = ProtoField.new("Strike Price", "cboe.europe.cedxmulticast.pitch.v1.11.strikeprice", ftypes.DOUBLE)
cboe_europe_cedxmulticast_pitch_v1_11.fields.summary_flags = ProtoField.new("Summary Flags", "cboe.europe.cedxmulticast.pitch.v1.11.summaryflags", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_alphanumeric_6 = ProtoField.new("Symbol Alphanumeric 6", "cboe.europe.cedxmulticast.pitch.v1.11.symbolalphanumeric6", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_alphanumeric_8 = ProtoField.new("Symbol Alphanumeric 8", "cboe.europe.cedxmulticast.pitch.v1.11.symbolalphanumeric8", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_printable_ascii_6 = ProtoField.new("Symbol Printable Ascii 6", "cboe.europe.cedxmulticast.pitch.v1.11.symbolprintableascii6", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.europe.cedxmulticast.pitch.v1.11.symbolshort", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.time = ProtoField.new("Time", "cboe.europe.cedxmulticast.pitch.v1.11.time", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.time_message = ProtoField.new("Time Message", "cboe.europe.cedxmulticast.pitch.v1.11.timemessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.time_offset = ProtoField.new("Time Offset", "cboe.europe.cedxmulticast.pitch.v1.11.timeoffset", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.total_volume = ProtoField.new("Total Volume", "cboe.europe.cedxmulticast.pitch.v1.11.totalvolume", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradebreakmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_date = ProtoField.new("Trade Date", "cboe.europe.cedxmulticast.pitch.v1.11.tradedate", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_extended_message = ProtoField.new("Trade Extended Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradeextendedmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.europe.cedxmulticast.pitch.v1.11.tradeflags", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_id = ProtoField.new("Trade Id", "cboe.europe.cedxmulticast.pitch.v1.11.tradeid", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradelongmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradeshortmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_timestamp = ProtoField.new("Trade Timestamp", "cboe.europe.cedxmulticast.pitch.v1.11.tradetimestamp", ftypes.UINT64)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.europe.cedxmulticast.pitch.v1.11.tradingmode", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradingstatusmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.europe.cedxmulticast.pitch.v1.11.transactionbeginmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.europe.cedxmulticast.pitch.v1.11.transactioncategory", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.unit = ProtoField.new("Unit", "cboe.europe.cedxmulticast.pitch.v1.11.unit", ftypes.UINT8)
cboe_europe_cedxmulticast_pitch_v1_11.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.europe.cedxmulticast.pitch.v1.11.unitclearmessage", ftypes.STRING)
cboe_europe_cedxmulticast_pitch_v1_11.fields.unused_1 = ProtoField.new("Unused 1", "cboe.europe.cedxmulticast.pitch.v1.11.unused1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cboe_europe_cedxmulticast_pitch_v1_11.fields.unused_3 = ProtoField.new("Unused 3", "cboe.europe.cedxmulticast.pitch.v1.11.unused3", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
cboe_europe_cedxmulticast_pitch_v1_11.fields.volume = ProtoField.new("Volume", "cboe.europe.cedxmulticast.pitch.v1.11.volume", ftypes.UINT32)
cboe_europe_cedxmulticast_pitch_v1_11.fields.width_type = ProtoField.new("Width Type", "cboe.europe.cedxmulticast.pitch.v1.11.widthtype", ftypes.UINT8)
cboe_europe_cedxmulticast_pitch_v1_11.fields.width_update_message = ProtoField.new("Width Update Message", "cboe.europe.cedxmulticast.pitch.v1.11.widthupdatemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Europe CedxMulticast Pitch 1.11 Element Dissection Options
show.add_order_long_message = true
show.add_order_short_message = true
show.auction_cancel_message = true
show.auction_liquidity_message = true
show.auction_notification_message = true
show.auction_summary_message = true
show.auction_trade_message = true
show.delete_order_message = true
show.end_of_day_summary_message = true
show.end_of_session = true
show.execution_flags = true
show.fast_status_message = true
show.futures_instrument_definition_message = true
show.message = true
show.message_header = true
show.modify_order_long_message = true
show.modify_order_short_message = true
show.opening_auction_update_message = true
show.options_instrument_definition_message = true
show.order_executed_at_price_size_message = true
show.order_executed_message = true
show.packet = true
show.packet_header = true
show.price_level_group = true
show.reduce_size_long_message = true
show.reduce_size_short_message = true
show.settlement_message = true
show.summary_flags = true
show.time_message = true
show.trade_break_message = true
show.trade_extended_message = true
show.trade_flags = true
show.trade_long_message = true
show.trade_short_message = true
show.trading_status_message = true
show.transaction_begin_message = true
show.unit_clear_message = true
show.width_update_message = true
show.payload = false

-- Register Cboe Europe CedxMulticast Pitch 1.11 Show Options
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_liquidity_message = Pref.bool("Show Auction Liquidity Message", show.auction_liquidity_message, "Parse and add Auction Liquidity Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_day_summary_message = Pref.bool("Show End Of Day Summary Message", show.end_of_day_summary_message, "Parse and add End Of Day Summary Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_session = Pref.bool("Show End Of Session", show.end_of_session, "Parse and add End Of Session to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_execution_flags = Pref.bool("Show Execution Flags", show.execution_flags, "Parse and add Execution Flags to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_fast_status_message = Pref.bool("Show Fast Status Message", show.fast_status_message, "Parse and add Fast Status Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_futures_instrument_definition_message = Pref.bool("Show Futures Instrument Definition Message", show.futures_instrument_definition_message, "Parse and add Futures Instrument Definition Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_opening_auction_update_message = Pref.bool("Show Opening Auction Update Message", show.opening_auction_update_message, "Parse and add Opening Auction Update Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_options_instrument_definition_message = Pref.bool("Show Options Instrument Definition Message", show.options_instrument_definition_message, "Parse and add Options Instrument Definition Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_price_level_group = Pref.bool("Show Price Level Group", show.price_level_group, "Parse and add Price Level Group to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_settlement_message = Pref.bool("Show Settlement Message", show.settlement_message, "Parse and add Settlement Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_summary_flags = Pref.bool("Show Summary Flags", show.summary_flags, "Parse and add Summary Flags to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_extended_message = Pref.bool("Show Trade Extended Message", show.trade_extended_message, "Parse and add Trade Extended Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_transaction_begin_message = Pref.bool("Show Transaction Begin Message", show.transaction_begin_message, "Parse and add Transaction Begin Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_width_update_message = Pref.bool("Show Width Update Message", show.width_update_message, "Parse and add Width Update Message to protocol tree")
cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_europe_cedxmulticast_pitch_v1_11.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_long_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_long_message then
    show.add_order_long_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_short_message then
    show.add_order_short_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_cancel_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_cancel_message then
    show.auction_cancel_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_liquidity_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_liquidity_message then
    show.auction_liquidity_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_liquidity_message
    changed = true
  end
  if show.auction_notification_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_notification_message then
    show.auction_notification_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_summary_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_summary_message then
    show.auction_summary_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_trade_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_trade_message then
    show.auction_trade_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_trade_message
    changed = true
  end
  if show.delete_order_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_delete_order_message then
    show.delete_order_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_day_summary_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_day_summary_message then
    show.end_of_day_summary_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_day_summary_message
    changed = true
  end
  if show.end_of_session ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_session then
    show.end_of_session = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_session
    changed = true
  end
  if show.execution_flags ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_execution_flags then
    show.execution_flags = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_execution_flags
    changed = true
  end
  if show.fast_status_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_fast_status_message then
    show.fast_status_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_fast_status_message
    changed = true
  end
  if show.futures_instrument_definition_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_futures_instrument_definition_message then
    show.futures_instrument_definition_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_futures_instrument_definition_message
    changed = true
  end
  if show.message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message then
    show.message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message_header then
    show.message_header = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_long_message then
    show.modify_order_long_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_short_message then
    show.modify_order_short_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_short_message
    changed = true
  end
  if show.opening_auction_update_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_opening_auction_update_message then
    show.opening_auction_update_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_opening_auction_update_message
    changed = true
  end
  if show.options_instrument_definition_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_options_instrument_definition_message then
    show.options_instrument_definition_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_options_instrument_definition_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_message then
    show.order_executed_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet then
    show.packet = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet_header then
    show.packet_header = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet_header
    changed = true
  end
  if show.price_level_group ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_price_level_group then
    show.price_level_group = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_price_level_group
    changed = true
  end
  if show.reduce_size_long_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.settlement_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_settlement_message then
    show.settlement_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_settlement_message
    changed = true
  end
  if show.summary_flags ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_summary_flags then
    show.summary_flags = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_summary_flags
    changed = true
  end
  if show.time_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_time_message then
    show.time_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_time_message
    changed = true
  end
  if show.trade_break_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_break_message then
    show.trade_break_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_extended_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_extended_message then
    show.trade_extended_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_extended_message
    changed = true
  end
  if show.trade_flags ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_flags then
    show.trade_flags = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_flags
    changed = true
  end
  if show.trade_long_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_long_message then
    show.trade_long_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_short_message then
    show.trade_short_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trading_status_message then
    show.trading_status_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trading_status_message
    changed = true
  end
  if show.transaction_begin_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_transaction_begin_message then
    show.transaction_begin_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_transaction_begin_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_unit_clear_message
    changed = true
  end
  if show.width_update_message ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_width_update_message then
    show.width_update_message = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_width_update_message
    changed = true
  end
  if show.payload ~= cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_payload then
    show.payload = cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Europe CedxMulticast Pitch 1.11
-----------------------------------------------------------------------

-- Size: Summary Flags
cboe_europe_cedxmulticast_pitch_v1_11_size_of.summary_flags = 1

-- Display: Summary Flags
cboe_europe_cedxmulticast_pitch_v1_11_display.summary_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Open And Close Price flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Open And Close Price|"
  end
  -- Is Unused 3 flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Unused 3|"
  end
  -- Is Low Price Bit 1 flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Low Price Bit 1|"
  end
  -- Is Unused 1 flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Unused 1|"
  end
  -- Is High Price Bit 1 flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."High Price Bit 1|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Summary Flags
cboe_europe_cedxmulticast_pitch_v1_11_dissect.summary_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved Flags: 3 Bit
  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.reserved_flags, buffer(offset, 1))

  -- Open And Close Price: 1 Bit
  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.open_and_close_price, buffer(offset, 1))

  -- Unused 3: 1 Bit
  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.unused_3, buffer(offset, 1))

  -- Low Price Bit 1: 1 Bit
  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.low_price_bit_1, buffer(offset, 1))

  -- Unused 1: 1 Bit
  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.unused_1, buffer(offset, 1))

  -- High Price Bit 1: 1 Bit
  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.high_price_bit_1, buffer(offset, 1))
end

-- Dissect: Summary Flags
cboe_europe_cedxmulticast_pitch_v1_11_dissect.summary_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.summary_flags(range, packet, parent)
  local element = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.summary_flags, range, display)

  if show.summary_flags then
    cboe_europe_cedxmulticast_pitch_v1_11_dissect.summary_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Ecrp Volume
cboe_europe_cedxmulticast_pitch_v1_11_size_of.ecrp_volume = 4

-- Display: Ecrp Volume
cboe_europe_cedxmulticast_pitch_v1_11_display.ecrp_volume = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_europe_cedxmulticast_pitch_v1_11_dissect.ecrp_volume = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.ecrp_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.ecrp_volume(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Size: Block Volume
cboe_europe_cedxmulticast_pitch_v1_11_size_of.block_volume = 4

-- Display: Block Volume
cboe_europe_cedxmulticast_pitch_v1_11_display.block_volume = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_europe_cedxmulticast_pitch_v1_11_dissect.block_volume = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.block_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.block_volume(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Size: Total Volume
cboe_europe_cedxmulticast_pitch_v1_11_size_of.total_volume = 4

-- Display: Total Volume
cboe_europe_cedxmulticast_pitch_v1_11_display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_europe_cedxmulticast_pitch_v1_11_dissect.total_volume = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.total_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.total_volume(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Size: Close Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.close_price = 8

-- Display: Close Price
cboe_europe_cedxmulticast_pitch_v1_11_display.close_price = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.close_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.close_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.close_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.close_price, range, value, display)

  return offset + length, value
end

-- Size: Open Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.open_price = 8

-- Display: Open Price
cboe_europe_cedxmulticast_pitch_v1_11_display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.open_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.open_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.open_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11_size_of.low_price_binary_price_8 = 8

-- Display: Low Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11_display.low_price_binary_price_8 = function(value)
  return "Low Price Binary Price 8: "..value
end

-- Dissect: Low Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11_dissect.low_price_binary_price_8 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.low_price_binary_price_8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.low_price_binary_price_8(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.low_price_binary_price_8, range, value, display)

  return offset + length, value
end

-- Size: High Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11_size_of.high_price_binary_price_8 = 8

-- Display: High Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11_display.high_price_binary_price_8 = function(value)
  return "High Price Binary Price 8: "..value
end

-- Dissect: High Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11_dissect.high_price_binary_price_8 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.high_price_binary_price_8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.high_price_binary_price_8(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.high_price_binary_price_8, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
cboe_europe_cedxmulticast_pitch_v1_11_size_of.open_interest = 4

-- Display: Open Interest
cboe_europe_cedxmulticast_pitch_v1_11_display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_europe_cedxmulticast_pitch_v1_11_dissect.open_interest = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.open_interest
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.open_interest(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_date = 4

-- Display: Trade Date
cboe_europe_cedxmulticast_pitch_v1_11_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Symbol Printable Ascii 6
cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_printable_ascii_6 = 6

-- Display: Symbol Printable Ascii 6
cboe_europe_cedxmulticast_pitch_v1_11_display.symbol_printable_ascii_6 = function(value)
  return "Symbol Printable Ascii 6: "..value
end

-- Dissect: Symbol Printable Ascii 6
cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_printable_ascii_6 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_printable_ascii_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.symbol_printable_ascii_6(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_printable_ascii_6, range, value, display)

  return offset + length, value
end

-- Size: Time Offset
cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset = 4

-- Display: Time Offset
cboe_europe_cedxmulticast_pitch_v1_11_display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Day Summary Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.end_of_day_summary_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_printable_ascii_6

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_date

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.open_interest

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.high_price_binary_price_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.low_price_binary_price_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.open_price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.close_price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.total_volume

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.block_volume

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.ecrp_volume

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.summary_flags

  return index
end

-- Display: End Of Day Summary Message
cboe_europe_cedxmulticast_pitch_v1_11_display.end_of_day_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Day Summary Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.end_of_day_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: 6 Byte Ascii String
  index, symbol_printable_ascii_6 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_printable_ascii_6(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_date(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Unsigned Fixed Width Integer
  index, open_interest = cboe_europe_cedxmulticast_pitch_v1_11_dissect.open_interest(buffer, index, packet, parent)

  -- High Price Binary Price 8: 8 Byte Unsigned Fixed Width Integer
  index, high_price_binary_price_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.high_price_binary_price_8(buffer, index, packet, parent)

  -- Low Price Binary Price 8: 8 Byte Unsigned Fixed Width Integer
  index, low_price_binary_price_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.low_price_binary_price_8(buffer, index, packet, parent)

  -- Open Price: 8 Byte Unsigned Fixed Width Integer
  index, open_price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.open_price(buffer, index, packet, parent)

  -- Close Price: 8 Byte Unsigned Fixed Width Integer
  index, close_price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.close_price(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = cboe_europe_cedxmulticast_pitch_v1_11_dissect.total_volume(buffer, index, packet, parent)

  -- Block Volume: 4 Byte Unsigned Fixed Width Integer
  index, block_volume = cboe_europe_cedxmulticast_pitch_v1_11_dissect.block_volume(buffer, index, packet, parent)

  -- Ecrp Volume: 4 Byte Unsigned Fixed Width Integer
  index, ecrp_volume = cboe_europe_cedxmulticast_pitch_v1_11_dissect.ecrp_volume(buffer, index, packet, parent)

  -- Summary Flags: Struct of 6 fields
  index, summary_flags = cboe_europe_cedxmulticast_pitch_v1_11_dissect.summary_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Summary Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.end_of_day_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_day_summary_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.end_of_day_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.end_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.end_of_day_summary_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.end_of_day_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Issue
cboe_europe_cedxmulticast_pitch_v1_11_size_of.issue = 1

-- Display: Issue
cboe_europe_cedxmulticast_pitch_v1_11_display.issue = function(value)
  if value == "S" then
    return "Issue: Initial Settlement (S)"
  end
  if value == "R" then
    return "Issue: Reissued Settlement (R)"
  end

  return "Issue: Unknown("..value..")"
end

-- Dissect: Issue
cboe_europe_cedxmulticast_pitch_v1_11_dissect.issue = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.issue
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.issue(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.issue, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.settlement_price = 8

-- Display: Settlement Price
cboe_europe_cedxmulticast_pitch_v1_11_display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.settlement_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Settlement Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.settlement_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_printable_ascii_6

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_date

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.settlement_price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.issue

  return index
end

-- Display: Settlement Message
cboe_europe_cedxmulticast_pitch_v1_11_display.settlement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.settlement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: 6 Byte Ascii String
  index, symbol_printable_ascii_6 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_printable_ascii_6(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_date(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Unsigned Fixed Width Integer
  index, settlement_price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.settlement_price(buffer, index, packet, parent)

  -- Issue: 1 Byte Ascii String Enum with 2 values
  index, issue = cboe_europe_cedxmulticast_pitch_v1_11_dissect.issue(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.settlement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.settlement_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.settlement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.settlement_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.settlement_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.settlement_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Id
cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_id = 8

-- Display: Execution Id
cboe_europe_cedxmulticast_pitch_v1_11_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Break Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_break_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_id

  return index
end

-- Display: Trade Break Message
cboe_europe_cedxmulticast_pitch_v1_11_display.trade_break_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_break_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_break_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_break_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trade_break_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_break_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_break_message_fields(buffer, offset, packet, parent)
end

-- Size: Multiplier
cboe_europe_cedxmulticast_pitch_v1_11_size_of.multiplier = 4

-- Display: Multiplier
cboe_europe_cedxmulticast_pitch_v1_11_display.multiplier = function(value)
  return "Multiplier: "..value
end

-- Translate: Multiplier
translate.multiplier = function(raw)
  return raw*10
end

-- Dissect: Multiplier
cboe_europe_cedxmulticast_pitch_v1_11_dissect.multiplier = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.multiplier
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.multiplier(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.multiplier(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Size: Width Type
cboe_europe_cedxmulticast_pitch_v1_11_size_of.width_type = 1

-- Display: Width Type
cboe_europe_cedxmulticast_pitch_v1_11_display.width_type = function(value)
  if value == R then
    return "Width Type: Regular (R)"
  end

  return "Width Type: Unknown("..value..")"
end

-- Dissect: Width Type
cboe_europe_cedxmulticast_pitch_v1_11_dissect.width_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.width_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.width_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.width_type, range, value, display)

  return offset + length, value
end

-- Size: Product Code Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11_size_of.product_code_alphanumeric_8 = 8

-- Display: Product Code Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11_display.product_code_alphanumeric_8 = function(value)
  return "Product Code Alphanumeric 8: "..value
end

-- Dissect: Product Code Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11_dissect.product_code_alphanumeric_8 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.product_code_alphanumeric_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.product_code_alphanumeric_8(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.product_code_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Width Update Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.width_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.product_code_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.width_type

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.multiplier

  return index
end

-- Display: Width Update Message
cboe_europe_cedxmulticast_pitch_v1_11_display.width_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Width Update Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.width_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Product Code Alphanumeric 8: 8 Byte Ascii String
  index, product_code_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.product_code_alphanumeric_8(buffer, index, packet, parent)

  -- Width Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, width_type = cboe_europe_cedxmulticast_pitch_v1_11_dissect.width_type(buffer, index, packet, parent)

  -- Multiplier: 4 Byte Unsigned Fixed Width Integer
  index, multiplier = cboe_europe_cedxmulticast_pitch_v1_11_dissect.multiplier(buffer, index, packet, parent)

  return index
end

-- Dissect: Width Update Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.width_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.width_update_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.width_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.width_update_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.width_update_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.width_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Increment
cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_increment = 8

-- Display: Price Increment
cboe_europe_cedxmulticast_pitch_v1_11_display.price_increment = function(value)
  return "Price Increment: "..value
end

-- Translate: Price Increment
translate.price_increment = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Price Increment
cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_increment = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_increment
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price_increment(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.price_increment(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Size: Listing State
cboe_europe_cedxmulticast_pitch_v1_11_size_of.listing_state = 1

-- Display: Listing State
cboe_europe_cedxmulticast_pitch_v1_11_display.listing_state = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11_dissect.listing_state = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.listing_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.listing_state(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.listing_state, range, value, display)

  return offset + length, value
end

-- Size: Contract Size
cboe_europe_cedxmulticast_pitch_v1_11_size_of.contract_size = 2

-- Display: Contract Size
cboe_europe_cedxmulticast_pitch_v1_11_display.contract_size = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_europe_cedxmulticast_pitch_v1_11_dissect.contract_size = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.contract_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.contract_size(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.strike_price = 8

-- Display: Strike Price
cboe_europe_cedxmulticast_pitch_v1_11_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Strike Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.strike_price(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Date
cboe_europe_cedxmulticast_pitch_v1_11_size_of.expiration_date = 4

-- Display: Expiration Date
cboe_europe_cedxmulticast_pitch_v1_11_display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
cboe_europe_cedxmulticast_pitch_v1_11_dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.expiration_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Call Put
cboe_europe_cedxmulticast_pitch_v1_11_size_of.call_put = 1

-- Display: Call Put
cboe_europe_cedxmulticast_pitch_v1_11_display.call_put = function(value)
  if value == "P" then
    return "Call Put: Put (P)"
  end
  if value == "C" then
    return "Call Put: Call (C)"
  end

  return "Call Put: Unknown("..value..")"
end

-- Dissect: Call Put
cboe_europe_cedxmulticast_pitch_v1_11_dissect.call_put = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.call_put
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.call_put(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.call_put, range, value, display)

  return offset + length, value
end

-- Size: Symbol Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_6 = 6

-- Display: Symbol Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11_display.symbol_alphanumeric_6 = function(value)
  return "Symbol Alphanumeric 6: "..value
end

-- Dissect: Symbol Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_6 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.symbol_alphanumeric_6(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_alphanumeric_6, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.options_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_6

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.product_code_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.call_put

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.expiration_date

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.strike_price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contract_size

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.listing_state

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_increment

  return index
end

-- Display: Options Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11_display.options_instrument_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.options_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: 6 Byte Ascii String
  index, symbol_alphanumeric_6 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_6(buffer, index, packet, parent)

  -- Product Code Alphanumeric 8: 8 Byte Ascii String
  index, product_code_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.product_code_alphanumeric_8(buffer, index, packet, parent)

  -- Call Put: 1 Byte Ascii String Enum with 2 values
  index, call_put = cboe_europe_cedxmulticast_pitch_v1_11_dissect.call_put(buffer, index, packet, parent)

  -- Expiration Date: 4 Byte Unsigned Fixed Width Integer
  index, expiration_date = cboe_europe_cedxmulticast_pitch_v1_11_dissect.expiration_date(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Unsigned Fixed Width Integer
  index, strike_price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.strike_price(buffer, index, packet, parent)

  -- Contract Size: 2 Byte Unsigned Fixed Width Integer
  index, contract_size = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contract_size(buffer, index, packet, parent)

  -- Listing State: 1 Byte Ascii String Enum with 3 values
  index, listing_state = cboe_europe_cedxmulticast_pitch_v1_11_dissect.listing_state(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Unsigned Fixed Width Integer
  index, price_increment = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_increment(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.options_instrument_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.options_instrument_definition_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.options_instrument_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.options_instrument_definition_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.options_instrument_definition_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.options_instrument_definition_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Futures Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.futures_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_6

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.product_code_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.expiration_date

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contract_size

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.listing_state

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_increment

  return index
end

-- Display: Futures Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11_display.futures_instrument_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.futures_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: 6 Byte Ascii String
  index, symbol_alphanumeric_6 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_6(buffer, index, packet, parent)

  -- Product Code Alphanumeric 8: 8 Byte Ascii String
  index, product_code_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.product_code_alphanumeric_8(buffer, index, packet, parent)

  -- Expiration Date: 4 Byte Unsigned Fixed Width Integer
  index, expiration_date = cboe_europe_cedxmulticast_pitch_v1_11_dissect.expiration_date(buffer, index, packet, parent)

  -- Contract Size: 2 Byte Unsigned Fixed Width Integer
  index, contract_size = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contract_size(buffer, index, packet, parent)

  -- Listing State: 1 Byte Ascii String Enum with 3 values
  index, listing_state = cboe_europe_cedxmulticast_pitch_v1_11_dissect.listing_state(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Unsigned Fixed Width Integer
  index, price_increment = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_increment(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.futures_instrument_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.futures_instrument_definition_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.futures_instrument_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.futures_instrument_definition_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.futures_instrument_definition_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.futures_instrument_definition_message_fields(buffer, offset, packet, parent)
end

-- Size: Volume
cboe_europe_cedxmulticast_pitch_v1_11_size_of.volume = 4

-- Display: Volume
cboe_europe_cedxmulticast_pitch_v1_11_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
cboe_europe_cedxmulticast_pitch_v1_11_dissect.volume = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.volume(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Price Level
cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_level = 8

-- Display: Price Level
cboe_europe_cedxmulticast_pitch_v1_11_display.price_level = function(value)
  return "Price Level: "..value
end

-- Translate: Price Level
translate.price_level = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Price Level
cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_level = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_level
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price_level(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.price_level(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Price Level Group
cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_level_group = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_level

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.volume

  return index
end

-- Display: Price Level Group
cboe_europe_cedxmulticast_pitch_v1_11_display.price_level_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Price Level Group
cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_level_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Level: 8 Byte Unsigned Fixed Width Integer
  index, price_level = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_level(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = cboe_europe_cedxmulticast_pitch_v1_11_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level Group
cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_level_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.price_level_group then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_level_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.price_level_group(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_group, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_level_group_fields(buffer, offset, packet, parent)
end

-- Size: Price Level Count
cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_level_count = 1

-- Display: Price Level Count
cboe_europe_cedxmulticast_pitch_v1_11_display.price_level_count = function(value)
  return "Price Level Count: "..value
end

-- Dissect: Price Level Count
cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_level_count = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_level_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.price_level_count(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_count, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_id = 8

-- Display: Auction Id
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Liquidity Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_liquidity_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_level_count

  -- Calculate field size from count
  local price_level_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + price_level_group_count * 12

  return index
end

-- Display: Auction Liquidity Message
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_liquidity_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Liquidity Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_liquidity_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_id(buffer, index, packet, parent)

  -- Price Level Count: 1 Byte Unsigned Fixed Width Integer
  index, price_level_count = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_level_count(buffer, index, packet, parent)

  -- Price Level Group: Struct of 2 fields
  for i = 1, price_level_count do
    index = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_level_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Auction Liquidity Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_liquidity_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.auction_liquidity_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_liquidity_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_liquidity_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_liquidity_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_liquidity_message_fields(buffer, offset, packet, parent)
end

-- Size: Algorithmic Trade
cboe_europe_cedxmulticast_pitch_v1_11_size_of.algorithmic_trade = 1

-- Display: Algorithmic Trade
cboe_europe_cedxmulticast_pitch_v1_11_display.algorithmic_trade = function(value)
  if value == "H" then
    return "Algorithmic Trade: Algorithmic Trade (H)"
  end
  if value == "-" then
    return "Algorithmic Trade: Nonalgorithmic Trade (-)"
  end

  return "Algorithmic Trade: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade
cboe_europe_cedxmulticast_pitch_v1_11_dissect.algorithmic_trade = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.algorithmic_trade
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.algorithmic_trade(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.algorithmic_trade, range, value, display)

  return offset + length, value
end

-- Size: Ex Cum Dividend
cboe_europe_cedxmulticast_pitch_v1_11_size_of.ex_cum_dividend = 1

-- Display: Ex Cum Dividend
cboe_europe_cedxmulticast_pitch_v1_11_display.ex_cum_dividend = function(value)
  if value == "E" then
    return "Ex Cum Dividend: Ex Cum Special Dividend If Optionally Set By Reporting Party (E)"
  end
  if value == "-" then
    return "Ex Cum Dividend: Not Specified (-)"
  end

  return "Ex Cum Dividend: Unknown("..value..")"
end

-- Dissect: Ex Cum Dividend
cboe_europe_cedxmulticast_pitch_v1_11_dissect.ex_cum_dividend = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.ex_cum_dividend
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.ex_cum_dividend(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.ex_cum_dividend, range, value, display)

  return offset + length, value
end

-- Size: Trading Mode
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trading_mode = 1

-- Display: Trading Mode
cboe_europe_cedxmulticast_pitch_v1_11_display.trading_mode = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trading_mode = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trading_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trading_mode(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Market Mechanism
cboe_europe_cedxmulticast_pitch_v1_11_size_of.market_mechanism = 1

-- Display: Market Mechanism
cboe_europe_cedxmulticast_pitch_v1_11_display.market_mechanism = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11_dissect.market_mechanism = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.market_mechanism
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.market_mechanism(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Flags
cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_flags = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.market_mechanism

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.trading_mode

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.ex_cum_dividend

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.algorithmic_trade

  return index
end

-- Display: Execution Flags
cboe_europe_cedxmulticast_pitch_v1_11_display.execution_flags = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Flags
cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_flags_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: 1 Byte Ascii String Enum with 7 values
  index, market_mechanism = cboe_europe_cedxmulticast_pitch_v1_11_dissect.market_mechanism(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 11 values
  index, trading_mode = cboe_europe_cedxmulticast_pitch_v1_11_dissect.trading_mode(buffer, index, packet, parent)

  -- Ex Cum Dividend: 1 Byte Ascii String Enum with 2 values
  index, ex_cum_dividend = cboe_europe_cedxmulticast_pitch_v1_11_dissect.ex_cum_dividend(buffer, index, packet, parent)

  -- Algorithmic Trade: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_trade = cboe_europe_cedxmulticast_pitch_v1_11_dissect.algorithmic_trade(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Flags
cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_flags = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_flags then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_flags(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.execution_flags(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_flags, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_flags_fields(buffer, offset, packet, parent)
end

-- Size: Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_4 = 4

-- Display: Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11_display.contracts_binary_4 = function(value)
  return "Contracts Binary 4: "..value
end

-- Dissect: Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_binary_4 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.contracts_binary_4(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_binary_4, range, value, display)

  return offset + length, value
end

-- Size: Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.price = 8

-- Display: Price
cboe_europe_cedxmulticast_pitch_v1_11_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Trade Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_trade_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_4

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_flags(buffer, offset + index)

  return index
end

-- Display: Auction Trade Message
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_id(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_binary_4(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_trade_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_trade_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_trade_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Auction Cancel Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_cancel_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_id

  return index
end

-- Display: Auction Cancel Message
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_cancel_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_cancel_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_cancel_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Auction End Offset
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_end_offset = 4

-- Display: Auction End Offset
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_end_offset = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_end_offset = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_end_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_end_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
cboe_europe_cedxmulticast_pitch_v1_11_size_of.participant_id = 4

-- Display: Participant Id
cboe_europe_cedxmulticast_pitch_v1_11_display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_europe_cedxmulticast_pitch_v1_11_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Customer Indicator
cboe_europe_cedxmulticast_pitch_v1_11_size_of.customer_indicator = 1

-- Display: Customer Indicator
cboe_europe_cedxmulticast_pitch_v1_11_display.customer_indicator = function(value)
  return "Customer Indicator: "..value
end

-- Dissect: Customer Indicator
cboe_europe_cedxmulticast_pitch_v1_11_dissect.customer_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.customer_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Size: Side
cboe_europe_cedxmulticast_pitch_v1_11_size_of.side = 1

-- Display: Side
cboe_europe_cedxmulticast_pitch_v1_11_display.side = function(value)
  return "Side: "..value
end

-- Dissect: Side
cboe_europe_cedxmulticast_pitch_v1_11_dissect.side = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.side(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_type = 1

-- Display: Auction Type
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "B" then
    return "Auction Type: Aim (B)"
  end
  if value == "C" then
    return "Auction Type: Crfq (C)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Notification Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_notification_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_6

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_type

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.side

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_4

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.customer_indicator

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.participant_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_end_offset

  return index
end

-- Display: Auction Notification Message
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: 6 Byte Ascii String
  index, symbol_alphanumeric_6 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_6(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 3 values
  index, auction_type = cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_type(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = cboe_europe_cedxmulticast_pitch_v1_11_dissect.side(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_binary_4(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String
  index, customer_indicator = cboe_europe_cedxmulticast_pitch_v1_11_dissect.customer_indicator(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.participant_id(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_end_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_notification_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_notification_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_notification_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Composite Market Offer Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.composite_market_offer_price = 8

-- Display: Composite Market Offer Price
cboe_europe_cedxmulticast_pitch_v1_11_display.composite_market_offer_price = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
translate.composite_market_offer_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Composite Market Offer Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.composite_market_offer_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.composite_market_offer_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.composite_market_offer_price(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.composite_market_offer_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Composite Market Bid Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.composite_market_bid_price = 8

-- Display: Composite Market Bid Price
cboe_europe_cedxmulticast_pitch_v1_11_display.composite_market_bid_price = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
translate.composite_market_bid_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Composite Market Bid Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.composite_market_bid_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.composite_market_bid_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.composite_market_bid_price(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.composite_market_bid_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Opening Condition
cboe_europe_cedxmulticast_pitch_v1_11_size_of.opening_condition = 1

-- Display: Opening Condition
cboe_europe_cedxmulticast_pitch_v1_11_display.opening_condition = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_europe_cedxmulticast_pitch_v1_11_dissect.opening_condition = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.opening_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.opening_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Size: Auction Only Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_only_price = 8

-- Display: Auction Only Price
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_only_price = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
translate.auction_only_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Auction Only Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_only_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_only_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.auction_only_price(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_only_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Size: Indicative Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.indicative_price = 8

-- Display: Indicative Price
cboe_europe_cedxmulticast_pitch_v1_11_display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
translate.indicative_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Indicative Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.indicative_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.indicative_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.indicative_price(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Size: Sell Contracts
cboe_europe_cedxmulticast_pitch_v1_11_size_of.sell_contracts = 4

-- Display: Sell Contracts
cboe_europe_cedxmulticast_pitch_v1_11_display.sell_contracts = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_europe_cedxmulticast_pitch_v1_11_dissect.sell_contracts = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.sell_contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.sell_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Size: Buy Contracts
cboe_europe_cedxmulticast_pitch_v1_11_size_of.buy_contracts = 4

-- Display: Buy Contracts
cboe_europe_cedxmulticast_pitch_v1_11_display.buy_contracts = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_europe_cedxmulticast_pitch_v1_11_dissect.buy_contracts = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.buy_contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.buy_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
cboe_europe_cedxmulticast_pitch_v1_11_size_of.reference_price = 8

-- Display: Reference Price
cboe_europe_cedxmulticast_pitch_v1_11_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
translate.reference_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Reference Price
cboe_europe_cedxmulticast_pitch_v1_11_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.reference_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.reference_price(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Size: Symbol Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_8 = 8

-- Display: Symbol Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11_display.symbol_alphanumeric_8 = function(value)
  return "Symbol Alphanumeric 8: "..value
end

-- Dissect: Symbol Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_8 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.symbol_alphanumeric_8(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Opening Auction Update Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.opening_auction_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_type

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.reference_price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.buy_contracts

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.sell_contracts

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.indicative_price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_only_price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.opening_condition

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.composite_market_bid_price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.composite_market_offer_price

  return index
end

-- Display: Opening Auction Update Message
cboe_europe_cedxmulticast_pitch_v1_11_display.opening_auction_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Opening Auction Update Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.opening_auction_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 3 values
  index, auction_type = cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_type(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.reference_price(buffer, index, packet, parent)

  -- Buy Contracts: 4 Byte Unsigned Fixed Width Integer
  index, buy_contracts = cboe_europe_cedxmulticast_pitch_v1_11_dissect.buy_contracts(buffer, index, packet, parent)

  -- Sell Contracts: 4 Byte Unsigned Fixed Width Integer
  index, sell_contracts = cboe_europe_cedxmulticast_pitch_v1_11_dissect.sell_contracts(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Unsigned Fixed Width Integer
  index, indicative_price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.indicative_price(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_only_price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_only_price(buffer, index, packet, parent)

  -- Opening Condition: 1 Byte Ascii String
  index, opening_condition = cboe_europe_cedxmulticast_pitch_v1_11_dissect.opening_condition(buffer, index, packet, parent)

  -- Composite Market Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, composite_market_bid_price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.composite_market_bid_price(buffer, index, packet, parent)

  -- Composite Market Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, composite_market_offer_price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.composite_market_offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Auction Update Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.opening_auction_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.opening_auction_update_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.opening_auction_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.opening_auction_update_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.opening_auction_update_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.opening_auction_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Auction Opening Type
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_opening_type = 1

-- Display: Auction Opening Type
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_opening_type = function(value)
  return "Auction Opening Type: "..value
end

-- Dissect: Auction Opening Type
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_opening_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_opening_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_opening_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_opening_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Summary Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_summary_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_opening_type

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_4

  return index
end

-- Display: Auction Summary Message
cboe_europe_cedxmulticast_pitch_v1_11_display.auction_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Auction Opening Type: 1 Byte Ascii String
  index, auction_opening_type = cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_opening_type(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_binary_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_summary_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.auction_summary_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_summary_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Is Fast
cboe_europe_cedxmulticast_pitch_v1_11_size_of.is_fast = 1

-- Display: Is Fast
cboe_europe_cedxmulticast_pitch_v1_11_display.is_fast = function(value)
  return "Is Fast: "..value
end

-- Dissect: Is Fast
cboe_europe_cedxmulticast_pitch_v1_11_dissect.is_fast = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.is_fast
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.is_fast(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.is_fast, range, value, display)

  return offset + length, value
end

-- Size: Product Code Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11_size_of.product_code_alphanumeric_6 = 6

-- Display: Product Code Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11_display.product_code_alphanumeric_6 = function(value)
  return "Product Code Alphanumeric 6: "..value
end

-- Dissect: Product Code Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11_dissect.product_code_alphanumeric_6 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.product_code_alphanumeric_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.product_code_alphanumeric_6(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.product_code_alphanumeric_6, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fast Status Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.fast_status_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.product_code_alphanumeric_6

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.is_fast

  return index
end

-- Display: Fast Status Message
cboe_europe_cedxmulticast_pitch_v1_11_display.fast_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fast Status Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.fast_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Product Code Alphanumeric 6: 6 Byte Ascii String
  index, product_code_alphanumeric_6 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.product_code_alphanumeric_6(buffer, index, packet, parent)

  -- Is Fast: 1 Byte Unsigned Fixed Width Integer
  index, is_fast = cboe_europe_cedxmulticast_pitch_v1_11_dissect.is_fast(buffer, index, packet, parent)

  return index
end

-- Dissect: Fast Status Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.fast_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fast_status_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.fast_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.fast_status_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.fast_status_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.fast_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved
cboe_europe_cedxmulticast_pitch_v1_11_size_of.reserved = 3

-- Display: Reserved
cboe_europe_cedxmulticast_pitch_v1_11_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_europe_cedxmulticast_pitch_v1_11_dissect.reserved = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.reserved(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Status
cboe_europe_cedxmulticast_pitch_v1_11_size_of.status = 1

-- Display: Status
cboe_europe_cedxmulticast_pitch_v1_11_display.status = function(value)
  if value == "C" then
    return "Status: Closed (C)"
  end
  if value == "Q" then
    return "Status: Queuing (Q)"
  end
  if value == "O" then
    return "Status: Opening Auction (O)"
  end
  if value == "T" then
    return "Status: Trading (T)"
  end
  if value == "S" then
    return "Status: Suspension (S)"
  end
  if value == "H" then
    return "Status: Halted (H)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
cboe_europe_cedxmulticast_pitch_v1_11_dissect.status = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.status(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.status

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.reserved

  return index
end

-- Display: Trading Status Message
cboe_europe_cedxmulticast_pitch_v1_11_display.trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 6 values
  index, status = cboe_europe_cedxmulticast_pitch_v1_11_dissect.status(buffer, index, packet, parent)

  -- Reserved: 3 Byte Ascii String
  index, reserved = cboe_europe_cedxmulticast_pitch_v1_11_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_status_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trading_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trading_status_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trading_status_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trading_status_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Transaction Begin Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.transaction_begin_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  return index
end

-- Display: Transaction Begin Message
cboe_europe_cedxmulticast_pitch_v1_11_display.transaction_begin_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.transaction_begin_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.transaction_begin_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.transaction_begin_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.transaction_begin_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.transaction_begin_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.transaction_begin_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.transaction_begin_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: End Of Session
cboe_europe_cedxmulticast_pitch_v1_11_size_of.end_of_session = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  return index
end

-- Display: End Of Session
cboe_europe_cedxmulticast_pitch_v1_11_display.end_of_session = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Session
cboe_europe_cedxmulticast_pitch_v1_11_dissect.end_of_session_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session
cboe_europe_cedxmulticast_pitch_v1_11_dissect.end_of_session = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_session then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.end_of_session(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.end_of_session(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.end_of_session, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.end_of_session_fields(buffer, offset, packet, parent)
end

-- Size: Cboe Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11_size_of.cboe_trade_flags = 1

-- Display: Cboe Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11_display.cboe_trade_flags = function(value)
  return "Cboe Trade Flags: "..value
end

-- Dissect: Cboe Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11_dissect.cboe_trade_flags = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.cboe_trade_flags
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.cboe_trade_flags(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.cboe_trade_flags, range, value, display)

  return offset + length, value
end

-- Size: Currency
cboe_europe_cedxmulticast_pitch_v1_11_size_of.currency = 3

-- Display: Currency
cboe_europe_cedxmulticast_pitch_v1_11_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_europe_cedxmulticast_pitch_v1_11_dissect.currency = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.currency(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Execution Venue
cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_venue = 4

-- Display: Execution Venue
cboe_europe_cedxmulticast_pitch_v1_11_display.execution_venue = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_venue = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_venue
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.execution_venue(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Size: Trade Timestamp
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_timestamp = 8

-- Display: Trade Timestamp
cboe_europe_cedxmulticast_pitch_v1_11_display.trade_timestamp = function(value)
  return "Trade Timestamp: "..value
end

-- Dissect: Trade Timestamp
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_timestamp = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trade_timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_id = 8

-- Display: Trade Id
cboe_europe_cedxmulticast_pitch_v1_11_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Contracts Binary 8
cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_8 = 8

-- Display: Contracts Binary 8
cboe_europe_cedxmulticast_pitch_v1_11_display.contracts_binary_8 = function(value)
  return "Contracts Binary 8: "..value
end

-- Dissect: Contracts Binary 8
cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_binary_8 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.contracts_binary_8(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_binary_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Extended Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_extended_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_timestamp

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_venue

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.currency

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.cboe_trade_flags

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.extended_trade_flags

  return index
end

-- Display: Trade Extended Message
cboe_europe_cedxmulticast_pitch_v1_11_display.trade_extended_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Extended Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_extended_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Contracts Binary 8: 8 Byte Unsigned Fixed Width Integer
  index, contracts_binary_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_binary_8(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_id(buffer, index, packet, parent)

  -- Trade Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, trade_timestamp = cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_timestamp(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_venue(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cboe_europe_cedxmulticast_pitch_v1_11_dissect.currency(buffer, index, packet, parent)

  -- Cboe Trade Flags: 1 Byte Ascii String
  index, cboe_trade_flags = cboe_europe_cedxmulticast_pitch_v1_11_dissect.cboe_trade_flags(buffer, index, packet, parent)

  -- Extended Trade Flags
  index, extended_trade_flags = cboe_europe_cedxmulticast_pitch_v1_11_dissect.extended_trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Extended Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_extended_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_extended_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_extended_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trade_extended_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_extended_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_extended_message_fields(buffer, offset, packet, parent)
end

-- Size: Benchmark Reference Price Indicator
cboe_europe_cedxmulticast_pitch_v1_11_size_of.benchmark_reference_price_indicator = 1

-- Display: Benchmark Reference Price Indicator
cboe_europe_cedxmulticast_pitch_v1_11_display.benchmark_reference_price_indicator = function(value)
  return "Benchmark Reference Price Indicator: "..value
end

-- Dissect: Benchmark Reference Price Indicator
cboe_europe_cedxmulticast_pitch_v1_11_dissect.benchmark_reference_price_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.benchmark_reference_price_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.benchmark_reference_price_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.benchmark_reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Size: Transaction Category
cboe_europe_cedxmulticast_pitch_v1_11_size_of.transaction_category = 1

-- Display: Transaction Category
cboe_europe_cedxmulticast_pitch_v1_11_display.transaction_category = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11_dissect.transaction_category = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.transaction_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.transaction_category(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_flags = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.market_mechanism

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.trading_mode

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.transaction_category

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.benchmark_reference_price_indicator

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.algorithmic_trade

  return index
end

-- Display: Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11_display.trade_flags = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_flags_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: 1 Byte Ascii String Enum with 7 values
  index, market_mechanism = cboe_europe_cedxmulticast_pitch_v1_11_dissect.market_mechanism(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 11 values
  index, trading_mode = cboe_europe_cedxmulticast_pitch_v1_11_dissect.trading_mode(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 13 values
  index, transaction_category = cboe_europe_cedxmulticast_pitch_v1_11_dissect.transaction_category(buffer, index, packet, parent)

  -- Benchmark Reference Price Indicator: 1 Byte Ascii String
  index, benchmark_reference_price_indicator = cboe_europe_cedxmulticast_pitch_v1_11_dissect.benchmark_reference_price_indicator(buffer, index, packet, parent)

  -- Algorithmic Trade: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_trade = cboe_europe_cedxmulticast_pitch_v1_11_dissect.algorithmic_trade(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_flags = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_flags then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_flags(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trade_flags(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_flags, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_flags_fields(buffer, offset, packet, parent)
end

-- Size: Price Short
cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_short = 2

-- Display: Price Short
cboe_europe_cedxmulticast_pitch_v1_11_display.price_short = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
translate.price_short = function(raw)
  return raw*100
end

-- Dissect: Price Short
cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_short = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_short
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.price_short(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.price_short(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.price_short, range, value, display)

  return offset + length, value
end

-- Size: Contracts Short
cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_short = 2

-- Display: Contracts Short
cboe_europe_cedxmulticast_pitch_v1_11_display.contracts_short = function(value)
  return "Contracts Short: "..value
end

-- Dissect: Contracts Short
cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_short = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.contracts_short(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_short, range, value, display)

  return offset + length, value
end

-- Size: Side Indicator
cboe_europe_cedxmulticast_pitch_v1_11_size_of.side_indicator = 1

-- Display: Side Indicator
cboe_europe_cedxmulticast_pitch_v1_11_display.side_indicator = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_europe_cedxmulticast_pitch_v1_11_dissect.side_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.side_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.side_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Id
cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id = 8

-- Display: Order Id
cboe_europe_cedxmulticast_pitch_v1_11_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Short Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.side_indicator

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_short

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_short

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_flags(buffer, offset + index)

  return index
end

-- Display: Trade Short Message
cboe_europe_cedxmulticast_pitch_v1_11_display.trade_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_cedxmulticast_pitch_v1_11_dissect.side_indicator(buffer, index, packet, parent)

  -- Contracts Short: 2 Byte Unsigned Fixed Width Integer
  index, contracts_short = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_short(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_short(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_short_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trade_short_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_short_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Long Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.side_indicator

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_4

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_flags(buffer, offset + index)

  return index
end

-- Display: Trade Long Message
cboe_europe_cedxmulticast_pitch_v1_11_display.trade_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_cedxmulticast_pitch_v1_11_dissect.side_indicator(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_binary_4(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_long_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.trade_long_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_long_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_long_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  return index
end

-- Display: Delete Order Message
cboe_europe_cedxmulticast_pitch_v1_11_display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.delete_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.delete_order_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.delete_order_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.modify_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_short

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_short

  return index
end

-- Display: Modify Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11_display.modify_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.modify_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Contracts Short: 2 Byte Unsigned Fixed Width Integer
  index, contracts_short = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_short(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.modify_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_short_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.modify_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.modify_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.modify_order_short_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.modify_order_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.modify_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.contracts_binary_4

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price

  return index
end

-- Display: Modify Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11_display.modify_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.modify_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.contracts_binary_4(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.modify_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_long_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.modify_order_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.modify_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.modify_order_long_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.modify_order_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Contracts Binary 2
cboe_europe_cedxmulticast_pitch_v1_11_size_of.canceled_contracts_binary_2 = 2

-- Display: Canceled Contracts Binary 2
cboe_europe_cedxmulticast_pitch_v1_11_display.canceled_contracts_binary_2 = function(value)
  return "Canceled Contracts Binary 2: "..value
end

-- Dissect: Canceled Contracts Binary 2
cboe_europe_cedxmulticast_pitch_v1_11_dissect.canceled_contracts_binary_2 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.canceled_contracts_binary_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.canceled_contracts_binary_2(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.canceled_contracts_binary_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Short Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.reduce_size_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.canceled_contracts_binary_2

  return index
end

-- Display: Reduce Size Short Message
cboe_europe_cedxmulticast_pitch_v1_11_display.reduce_size_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.reduce_size_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Contracts Binary 2: 2 Byte Unsigned Fixed Width Integer
  index, canceled_contracts_binary_2 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.canceled_contracts_binary_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.reduce_size_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_short_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.reduce_size_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.reduce_size_short_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.reduce_size_short_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.reduce_size_short_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11_size_of.canceled_contracts_binary_4 = 4

-- Display: Canceled Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11_display.canceled_contracts_binary_4 = function(value)
  return "Canceled Contracts Binary 4: "..value
end

-- Dissect: Canceled Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11_dissect.canceled_contracts_binary_4 = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.canceled_contracts_binary_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.canceled_contracts_binary_4(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.canceled_contracts_binary_4, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Long Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.reduce_size_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.canceled_contracts_binary_4

  return index
end

-- Display: Reduce Size Long Message
cboe_europe_cedxmulticast_pitch_v1_11_display.reduce_size_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.reduce_size_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, canceled_contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.canceled_contracts_binary_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.reduce_size_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_long_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.reduce_size_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.reduce_size_long_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.reduce_size_long_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.reduce_size_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Remaining Quantity
cboe_europe_cedxmulticast_pitch_v1_11_size_of.remaining_quantity = 4

-- Display: Remaining Quantity
cboe_europe_cedxmulticast_pitch_v1_11_display.remaining_quantity = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_europe_cedxmulticast_pitch_v1_11_dissect.remaining_quantity = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.remaining_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.remaining_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Size: Executed Quantity
cboe_europe_cedxmulticast_pitch_v1_11_size_of.executed_quantity = 4

-- Display: Executed Quantity
cboe_europe_cedxmulticast_pitch_v1_11_display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_europe_cedxmulticast_pitch_v1_11_dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed At Price Size Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_executed_at_price_size_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.executed_quantity

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.remaining_quantity

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_flags(buffer, offset + index)

  return index
end

-- Display: Order Executed At Price Size Message
cboe_europe_cedxmulticast_pitch_v1_11_display.order_executed_at_price_size_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_executed_at_price_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_europe_cedxmulticast_pitch_v1_11_dissect.executed_quantity(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = cboe_europe_cedxmulticast_pitch_v1_11_dissect.remaining_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_executed_at_price_size_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_at_price_size_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_executed_at_price_size_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.order_executed_at_price_size_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.order_executed_at_price_size_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Executed Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.executed_quantity

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.execution_flags(buffer, offset + index)

  return index
end

-- Display: Order Executed Message
cboe_europe_cedxmulticast_pitch_v1_11_display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_europe_cedxmulticast_pitch_v1_11_dissect.executed_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_id(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_europe_cedxmulticast_pitch_v1_11_dissect.execution_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.order_executed_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.order_executed_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Symbol Short
cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_short = 6

-- Display: Symbol Short
cboe_europe_cedxmulticast_pitch_v1_11_display.symbol_short = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_short = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_short
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.symbol_short(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Size: Quantity Short
cboe_europe_cedxmulticast_pitch_v1_11_size_of.quantity_short = 2

-- Display: Quantity Short
cboe_europe_cedxmulticast_pitch_v1_11_display.quantity_short = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_europe_cedxmulticast_pitch_v1_11_dissect.quantity_short = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.add_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.side_indicator

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.quantity_short

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_short

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price_short

  return index
end

-- Display: Add Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11_display.add_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.add_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_cedxmulticast_pitch_v1_11_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_europe_cedxmulticast_pitch_v1_11_dissect.quantity_short(buffer, index, packet, parent)

  -- Symbol Short: 6 Byte Ascii String
  index, symbol_short = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_short(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.add_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_short_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.add_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.add_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.add_order_short_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.add_order_short_message_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
cboe_europe_cedxmulticast_pitch_v1_11_size_of.quantity = 4

-- Display: Quantity
cboe_europe_cedxmulticast_pitch_v1_11_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_europe_cedxmulticast_pitch_v1_11_dissect.quantity = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.add_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_id

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.side_indicator

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.quantity

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.symbol_alphanumeric_8

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.price

  return index
end

-- Display: Add Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11_display.add_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.add_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_cedxmulticast_pitch_v1_11_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_europe_cedxmulticast_pitch_v1_11_dissect.quantity(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11_dissect.symbol_alphanumeric_8(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.add_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_long_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.add_order_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.add_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.add_order_long_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.add_order_long_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Unit Clear Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.unit_clear_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_offset

  return index
end

-- Display: Unit Clear Message
cboe_europe_cedxmulticast_pitch_v1_11_display.unit_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.unit_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_clear_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.unit_clear_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.unit_clear_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.unit_clear_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.unit_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: Time
cboe_europe_cedxmulticast_pitch_v1_11_size_of.time = 4

-- Display: Time
cboe_europe_cedxmulticast_pitch_v1_11_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_europe_cedxmulticast_pitch_v1_11_dissect.time = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.time

  return index
end

-- Display: Time Message
cboe_europe_cedxmulticast_pitch_v1_11_display.time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_europe_cedxmulticast_pitch_v1_11_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.time_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.time_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cboe_europe_cedxmulticast_pitch_v1_11_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.time_message(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.unit_clear_message(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x40 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.add_order_long_message(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.add_order_short_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.order_executed_at_price_size_message(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.reduce_size_long_message(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.reduce_size_short_message(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.modify_order_long_message(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.modify_order_short_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.delete_order_message(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x41 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_long_message(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_short_message(buffer, offset)
  end
  -- Size of Trade Extended Message
  if message_type == 0x32 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_extended_message(buffer, offset)
  end
  -- Size of End Of Session
  if message_type == 0x2D then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.end_of_session(buffer, offset)
  end
  -- Size of Transaction Begin Message
  if message_type == 0xBC then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.transaction_begin_message(buffer, offset)
  end
  -- Size of Transaction Begin Message
  if message_type == 0xBD then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.transaction_begin_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.trading_status_message(buffer, offset)
  end
  -- Size of Fast Status Message
  if message_type == 0xE2 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.fast_status_message(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_summary_message(buffer, offset)
  end
  -- Size of Opening Auction Update Message
  if message_type == 0xD1 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.opening_auction_update_message(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == 0xAD then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_notification_message(buffer, offset)
  end
  -- Size of Auction Cancel Message
  if message_type == 0xAE then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_cancel_message(buffer, offset)
  end
  -- Size of Auction Trade Message
  if message_type == 0xDF then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_trade_message(buffer, offset)
  end
  -- Size of Auction Liquidity Message
  if message_type == 0xDE then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.auction_liquidity_message(buffer, offset)
  end
  -- Size of Width Update Message
  if message_type == 0xD2 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.width_update_message(buffer, offset)
  end
  -- Size of Futures Instrument Definition Message
  if message_type == 0xDA then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.futures_instrument_definition_message(buffer, offset)
  end
  -- Size of Options Instrument Definition Message
  if message_type == 0xDB then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.options_instrument_definition_message(buffer, offset)
  end
  -- Size of Width Update Message
  if message_type == 0xDC then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.width_update_message(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0x2C then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.trade_break_message(buffer, offset)
  end
  -- Size of Settlement Message
  if message_type == 0xB9 then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.settlement_message(buffer, offset)
  end
  -- Size of End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_europe_cedxmulticast_pitch_v1_11_size_of.end_of_day_summary_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_europe_cedxmulticast_pitch_v1_11_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_europe_cedxmulticast_pitch_v1_11_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x40 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.add_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.add_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.order_executed_at_price_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.reduce_size_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.reduce_size_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.modify_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.modify_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x41 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Extended Message
  if message_type == 0x32 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_extended_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_type == 0x2D then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.end_of_session(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.transaction_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBD then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.transaction_begin_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Fast Status Message
  if message_type == 0xE2 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.fast_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Opening Auction Update Message
  if message_type == 0xD1 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.opening_auction_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xDF then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Liquidity Message
  if message_type == 0xDE then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.auction_liquidity_message(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if message_type == 0xD2 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.width_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Definition Message
  if message_type == 0xDA then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.futures_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Instrument Definition Message
  if message_type == 0xDB then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.options_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if message_type == 0xDC then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.width_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Message
  if message_type == 0xB9 then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.settlement_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.end_of_day_summary_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_europe_cedxmulticast_pitch_v1_11_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_europe_cedxmulticast_pitch_v1_11_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_europe_cedxmulticast_pitch_v1_11_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.payload, range, display)

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
cboe_europe_cedxmulticast_pitch_v1_11_size_of.message_type = 1

-- Display: Message Type
cboe_europe_cedxmulticast_pitch_v1_11_display.message_type = function(value)
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
  if value == 0xE2 then
    return "Message Type: Fast Status Message (0xE2)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0xD1 then
    return "Message Type: Opening Auction Update Message (0xD1)"
  end
  if value == 0xAD then
    return "Message Type: Auction Notification Message (0xAD)"
  end
  if value == 0xAE then
    return "Message Type: Auction Cancel Message (0xAE)"
  end
  if value == 0xDF then
    return "Message Type: Auction Trade Message (0xDF)"
  end
  if value == 0xDE then
    return "Message Type: Auction Liquidity Message (0xDE)"
  end
  if value == 0xD2 then
    return "Message Type: Width Update Message (0xD2)"
  end
  if value == 0xDA then
    return "Message Type: Futures Instrument Definition Message (0xDA)"
  end
  if value == 0xDB then
    return "Message Type: Options Instrument Definition Message (0xDB)"
  end
  if value == 0xDC then
    return "Message Type: Width Update Message (0xDC)"
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

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_europe_cedxmulticast_pitch_v1_11_size_of.message_length = 1

-- Display: Message Length
cboe_europe_cedxmulticast_pitch_v1_11_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_europe_cedxmulticast_pitch_v1_11_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.message_length

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.message_type

  return index
end

-- Display: Message Header
cboe_europe_cedxmulticast_pitch_v1_11_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 32 values
  index, message_type = cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.message_header, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
cboe_europe_cedxmulticast_pitch_v1_11_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 32 branches
  index = cboe_europe_cedxmulticast_pitch_v1_11_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_europe_cedxmulticast_pitch_v1_11_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.message(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.message, range, display)
  end

  cboe_europe_cedxmulticast_pitch_v1_11_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Sequence
cboe_europe_cedxmulticast_pitch_v1_11_size_of.sequence = 4

-- Display: Sequence
cboe_europe_cedxmulticast_pitch_v1_11_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_europe_cedxmulticast_pitch_v1_11_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_europe_cedxmulticast_pitch_v1_11_size_of.unit = 1

-- Display: Unit
cboe_europe_cedxmulticast_pitch_v1_11_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_europe_cedxmulticast_pitch_v1_11_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_europe_cedxmulticast_pitch_v1_11_size_of.count = 1

-- Display: Count
cboe_europe_cedxmulticast_pitch_v1_11_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_europe_cedxmulticast_pitch_v1_11_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_europe_cedxmulticast_pitch_v1_11_size_of.length = 2

-- Display: Length
cboe_europe_cedxmulticast_pitch_v1_11_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_europe_cedxmulticast_pitch_v1_11_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_europe_cedxmulticast_pitch_v1_11_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.length

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.count

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.unit

  index = index + cboe_europe_cedxmulticast_pitch_v1_11_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_europe_cedxmulticast_pitch_v1_11_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
cboe_europe_cedxmulticast_pitch_v1_11_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_europe_cedxmulticast_pitch_v1_11_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_europe_cedxmulticast_pitch_v1_11_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_europe_cedxmulticast_pitch_v1_11_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_europe_cedxmulticast_pitch_v1_11_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_europe_cedxmulticast_pitch_v1_11_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = cboe_europe_cedxmulticast_pitch_v1_11_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11_display.packet_header(buffer, packet, parent)
    parent = parent:add(cboe_europe_cedxmulticast_pitch_v1_11.fields.packet_header, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
cboe_europe_cedxmulticast_pitch_v1_11_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_europe_cedxmulticast_pitch_v1_11_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Message: Struct of 2 fields
    index = cboe_europe_cedxmulticast_pitch_v1_11_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_europe_cedxmulticast_pitch_v1_11.init()
end

-- Dissector for Cboe Europe CedxMulticast Pitch 1.11
function cboe_europe_cedxmulticast_pitch_v1_11.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_europe_cedxmulticast_pitch_v1_11.name

  -- Dissect protocol
  local protocol = parent:add(cboe_europe_cedxmulticast_pitch_v1_11, buffer(), cboe_europe_cedxmulticast_pitch_v1_11.description, "("..buffer:len().." Bytes)")
  return cboe_europe_cedxmulticast_pitch_v1_11_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_europe_cedxmulticast_pitch_v1_11)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_europe_cedxmulticast_pitch_v1_11_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Europe CedxMulticast Pitch 1.11
local function cboe_europe_cedxmulticast_pitch_v1_11_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_europe_cedxmulticast_pitch_v1_11_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_europe_cedxmulticast_pitch_v1_11
  cboe_europe_cedxmulticast_pitch_v1_11.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Europe CedxMulticast Pitch 1.11
cboe_europe_cedxmulticast_pitch_v1_11:register_heuristic("udp", cboe_europe_cedxmulticast_pitch_v1_11_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.11
--   Date: Monday, February 27, 2023
--   Specification: Cboe_Europe_CEDX_MCP_Specification.pdf
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
