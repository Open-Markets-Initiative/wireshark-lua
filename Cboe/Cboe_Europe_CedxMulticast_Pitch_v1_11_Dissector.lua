-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Europe CedxMulticast Pitch 1.11 Protocol
local omi_cboe_europe_cedxmulticast_pitch_v1_11 = Proto("Cboe.Europe.CedxMulticast.Pitch.v1.11.Lua", "Cboe Europe CedxMulticast Pitch 1.11")

-- Protocol table
local cboe_europe_cedxmulticast_pitch_v1_11 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Europe CedxMulticast Pitch 1.11 Fields
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.algorithmicindicator", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.algorithmic_trade = ProtoField.new("Algorithmic Trade", "cboe.europe.cedxmulticast.pitch.v1.11.algorithmictrade", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.europe.cedxmulticast.pitch.v1.11.auctionendoffset", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_id = ProtoField.new("Auction Id", "cboe.europe.cedxmulticast.pitch.v1.11.auctionid", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.europe.cedxmulticast.pitch.v1.11.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_opening_type = ProtoField.new("Auction Opening Type", "cboe.europe.cedxmulticast.pitch.v1.11.auctionopeningtype", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_type = ProtoField.new("Auction Type", "cboe.europe.cedxmulticast.pitch.v1.11.auctiontype", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.benchmark_reference_price_indicator = ProtoField.new("Benchmark Reference Price Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.benchmarkreferencepriceindicator", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.block_volume = ProtoField.new("Block Volume", "cboe.europe.cedxmulticast.pitch.v1.11.blockvolume", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.europe.cedxmulticast.pitch.v1.11.buycontracts", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.call_put = ProtoField.new("Call Put", "cboe.europe.cedxmulticast.pitch.v1.11.callput", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.canceled_contracts_binary_2 = ProtoField.new("Canceled Contracts Binary 2", "cboe.europe.cedxmulticast.pitch.v1.11.canceledcontractsbinary2", ftypes.UINT16)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.canceled_contracts_binary_4 = ProtoField.new("Canceled Contracts Binary 4", "cboe.europe.cedxmulticast.pitch.v1.11.canceledcontractsbinary4", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.cboe_trade_flags = ProtoField.new("Cboe Trade Flags", "cboe.europe.cedxmulticast.pitch.v1.11.cboetradeflags", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.close_price = ProtoField.new("Close Price", "cboe.europe.cedxmulticast.pitch.v1.11.closeprice", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.europe.cedxmulticast.pitch.v1.11.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.europe.cedxmulticast.pitch.v1.11.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.contract_size = ProtoField.new("Contract Size", "cboe.europe.cedxmulticast.pitch.v1.11.contractsize", ftypes.UINT16)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_binary_4 = ProtoField.new("Contracts Binary 4", "cboe.europe.cedxmulticast.pitch.v1.11.contractsbinary4", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_binary_8 = ProtoField.new("Contracts Binary 8", "cboe.europe.cedxmulticast.pitch.v1.11.contractsbinary8", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_short = ProtoField.new("Contracts Short", "cboe.europe.cedxmulticast.pitch.v1.11.contractsshort", ftypes.UINT16)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.count = ProtoField.new("Count", "cboe.europe.cedxmulticast.pitch.v1.11.count", ftypes.UINT8)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.crossing_trade = ProtoField.new("Crossing Trade", "cboe.europe.cedxmulticast.pitch.v1.11.crossingtrade", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.currency = ProtoField.new("Currency", "cboe.europe.cedxmulticast.pitch.v1.11.currency", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.customerindicator", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.deferral_or_enrichment_type = ProtoField.new("Deferral Or Enrichment Type", "cboe.europe.cedxmulticast.pitch.v1.11.deferralorenrichmenttype", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.duplicativeindicator", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.ecrp_volume = ProtoField.new("Ecrp Volume", "cboe.europe.cedxmulticast.pitch.v1.11.ecrpvolume", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.ex_cum_dividend = ProtoField.new("Ex Cum Dividend", "cboe.europe.cedxmulticast.pitch.v1.11.excumdividend", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.europe.cedxmulticast.pitch.v1.11.executedquantity", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_flags = ProtoField.new("Execution Flags", "cboe.europe.cedxmulticast.pitch.v1.11.executionflags", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_id = ProtoField.new("Execution Id", "cboe.europe.cedxmulticast.pitch.v1.11.executionid", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.europe.cedxmulticast.pitch.v1.11.executionvenue", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.expiration_date = ProtoField.new("Expiration Date", "cboe.europe.cedxmulticast.pitch.v1.11.expirationdate", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.extended_trade_flags = ProtoField.new("Extended Trade Flags", "cboe.europe.cedxmulticast.pitch.v1.11.extendedtradeflags", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.high_price_binary_price_8 = ProtoField.new("High Price Binary Price 8", "cboe.europe.cedxmulticast.pitch.v1.11.highpricebinaryprice8", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.high_price_bit_1 = ProtoField.new("High Price Bit 1", "cboe.europe.cedxmulticast.pitch.v1.11.highpricebit1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.europe.cedxmulticast.pitch.v1.11.indicativeprice", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.is_fast = ProtoField.new("Is Fast", "cboe.europe.cedxmulticast.pitch.v1.11.isfast", ftypes.UINT8)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.issue = ProtoField.new("Issue", "cboe.europe.cedxmulticast.pitch.v1.11.issue", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.length = ProtoField.new("Length", "cboe.europe.cedxmulticast.pitch.v1.11.length", ftypes.UINT16)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.listing_state = ProtoField.new("Listing State", "cboe.europe.cedxmulticast.pitch.v1.11.listingstate", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.low_price_binary_price_8 = ProtoField.new("Low Price Binary Price 8", "cboe.europe.cedxmulticast.pitch.v1.11.lowpricebinaryprice8", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.low_price_bit_1 = ProtoField.new("Low Price Bit 1", "cboe.europe.cedxmulticast.pitch.v1.11.lowpricebit1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.europe.cedxmulticast.pitch.v1.11.marketmechanism", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message = ProtoField.new("Message", "cboe.europe.cedxmulticast.pitch.v1.11.message", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message_header = ProtoField.new("Message Header", "cboe.europe.cedxmulticast.pitch.v1.11.messageheader", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message_length = ProtoField.new("Message Length", "cboe.europe.cedxmulticast.pitch.v1.11.messagelength", ftypes.UINT8)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message_type = ProtoField.new("Message Type", "cboe.europe.cedxmulticast.pitch.v1.11.messagetype", ftypes.UINT8)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.modification_indicator = ProtoField.new("Modification Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.modificationindicator", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.multiplier = ProtoField.new("Multiplier", "cboe.europe.cedxmulticast.pitch.v1.11.multiplier", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.negotiated_trade = ProtoField.new("Negotiated Trade", "cboe.europe.cedxmulticast.pitch.v1.11.negotiatedtrade", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.off_book_automated_indicator = ProtoField.new("Off Book Automated Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.offbookautomatedindicator", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.open_and_close_price = ProtoField.new("Open And Close Price", "cboe.europe.cedxmulticast.pitch.v1.11.openandcloseprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.open_interest = ProtoField.new("Open Interest", "cboe.europe.cedxmulticast.pitch.v1.11.openinterest", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.open_price = ProtoField.new("Open Price", "cboe.europe.cedxmulticast.pitch.v1.11.openprice", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.europe.cedxmulticast.pitch.v1.11.openingcondition", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.order_id = ProtoField.new("Order Id", "cboe.europe.cedxmulticast.pitch.v1.11.orderid", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.packet = ProtoField.new("Packet", "cboe.europe.cedxmulticast.pitch.v1.11.packet", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.packet_header = ProtoField.new("Packet Header", "cboe.europe.cedxmulticast.pitch.v1.11.packetheader", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.participant_id = ProtoField.new("Participant Id", "cboe.europe.cedxmulticast.pitch.v1.11.participantid", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.payload = ProtoField.new("Payload", "cboe.europe.cedxmulticast.pitch.v1.11.payload", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price = ProtoField.new("Price", "cboe.europe.cedxmulticast.pitch.v1.11.price", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_formation_discovery_process = ProtoField.new("Price Formation Discovery Process", "cboe.europe.cedxmulticast.pitch.v1.11.priceformationdiscoveryprocess", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_increment = ProtoField.new("Price Increment", "cboe.europe.cedxmulticast.pitch.v1.11.priceincrement", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level = ProtoField.new("Price Level", "cboe.europe.cedxmulticast.pitch.v1.11.pricelevel", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_count = ProtoField.new("Price Level Count", "cboe.europe.cedxmulticast.pitch.v1.11.pricelevelcount", ftypes.UINT8)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_group = ProtoField.new("Price Level Group", "cboe.europe.cedxmulticast.pitch.v1.11.pricelevelgroup", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_short = ProtoField.new("Price Short", "cboe.europe.cedxmulticast.pitch.v1.11.priceshort", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.product_code_alphanumeric_6 = ProtoField.new("Product Code Alphanumeric 6", "cboe.europe.cedxmulticast.pitch.v1.11.productcodealphanumeric6", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.product_code_alphanumeric_8 = ProtoField.new("Product Code Alphanumeric 8", "cboe.europe.cedxmulticast.pitch.v1.11.productcodealphanumeric8", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.publication_mode_deferral_reason = ProtoField.new("Publication Mode Deferral Reason", "cboe.europe.cedxmulticast.pitch.v1.11.publicationmodedeferralreason", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.quantity = ProtoField.new("Quantity", "cboe.europe.cedxmulticast.pitch.v1.11.quantity", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.europe.cedxmulticast.pitch.v1.11.quantityshort", ftypes.UINT16)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reference_price = ProtoField.new("Reference Price", "cboe.europe.cedxmulticast.pitch.v1.11.referenceprice", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.europe.cedxmulticast.pitch.v1.11.remainingquantity", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reserved = ProtoField.new("Reserved", "cboe.europe.cedxmulticast.pitch.v1.11.reserved", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.europe.cedxmulticast.pitch.v1.11.reservedflags", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.europe.cedxmulticast.pitch.v1.11.sellcontracts", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.sequence = ProtoField.new("Sequence", "cboe.europe.cedxmulticast.pitch.v1.11.sequence", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.settlement_price = ProtoField.new("Settlement Price", "cboe.europe.cedxmulticast.pitch.v1.11.settlementprice", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.side = ProtoField.new("Side", "cboe.europe.cedxmulticast.pitch.v1.11.side", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.europe.cedxmulticast.pitch.v1.11.sideindicator", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.special_dividend = ProtoField.new("Special Dividend", "cboe.europe.cedxmulticast.pitch.v1.11.specialdividend", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.status = ProtoField.new("Status", "cboe.europe.cedxmulticast.pitch.v1.11.status", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.strike_price = ProtoField.new("Strike Price", "cboe.europe.cedxmulticast.pitch.v1.11.strikeprice", ftypes.DOUBLE)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.summary_flags = ProtoField.new("Summary Flags", "cboe.europe.cedxmulticast.pitch.v1.11.summaryflags", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_alphanumeric_6 = ProtoField.new("Symbol Alphanumeric 6", "cboe.europe.cedxmulticast.pitch.v1.11.symbolalphanumeric6", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_alphanumeric_8 = ProtoField.new("Symbol Alphanumeric 8", "cboe.europe.cedxmulticast.pitch.v1.11.symbolalphanumeric8", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_printable_ascii_6 = ProtoField.new("Symbol Printable Ascii 6", "cboe.europe.cedxmulticast.pitch.v1.11.symbolprintableascii6", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.europe.cedxmulticast.pitch.v1.11.symbolshort", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.time = ProtoField.new("Time", "cboe.europe.cedxmulticast.pitch.v1.11.time", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.time_offset = ProtoField.new("Time Offset", "cboe.europe.cedxmulticast.pitch.v1.11.timeoffset", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.total_volume = ProtoField.new("Total Volume", "cboe.europe.cedxmulticast.pitch.v1.11.totalvolume", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_date = ProtoField.new("Trade Date", "cboe.europe.cedxmulticast.pitch.v1.11.tradedate", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.europe.cedxmulticast.pitch.v1.11.tradeflags", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_id = ProtoField.new("Trade Id", "cboe.europe.cedxmulticast.pitch.v1.11.tradeid", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_timestamp = ProtoField.new("Trade Timestamp", "cboe.europe.cedxmulticast.pitch.v1.11.tradetimestamp", ftypes.UINT64)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.europe.cedxmulticast.pitch.v1.11.tradingmode", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.europe.cedxmulticast.pitch.v1.11.transactioncategory", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.unit = ProtoField.new("Unit", "cboe.europe.cedxmulticast.pitch.v1.11.unit", ftypes.UINT8)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.unused_1 = ProtoField.new("Unused 1", "cboe.europe.cedxmulticast.pitch.v1.11.unused1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.unused_3 = ProtoField.new("Unused 3", "cboe.europe.cedxmulticast.pitch.v1.11.unused3", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.volume = ProtoField.new("Volume", "cboe.europe.cedxmulticast.pitch.v1.11.volume", ftypes.UINT32)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.width_type = ProtoField.new("Width Type", "cboe.europe.cedxmulticast.pitch.v1.11.widthtype", ftypes.UINT8)

-- Cboe Europe CedxMulticast Pitch 1.11 messages
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.europe.cedxmulticast.pitch.v1.11.addorderlongmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.europe.cedxmulticast.pitch.v1.11.addordershortmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctioncancelmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_liquidity_message = ProtoField.new("Auction Liquidity Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctionliquiditymessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctionnotificationmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctionsummarymessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.europe.cedxmulticast.pitch.v1.11.auctiontrademessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.europe.cedxmulticast.pitch.v1.11.deleteordermessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.end_of_day_summary_message = ProtoField.new("End Of Day Summary Message", "cboe.europe.cedxmulticast.pitch.v1.11.endofdaysummarymessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.end_of_session = ProtoField.new("End Of Session", "cboe.europe.cedxmulticast.pitch.v1.11.endofsession", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.fast_status_message = ProtoField.new("Fast Status Message", "cboe.europe.cedxmulticast.pitch.v1.11.faststatusmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.futures_instrument_definition_message = ProtoField.new("Futures Instrument Definition Message", "cboe.europe.cedxmulticast.pitch.v1.11.futuresinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.europe.cedxmulticast.pitch.v1.11.modifyorderlongmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.europe.cedxmulticast.pitch.v1.11.modifyordershortmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.opening_auction_update_message = ProtoField.new("Opening Auction Update Message", "cboe.europe.cedxmulticast.pitch.v1.11.openingauctionupdatemessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.options_instrument_definition_message = ProtoField.new("Options Instrument Definition Message", "cboe.europe.cedxmulticast.pitch.v1.11.optionsinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.europe.cedxmulticast.pitch.v1.11.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.europe.cedxmulticast.pitch.v1.11.orderexecutedmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.europe.cedxmulticast.pitch.v1.11.reducesizelongmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.europe.cedxmulticast.pitch.v1.11.reducesizeshortmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.settlement_message = ProtoField.new("Settlement Message", "cboe.europe.cedxmulticast.pitch.v1.11.settlementmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.time_message = ProtoField.new("Time Message", "cboe.europe.cedxmulticast.pitch.v1.11.timemessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradebreakmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_extended_message = ProtoField.new("Trade Extended Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradeextendedmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradelongmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradeshortmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.europe.cedxmulticast.pitch.v1.11.tradingstatusmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.europe.cedxmulticast.pitch.v1.11.transactionbeginmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.europe.cedxmulticast.pitch.v1.11.unitclearmessage", ftypes.STRING)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.width_update_message = ProtoField.new("Width Update Message", "cboe.europe.cedxmulticast.pitch.v1.11.widthupdatemessage", ftypes.STRING)

-- Cboe Europe CedxMulticast Pitch 1.11 generated fields
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message_index = ProtoField.new("Message Index", "cboe.europe.cedxmulticast.pitch.v1.11.messageindex", ftypes.UINT16)
omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_group_index = ProtoField.new("Price Level Group Index", "cboe.europe.cedxmulticast.pitch.v1.11.pricelevelgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
show.extended_trade_flags = true
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
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_liquidity_message = Pref.bool("Show Auction Liquidity Message", show.auction_liquidity_message, "Parse and add Auction Liquidity Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_day_summary_message = Pref.bool("Show End Of Day Summary Message", show.end_of_day_summary_message, "Parse and add End Of Day Summary Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_session = Pref.bool("Show End Of Session", show.end_of_session, "Parse and add End Of Session to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_execution_flags = Pref.bool("Show Execution Flags", show.execution_flags, "Parse and add Execution Flags to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_extended_trade_flags = Pref.bool("Show Extended Trade Flags", show.extended_trade_flags, "Parse and add Extended Trade Flags to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_fast_status_message = Pref.bool("Show Fast Status Message", show.fast_status_message, "Parse and add Fast Status Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_futures_instrument_definition_message = Pref.bool("Show Futures Instrument Definition Message", show.futures_instrument_definition_message, "Parse and add Futures Instrument Definition Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_opening_auction_update_message = Pref.bool("Show Opening Auction Update Message", show.opening_auction_update_message, "Parse and add Opening Auction Update Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_options_instrument_definition_message = Pref.bool("Show Options Instrument Definition Message", show.options_instrument_definition_message, "Parse and add Options Instrument Definition Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_price_level_group = Pref.bool("Show Price Level Group", show.price_level_group, "Parse and add Price Level Group to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_settlement_message = Pref.bool("Show Settlement Message", show.settlement_message, "Parse and add Settlement Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_summary_flags = Pref.bool("Show Summary Flags", show.summary_flags, "Parse and add Summary Flags to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_extended_message = Pref.bool("Show Trade Extended Message", show.trade_extended_message, "Parse and add Trade Extended Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_transaction_begin_message = Pref.bool("Show Transaction Begin Message", show.transaction_begin_message, "Parse and add Transaction Begin Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_width_update_message = Pref.bool("Show Width Update Message", show.width_update_message, "Parse and add Width Update Message to protocol tree")
omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_long_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_long_message then
    show.add_order_long_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_short_message then
    show.add_order_short_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_cancel_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_cancel_message then
    show.auction_cancel_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_liquidity_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_liquidity_message then
    show.auction_liquidity_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_liquidity_message
    changed = true
  end
  if show.auction_notification_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_notification_message then
    show.auction_notification_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_summary_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_summary_message then
    show.auction_summary_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_trade_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_trade_message then
    show.auction_trade_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_auction_trade_message
    changed = true
  end
  if show.delete_order_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_delete_order_message then
    show.delete_order_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_day_summary_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_day_summary_message then
    show.end_of_day_summary_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_day_summary_message
    changed = true
  end
  if show.end_of_session ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_session then
    show.end_of_session = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_end_of_session
    changed = true
  end
  if show.execution_flags ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_execution_flags then
    show.execution_flags = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_execution_flags
    changed = true
  end
  if show.extended_trade_flags ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_extended_trade_flags then
    show.extended_trade_flags = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_extended_trade_flags
    changed = true
  end
  if show.fast_status_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_fast_status_message then
    show.fast_status_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_fast_status_message
    changed = true
  end
  if show.futures_instrument_definition_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_futures_instrument_definition_message then
    show.futures_instrument_definition_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_futures_instrument_definition_message
    changed = true
  end
  if show.message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message then
    show.message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message_header then
    show.message_header = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_long_message then
    show.modify_order_long_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_short_message then
    show.modify_order_short_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_modify_order_short_message
    changed = true
  end
  if show.opening_auction_update_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_opening_auction_update_message then
    show.opening_auction_update_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_opening_auction_update_message
    changed = true
  end
  if show.options_instrument_definition_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_options_instrument_definition_message then
    show.options_instrument_definition_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_options_instrument_definition_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_message then
    show.order_executed_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet then
    show.packet = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet_header then
    show.packet_header = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_packet_header
    changed = true
  end
  if show.price_level_group ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_price_level_group then
    show.price_level_group = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_price_level_group
    changed = true
  end
  if show.reduce_size_long_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.settlement_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_settlement_message then
    show.settlement_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_settlement_message
    changed = true
  end
  if show.summary_flags ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_summary_flags then
    show.summary_flags = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_summary_flags
    changed = true
  end
  if show.time_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_time_message then
    show.time_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_time_message
    changed = true
  end
  if show.trade_break_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_break_message then
    show.trade_break_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_extended_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_extended_message then
    show.trade_extended_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_extended_message
    changed = true
  end
  if show.trade_flags ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_flags then
    show.trade_flags = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_flags
    changed = true
  end
  if show.trade_long_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_long_message then
    show.trade_long_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_short_message then
    show.trade_short_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trading_status_message then
    show.trading_status_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_trading_status_message
    changed = true
  end
  if show.transaction_begin_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_transaction_begin_message then
    show.transaction_begin_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_transaction_begin_message
    changed = true
  end
  if show.unit_clear_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_unit_clear_message then
    show.unit_clear_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_unit_clear_message
    changed = true
  end
  if show.width_update_message ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_width_update_message then
    show.width_update_message = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_width_update_message
    changed = true
  end
  if show.payload ~= omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_payload then
    show.payload = omi_cboe_europe_cedxmulticast_pitch_v1_11.prefs.show_payload
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

-- Summary Flags
cboe_europe_cedxmulticast_pitch_v1_11.summary_flags = {}

-- Size Of: Summary Flags
cboe_europe_cedxmulticast_pitch_v1_11.summary_flags.size = 1

-- Display: Summary Flags
cboe_europe_cedxmulticast_pitch_v1_11.summary_flags.display = function(buffer, packet, parent)
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
cboe_europe_cedxmulticast_pitch_v1_11.summary_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved Flags: 3 Bit
  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reserved_flags, buffer(offset, 1))

  -- Open And Close Price: 1 Bit
  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.open_and_close_price, buffer(offset, 1))

  -- Unused 3: 1 Bit
  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.unused_3, buffer(offset, 1))

  -- Low Price Bit 1: 1 Bit
  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.low_price_bit_1, buffer(offset, 1))

  -- Unused 1: 1 Bit
  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.unused_1, buffer(offset, 1))

  -- High Price Bit 1: 1 Bit
  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.high_price_bit_1, buffer(offset, 1))
end

-- Dissect: Summary Flags
cboe_europe_cedxmulticast_pitch_v1_11.summary_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.summary_flags.display(range, packet, parent)
  local element = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.summary_flags, range, display)

  if show.summary_flags then
    cboe_europe_cedxmulticast_pitch_v1_11.summary_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Ecrp Volume
cboe_europe_cedxmulticast_pitch_v1_11.ecrp_volume = {}

-- Size Of: Ecrp Volume
cboe_europe_cedxmulticast_pitch_v1_11.ecrp_volume.size = 4

-- Display: Ecrp Volume
cboe_europe_cedxmulticast_pitch_v1_11.ecrp_volume.display = function(value)
  return "Ecrp Volume: "..value
end

-- Dissect: Ecrp Volume
cboe_europe_cedxmulticast_pitch_v1_11.ecrp_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.ecrp_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.ecrp_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.ecrp_volume, range, value, display)

  return offset + length, value
end

-- Block Volume
cboe_europe_cedxmulticast_pitch_v1_11.block_volume = {}

-- Size Of: Block Volume
cboe_europe_cedxmulticast_pitch_v1_11.block_volume.size = 4

-- Display: Block Volume
cboe_europe_cedxmulticast_pitch_v1_11.block_volume.display = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
cboe_europe_cedxmulticast_pitch_v1_11.block_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.block_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.block_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_europe_cedxmulticast_pitch_v1_11.total_volume = {}

-- Size Of: Total Volume
cboe_europe_cedxmulticast_pitch_v1_11.total_volume.size = 4

-- Display: Total Volume
cboe_europe_cedxmulticast_pitch_v1_11.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_europe_cedxmulticast_pitch_v1_11.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Close Price
cboe_europe_cedxmulticast_pitch_v1_11.close_price = {}

-- Size Of: Close Price
cboe_europe_cedxmulticast_pitch_v1_11.close_price.size = 8

-- Display: Close Price
cboe_europe_cedxmulticast_pitch_v1_11.close_price.display = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
cboe_europe_cedxmulticast_pitch_v1_11.close_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.close_price, range, value, display)

  return offset + length, value
end

-- Open Price
cboe_europe_cedxmulticast_pitch_v1_11.open_price = {}

-- Size Of: Open Price
cboe_europe_cedxmulticast_pitch_v1_11.open_price.size = 8

-- Display: Open Price
cboe_europe_cedxmulticast_pitch_v1_11.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
cboe_europe_cedxmulticast_pitch_v1_11.open_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.open_price, range, value, display)

  return offset + length, value
end

-- Low Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11.low_price_binary_price_8 = {}

-- Size Of: Low Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11.low_price_binary_price_8.size = 8

-- Display: Low Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11.low_price_binary_price_8.display = function(value)
  return "Low Price Binary Price 8: "..value
end

-- Dissect: Low Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11.low_price_binary_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.low_price_binary_price_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.low_price_binary_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.low_price_binary_price_8, range, value, display)

  return offset + length, value
end

-- High Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11.high_price_binary_price_8 = {}

-- Size Of: High Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11.high_price_binary_price_8.size = 8

-- Display: High Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11.high_price_binary_price_8.display = function(value)
  return "High Price Binary Price 8: "..value
end

-- Dissect: High Price Binary Price 8
cboe_europe_cedxmulticast_pitch_v1_11.high_price_binary_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.high_price_binary_price_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.high_price_binary_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.high_price_binary_price_8, range, value, display)

  return offset + length, value
end

-- Open Interest
cboe_europe_cedxmulticast_pitch_v1_11.open_interest = {}

-- Size Of: Open Interest
cboe_europe_cedxmulticast_pitch_v1_11.open_interest.size = 4

-- Display: Open Interest
cboe_europe_cedxmulticast_pitch_v1_11.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_europe_cedxmulticast_pitch_v1_11.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.open_interest.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_europe_cedxmulticast_pitch_v1_11.trade_date = {}

-- Size Of: Trade Date
cboe_europe_cedxmulticast_pitch_v1_11.trade_date.size = 4

-- Display: Trade Date
cboe_europe_cedxmulticast_pitch_v1_11.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_europe_cedxmulticast_pitch_v1_11.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Symbol Printable Ascii 6
cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6 = {}

-- Size Of: Symbol Printable Ascii 6
cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6.size = 6

-- Display: Symbol Printable Ascii 6
cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6.display = function(value)
  return "Symbol Printable Ascii 6: "..value
end

-- Dissect: Symbol Printable Ascii 6
cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_printable_ascii_6, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_europe_cedxmulticast_pitch_v1_11.time_offset = {}

-- Size Of: Time Offset
cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size = 4

-- Display: Time Offset
cboe_europe_cedxmulticast_pitch_v1_11.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.time_offset, range, value, display)

  return offset + length, value
end

-- End Of Day Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message = {}

-- Size Of: End Of Day Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.trade_date.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.open_interest.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.high_price_binary_price_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.low_price_binary_price_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.open_price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.close_price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.total_volume.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.block_volume.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.ecrp_volume.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.summary_flags.size;

-- Display: End Of Day Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: 6 Byte Ascii String
  index, symbol_printable_ascii_6 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_europe_cedxmulticast_pitch_v1_11.trade_date.dissect(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Unsigned Fixed Width Integer
  index, open_interest = cboe_europe_cedxmulticast_pitch_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- High Price Binary Price 8: 8 Byte Unsigned Fixed Width Integer
  index, high_price_binary_price_8 = cboe_europe_cedxmulticast_pitch_v1_11.high_price_binary_price_8.dissect(buffer, index, packet, parent)

  -- Low Price Binary Price 8: 8 Byte Unsigned Fixed Width Integer
  index, low_price_binary_price_8 = cboe_europe_cedxmulticast_pitch_v1_11.low_price_binary_price_8.dissect(buffer, index, packet, parent)

  -- Open Price: 8 Byte Unsigned Fixed Width Integer
  index, open_price = cboe_europe_cedxmulticast_pitch_v1_11.open_price.dissect(buffer, index, packet, parent)

  -- Close Price: 8 Byte Unsigned Fixed Width Integer
  index, close_price = cboe_europe_cedxmulticast_pitch_v1_11.close_price.dissect(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = cboe_europe_cedxmulticast_pitch_v1_11.total_volume.dissect(buffer, index, packet, parent)

  -- Block Volume: 4 Byte Unsigned Fixed Width Integer
  index, block_volume = cboe_europe_cedxmulticast_pitch_v1_11.block_volume.dissect(buffer, index, packet, parent)

  -- Ecrp Volume: 4 Byte Unsigned Fixed Width Integer
  index, ecrp_volume = cboe_europe_cedxmulticast_pitch_v1_11.ecrp_volume.dissect(buffer, index, packet, parent)

  -- Summary Flags: Struct of 6 fields
  index, summary_flags = cboe_europe_cedxmulticast_pitch_v1_11.summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_day_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue
cboe_europe_cedxmulticast_pitch_v1_11.issue = {}

-- Size Of: Issue
cboe_europe_cedxmulticast_pitch_v1_11.issue.size = 1

-- Display: Issue
cboe_europe_cedxmulticast_pitch_v1_11.issue.display = function(value)
  if value == "S" then
    return "Issue: Initial Settlement (S)"
  end
  if value == "R" then
    return "Issue: Reissued Settlement (R)"
  end

  return "Issue: Unknown("..value..")"
end

-- Dissect: Issue
cboe_europe_cedxmulticast_pitch_v1_11.issue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.issue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.issue, range, value, display)

  return offset + length, value
end

-- Settlement Price
cboe_europe_cedxmulticast_pitch_v1_11.settlement_price = {}

-- Size Of: Settlement Price
cboe_europe_cedxmulticast_pitch_v1_11.settlement_price.size = 8

-- Display: Settlement Price
cboe_europe_cedxmulticast_pitch_v1_11.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
cboe_europe_cedxmulticast_pitch_v1_11.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.settlement_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Message
cboe_europe_cedxmulticast_pitch_v1_11.settlement_message = {}

-- Size Of: Settlement Message
cboe_europe_cedxmulticast_pitch_v1_11.settlement_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.trade_date.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.settlement_price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.issue.size;

-- Display: Settlement Message
cboe_europe_cedxmulticast_pitch_v1_11.settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Message
cboe_europe_cedxmulticast_pitch_v1_11.settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: 6 Byte Ascii String
  index, symbol_printable_ascii_6 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_printable_ascii_6.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_europe_cedxmulticast_pitch_v1_11.trade_date.dissect(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Unsigned Fixed Width Integer
  index, settlement_price = cboe_europe_cedxmulticast_pitch_v1_11.settlement_price.dissect(buffer, index, packet, parent)

  -- Issue: 1 Byte Ascii String Enum with 2 values
  index, issue = cboe_europe_cedxmulticast_pitch_v1_11.issue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Message
cboe_europe_cedxmulticast_pitch_v1_11.settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.settlement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.settlement_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Id
cboe_europe_cedxmulticast_pitch_v1_11.execution_id = {}

-- Size Of: Execution Id
cboe_europe_cedxmulticast_pitch_v1_11.execution_id.size = 8

-- Display: Execution Id
cboe_europe_cedxmulticast_pitch_v1_11.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_europe_cedxmulticast_pitch_v1_11.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Trade Break Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message = {}

-- Size Of: Trade Break Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_id.size;

-- Display: Trade Break Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Multiplier
cboe_europe_cedxmulticast_pitch_v1_11.multiplier = {}

-- Size Of: Multiplier
cboe_europe_cedxmulticast_pitch_v1_11.multiplier.size = 4

-- Display: Multiplier
cboe_europe_cedxmulticast_pitch_v1_11.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Translate: Multiplier
cboe_europe_cedxmulticast_pitch_v1_11.multiplier.translate = function(raw)
  return raw/10
end

-- Dissect: Multiplier
cboe_europe_cedxmulticast_pitch_v1_11.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.multiplier.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Width Type
cboe_europe_cedxmulticast_pitch_v1_11.width_type = {}

-- Size Of: Width Type
cboe_europe_cedxmulticast_pitch_v1_11.width_type.size = 1

-- Display: Width Type
cboe_europe_cedxmulticast_pitch_v1_11.width_type.display = function(value)
  if value == R then
    return "Width Type: Regular (R)"
  end

  return "Width Type: Unknown("..value..")"
end

-- Dissect: Width Type
cboe_europe_cedxmulticast_pitch_v1_11.width_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.width_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.width_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.width_type, range, value, display)

  return offset + length, value
end

-- Product Code Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8 = {}

-- Size Of: Product Code Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.size = 8

-- Display: Product Code Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.display = function(value)
  return "Product Code Alphanumeric 8: "..value
end

-- Dissect: Product Code Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.product_code_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Width Update Message
cboe_europe_cedxmulticast_pitch_v1_11.width_update_message = {}

-- Size Of: Width Update Message
cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.width_type.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.multiplier.size;

-- Display: Width Update Message
cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Width Update Message
cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Product Code Alphanumeric 8: 8 Byte Ascii String
  index, product_code_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Width Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, width_type = cboe_europe_cedxmulticast_pitch_v1_11.width_type.dissect(buffer, index, packet, parent)

  -- Multiplier: 4 Byte Unsigned Fixed Width Integer
  index, multiplier = cboe_europe_cedxmulticast_pitch_v1_11.multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Width Update Message
cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.dissect = function(buffer, offset, packet, parent)
  if show.width_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.width_update_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Increment
cboe_europe_cedxmulticast_pitch_v1_11.price_increment = {}

-- Size Of: Price Increment
cboe_europe_cedxmulticast_pitch_v1_11.price_increment.size = 8

-- Display: Price Increment
cboe_europe_cedxmulticast_pitch_v1_11.price_increment.display = function(value)
  return "Price Increment: "..value
end

-- Translate: Price Increment
cboe_europe_cedxmulticast_pitch_v1_11.price_increment.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Increment
cboe_europe_cedxmulticast_pitch_v1_11.price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.price_increment.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_increment, range, value, display)

  return offset + length, value
end

-- Listing State
cboe_europe_cedxmulticast_pitch_v1_11.listing_state = {}

-- Size Of: Listing State
cboe_europe_cedxmulticast_pitch_v1_11.listing_state.size = 1

-- Display: Listing State
cboe_europe_cedxmulticast_pitch_v1_11.listing_state.display = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11.listing_state.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.listing_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.listing_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.listing_state, range, value, display)

  return offset + length, value
end

-- Contract Size
cboe_europe_cedxmulticast_pitch_v1_11.contract_size = {}

-- Size Of: Contract Size
cboe_europe_cedxmulticast_pitch_v1_11.contract_size.size = 2

-- Display: Contract Size
cboe_europe_cedxmulticast_pitch_v1_11.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_europe_cedxmulticast_pitch_v1_11.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Strike Price
cboe_europe_cedxmulticast_pitch_v1_11.strike_price = {}

-- Size Of: Strike Price
cboe_europe_cedxmulticast_pitch_v1_11.strike_price.size = 8

-- Display: Strike Price
cboe_europe_cedxmulticast_pitch_v1_11.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
cboe_europe_cedxmulticast_pitch_v1_11.strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Price
cboe_europe_cedxmulticast_pitch_v1_11.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.strike_price.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Date
cboe_europe_cedxmulticast_pitch_v1_11.expiration_date = {}

-- Size Of: Expiration Date
cboe_europe_cedxmulticast_pitch_v1_11.expiration_date.size = 4

-- Display: Expiration Date
cboe_europe_cedxmulticast_pitch_v1_11.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
cboe_europe_cedxmulticast_pitch_v1_11.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Call Put
cboe_europe_cedxmulticast_pitch_v1_11.call_put = {}

-- Size Of: Call Put
cboe_europe_cedxmulticast_pitch_v1_11.call_put.size = 1

-- Display: Call Put
cboe_europe_cedxmulticast_pitch_v1_11.call_put.display = function(value)
  if value == "P" then
    return "Call Put: Put (P)"
  end
  if value == "C" then
    return "Call Put: Call (C)"
  end

  return "Call Put: Unknown("..value..")"
end

-- Dissect: Call Put
cboe_europe_cedxmulticast_pitch_v1_11.call_put.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.call_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.call_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.call_put, range, value, display)

  return offset + length, value
end

-- Symbol Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6 = {}

-- Size Of: Symbol Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.size = 6

-- Display: Symbol Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.display = function(value)
  return "Symbol Alphanumeric 6: "..value
end

-- Dissect: Symbol Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_alphanumeric_6, range, value, display)

  return offset + length, value
end

-- Options Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message = {}

-- Size Of: Options Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.call_put.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.expiration_date.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.strike_price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contract_size.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.listing_state.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price_increment.size;

-- Display: Options Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: 6 Byte Ascii String
  index, symbol_alphanumeric_6 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Product Code Alphanumeric 8: 8 Byte Ascii String
  index, product_code_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Call Put: 1 Byte Ascii String Enum with 2 values
  index, call_put = cboe_europe_cedxmulticast_pitch_v1_11.call_put.dissect(buffer, index, packet, parent)

  -- Expiration Date: 4 Byte Unsigned Fixed Width Integer
  index, expiration_date = cboe_europe_cedxmulticast_pitch_v1_11.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Unsigned Fixed Width Integer
  index, strike_price = cboe_europe_cedxmulticast_pitch_v1_11.strike_price.dissect(buffer, index, packet, parent)

  -- Contract Size: 2 Byte Unsigned Fixed Width Integer
  index, contract_size = cboe_europe_cedxmulticast_pitch_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Listing State: 1 Byte Ascii String Enum with 3 values
  index, listing_state = cboe_europe_cedxmulticast_pitch_v1_11.listing_state.dissect(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Unsigned Fixed Width Integer
  index, price_increment = cboe_europe_cedxmulticast_pitch_v1_11.price_increment.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.options_instrument_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.options_instrument_definition_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message = {}

-- Size Of: Futures Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.expiration_date.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contract_size.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.listing_state.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price_increment.size;

-- Display: Futures Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: 6 Byte Ascii String
  index, symbol_alphanumeric_6 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Product Code Alphanumeric 8: 8 Byte Ascii String
  index, product_code_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Expiration Date: 4 Byte Unsigned Fixed Width Integer
  index, expiration_date = cboe_europe_cedxmulticast_pitch_v1_11.expiration_date.dissect(buffer, index, packet, parent)

  -- Contract Size: 2 Byte Unsigned Fixed Width Integer
  index, contract_size = cboe_europe_cedxmulticast_pitch_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Listing State: 1 Byte Ascii String Enum with 3 values
  index, listing_state = cboe_europe_cedxmulticast_pitch_v1_11.listing_state.dissect(buffer, index, packet, parent)

  -- Price Increment: 8 Byte Unsigned Fixed Width Integer
  index, price_increment = cboe_europe_cedxmulticast_pitch_v1_11.price_increment.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Definition Message
cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_instrument_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.futures_instrument_definition_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Volume
cboe_europe_cedxmulticast_pitch_v1_11.volume = {}

-- Size Of: Volume
cboe_europe_cedxmulticast_pitch_v1_11.volume.size = 4

-- Display: Volume
cboe_europe_cedxmulticast_pitch_v1_11.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
cboe_europe_cedxmulticast_pitch_v1_11.volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.volume, range, value, display)

  return offset + length, value
end

-- Price Level
cboe_europe_cedxmulticast_pitch_v1_11.price_level = {}

-- Size Of: Price Level
cboe_europe_cedxmulticast_pitch_v1_11.price_level.size = 8

-- Display: Price Level
cboe_europe_cedxmulticast_pitch_v1_11.price_level.display = function(value)
  return "Price Level: "..value
end

-- Translate: Price Level
cboe_europe_cedxmulticast_pitch_v1_11.price_level.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Level
cboe_europe_cedxmulticast_pitch_v1_11.price_level.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.price_level.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.price_level.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level, range, value, display)

  return offset + length, value
end

-- Price Level Group
cboe_europe_cedxmulticast_pitch_v1_11.price_level_group = {}

-- Size Of: Price Level Group
cboe_europe_cedxmulticast_pitch_v1_11.price_level_group.size =
  cboe_europe_cedxmulticast_pitch_v1_11.price_level.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.volume.size;

-- Display: Price Level Group
cboe_europe_cedxmulticast_pitch_v1_11.price_level_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level Group
cboe_europe_cedxmulticast_pitch_v1_11.price_level_group.fields = function(buffer, offset, packet, parent, price_level_group_index)
  local index = offset

  -- Implicit Price Level Group Index
  if price_level_group_index ~= nil then
    local iteration = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_group_index, price_level_group_index)
    iteration:set_generated()
  end

  -- Price Level: 8 Byte Unsigned Fixed Width Integer
  index, price_level = cboe_europe_cedxmulticast_pitch_v1_11.price_level.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = cboe_europe_cedxmulticast_pitch_v1_11.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level Group
cboe_europe_cedxmulticast_pitch_v1_11.price_level_group.dissect = function(buffer, offset, packet, parent, price_level_group_index)
  if show.price_level_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_group, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.price_level_group.fields(buffer, offset, packet, parent, price_level_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.price_level_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.price_level_group.fields(buffer, offset, packet, parent, price_level_group_index)
  end
end

-- Price Level Count
cboe_europe_cedxmulticast_pitch_v1_11.price_level_count = {}

-- Size Of: Price Level Count
cboe_europe_cedxmulticast_pitch_v1_11.price_level_count.size = 1

-- Display: Price Level Count
cboe_europe_cedxmulticast_pitch_v1_11.price_level_count.display = function(value)
  return "Price Level Count: "..value
end

-- Dissect: Price Level Count
cboe_europe_cedxmulticast_pitch_v1_11.price_level_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.price_level_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.price_level_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_level_count, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_europe_cedxmulticast_pitch_v1_11.auction_id = {}

-- Size Of: Auction Id
cboe_europe_cedxmulticast_pitch_v1_11.auction_id.size = 8

-- Display: Auction Id
cboe_europe_cedxmulticast_pitch_v1_11.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_europe_cedxmulticast_pitch_v1_11.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Liquidity Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message = {}

-- Calculate size of: Auction Liquidity Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size

  index = index + cboe_europe_cedxmulticast_pitch_v1_11.auction_id.size

  index = index + cboe_europe_cedxmulticast_pitch_v1_11.price_level_count.size

  -- Calculate field size from count
  local price_level_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + price_level_group_count * 12

  return index
end

-- Display: Auction Liquidity Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Liquidity Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_europe_cedxmulticast_pitch_v1_11.auction_id.dissect(buffer, index, packet, parent)

  -- Price Level Count: 1 Byte Unsigned Fixed Width Integer
  index, price_level_count = cboe_europe_cedxmulticast_pitch_v1_11.price_level_count.dissect(buffer, index, packet, parent)

  -- Repeating: Price Level Group
  for price_level_group_index = 1, price_level_count do
    index, price_level_group = cboe_europe_cedxmulticast_pitch_v1_11.price_level_group.dissect(buffer, index, packet, parent, price_level_group_index)
  end

  return index
end

-- Dissect: Auction Liquidity Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.auction_liquidity_message then
    local length = cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_liquidity_message, range, display)
  end

  return cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message.fields(buffer, offset, packet, parent)
end

-- Algorithmic Trade
cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade = {}

-- Size Of: Algorithmic Trade
cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade.size = 1

-- Display: Algorithmic Trade
cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade.display = function(value)
  if value == "H" then
    return "Algorithmic Trade: Algorithmic Trade (H)"
  end
  if value == "-" then
    return "Algorithmic Trade: Nonalgorithmic Trade (-)"
  end

  return "Algorithmic Trade: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade
cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.algorithmic_trade, range, value, display)

  return offset + length, value
end

-- Ex Cum Dividend
cboe_europe_cedxmulticast_pitch_v1_11.ex_cum_dividend = {}

-- Size Of: Ex Cum Dividend
cboe_europe_cedxmulticast_pitch_v1_11.ex_cum_dividend.size = 1

-- Display: Ex Cum Dividend
cboe_europe_cedxmulticast_pitch_v1_11.ex_cum_dividend.display = function(value)
  if value == "E" then
    return "Ex Cum Dividend: Ex Cum Special Dividend If Optionally Set By Reporting Party (E)"
  end
  if value == "-" then
    return "Ex Cum Dividend: Not Specified (-)"
  end

  return "Ex Cum Dividend: Unknown("..value..")"
end

-- Dissect: Ex Cum Dividend
cboe_europe_cedxmulticast_pitch_v1_11.ex_cum_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.ex_cum_dividend.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.ex_cum_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.ex_cum_dividend, range, value, display)

  return offset + length, value
end

-- Trading Mode
cboe_europe_cedxmulticast_pitch_v1_11.trading_mode = {}

-- Size Of: Trading Mode
cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.size = 1

-- Display: Trading Mode
cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.display = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Market Mechanism
cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism = {}

-- Size Of: Market Mechanism
cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.size = 1

-- Display: Market Mechanism
cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.display = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Execution Flags
cboe_europe_cedxmulticast_pitch_v1_11.execution_flags = {}

-- Size Of: Execution Flags
cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.size =
  cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.ex_cum_dividend.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade.size;

-- Display: Execution Flags
cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Flags
cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: 1 Byte Ascii String Enum with 7 values
  index, market_mechanism = cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 11 values
  index, trading_mode = cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.dissect(buffer, index, packet, parent)

  -- Ex Cum Dividend: 1 Byte Ascii String Enum with 2 values
  index, ex_cum_dividend = cboe_europe_cedxmulticast_pitch_v1_11.ex_cum_dividend.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_trade = cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Flags
cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.dissect = function(buffer, offset, packet, parent)
  if show.execution_flags then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_flags, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.fields(buffer, offset, packet, parent)
  end
end

-- Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4 = {}

-- Size Of: Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.size = 4

-- Display: Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.display = function(value)
  return "Contracts Binary 4: "..value
end

-- Dissect: Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_binary_4, range, value, display)

  return offset + length, value
end

-- Price
cboe_europe_cedxmulticast_pitch_v1_11.price = {}

-- Size Of: Price
cboe_europe_cedxmulticast_pitch_v1_11.price.size = 8

-- Display: Price
cboe_europe_cedxmulticast_pitch_v1_11.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_europe_cedxmulticast_pitch_v1_11.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_europe_cedxmulticast_pitch_v1_11.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.price.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price, range, value, display)

  return offset + length, value
end

-- Auction Trade Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message = {}

-- Size Of: Auction Trade Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.auction_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.size;

-- Display: Auction Trade Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_europe_cedxmulticast_pitch_v1_11.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11.execution_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11.price.dissect(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message = {}

-- Size Of: Auction Cancel Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.auction_id.size;

-- Display: Auction Cancel Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_europe_cedxmulticast_pitch_v1_11.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction End Offset
cboe_europe_cedxmulticast_pitch_v1_11.auction_end_offset = {}

-- Size Of: Auction End Offset
cboe_europe_cedxmulticast_pitch_v1_11.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_europe_cedxmulticast_pitch_v1_11.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_europe_cedxmulticast_pitch_v1_11.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_europe_cedxmulticast_pitch_v1_11.participant_id = {}

-- Size Of: Participant Id
cboe_europe_cedxmulticast_pitch_v1_11.participant_id.size = 4

-- Display: Participant Id
cboe_europe_cedxmulticast_pitch_v1_11.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_europe_cedxmulticast_pitch_v1_11.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_europe_cedxmulticast_pitch_v1_11.customer_indicator = {}

-- Size Of: Customer Indicator
cboe_europe_cedxmulticast_pitch_v1_11.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_europe_cedxmulticast_pitch_v1_11.customer_indicator.display = function(value)
  return "Customer Indicator: "..value
end

-- Dissect: Customer Indicator
cboe_europe_cedxmulticast_pitch_v1_11.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Side
cboe_europe_cedxmulticast_pitch_v1_11.side = {}

-- Size Of: Side
cboe_europe_cedxmulticast_pitch_v1_11.side.size = 1

-- Display: Side
cboe_europe_cedxmulticast_pitch_v1_11.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
cboe_europe_cedxmulticast_pitch_v1_11.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.side, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_europe_cedxmulticast_pitch_v1_11.auction_type = {}

-- Size Of: Auction Type
cboe_europe_cedxmulticast_pitch_v1_11.auction_type.size = 1

-- Display: Auction Type
cboe_europe_cedxmulticast_pitch_v1_11.auction_type.display = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Auction Notification Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message = {}

-- Size Of: Auction Notification Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.auction_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.auction_type.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.side.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.customer_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.participant_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.auction_end_offset.size;

-- Display: Auction Notification Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: 6 Byte Ascii String
  index, symbol_alphanumeric_6 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_europe_cedxmulticast_pitch_v1_11.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 3 values
  index, auction_type = cboe_europe_cedxmulticast_pitch_v1_11.auction_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index, side = cboe_europe_cedxmulticast_pitch_v1_11.side.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11.price.dissect(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String
  index, customer_indicator = cboe_europe_cedxmulticast_pitch_v1_11.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_europe_cedxmulticast_pitch_v1_11.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = cboe_europe_cedxmulticast_pitch_v1_11.auction_end_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Composite Market Offer Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price = {}

-- Size Of: Composite Market Offer Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price = {}

-- Size Of: Composite Market Bid Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_europe_cedxmulticast_pitch_v1_11.opening_condition = {}

-- Size Of: Opening Condition
cboe_europe_cedxmulticast_pitch_v1_11.opening_condition.size = 1

-- Display: Opening Condition
cboe_europe_cedxmulticast_pitch_v1_11.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_europe_cedxmulticast_pitch_v1_11.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price = {}

-- Size Of: Auction Only Price
cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_europe_cedxmulticast_pitch_v1_11.indicative_price = {}

-- Size Of: Indicative Price
cboe_europe_cedxmulticast_pitch_v1_11.indicative_price.size = 8

-- Display: Indicative Price
cboe_europe_cedxmulticast_pitch_v1_11.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_europe_cedxmulticast_pitch_v1_11.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_europe_cedxmulticast_pitch_v1_11.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.indicative_price.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_europe_cedxmulticast_pitch_v1_11.sell_contracts = {}

-- Size Of: Sell Contracts
cboe_europe_cedxmulticast_pitch_v1_11.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_europe_cedxmulticast_pitch_v1_11.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_europe_cedxmulticast_pitch_v1_11.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_europe_cedxmulticast_pitch_v1_11.buy_contracts = {}

-- Size Of: Buy Contracts
cboe_europe_cedxmulticast_pitch_v1_11.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_europe_cedxmulticast_pitch_v1_11.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_europe_cedxmulticast_pitch_v1_11.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_europe_cedxmulticast_pitch_v1_11.reference_price = {}

-- Size Of: Reference Price
cboe_europe_cedxmulticast_pitch_v1_11.reference_price.size = 8

-- Display: Reference Price
cboe_europe_cedxmulticast_pitch_v1_11.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_europe_cedxmulticast_pitch_v1_11.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_europe_cedxmulticast_pitch_v1_11.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.reference_price.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Symbol Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8 = {}

-- Size Of: Symbol Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.size = 8

-- Display: Symbol Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.display = function(value)
  return "Symbol Alphanumeric 8: "..value
end

-- Dissect: Symbol Alphanumeric 8
cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Opening Auction Update Message
cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message = {}

-- Size Of: Opening Auction Update Message
cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.auction_type.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.reference_price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.buy_contracts.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.sell_contracts.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.indicative_price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.opening_condition.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price.size;

-- Display: Opening Auction Update Message
cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Auction Update Message
cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 3 values
  index, auction_type = cboe_europe_cedxmulticast_pitch_v1_11.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = cboe_europe_cedxmulticast_pitch_v1_11.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: 4 Byte Unsigned Fixed Width Integer
  index, buy_contracts = cboe_europe_cedxmulticast_pitch_v1_11.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: 4 Byte Unsigned Fixed Width Integer
  index, sell_contracts = cboe_europe_cedxmulticast_pitch_v1_11.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Unsigned Fixed Width Integer
  index, indicative_price = cboe_europe_cedxmulticast_pitch_v1_11.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_only_price = cboe_europe_cedxmulticast_pitch_v1_11.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: 1 Byte Ascii String
  index, opening_condition = cboe_europe_cedxmulticast_pitch_v1_11.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, composite_market_bid_price = cboe_europe_cedxmulticast_pitch_v1_11.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, composite_market_offer_price = cboe_europe_cedxmulticast_pitch_v1_11.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Auction Update Message
cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.opening_auction_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.opening_auction_update_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Opening Type
cboe_europe_cedxmulticast_pitch_v1_11.auction_opening_type = {}

-- Size Of: Auction Opening Type
cboe_europe_cedxmulticast_pitch_v1_11.auction_opening_type.size = 1

-- Display: Auction Opening Type
cboe_europe_cedxmulticast_pitch_v1_11.auction_opening_type.display = function(value)
  return "Auction Opening Type: "..value
end

-- Dissect: Auction Opening Type
cboe_europe_cedxmulticast_pitch_v1_11.auction_opening_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.auction_opening_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_opening_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_opening_type, range, value, display)

  return offset + length, value
end

-- Auction Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message = {}

-- Size Of: Auction Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.auction_opening_type.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.size;

-- Display: Auction Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Auction Opening Type: 1 Byte Ascii String
  index, auction_opening_type = cboe_europe_cedxmulticast_pitch_v1_11.auction_opening_type.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11.price.dissect(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Is Fast
cboe_europe_cedxmulticast_pitch_v1_11.is_fast = {}

-- Size Of: Is Fast
cboe_europe_cedxmulticast_pitch_v1_11.is_fast.size = 1

-- Display: Is Fast
cboe_europe_cedxmulticast_pitch_v1_11.is_fast.display = function(value)
  return "Is Fast: "..value
end

-- Dissect: Is Fast
cboe_europe_cedxmulticast_pitch_v1_11.is_fast.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.is_fast.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.is_fast.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.is_fast, range, value, display)

  return offset + length, value
end

-- Product Code Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_6 = {}

-- Size Of: Product Code Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_6.size = 6

-- Display: Product Code Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_6.display = function(value)
  return "Product Code Alphanumeric 6: "..value
end

-- Dissect: Product Code Alphanumeric 6
cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.product_code_alphanumeric_6, range, value, display)

  return offset + length, value
end

-- Fast Status Message
cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message = {}

-- Size Of: Fast Status Message
cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_6.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.is_fast.size;

-- Display: Fast Status Message
cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fast Status Message
cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Product Code Alphanumeric 6: 6 Byte Ascii String
  index, product_code_alphanumeric_6 = cboe_europe_cedxmulticast_pitch_v1_11.product_code_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Is Fast: 1 Byte Unsigned Fixed Width Integer
  index, is_fast = cboe_europe_cedxmulticast_pitch_v1_11.is_fast.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fast Status Message
cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message.dissect = function(buffer, offset, packet, parent)
  if show.fast_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.fast_status_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved
cboe_europe_cedxmulticast_pitch_v1_11.reserved = {}

-- Size Of: Reserved
cboe_europe_cedxmulticast_pitch_v1_11.reserved.size = 3

-- Display: Reserved
cboe_europe_cedxmulticast_pitch_v1_11.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_europe_cedxmulticast_pitch_v1_11.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reserved, range, value, display)

  return offset + length, value
end

-- Status
cboe_europe_cedxmulticast_pitch_v1_11.status = {}

-- Size Of: Status
cboe_europe_cedxmulticast_pitch_v1_11.status.size = 1

-- Display: Status
cboe_europe_cedxmulticast_pitch_v1_11.status.display = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11.status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.status, range, value, display)

  return offset + length, value
end

-- Trading Status Message
cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message = {}

-- Size Of: Trading Status Message
cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.status.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.reserved.size;

-- Display: Trading Status Message
cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 6 values
  index, status = cboe_europe_cedxmulticast_pitch_v1_11.status.dissect(buffer, index, packet, parent)

  -- Reserved: 3 Byte Ascii String
  index, reserved = cboe_europe_cedxmulticast_pitch_v1_11.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin Message
cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message = {}

-- Size Of: Transaction Begin Message
cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size;

-- Display: Transaction Begin Message
cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.transaction_begin_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session
cboe_europe_cedxmulticast_pitch_v1_11.end_of_session = {}

-- Size Of: End Of Session
cboe_europe_cedxmulticast_pitch_v1_11.end_of_session.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size;

-- Display: End Of Session
cboe_europe_cedxmulticast_pitch_v1_11.end_of_session.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session
cboe_europe_cedxmulticast_pitch_v1_11.end_of_session.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session
cboe_europe_cedxmulticast_pitch_v1_11.end_of_session.dissect = function(buffer, offset, packet, parent)
  if show.end_of_session then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.end_of_session, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.end_of_session.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.end_of_session.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.end_of_session.fields(buffer, offset, packet, parent)
  end
end

-- Duplicative Indicator
cboe_europe_cedxmulticast_pitch_v1_11.duplicative_indicator = {}

-- Size Of: Duplicative Indicator
cboe_europe_cedxmulticast_pitch_v1_11.duplicative_indicator.size = 1

-- Display: Duplicative Indicator
cboe_europe_cedxmulticast_pitch_v1_11.duplicative_indicator.display = function(value)
  return "Duplicative Indicator: "..value
end

-- Dissect: Duplicative Indicator
cboe_europe_cedxmulticast_pitch_v1_11.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Deferral Or Enrichment Type
cboe_europe_cedxmulticast_pitch_v1_11.deferral_or_enrichment_type = {}

-- Size Of: Deferral Or Enrichment Type
cboe_europe_cedxmulticast_pitch_v1_11.deferral_or_enrichment_type.size = 1

-- Display: Deferral Or Enrichment Type
cboe_europe_cedxmulticast_pitch_v1_11.deferral_or_enrichment_type.display = function(value)
  return "Deferral Or Enrichment Type: "..value
end

-- Dissect: Deferral Or Enrichment Type
cboe_europe_cedxmulticast_pitch_v1_11.deferral_or_enrichment_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.deferral_or_enrichment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.deferral_or_enrichment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.deferral_or_enrichment_type, range, value, display)

  return offset + length, value
end

-- Publication Mode Deferral Reason
cboe_europe_cedxmulticast_pitch_v1_11.publication_mode_deferral_reason = {}

-- Size Of: Publication Mode Deferral Reason
cboe_europe_cedxmulticast_pitch_v1_11.publication_mode_deferral_reason.size = 1

-- Display: Publication Mode Deferral Reason
cboe_europe_cedxmulticast_pitch_v1_11.publication_mode_deferral_reason.display = function(value)
  return "Publication Mode Deferral Reason: "..value
end

-- Dissect: Publication Mode Deferral Reason
cboe_europe_cedxmulticast_pitch_v1_11.publication_mode_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.publication_mode_deferral_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.publication_mode_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.publication_mode_deferral_reason, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_indicator = {}

-- Size Of: Algorithmic Indicator
cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_indicator.size = 1

-- Display: Algorithmic Indicator
cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_indicator.display = function(value)
  return "Algorithmic Indicator: "..value
end

-- Dissect: Algorithmic Indicator
cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Price Formation Discovery Process
cboe_europe_cedxmulticast_pitch_v1_11.price_formation_discovery_process = {}

-- Size Of: Price Formation Discovery Process
cboe_europe_cedxmulticast_pitch_v1_11.price_formation_discovery_process.size = 1

-- Display: Price Formation Discovery Process
cboe_europe_cedxmulticast_pitch_v1_11.price_formation_discovery_process.display = function(value)
  return "Price Formation Discovery Process: "..value
end

-- Dissect: Price Formation Discovery Process
cboe_europe_cedxmulticast_pitch_v1_11.price_formation_discovery_process.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.price_formation_discovery_process.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.price_formation_discovery_process.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_formation_discovery_process, range, value, display)

  return offset + length, value
end

-- Off Book Automated Indicator
cboe_europe_cedxmulticast_pitch_v1_11.off_book_automated_indicator = {}

-- Size Of: Off Book Automated Indicator
cboe_europe_cedxmulticast_pitch_v1_11.off_book_automated_indicator.size = 1

-- Display: Off Book Automated Indicator
cboe_europe_cedxmulticast_pitch_v1_11.off_book_automated_indicator.display = function(value)
  if value == "Q" then
    return "Off Book Automated Indicator: Automated (Q)"
  end
  if value == "M" then
    return "Off Book Automated Indicator: Manual (M)"
  end
  if value == "-" then
    return "Off Book Automated Indicator: Not Specified (-)"
  end

  return "Off Book Automated Indicator: Unknown("..value..")"
end

-- Dissect: Off Book Automated Indicator
cboe_europe_cedxmulticast_pitch_v1_11.off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.off_book_automated_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Special Dividend
cboe_europe_cedxmulticast_pitch_v1_11.special_dividend = {}

-- Size Of: Special Dividend
cboe_europe_cedxmulticast_pitch_v1_11.special_dividend.size = 1

-- Display: Special Dividend
cboe_europe_cedxmulticast_pitch_v1_11.special_dividend.display = function(value)
  return "Special Dividend: "..value
end

-- Dissect: Special Dividend
cboe_europe_cedxmulticast_pitch_v1_11.special_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.special_dividend.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.special_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.special_dividend, range, value, display)

  return offset + length, value
end

-- Benchmark Reference Price Indicator
cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator = {}

-- Size Of: Benchmark Reference Price Indicator
cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator.size = 1

-- Display: Benchmark Reference Price Indicator
cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator.display = function(value)
  return "Benchmark Reference Price Indicator: "..value
end

-- Dissect: Benchmark Reference Price Indicator
cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.benchmark_reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Modification Indicator
cboe_europe_cedxmulticast_pitch_v1_11.modification_indicator = {}

-- Size Of: Modification Indicator
cboe_europe_cedxmulticast_pitch_v1_11.modification_indicator.size = 1

-- Display: Modification Indicator
cboe_europe_cedxmulticast_pitch_v1_11.modification_indicator.display = function(value)
  if value == "A" then
    return "Modification Indicator: Indicates A Modification Of A Previously Reported Trade (A)"
  end
  if value == "C" then
    return "Modification Indicator: Indicates A Cancellation Of A Previously Reported Trade (C)"
  end
  if value == "-" then
    return "Modification Indicator: Not Specified (-)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
cboe_europe_cedxmulticast_pitch_v1_11.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.modification_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Crossing Trade
cboe_europe_cedxmulticast_pitch_v1_11.crossing_trade = {}

-- Size Of: Crossing Trade
cboe_europe_cedxmulticast_pitch_v1_11.crossing_trade.size = 1

-- Display: Crossing Trade
cboe_europe_cedxmulticast_pitch_v1_11.crossing_trade.display = function(value)
  if value == "X" then
    return "Crossing Trade: Crossing Trade (X)"
  end
  if value == "-" then
    return "Crossing Trade: Not Specified (-)"
  end

  return "Crossing Trade: Unknown("..value..")"
end

-- Dissect: Crossing Trade
cboe_europe_cedxmulticast_pitch_v1_11.crossing_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.crossing_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.crossing_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.crossing_trade, range, value, display)

  return offset + length, value
end

-- Negotiated Trade
cboe_europe_cedxmulticast_pitch_v1_11.negotiated_trade = {}

-- Size Of: Negotiated Trade
cboe_europe_cedxmulticast_pitch_v1_11.negotiated_trade.size = 1

-- Display: Negotiated Trade
cboe_europe_cedxmulticast_pitch_v1_11.negotiated_trade.display = function(value)
  return "Negotiated Trade: "..value
end

-- Dissect: Negotiated Trade
cboe_europe_cedxmulticast_pitch_v1_11.negotiated_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.negotiated_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.negotiated_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.negotiated_trade, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_europe_cedxmulticast_pitch_v1_11.transaction_category = {}

-- Size Of: Transaction Category
cboe_europe_cedxmulticast_pitch_v1_11.transaction_category.size = 1

-- Display: Transaction Category
cboe_europe_cedxmulticast_pitch_v1_11.transaction_category.display = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Extended Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags = {}

-- Size Of: Extended Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags.size =
  cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.transaction_category.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.negotiated_trade.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.crossing_trade.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.modification_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.special_dividend.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.off_book_automated_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price_formation_discovery_process.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.publication_mode_deferral_reason.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.deferral_or_enrichment_type.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.duplicative_indicator.size;

-- Display: Extended Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: 1 Byte Ascii String Enum with 7 values
  index, market_mechanism = cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 11 values
  index, trading_mode = cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 13 values
  index, transaction_category = cboe_europe_cedxmulticast_pitch_v1_11.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiated Trade: 1 Byte Ascii String
  index, negotiated_trade = cboe_europe_cedxmulticast_pitch_v1_11.negotiated_trade.dissect(buffer, index, packet, parent)

  -- Crossing Trade: 1 Byte Ascii String Enum with 2 values
  index, crossing_trade = cboe_europe_cedxmulticast_pitch_v1_11.crossing_trade.dissect(buffer, index, packet, parent)

  -- Modification Indicator: 1 Byte Ascii String Enum with 3 values
  index, modification_indicator = cboe_europe_cedxmulticast_pitch_v1_11.modification_indicator.dissect(buffer, index, packet, parent)

  -- Benchmark Reference Price Indicator: 1 Byte Ascii String
  index, benchmark_reference_price_indicator = cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend: 1 Byte Ascii String
  index, special_dividend = cboe_europe_cedxmulticast_pitch_v1_11.special_dividend.dissect(buffer, index, packet, parent)

  -- Off Book Automated Indicator: 1 Byte Ascii String Enum with 3 values
  index, off_book_automated_indicator = cboe_europe_cedxmulticast_pitch_v1_11.off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Price Formation Discovery Process: 1 Byte Ascii String
  index, price_formation_discovery_process = cboe_europe_cedxmulticast_pitch_v1_11.price_formation_discovery_process.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: 1 Byte Ascii String
  index, algorithmic_indicator = cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Publication Mode Deferral Reason: 1 Byte Ascii String
  index, publication_mode_deferral_reason = cboe_europe_cedxmulticast_pitch_v1_11.publication_mode_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Or Enrichment Type: 1 Byte Ascii String
  index, deferral_or_enrichment_type = cboe_europe_cedxmulticast_pitch_v1_11.deferral_or_enrichment_type.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: 1 Byte Ascii String
  index, duplicative_indicator = cboe_europe_cedxmulticast_pitch_v1_11.duplicative_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags.dissect = function(buffer, offset, packet, parent)
  if show.extended_trade_flags then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.extended_trade_flags, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags.fields(buffer, offset, packet, parent)
  end
end

-- Cboe Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.cboe_trade_flags = {}

-- Size Of: Cboe Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.cboe_trade_flags.size = 1

-- Display: Cboe Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.cboe_trade_flags.display = function(value)
  return "Cboe Trade Flags: "..value
end

-- Dissect: Cboe Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.cboe_trade_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.cboe_trade_flags.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.cboe_trade_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.cboe_trade_flags, range, value, display)

  return offset + length, value
end

-- Currency
cboe_europe_cedxmulticast_pitch_v1_11.currency = {}

-- Size Of: Currency
cboe_europe_cedxmulticast_pitch_v1_11.currency.size = 3

-- Display: Currency
cboe_europe_cedxmulticast_pitch_v1_11.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_europe_cedxmulticast_pitch_v1_11.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.currency, range, value, display)

  return offset + length, value
end

-- Execution Venue
cboe_europe_cedxmulticast_pitch_v1_11.execution_venue = {}

-- Size Of: Execution Venue
cboe_europe_cedxmulticast_pitch_v1_11.execution_venue.size = 4

-- Display: Execution Venue
cboe_europe_cedxmulticast_pitch_v1_11.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_europe_cedxmulticast_pitch_v1_11.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.execution_venue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Trade Timestamp
cboe_europe_cedxmulticast_pitch_v1_11.trade_timestamp = {}

-- Size Of: Trade Timestamp
cboe_europe_cedxmulticast_pitch_v1_11.trade_timestamp.size = 8

-- Display: Trade Timestamp
cboe_europe_cedxmulticast_pitch_v1_11.trade_timestamp.display = function(value)
  return "Trade Timestamp: "..value
end

-- Dissect: Trade Timestamp
cboe_europe_cedxmulticast_pitch_v1_11.trade_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.trade_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.trade_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_europe_cedxmulticast_pitch_v1_11.trade_id = {}

-- Size Of: Trade Id
cboe_europe_cedxmulticast_pitch_v1_11.trade_id.size = 8

-- Display: Trade Id
cboe_europe_cedxmulticast_pitch_v1_11.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_europe_cedxmulticast_pitch_v1_11.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Contracts Binary 8
cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_8 = {}

-- Size Of: Contracts Binary 8
cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_8.size = 8

-- Display: Contracts Binary 8
cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_8.display = function(value)
  return "Contracts Binary 8: "..value
end

-- Dissect: Contracts Binary 8
cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_binary_8, range, value, display)

  return offset + length, value
end

-- Trade Extended Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message = {}

-- Size Of: Trade Extended Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.trade_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.trade_timestamp.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_venue.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.currency.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.cboe_trade_flags.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags.size;

-- Display: Trade Extended Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Extended Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Contracts Binary 8: 8 Byte Unsigned Fixed Width Integer
  index, contracts_binary_8 = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_8.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11.price.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = cboe_europe_cedxmulticast_pitch_v1_11.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, trade_timestamp = cboe_europe_cedxmulticast_pitch_v1_11.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_europe_cedxmulticast_pitch_v1_11.execution_venue.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cboe_europe_cedxmulticast_pitch_v1_11.currency.dissect(buffer, index, packet, parent)

  -- Cboe Trade Flags: 1 Byte Ascii String
  index, cboe_trade_flags = cboe_europe_cedxmulticast_pitch_v1_11.cboe_trade_flags.dissect(buffer, index, packet, parent)

  -- Extended Trade Flags: Struct of 14 fields
  index, extended_trade_flags = cboe_europe_cedxmulticast_pitch_v1_11.extended_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Extended Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_extended_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_extended_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.trade_flags = {}

-- Size Of: Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.size =
  cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.transaction_category.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade.size;

-- Display: Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: 1 Byte Ascii String Enum with 7 values
  index, market_mechanism = cboe_europe_cedxmulticast_pitch_v1_11.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 11 values
  index, trading_mode = cboe_europe_cedxmulticast_pitch_v1_11.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 13 values
  index, transaction_category = cboe_europe_cedxmulticast_pitch_v1_11.transaction_category.dissect(buffer, index, packet, parent)

  -- Benchmark Reference Price Indicator: 1 Byte Ascii String
  index, benchmark_reference_price_indicator = cboe_europe_cedxmulticast_pitch_v1_11.benchmark_reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_trade = cboe_europe_cedxmulticast_pitch_v1_11.algorithmic_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Flags
cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.dissect = function(buffer, offset, packet, parent)
  if show.trade_flags then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_flags, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.fields(buffer, offset, packet, parent)
  end
end

-- Price Short
cboe_europe_cedxmulticast_pitch_v1_11.price_short = {}

-- Size Of: Price Short
cboe_europe_cedxmulticast_pitch_v1_11.price_short.size = 2

-- Display: Price Short
cboe_europe_cedxmulticast_pitch_v1_11.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_europe_cedxmulticast_pitch_v1_11.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_europe_cedxmulticast_pitch_v1_11.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_europe_cedxmulticast_pitch_v1_11.price_short.translate(raw)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.price_short, range, value, display)

  return offset + length, value
end

-- Contracts Short
cboe_europe_cedxmulticast_pitch_v1_11.contracts_short = {}

-- Size Of: Contracts Short
cboe_europe_cedxmulticast_pitch_v1_11.contracts_short.size = 2

-- Display: Contracts Short
cboe_europe_cedxmulticast_pitch_v1_11.contracts_short.display = function(value)
  return "Contracts Short: "..value
end

-- Dissect: Contracts Short
cboe_europe_cedxmulticast_pitch_v1_11.contracts_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.contracts_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.contracts_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.contracts_short, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_europe_cedxmulticast_pitch_v1_11.side_indicator = {}

-- Size Of: Side Indicator
cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.size = 1

-- Display: Side Indicator
cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_europe_cedxmulticast_pitch_v1_11.order_id = {}

-- Size Of: Order Id
cboe_europe_cedxmulticast_pitch_v1_11.order_id.size = 8

-- Display: Order Id
cboe_europe_cedxmulticast_pitch_v1_11.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Short Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message = {}

-- Size Of: Trade Short Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contracts_short.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price_short.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.size;

-- Display: Trade Short Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.dissect(buffer, index, packet, parent)

  -- Contracts Short: 2 Byte Unsigned Fixed Width Integer
  index, contracts_short = cboe_europe_cedxmulticast_pitch_v1_11.contracts_short.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_europe_cedxmulticast_pitch_v1_11.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message = {}

-- Size Of: Trade Long Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.size;

-- Display: Trade Long Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.dissect(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11.price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_europe_cedxmulticast_pitch_v1_11.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message = {}

-- Size Of: Delete Order Message
cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size;

-- Display: Delete Order Message
cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message = {}

-- Size Of: Modify Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contracts_short.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price_short.size;

-- Display: Modify Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Contracts Short: 2 Byte Unsigned Fixed Width Integer
  index, contracts_short = cboe_europe_cedxmulticast_pitch_v1_11.contracts_short.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_europe_cedxmulticast_pitch_v1_11.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message = {}

-- Size Of: Modify Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price.size;

-- Display: Modify Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11.contracts_binary_4.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Contracts Binary 2
cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_2 = {}

-- Size Of: Canceled Contracts Binary 2
cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_2.size = 2

-- Display: Canceled Contracts Binary 2
cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_2.display = function(value)
  return "Canceled Contracts Binary 2: "..value
end

-- Dissect: Canceled Contracts Binary 2
cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.canceled_contracts_binary_2, range, value, display)

  return offset + length, value
end

-- Reduce Size Short Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message = {}

-- Size Of: Reduce Size Short Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_2.size;

-- Display: Reduce Size Short Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Contracts Binary 2: 2 Byte Unsigned Fixed Width Integer
  index, canceled_contracts_binary_2 = cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_4 = {}

-- Size Of: Canceled Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_4.size = 4

-- Display: Canceled Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_4.display = function(value)
  return "Canceled Contracts Binary 4: "..value
end

-- Dissect: Canceled Contracts Binary 4
cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.canceled_contracts_binary_4, range, value, display)

  return offset + length, value
end

-- Reduce Size Long Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message = {}

-- Size Of: Reduce Size Long Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_4.size;

-- Display: Reduce Size Long Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Contracts Binary 4: 4 Byte Unsigned Fixed Width Integer
  index, canceled_contracts_binary_4 = cboe_europe_cedxmulticast_pitch_v1_11.canceled_contracts_binary_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Remaining Quantity
cboe_europe_cedxmulticast_pitch_v1_11.remaining_quantity = {}

-- Size Of: Remaining Quantity
cboe_europe_cedxmulticast_pitch_v1_11.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_europe_cedxmulticast_pitch_v1_11.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_europe_cedxmulticast_pitch_v1_11.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity = {}

-- Size Of: Executed Quantity
cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed At Price Size Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message = {}

-- Size Of: Order Executed At Price Size Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.remaining_quantity.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.size;

-- Display: Order Executed At Price Size Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = cboe_europe_cedxmulticast_pitch_v1_11.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11.execution_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11.price.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_at_price_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message = {}

-- Size Of: Order Executed Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.size;

-- Display: Order Executed Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_europe_cedxmulticast_pitch_v1_11.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_europe_cedxmulticast_pitch_v1_11.execution_id.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_europe_cedxmulticast_pitch_v1_11.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Short
cboe_europe_cedxmulticast_pitch_v1_11.symbol_short = {}

-- Size Of: Symbol Short
cboe_europe_cedxmulticast_pitch_v1_11.symbol_short.size = 6

-- Display: Symbol Short
cboe_europe_cedxmulticast_pitch_v1_11.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_europe_cedxmulticast_pitch_v1_11.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.symbol_short.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_europe_cedxmulticast_pitch_v1_11.quantity_short = {}

-- Size Of: Quantity Short
cboe_europe_cedxmulticast_pitch_v1_11.quantity_short.size = 2

-- Display: Quantity Short
cboe_europe_cedxmulticast_pitch_v1_11.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_europe_cedxmulticast_pitch_v1_11.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Add Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message = {}

-- Size Of: Add Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.quantity_short.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_short.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price_short.size;

-- Display: Add Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_europe_cedxmulticast_pitch_v1_11.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol Short: 6 Byte Ascii String
  index, symbol_short = cboe_europe_cedxmulticast_pitch_v1_11.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_europe_cedxmulticast_pitch_v1_11.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
cboe_europe_cedxmulticast_pitch_v1_11.quantity = {}

-- Size Of: Quantity
cboe_europe_cedxmulticast_pitch_v1_11.quantity.size = 4

-- Display: Quantity
cboe_europe_cedxmulticast_pitch_v1_11.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_europe_cedxmulticast_pitch_v1_11.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.quantity, range, value, display)

  return offset + length, value
end

-- Add Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message = {}

-- Size Of: Add Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.order_id.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.quantity.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.price.size;

-- Display: Add Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_europe_cedxmulticast_pitch_v1_11.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_europe_cedxmulticast_pitch_v1_11.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_europe_cedxmulticast_pitch_v1_11.quantity.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: 8 Byte Ascii String
  index, symbol_alphanumeric_8 = cboe_europe_cedxmulticast_pitch_v1_11.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_europe_cedxmulticast_pitch_v1_11.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message = {}

-- Size Of: Unit Clear Message
cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time_offset.size;

-- Display: Unit Clear Message
cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_europe_cedxmulticast_pitch_v1_11.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time
cboe_europe_cedxmulticast_pitch_v1_11.time = {}

-- Size Of: Time
cboe_europe_cedxmulticast_pitch_v1_11.time.size = 4

-- Display: Time
cboe_europe_cedxmulticast_pitch_v1_11.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_europe_cedxmulticast_pitch_v1_11.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.time, range, value, display)

  return offset + length, value
end

-- Time Message
cboe_europe_cedxmulticast_pitch_v1_11.time_message = {}

-- Size Of: Time Message
cboe_europe_cedxmulticast_pitch_v1_11.time_message.size =
  cboe_europe_cedxmulticast_pitch_v1_11.time.size;

-- Display: Time Message
cboe_europe_cedxmulticast_pitch_v1_11.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_europe_cedxmulticast_pitch_v1_11.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_europe_cedxmulticast_pitch_v1_11.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_europe_cedxmulticast_pitch_v1_11.time_message.dissect = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.time_message, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_europe_cedxmulticast_pitch_v1_11.payload = {}

-- Calculate runtime size of: Payload
cboe_europe_cedxmulticast_pitch_v1_11.payload.size = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_europe_cedxmulticast_pitch_v1_11.time_message.size(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message.size(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x40 then
    return cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message.size(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message.size(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message.size(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message.size(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message.size(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message.size(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message.size(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message.size(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x41 then
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message.size(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message.size(buffer, offset)
  end
  -- Size of Trade Extended Message
  if message_type == 0x32 then
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message.size(buffer, offset)
  end
  -- Size of End Of Session
  if message_type == 0x2D then
    return cboe_europe_cedxmulticast_pitch_v1_11.end_of_session.size(buffer, offset)
  end
  -- Size of Transaction Begin Message
  if message_type == 0xBC then
    return cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.size(buffer, offset)
  end
  -- Size of Transaction Begin Message
  if message_type == 0xBD then
    return cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.size(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message.size(buffer, offset)
  end
  -- Size of Fast Status Message
  if message_type == 0xE2 then
    return cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message.size(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message.size(buffer, offset)
  end
  -- Size of Opening Auction Update Message
  if message_type == 0xD1 then
    return cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message.size(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == 0xAD then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message.size(buffer, offset)
  end
  -- Size of Auction Cancel Message
  if message_type == 0xAE then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message.size(buffer, offset)
  end
  -- Size of Auction Trade Message
  if message_type == 0xDF then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message.size(buffer, offset)
  end
  -- Size of Auction Liquidity Message
  if message_type == 0xDE then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message.size(buffer, offset)
  end
  -- Size of Width Update Message
  if message_type == 0xD2 then
    return cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.size(buffer, offset)
  end
  -- Size of Futures Instrument Definition Message
  if message_type == 0xDA then
    return cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message.size(buffer, offset)
  end
  -- Size of Options Instrument Definition Message
  if message_type == 0xDB then
    return cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message.size(buffer, offset)
  end
  -- Size of Width Update Message
  if message_type == 0xDC then
    return cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.size(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0x2C then
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message.size(buffer, offset)
  end
  -- Size of Settlement Message
  if message_type == 0xB9 then
    return cboe_europe_cedxmulticast_pitch_v1_11.settlement_message.size(buffer, offset)
  end
  -- Size of End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_europe_cedxmulticast_pitch_v1_11.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_europe_cedxmulticast_pitch_v1_11.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_europe_cedxmulticast_pitch_v1_11.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_europe_cedxmulticast_pitch_v1_11.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x40 then
    return cboe_europe_cedxmulticast_pitch_v1_11.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_europe_cedxmulticast_pitch_v1_11.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_europe_cedxmulticast_pitch_v1_11.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_europe_cedxmulticast_pitch_v1_11.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_europe_cedxmulticast_pitch_v1_11.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_europe_cedxmulticast_pitch_v1_11.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_europe_cedxmulticast_pitch_v1_11.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_europe_cedxmulticast_pitch_v1_11.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x41 then
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Extended Message
  if message_type == 0x32 then
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_type == 0x2D then
    return cboe_europe_cedxmulticast_pitch_v1_11.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBD then
    return cboe_europe_cedxmulticast_pitch_v1_11.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_europe_cedxmulticast_pitch_v1_11.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fast Status Message
  if message_type == 0xE2 then
    return cboe_europe_cedxmulticast_pitch_v1_11.fast_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Opening Auction Update Message
  if message_type == 0xD1 then
    return cboe_europe_cedxmulticast_pitch_v1_11.opening_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xDF then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Liquidity Message
  if message_type == 0xDE then
    return cboe_europe_cedxmulticast_pitch_v1_11.auction_liquidity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if message_type == 0xD2 then
    return cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Definition Message
  if message_type == 0xDA then
    return cboe_europe_cedxmulticast_pitch_v1_11.futures_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Instrument Definition Message
  if message_type == 0xDB then
    return cboe_europe_cedxmulticast_pitch_v1_11.options_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Width Update Message
  if message_type == 0xDC then
    return cboe_europe_cedxmulticast_pitch_v1_11.width_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_europe_cedxmulticast_pitch_v1_11.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Message
  if message_type == 0xB9 then
    return cboe_europe_cedxmulticast_pitch_v1_11.settlement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Summary Message
  if message_type == 0xBA then
    return cboe_europe_cedxmulticast_pitch_v1_11.end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_europe_cedxmulticast_pitch_v1_11.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_europe_cedxmulticast_pitch_v1_11.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_europe_cedxmulticast_pitch_v1_11.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_europe_cedxmulticast_pitch_v1_11.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.payload, range, display)

  return cboe_europe_cedxmulticast_pitch_v1_11.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
cboe_europe_cedxmulticast_pitch_v1_11.message_type = {}

-- Size Of: Message Type
cboe_europe_cedxmulticast_pitch_v1_11.message_type.size = 1

-- Display: Message Type
cboe_europe_cedxmulticast_pitch_v1_11.message_type.display = function(value)
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
cboe_europe_cedxmulticast_pitch_v1_11.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_europe_cedxmulticast_pitch_v1_11.message_length = {}

-- Size Of: Message Length
cboe_europe_cedxmulticast_pitch_v1_11.message_length.size = 1

-- Display: Message Length
cboe_europe_cedxmulticast_pitch_v1_11.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_europe_cedxmulticast_pitch_v1_11.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_europe_cedxmulticast_pitch_v1_11.message_header = {}

-- Size Of: Message Header
cboe_europe_cedxmulticast_pitch_v1_11.message_header.size =
  cboe_europe_cedxmulticast_pitch_v1_11.message_length.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.message_type.size;

-- Display: Message Header
cboe_europe_cedxmulticast_pitch_v1_11.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_europe_cedxmulticast_pitch_v1_11.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_europe_cedxmulticast_pitch_v1_11.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 32 values
  index, message_type = cboe_europe_cedxmulticast_pitch_v1_11.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_europe_cedxmulticast_pitch_v1_11.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message_header, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_europe_cedxmulticast_pitch_v1_11.message = {}

-- Display: Message
cboe_europe_cedxmulticast_pitch_v1_11.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_europe_cedxmulticast_pitch_v1_11.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_europe_cedxmulticast_pitch_v1_11.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 32 branches
  index = cboe_europe_cedxmulticast_pitch_v1_11.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_europe_cedxmulticast_pitch_v1_11.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.message, buffer(offset, 0))
    local current = cboe_europe_cedxmulticast_pitch_v1_11.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_europe_cedxmulticast_pitch_v1_11.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequence
cboe_europe_cedxmulticast_pitch_v1_11.sequence = {}

-- Size Of: Sequence
cboe_europe_cedxmulticast_pitch_v1_11.sequence.size = 4

-- Display: Sequence
cboe_europe_cedxmulticast_pitch_v1_11.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_europe_cedxmulticast_pitch_v1_11.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.sequence, range, value, display)

  return offset + length, value
end

-- Unit
cboe_europe_cedxmulticast_pitch_v1_11.unit = {}

-- Size Of: Unit
cboe_europe_cedxmulticast_pitch_v1_11.unit.size = 1

-- Display: Unit
cboe_europe_cedxmulticast_pitch_v1_11.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_europe_cedxmulticast_pitch_v1_11.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.unit, range, value, display)

  return offset + length, value
end

-- Count
cboe_europe_cedxmulticast_pitch_v1_11.count = {}

-- Size Of: Count
cboe_europe_cedxmulticast_pitch_v1_11.count.size = 1

-- Display: Count
cboe_europe_cedxmulticast_pitch_v1_11.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_europe_cedxmulticast_pitch_v1_11.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.count, range, value, display)

  return offset + length, value
end

-- Length
cboe_europe_cedxmulticast_pitch_v1_11.length = {}

-- Size Of: Length
cboe_europe_cedxmulticast_pitch_v1_11.length.size = 2

-- Display: Length
cboe_europe_cedxmulticast_pitch_v1_11.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_europe_cedxmulticast_pitch_v1_11.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_cedxmulticast_pitch_v1_11.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_europe_cedxmulticast_pitch_v1_11.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.length, range, value, display)

  return offset + length, value
end

-- Packet Header
cboe_europe_cedxmulticast_pitch_v1_11.packet_header = {}

-- Size Of: Packet Header
cboe_europe_cedxmulticast_pitch_v1_11.packet_header.size =
  cboe_europe_cedxmulticast_pitch_v1_11.length.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.count.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.unit.size + 
  cboe_europe_cedxmulticast_pitch_v1_11.sequence.size;

-- Display: Packet Header
cboe_europe_cedxmulticast_pitch_v1_11.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_europe_cedxmulticast_pitch_v1_11.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_europe_cedxmulticast_pitch_v1_11.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_europe_cedxmulticast_pitch_v1_11.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_europe_cedxmulticast_pitch_v1_11.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_europe_cedxmulticast_pitch_v1_11.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_europe_cedxmulticast_pitch_v1_11.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11.fields.packet_header, buffer(offset, 0))
    local index = cboe_europe_cedxmulticast_pitch_v1_11.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_cedxmulticast_pitch_v1_11.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_cedxmulticast_pitch_v1_11.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_europe_cedxmulticast_pitch_v1_11.packet = {}

-- Dissect Packet
cboe_europe_cedxmulticast_pitch_v1_11.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_europe_cedxmulticast_pitch_v1_11.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_europe_cedxmulticast_pitch_v1_11.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_europe_cedxmulticast_pitch_v1_11.init()
end

-- Dissector for Cboe Europe CedxMulticast Pitch 1.11
function omi_cboe_europe_cedxmulticast_pitch_v1_11.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_europe_cedxmulticast_pitch_v1_11.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_europe_cedxmulticast_pitch_v1_11, buffer(), omi_cboe_europe_cedxmulticast_pitch_v1_11.description, "("..buffer:len().." Bytes)")
  return cboe_europe_cedxmulticast_pitch_v1_11.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_europe_cedxmulticast_pitch_v1_11)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_europe_cedxmulticast_pitch_v1_11.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Europe CedxMulticast Pitch 1.11
local function omi_cboe_europe_cedxmulticast_pitch_v1_11_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_europe_cedxmulticast_pitch_v1_11.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_europe_cedxmulticast_pitch_v1_11
  omi_cboe_europe_cedxmulticast_pitch_v1_11.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Europe CedxMulticast Pitch 1.11
omi_cboe_europe_cedxmulticast_pitch_v1_11:register_heuristic("udp", omi_cboe_europe_cedxmulticast_pitch_v1_11_heuristic)

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
