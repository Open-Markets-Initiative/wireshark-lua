-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64 Protocol
local omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64 = Proto("Cboe.TitaniumOptions.DepthOfBook.PitchUdp.v2.41.64.Lua", "Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64")

-- Protocol table
local cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64 Fields
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.add_flags = ProtoField.new("Add Flags", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.addflags", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.aon = ProtoField.new("Aon", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.aon", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.auctionendoffset", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.auction_id = ProtoField.new("Auction Id", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.auctionid", ftypes.UINT64)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.auction_type = ProtoField.new("Auction Type", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.auctiontype", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.buycontracts", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.canceled_quantity_long = ProtoField.new("Canceled Quantity Long", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.canceledquantitylong", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.canceledquantityshort", ftypes.UINT16)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.client_id = ProtoField.new("Client Id", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.clientid", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.contracts = ProtoField.new("Contracts", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.contracts", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.count = ProtoField.new("Count", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.count", ftypes.UINT8)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.customerindicator", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.display = ProtoField.new("Display", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.display", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.epochtime", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.executedquantity", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.execution_id = ProtoField.new("Execution Id", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.executionid", ftypes.UINT64)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.feedsymbol", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.gthtradingstatus", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.indicativeprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.length = ProtoField.new("Length", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.length", ftypes.UINT16)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.lower_strike_price = ProtoField.new("Lower Strike Price", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.lowerstrikeprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message = ProtoField.new("Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.message", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.messageheader", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.messagelength", ftypes.UINT8)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.messagetype", ftypes.UINT8)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.midnightreference", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.modify_flags = ProtoField.new("Modify Flags", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.modifyflags", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.multiplier = ProtoField.new("Multiplier", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.multiplier", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.openingcondition", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.order_id = ProtoField.new("Order Id", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.orderid", ftypes.UINT64)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.osisymbol", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.packet = ProtoField.new("Packet", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.packet", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.packetheader", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.participant_id = ProtoField.new("Participant Id", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.participantid", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.price_long = ProtoField.new("Price Long", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.pricelong", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.price_short = ProtoField.new("Price Short", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.priceshort", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.priority = ProtoField.new("Priority", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.priority", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.quantitylong", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.quantityshort", ftypes.UINT16)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reference_price = ProtoField.new("Reference Price", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.referenceprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.remainingquantity", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.reserved1", ftypes.BYTES)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.reserved2", ftypes.BYTES)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.reserved3", ftypes.UINT8, nil, base.DEC, 0x07)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_4 = ProtoField.new("Reserved 4", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.reserved4", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_5 = ProtoField.new("Reserved 5", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.reserved5", ftypes.BYTES)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.reservedflags", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.sellcontracts", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.sequence", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.shares_contracts = ProtoField.new("Shares Contracts", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.sharescontracts", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.side = ProtoField.new("Side", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.side", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.sideindicator", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.soq_identifier = ProtoField.new("Soq Identifier", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.soqidentifier", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.stocksymbol", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.symbol = ProtoField.new("Symbol", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.symbol", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.symbolcondition", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.symbolextended", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.time = ProtoField.new("Time", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.time", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.time_offset = ProtoField.new("Time Offset", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.timeoffset", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.timestamp", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.tradecondition", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.trade_date = ProtoField.new("Trade Date", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.tradedate", ftypes.UINT32)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.trading_status = ProtoField.new("Trading Status", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.tradingstatus", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.underlying = ProtoField.new("Underlying", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.underlying", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.unit = ProtoField.new("Unit", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.unit", ftypes.UINT8)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.upper_strike_price = ProtoField.new("Upper Strike Price", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.upperstrikeprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.width_type = ProtoField.new("Width Type", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.widthtype", ftypes.STRING)

-- Cboe TitaniumOptions PitchUdp DepthOfBook 2.41.64 Application Messages
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_add_order_expanded_message = ProtoField.new("Ox Add Order Expanded Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxaddorderexpandedmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_add_order_long_message = ProtoField.new("Ox Add Order Long Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxaddorderlongmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_add_order_short_message = ProtoField.new("Ox Add Order Short Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxaddordershortmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_auction_cancel_message = ProtoField.new("Ox Auction Cancel Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxauctioncancelmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_auction_notification_message = ProtoField.new("Ox Auction Notification Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxauctionnotificationmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_auction_summary_message = ProtoField.new("Ox Auction Summary Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxauctionsummarymessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_auction_trade_message = ProtoField.new("Ox Auction Trade Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxauctiontrademessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_constituent_symbol_mapping_message = ProtoField.new("Ox Constituent Symbol Mapping Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxconstituentsymbolmappingmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_delete_order_message = ProtoField.new("Ox Delete Order Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxdeleteordermessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_end_of_session = ProtoField.new("Ox End Of Session", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxendofsession", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_modify_order_long_message = ProtoField.new("Ox Modify Order Long Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxmodifyorderlongmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_modify_order_short_message = ProtoField.new("Ox Modify Order Short Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxmodifyordershortmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_options_auction_update_message = ProtoField.new("Ox Options Auction Update Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxoptionsauctionupdatemessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_order_executed_at_price_size_message = ProtoField.new("Ox Order Executed At Price Size Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxorderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_order_executed_message = ProtoField.new("Ox Order Executed Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxorderexecutedmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_reduce_size_long_message = ProtoField.new("Ox Reduce Size Long Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxreducesizelongmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_reduce_size_short_message = ProtoField.new("Ox Reduce Size Short Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxreducesizeshortmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_soq_strike_range_update_message = ProtoField.new("Ox Soq Strike Range Update Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxsoqstrikerangeupdatemessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_symbol_mapping_message = ProtoField.new("Ox Symbol Mapping Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxsymbolmappingmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_time_message = ProtoField.new("Ox Time Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxtimemessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_time_reference_message = ProtoField.new("Ox Time Reference Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxtimereferencemessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trade_break_message = ProtoField.new("Ox Trade Break Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxtradebreakmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trade_expanded_message = ProtoField.new("Ox Trade Expanded Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxtradeexpandedmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trade_long_message = ProtoField.new("Ox Trade Long Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxtradelongmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trade_short_message = ProtoField.new("Ox Trade Short Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxtradeshortmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trading_status_message = ProtoField.new("Ox Trading Status Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxtradingstatusmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_transaction_begin_message = ProtoField.new("Ox Transaction Begin Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxtransactionbeginmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_transaction_end_message = ProtoField.new("Ox Transaction End Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxtransactionendmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_unit_clear_message = ProtoField.new("Ox Unit Clear Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxunitclearmessage", ftypes.STRING)
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_width_update_message = ProtoField.new("Ox Width Update Message", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.oxwidthupdatemessage", ftypes.STRING)

-- Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64 generated fields
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumoptions.depthofbook.pitchudp.v2.41.64.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64 Element Dissection Options
show.add_flags = true
show.message = true
show.message_header = true
show.modify_flags = true
show.application_messages = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64 Show Options
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_add_flags = Pref.bool("Show Add Flags", show.add_flags, "Parse and add Add Flags to protocol tree")
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_modify_flags = Pref.bool("Show Modify Flags", show.modify_flags, "Parse and add Modify Flags to protocol tree")
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs_changed()

  -- Check if show options have changed
  if show.add_flags ~= omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_add_flags then
    show.add_flags = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_add_flags
  end
  if show.application_messages ~= omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_message then
    show.message = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_message_header then
    show.message_header = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_message_header
  end
  if show.modify_flags ~= omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_modify_flags then
    show.modify_flags = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_modify_flags
  end
  if show.packet ~= omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_packet then
    show.packet = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_packet_header then
    show.packet_header = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_message_index then
    show.message_index = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.prefs.show_message_index
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
-- Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_end_offset = {}

-- Size: Auction End Offset
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id = {}

-- Size: Auction Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.size = 8

-- Display: Auction Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price = {}

-- Size: Auction Only Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type = {}

-- Size: Auction Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.size = 1

-- Display: Auction Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.display = function(value)
  if value == "G" then
    return "Auction Type: Gth Opening (G)"
  end
  if value == "O" then
    return "Auction Type: Rth Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Halt Re Opening (H)"
  end
  if value == "V" then
    return "Auction Type: Volatility Opening (V)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.buy_contracts = {}

-- Size: Buy Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_long = {}

-- Size: Canceled Quantity Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_long.size = 4

-- Display: Canceled Quantity Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_long.display = function(value)
  return "Canceled Quantity Long: "..value
end

-- Dissect: Canceled Quantity Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.canceled_quantity_long, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id = {}

-- Size: Client Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id.size = 4

-- Display: Client Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.client_id, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts = {}

-- Size: Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts.size = 4

-- Display: Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts.display = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.contracts, range, value, display)

  return offset + length, value
end

-- Count
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.count = {}

-- Size: Count
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.count.size = 1

-- Display: Count
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator = {}

-- Size: Customer Indicator
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.epoch_time = {}

-- Size: Epoch Time
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.epoch_time.size = 4

-- Display: Epoch Time
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity = {}

-- Size: Executed Quantity
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id = {}

-- Size: Execution Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.size = 8

-- Display: Execution Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol = {}

-- Size: Feed Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.gth_trading_status.display = function(value)
  if value == "H" then
    return "Gth Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Gth Trading Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Gth Trading Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Gth Trading Status: Trading (T)"
  end

  return "Gth Trading Status: Unknown("..value..")"
end

-- Dissect: Gth Trading Status
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price = {}

-- Size: Indicative Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price.size = 8

-- Display: Indicative Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.length = {}

-- Size: Length
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.length.size = 2

-- Display: Length
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.length, range, value, display)

  return offset + length, value
end

-- Lower Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price = {}

-- Size: Lower Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price.size = 8

-- Display: Lower Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price.display = function(value)
  return "Lower Strike Price: "..value
end

-- Translate: Lower Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Lower Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.lower_strike_price, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_length = {}

-- Size: Message Length
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_length.size = 1

-- Display: Message Length
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_type = {}

-- Size: Message Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_type.size = 1

-- Display: Message Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_type.display = function(value)
  if value == 0xB1 then
    return "Message Type: Ox Time Reference Message (0xB1)"
  end
  if value == 0x20 then
    return "Message Type: Ox Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Ox Unit Clear Message (0x97)"
  end
  if value == 0xBC then
    return "Message Type: Ox Transaction Begin Message (0xBC)"
  end
  if value == 0xBD then
    return "Message Type: Ox Transaction End Message (0xBD)"
  end
  if value == 0x21 then
    return "Message Type: Ox Add Order Long Message (0x21)"
  end
  if value == 0x22 then
    return "Message Type: Ox Add Order Short Message (0x22)"
  end
  if value == 0x2F then
    return "Message Type: Ox Add Order Expanded Message (0x2F)"
  end
  if value == 0x23 then
    return "Message Type: Ox Order Executed Message (0x23)"
  end
  if value == 0x24 then
    return "Message Type: Ox Order Executed At Price Size Message (0x24)"
  end
  if value == 0x25 then
    return "Message Type: Ox Reduce Size Long Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Ox Reduce Size Short Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Ox Modify Order Long Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Ox Modify Order Short Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: Ox Delete Order Message (0x29)"
  end
  if value == 0x2A then
    return "Message Type: Ox Trade Long Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Ox Trade Short Message (0x2B)"
  end
  if value == 0x30 then
    return "Message Type: Ox Trade Expanded Message (0x30)"
  end
  if value == 0x2C then
    return "Message Type: Ox Trade Break Message (0x2C)"
  end
  if value == 0x2D then
    return "Message Type: Ox End Of Session (0x2D)"
  end
  if value == 0x2E then
    return "Message Type: Ox Symbol Mapping Message (0x2E)"
  end
  if value == 0x31 then
    return "Message Type: Ox Trading Status Message (0x31)"
  end
  if value == 0xD2 then
    return "Message Type: Ox Width Update Message (0xD2)"
  end
  if value == 0xD1 then
    return "Message Type: Ox Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Ox Auction Summary Message (0x96)"
  end
  if value == 0xAD then
    return "Message Type: Ox Auction Notification Message (0xAD)"
  end
  if value == 0xAE then
    return "Message Type: Ox Auction Cancel Message (0xAE)"
  end
  if value == 0xAF then
    return "Message Type: Ox Auction Trade Message (0xAF)"
  end
  if value == 0x9D then
    return "Message Type: Ox Soq Strike Range Update Message (0x9D)"
  end
  if value == 0x9E then
    return "Message Type: Ox Constituent Symbol Mapping Message (0x9E)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.midnight_reference = {}

-- Size: Midnight Reference
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Multiplier
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier = {}

-- Size: Multiplier
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier.size = 4

-- Display: Multiplier
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Translate: Multiplier
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier.translate = function(raw)
  return raw/10
end

-- Dissect: Multiplier
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.opening_condition = {}

-- Size: Opening Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.opening_condition.size = 1

-- Display: Opening Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.opening_condition.display = function(value)
  if value == "O" then
    return "Opening Condition: Would Open (O)"
  end
  if value == "Q" then
    return "Opening Condition: Need Quote To Open (Q)"
  end
  if value == "B" then
    return "Opening Condition: Need More Buyers (B)"
  end
  if value == "S" then
    return "Opening Condition: Need More Sellers (S)"
  end
  if value == "C" then
    return "Opening Condition: Crossed Composite Market (C)"
  end

  return "Opening Condition: Unknown("..value..")"
end

-- Dissect: Opening Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id = {}

-- Size: Order Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size = 8

-- Display: Order Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.order_id, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol = {}

-- Size: Osi Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id = {}

-- Size: Participant Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id.size = 4

-- Display: Participant Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long = {}

-- Size: Price Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size = 8

-- Display: Price Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short = {}

-- Size: Price Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.size = 2

-- Display: Price Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long = {}

-- Size: Quantity Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.size = 4

-- Display: Quantity Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short = {}

-- Size: Quantity Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.size = 2

-- Display: Quantity Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price = {}

-- Size: Reference Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price.size = 8

-- Display: Reference Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1 = {}

-- Size: Reserved 1
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1.size = 1

-- Display: Reserved 1
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_2 = {}

-- Size: Reserved 2
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_2.size = 2

-- Display: Reserved 2
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 5
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_5 = {}

-- Size: Reserved 5
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_5.size = 5

-- Display: Reserved 5
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sell_contracts = {}

-- Size: Sell Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sequence = {}

-- Size: Sequence
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sequence.size = 4

-- Display: Sequence
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.shares_contracts = {}

-- Size: Shares Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.shares_contracts.size = 4

-- Display: Shares Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.shares_contracts.display = function(value)
  return "Shares Contracts: "..value
end

-- Dissect: Shares Contracts
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.shares_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.shares_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.shares_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.shares_contracts, range, value, display)

  return offset + length, value
end

-- Side
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side = {}

-- Size: Side
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side.size = 1

-- Display: Side
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.side, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator = {}

-- Size: Side Indicator
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.size = 1

-- Display: Side Indicator
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Soq Identifier
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier = {}

-- Size: Soq Identifier
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier.size = 20

-- Display: Soq Identifier
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier.display = function(value)
  return "Soq Identifier: "..value
end

-- Dissect: Soq Identifier
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.soq_identifier, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.stock_symbol = {}

-- Size: Stock Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol = {}

-- Size: Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.size = 6

-- Display: Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition = {}

-- Size: Symbol Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Symbol Extended
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended = {}

-- Size: Symbol Extended
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.size = 8

-- Display: Symbol Extended
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.display = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Time
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time = {}

-- Size: Time
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time.size = 4

-- Display: Time
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset = {}

-- Size: Time Offset
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size = 4

-- Display: Time Offset
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.timestamp = {}

-- Size: Timestamp
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.timestamp.size = 4

-- Display: Timestamp
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition = {}

-- Size: Trade Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.size = 1

-- Display: Trade Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_date = {}

-- Size: Trade Date
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_date.size = 4

-- Display: Trade Date
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trading_status = {}

-- Size: Trading Status
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trading_status.size = 1

-- Display: Trading Status
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "L" then
    return "Trading Status: Curb Trading (L)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Trading Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Trading Status: Rth Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying = {}

-- Size: Underlying
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.size = 8

-- Display: Underlying
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.unit = {}

-- Size: Unit
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.unit.size = 1

-- Display: Unit
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.unit, range, value, display)

  return offset + length, value
end

-- Upper Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price = {}

-- Size: Upper Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price.size = 8

-- Display: Upper Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price.display = function(value)
  return "Upper Strike Price: "..value
end

-- Translate: Upper Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Upper Strike Price
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price.translate(raw)
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.upper_strike_price, range, value, display)

  return offset + length, value
end

-- Width Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.width_type = {}

-- Size: Width Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.width_type.size = 1

-- Display: Width Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.width_type.display = function(value)
  if value == "R" then
    return "Width Type: Regular (R)"
  end
  if value == "V" then
    return "Width Type: Volatility (V)"
  end

  return "Width Type: Unknown("..value..")"
end

-- Dissect: Width Type
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.width_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.width_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.width_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.width_type, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64
-----------------------------------------------------------------------

-- Ox Constituent Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_constituent_symbol_mapping_message = {}

-- Size: Ox Constituent Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_constituent_symbol_mapping_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier.size

-- Display: Ox Constituent Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_constituent_symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Constituent Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_constituent_symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Printable ASCII
  index, underlying = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.dissect(buffer, index, packet, parent)

  -- Soq Identifier: Printable ASCII
  index, soq_identifier = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Constituent Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_constituent_symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_constituent_symbol_mapping_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_constituent_symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_constituent_symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_constituent_symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Soq Strike Range Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_soq_strike_range_update_message = {}

-- Size: Ox Soq Strike Range Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_soq_strike_range_update_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price.size

-- Display: Ox Soq Strike Range Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_soq_strike_range_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Soq Strike Range Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_soq_strike_range_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Soq Identifier: Printable ASCII
  index, soq_identifier = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.soq_identifier.dissect(buffer, index, packet, parent)

  -- Lower Strike Price: Binary Long Price
  index, lower_strike_price = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.lower_strike_price.dissect(buffer, index, packet, parent)

  -- Upper Strike Price: Binary Long Price
  index, upper_strike_price = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.upper_strike_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Soq Strike Range Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_soq_strike_range_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_soq_strike_range_update_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_soq_strike_range_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_soq_strike_range_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_soq_strike_range_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Auction Trade Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_trade_message = {}

-- Size: Ox Auction Trade Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_trade_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts.size

-- Display: Ox Auction Trade Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Auction Trade Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect(buffer, index, packet, parent)

  -- Contracts: Binary
  index, contracts = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Auction Trade Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_auction_trade_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Auction Cancel Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_cancel_message = {}

-- Size: Ox Auction Cancel Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_cancel_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.size

-- Display: Ox Auction Cancel Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Auction Cancel Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Auction Cancel Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_auction_cancel_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Auction Notification Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_notification_message = {}

-- Size: Ox Auction Notification Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_notification_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_end_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id.size

-- Display: Ox Auction Notification Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Auction Notification Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect(buffer, index, packet, parent)

  -- Contracts: Binary
  index, contracts = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.contracts.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Auction Notification Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_auction_notification_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Auction Summary Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_summary_message = {}

-- Size: Ox Auction Summary Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_summary_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.stock_symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.shares_contracts.size

-- Display: Ox Auction Summary Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Auction Summary Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect(buffer, index, packet, parent)

  -- Shares Contracts: Binary
  index, shares_contracts = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.shares_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Auction Summary Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_auction_summary_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Options Auction Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_options_auction_update_message = {}

-- Size: Ox Options Auction Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_options_auction_update_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.buy_contracts.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sell_contracts.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.opening_condition.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price.size

-- Display: Ox Options Auction Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Options Auction Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Printable ASCII
  index, symbol_extended = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Long Price
  index, indicative_price = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Long Price
  index, auction_only_price = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Long Price
  index, composite_market_bid_price = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Long Price
  index, composite_market_offer_price = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Options Auction Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_options_auction_update_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Width Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_width_update_message = {}

-- Size: Ox Width Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_width_update_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.width_type.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier.size

-- Display: Ox Width Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_width_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Width Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_width_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Underlying: Printable ASCII
  index, underlying = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.dissect(buffer, index, packet, parent)

  -- Width Type: Alphanumeric
  index, width_type = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.width_type.dissect(buffer, index, packet, parent)

  -- Multiplier: Multiplier
  index, multiplier = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Width Update Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_width_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_width_update_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_width_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_width_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_width_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Trading Status Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trading_status_message = {}

-- Size: Ox Trading Status Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trading_status_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_2.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trading_status.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.gth_trading_status.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1.size

-- Display: Ox Trading Status Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Trading Status Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Trading Status Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trading_status_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_symbol_mapping_message = {}

-- Size: Ox Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_symbol_mapping_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.size

-- Display: Ox Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Printable ASCII
  index, underlying = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Symbol Mapping Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_symbol_mapping_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox End Of Session
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_end_of_session = {}

-- Size: Ox End Of Session
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_end_of_session.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.timestamp.size

-- Display: Ox End Of Session
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_end_of_session.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox End Of Session
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_end_of_session.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox End Of Session
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_end_of_session.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_end_of_session, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_end_of_session.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_end_of_session.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_end_of_session.fields(buffer, offset, packet, parent)
  end
end

-- Ox Trade Break Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_break_message = {}

-- Size: Ox Trade Break Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_break_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.size

-- Display: Ox Trade Break Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Trade Break Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Trade Break Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trade_break_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Trade Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_expanded_message = {}

-- Size: Ox Trade Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_expanded_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.size

-- Display: Ox Trade Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Trade Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Printable ASCII
  index, symbol_extended = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Trade Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trade_expanded_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Trade Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_short_message = {}

-- Size: Ox Trade Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_short_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.size

-- Display: Ox Trade Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Trade Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Trade Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trade_short_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Trade Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_long_message = {}

-- Size: Ox Trade Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_long_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.size

-- Display: Ox Trade Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Trade Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Trade Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_trade_long_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Delete Order Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_delete_order_message = {}

-- Size: Ox Delete Order Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_delete_order_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size

-- Display: Ox Delete Order Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Delete Order Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Delete Order Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_delete_order_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags = {}

-- Size: Modify Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.size = 1

-- Display: Modify Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Display flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Display"
  end
  -- Is Priority flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Priority"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.bits = function(range, value, packet, parent)

  -- Display: 1 Bit
  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.display, range, value)

  -- Priority: 1 Bit
  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.priority, range, value)

  -- Reserved Flags: 6 Bit
  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_flags, range, value)
end

-- Dissect: Modify Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.modify_flags, range, display)

  if show.modify_flags then
    cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Ox Modify Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_short_message = {}

-- Size: Ox Modify Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_short_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.size

-- Display: Ox Modify Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Modify Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Modify Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_modify_order_short_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Modify Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_long_message = {}

-- Size: Ox Modify Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_long_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.size

-- Display: Ox Modify Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Modify Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Modify Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_modify_order_long_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Reduce Size Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_short_message = {}

-- Size: Ox Reduce Size Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_short_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_short.size

-- Display: Ox Reduce Size Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Reduce Size Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Reduce Size Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_reduce_size_short_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Reduce Size Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_long_message = {}

-- Size: Ox Reduce Size Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_long_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_long.size

-- Display: Ox Reduce Size Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Reduce Size Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Long: Binary
  index, canceled_quantity_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.canceled_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Reduce Size Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_reduce_size_long_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Order Executed At Price Size Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_at_price_size_message = {}

-- Size: Ox Order Executed At Price Size Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_at_price_size_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.remaining_quantity.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.size

-- Display: Ox Order Executed At Price Size Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Order Executed At Price Size Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Order Executed At Price Size Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Order Executed Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_message = {}

-- Size: Ox Order Executed Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.size

-- Display: Ox Order Executed Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Order Executed Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Order Executed Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_order_executed_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags = {}

-- Size: Add Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.size = 1

-- Display: Add Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Aon flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Aon"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.bits = function(range, value, packet, parent)

  -- Reserved 3: 3 Bit
  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_3, range, value)

  -- Aon: 1 Bit
  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.aon, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.reserved_4, range, value)
end

-- Dissect: Add Flags
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.add_flags, range, display)

  if show.add_flags then
    cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Ox Add Order Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_expanded_message = {}

-- Size: Ox Add Order Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_expanded_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_5.size

-- Display: Ox Add Order Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Add Order Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Printable ASCII
  index, symbol_extended = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol_extended.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.customer_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.client_id.dissect(buffer, index, packet, parent)

  -- Reserved 5: Reserved
  index, reserved_5 = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.reserved_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Add Order Expanded Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_add_order_expanded_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Add Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_short_message = {}

-- Size: Ox Add Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_short_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.size

-- Display: Ox Add Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Add Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_short.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Add Order Short Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_add_order_short_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Add Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_long_message = {}

-- Size: Ox Add Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_long_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.size

-- Display: Ox Add Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Add Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.symbol.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Add Order Long Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_add_order_long_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Transaction End Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_end_message = {}

-- Size: Ox Transaction End Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_end_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size

-- Display: Ox Transaction End Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Transaction End Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Transaction End Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_transaction_end_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Transaction Begin Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_begin_message = {}

-- Size: Ox Transaction Begin Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_begin_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size

-- Display: Ox Transaction Begin Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Transaction Begin Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Transaction Begin Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_transaction_begin_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Unit Clear Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_unit_clear_message = {}

-- Size: Ox Unit Clear Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_unit_clear_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size

-- Display: Ox Unit Clear Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Unit Clear Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Unit Clear Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_unit_clear_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Time Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_message = {}

-- Size: Ox Time Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.epoch_time.size

-- Display: Ox Time Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Time Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Time Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_time_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Ox Time Reference Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_reference_message = {}

-- Size: Ox Time Reference Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_reference_message.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.midnight_reference.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_date.size

-- Display: Ox Time Reference Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ox Time Reference Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ox Time Reference Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.ox_time_reference_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.payload = {}

-- Dissect: Payload
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Ox Time Reference Message
  if message_type == 0xB1 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Time Message
  if message_type == 0x20 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Unit Clear Message
  if message_type == 0x97 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Transaction Begin Message
  if message_type == 0xBC then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Transaction End Message
  if message_type == 0xBD then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_transaction_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Add Order Long Message
  if message_type == 0x21 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Add Order Short Message
  if message_type == 0x22 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Order Executed Message
  if message_type == 0x23 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Modify Order Long Message
  if message_type == 0x27 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Modify Order Short Message
  if message_type == 0x28 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Delete Order Message
  if message_type == 0x29 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Trade Long Message
  if message_type == 0x2A then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Trade Short Message
  if message_type == 0x2B then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Trade Expanded Message
  if message_type == 0x30 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Trade Break Message
  if message_type == 0x2C then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox End Of Session
  if message_type == 0x2D then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Trading Status Message
  if message_type == 0x31 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Width Update Message
  if message_type == 0xD2 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_width_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Auction Summary Message
  if message_type == 0x96 then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Auction Notification Message
  if message_type == 0xAD then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Auction Cancel Message
  if message_type == 0xAE then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Auction Trade Message
  if message_type == 0xAF then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Soq Strike Range Update Message
  if message_type == 0x9D then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_soq_strike_range_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ox Constituent Symbol Mapping Message
  if message_type == 0x9E then
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.ox_constituent_symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_header = {}

-- Size: Message Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_header.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_length.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_type.size

-- Display: Message Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 30 values
  index, message_type = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message = {}

-- Display: Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 30 branches
  index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.message, buffer(offset, 0))
    local current = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet_header = {}

-- Size: Packet Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet_header.size =
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.length.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.count.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.unit.size + 
  cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sequence.size

-- Display: Packet Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet = {}

-- Dissect Packet
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.init()
end

-- Dissector for Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64
function omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64, buffer(), omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64
local function omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64
  omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumOptions DepthOfBook PitchUdp 2.41.64
omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64:register_heuristic("udp", omi_cboe_titaniumoptions_depthofbook_pitchudp_v2_41_64_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.41.64
--   Date: Monday, January 12, 2026
--   Specification: US_EQUITIES_OPTIONS_MULTICAST_PITCH_SPECIFICATION.pdf
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
