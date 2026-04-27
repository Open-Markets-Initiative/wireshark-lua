-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumOptions Complex Pitch 2.1.61 Protocol
local omi_cboe_titaniumoptions_complex_pitch_v2_1_61 = Proto("Cboe.TitaniumOptions.Complex.Pitch.v2.1.61.Lua", "Cboe TitaniumOptions Complex Pitch 2.1.61")

-- Protocol table
local cboe_titaniumoptions_complex_pitch_v2_1_61 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumOptions Complex Pitch 2.1.61 Fields
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.titaniumoptions.complex.pitch.v2.1.61.auctionendoffset", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_id = ProtoField.new("Auction Id", "cboe.titaniumoptions.complex.pitch.v2.1.61.auctionid", ftypes.UINT64)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.titaniumoptions.complex.pitch.v2.1.61.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_type = ProtoField.new("Auction Type", "cboe.titaniumoptions.complex.pitch.v2.1.61.auctiontype", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.titaniumoptions.complex.pitch.v2.1.61.buycontracts", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.canceled_quantity_long = ProtoField.new("Canceled Quantity Long", "cboe.titaniumoptions.complex.pitch.v2.1.61.canceledquantitylong", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.titaniumoptions.complex.pitch.v2.1.61.canceledquantityshort", ftypes.UINT16)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.client_id = ProtoField.new("Client Id", "cboe.titaniumoptions.complex.pitch.v2.1.61.clientid", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.titaniumoptions.complex.pitch.v2.1.61.complexinstrumentid", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_id_expanded = ProtoField.new("Complex Instrument Id Expanded", "cboe.titaniumoptions.complex.pitch.v2.1.61.complexinstrumentidexpanded", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.titaniumoptions.complex.pitch.v2.1.61.complexinstrumenttype", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.titaniumoptions.complex.pitch.v2.1.61.complexinstrumentunderlying", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_symbol_id = ProtoField.new("Complex Symbol Id", "cboe.titaniumoptions.complex.pitch.v2.1.61.complexsymbolid", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.titaniumoptions.complex.pitch.v2.1.61.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.titaniumoptions.complex.pitch.v2.1.61.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.count = ProtoField.new("Count", "cboe.titaniumoptions.complex.pitch.v2.1.61.count", ftypes.UINT16)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.titaniumoptions.complex.pitch.v2.1.61.customerindicator", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.edci_leg = ProtoField.new("Edci Leg", "cboe.titaniumoptions.complex.pitch.v2.1.61.edcileg", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.edci_subtype = ProtoField.new("Edci Subtype", "cboe.titaniumoptions.complex.pitch.v2.1.61.edcisubtype", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.edci_type = ProtoField.new("Edci Type", "cboe.titaniumoptions.complex.pitch.v2.1.61.edcitype", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.titaniumoptions.complex.pitch.v2.1.61.epochtime", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.titaniumoptions.complex.pitch.v2.1.61.executedquantity", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.execution_id = ProtoField.new("Execution Id", "cboe.titaniumoptions.complex.pitch.v2.1.61.executionid", ftypes.UINT64)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.titaniumoptions.complex.pitch.v2.1.61.feedsymbol", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.filler = ProtoField.new("Filler", "cboe.titaniumoptions.complex.pitch.v2.1.61.filler", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.gap_response_status = ProtoField.new("Gap Response Status", "cboe.titaniumoptions.complex.pitch.v2.1.61.gapresponsestatus", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.titaniumoptions.complex.pitch.v2.1.61.gthtradingstatus", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.titaniumoptions.complex.pitch.v2.1.61.indicativeprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.instrument_count = ProtoField.new("Instrument Count", "cboe.titaniumoptions.complex.pitch.v2.1.61.instrumentcount", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.instrument_definition_response_status = ProtoField.new("Instrument Definition Response Status", "cboe.titaniumoptions.complex.pitch.v2.1.61.instrumentdefinitionresponsestatus", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg = ProtoField.new("Leg", "cboe.titaniumoptions.complex.pitch.v2.1.61.leg", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_count = ProtoField.new("Leg Count", "cboe.titaniumoptions.complex.pitch.v2.1.61.legcount", ftypes.UINT8)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.titaniumoptions.complex.pitch.v2.1.61.legratio", ftypes.INT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.titaniumoptions.complex.pitch.v2.1.61.legsecuritytype", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.titaniumoptions.complex.pitch.v2.1.61.legsymbol", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.length = ProtoField.new("Length", "cboe.titaniumoptions.complex.pitch.v2.1.61.length", ftypes.UINT16)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.titaniumoptions.complex.pitch.v2.1.61.loginresponsestatus", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message = ProtoField.new("Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.message", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumoptions.complex.pitch.v2.1.61.messageheader", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumoptions.complex.pitch.v2.1.61.messagelength", ftypes.UINT8)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumoptions.complex.pitch.v2.1.61.messagetype", ftypes.UINT8)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.titaniumoptions.complex.pitch.v2.1.61.midnightreference", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.titaniumoptions.complex.pitch.v2.1.61.openingcondition", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.order_count = ProtoField.new("Order Count", "cboe.titaniumoptions.complex.pitch.v2.1.61.ordercount", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.order_id = ProtoField.new("Order Id", "cboe.titaniumoptions.complex.pitch.v2.1.61.orderid", ftypes.UINT64)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.titaniumoptions.complex.pitch.v2.1.61.osisymbol", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.packet = ProtoField.new("Packet", "cboe.titaniumoptions.complex.pitch.v2.1.61.packet", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumoptions.complex.pitch.v2.1.61.packetheader", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.participant_id = ProtoField.new("Participant Id", "cboe.titaniumoptions.complex.pitch.v2.1.61.participantid", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.password = ProtoField.new("Password", "cboe.titaniumoptions.complex.pitch.v2.1.61.password", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.price_binary_signed_long_price_8 = ProtoField.new("Price Binary Signed Long Price 8", "cboe.titaniumoptions.complex.pitch.v2.1.61.pricebinarysignedlongprice8", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.price_binary_signed_short_price_2 = ProtoField.new("Price Binary Signed Short Price 2", "cboe.titaniumoptions.complex.pitch.v2.1.61.pricebinarysignedshortprice2", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.titaniumoptions.complex.pitch.v2.1.61.quantitylong", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.titaniumoptions.complex.pitch.v2.1.61.quantityshort", ftypes.UINT16)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reference_price = ProtoField.new("Reference Price", "cboe.titaniumoptions.complex.pitch.v2.1.61.referenceprice", ftypes.DOUBLE)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.titaniumoptions.complex.pitch.v2.1.61.remainingquantity", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titaniumoptions.complex.pitch.v2.1.61.reserved1", ftypes.BYTES)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.titaniumoptions.complex.pitch.v2.1.61.reserved2", ftypes.BYTES)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reserved_5 = ProtoField.new("Reserved 5", "cboe.titaniumoptions.complex.pitch.v2.1.61.reserved5", ftypes.BYTES)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.titaniumoptions.complex.pitch.v2.1.61.sellcontracts", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumoptions.complex.pitch.v2.1.61.sequence", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.titaniumoptions.complex.pitch.v2.1.61.sessionsubid", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.side = ProtoField.new("Side", "cboe.titaniumoptions.complex.pitch.v2.1.61.side", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.titaniumoptions.complex.pitch.v2.1.61.sideindicator", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.titaniumoptions.complex.pitch.v2.1.61.spinresponsestatus", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.titaniumoptions.complex.pitch.v2.1.61.symbolcondition", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.time = ProtoField.new("Time", "cboe.titaniumoptions.complex.pitch.v2.1.61.time", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.time_offset = ProtoField.new("Time Offset", "cboe.titaniumoptions.complex.pitch.v2.1.61.timeoffset", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumoptions.complex.pitch.v2.1.61.timestamp", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.titaniumoptions.complex.pitch.v2.1.61.tradecondition", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trade_date = ProtoField.new("Trade Date", "cboe.titaniumoptions.complex.pitch.v2.1.61.tradedate", ftypes.UINT32)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trading_status = ProtoField.new("Trading Status", "cboe.titaniumoptions.complex.pitch.v2.1.61.tradingstatus", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.underlying = ProtoField.new("Underlying", "cboe.titaniumoptions.complex.pitch.v2.1.61.underlying", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.unit = ProtoField.new("Unit", "cboe.titaniumoptions.complex.pitch.v2.1.61.unit", ftypes.UINT8)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.username = ProtoField.new("Username", "cboe.titaniumoptions.complex.pitch.v2.1.61.username", ftypes.STRING)

-- Cboe TitaniumOptions Pitch Complex 2.1.61 Application Messages
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.addorderexpandedmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.addorderlongmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.addordershortmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.auctioncancelmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.auctionnotificationmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.auctionsummarymessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.auctiontrademessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.deleteordermessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.endofsessionmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.exchange_designated_complex_instrument_definition_message = ProtoField.new("Exchange Designated Complex Instrument Definition Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.exchangedesignatedcomplexinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.gap_request_message = ProtoField.new("Gap Request Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.gaprequestmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.gap_response_message = ProtoField.new("Gap Response Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.gapresponsemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.grp_login_message = ProtoField.new("Grp Login Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.grploginmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.instrument_definition_request_message = ProtoField.new("Instrument Definition Request Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.instrumentdefinitionrequestmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.instrument_definition_response_message = ProtoField.new("Instrument Definition Response Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.instrumentdefinitionresponsemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.loginresponsemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.modifyorderlongmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.modifyordershortmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.optionsauctionupdatemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.orderexecutedmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.reducesizelongmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.reducesizeshortmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.spinfinishedmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.spinimageavailablemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.spinrequestmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.spinresponsemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.symbolmappingmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.time_message = ProtoField.new("Time Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.timemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.timereferencemessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.tradelongmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.tradeshortmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.tradingstatusmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.transactionbeginmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.transactionendmessage", ftypes.STRING)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.titaniumoptions.complex.pitch.v2.1.61.unitclearmessage", ftypes.STRING)

-- Cboe TitaniumOptions Complex Pitch 2.1.61 generated fields
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.edci_leg_index = ProtoField.new("Edci Leg Index", "cboe.titaniumoptions.complex.pitch.v2.1.61.edcilegindex", ftypes.UINT16)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_index = ProtoField.new("Leg Index", "cboe.titaniumoptions.complex.pitch.v2.1.61.legindex", ftypes.UINT16)
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumoptions.complex.pitch.v2.1.61.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumOptions Complex Pitch 2.1.61 Element Dissection Options
show.application_messages = true
show.edci_leg = true
show.leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true
show.leg_index = true
show.edci_leg_index = true

-- Register Cboe TitaniumOptions Complex Pitch 2.1.61 Show Options
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_edci_leg = Pref.bool("Show Edci Leg", show.edci_leg, "Parse and add Edci Leg to protocol tree")
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_leg = Pref.bool("Show Leg", show.leg, "Parse and add Leg to protocol tree")
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_leg_index = Pref.bool("Show Leg Index", show.leg_index, "Show generated leg index in protocol tree")
omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_edci_leg_index = Pref.bool("Show Edci Leg Index", show.edci_leg_index, "Show generated edci leg index in protocol tree")

-- Handle changed preferences
function omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_application_messages
  end
  if show.edci_leg ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_edci_leg then
    show.edci_leg = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_edci_leg
  end
  if show.leg ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_leg then
    show.leg = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_leg
  end
  if show.message ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_message then
    show.message = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_message_header then
    show.message_header = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_packet then
    show.packet = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_packet_header then
    show.packet_header = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_message_index then
    show.message_index = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_message_index
  end
  if show.leg_index ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_leg_index then
    show.leg_index = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_leg_index
  end
  if show.edci_leg_index ~= omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_edci_leg_index then
    show.edci_leg_index = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.prefs.show_edci_leg_index
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
-- Cboe TitaniumOptions Complex Pitch 2.1.61 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_end_offset = {}

-- Size: Auction End Offset
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id = {}

-- Size: Auction Id
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.size = 8

-- Display: Auction Id
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price = {}

-- Size: Auction Only Price
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price.translate(raw)
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type = {}

-- Size: Auction Type
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.size = 1

-- Display: Auction Type
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.display = function(value)
  if value == "C" then
    return "Auction Type: Complex Order Auction Coa (C)"
  end
  if value == "S" then
    return "Auction Type: Complex Solicitation Auction Mechanism (S)"
  end
  if value == "B" then
    return "Auction Type: Complex Aim (B)"
  end
  if value == "O" then
    return "Auction Type: Coa All Or None Rth Opening (O)"
  end
  if value == "G" then
    return "Auction Type: Gth Opening (G)"
  end
  if value == "H" then
    return "Auction Type: Halt Re Opening (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_titaniumoptions_complex_pitch_v2_1_61.buy_contracts = {}

-- Size: Buy Contracts
cboe_titaniumoptions_complex_pitch_v2_1_61.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_titaniumoptions_complex_pitch_v2_1_61.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_titaniumoptions_complex_pitch_v2_1_61.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Long
cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_long = {}

-- Size: Canceled Quantity Long
cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_long.size = 4

-- Display: Canceled Quantity Long
cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_long.display = function(value)
  return "Canceled Quantity Long: "..value
end

-- Dissect: Canceled Quantity Long
cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.canceled_quantity_long, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_titaniumoptions_complex_pitch_v2_1_61.client_id = {}

-- Size: Client Id
cboe_titaniumoptions_complex_pitch_v2_1_61.client_id.size = 4

-- Display: Client Id
cboe_titaniumoptions_complex_pitch_v2_1_61.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_titaniumoptions_complex_pitch_v2_1_61.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.client_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Expanded
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded = {}

-- Size: Complex Instrument Id Expanded
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.size = 8

-- Display: Complex Instrument Id Expanded
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.display = function(value)
  return "Complex Instrument Id Expanded: "..value
end

-- Dissect: Complex Instrument Id Expanded
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_id_expanded, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Complex Symbol Id
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_symbol_id = {}

-- Size: Complex Symbol Id
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_symbol_id.size = 6

-- Display: Complex Symbol Id
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_symbol_id.display = function(value)
  return "Complex Symbol Id: "..value
end

-- Dissect: Complex Symbol Id
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_symbol_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_symbol_id, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price.translate(raw)
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price.translate(raw)
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Count
cboe_titaniumoptions_complex_pitch_v2_1_61.count = {}

-- Size: Count
cboe_titaniumoptions_complex_pitch_v2_1_61.count.size = 2

-- Display: Count
cboe_titaniumoptions_complex_pitch_v2_1_61.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titaniumoptions_complex_pitch_v2_1_61.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator = {}

-- Size: Customer Indicator
cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Edci Subtype
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_subtype = {}

-- Size: Edci Subtype
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_subtype.size = 20

-- Display: Edci Subtype
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_subtype.display = function(value)
  return "Edci Subtype: "..value
end

-- Dissect: Edci Subtype
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_subtype.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.edci_subtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.edci_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.edci_subtype, range, value, display)

  return offset + length, value
end

-- Edci Type
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_type = {}

-- Size: Edci Type
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_type.size = 20

-- Display: Edci Type
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_type.display = function(value)
  return "Edci Type: "..value
end

-- Dissect: Edci Type
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.edci_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.edci_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.edci_type, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_titaniumoptions_complex_pitch_v2_1_61.epoch_time = {}

-- Size: Epoch Time
cboe_titaniumoptions_complex_pitch_v2_1_61.epoch_time.size = 4

-- Display: Epoch Time
cboe_titaniumoptions_complex_pitch_v2_1_61.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_titaniumoptions_complex_pitch_v2_1_61.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity = {}

-- Size: Executed Quantity
cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id = {}

-- Size: Execution Id
cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.size = 8

-- Display: Execution Id
cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.feed_symbol = {}

-- Size: Feed Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Filler
cboe_titaniumoptions_complex_pitch_v2_1_61.filler = {}

-- Size: Filler
cboe_titaniumoptions_complex_pitch_v2_1_61.filler.size = 2

-- Display: Filler
cboe_titaniumoptions_complex_pitch_v2_1_61.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_titaniumoptions_complex_pitch_v2_1_61.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.filler, range, value, display)

  return offset + length, value
end

-- Gap Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_status = {}

-- Size: Gap Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_status.size = 1

-- Display: Gap Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_status.display = function(value)
  if value == "A" then
    return "Gap Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Gap Response Status: Out Of Range (O)"
  end
  if value == "D" then
    return "Gap Response Status: Daily Gap Request Allocation Exhausted (D)"
  end
  if value == "M" then
    return "Gap Response Status: Minute Gap Request Allocation Exhausted (M)"
  end
  if value == "S" then
    return "Gap Response Status: Second Gap Request Allocation Exhausted (S)"
  end
  if value == "C" then
    return "Gap Response Status: Count Request Limit For One Gap Request Exceeded (C)"
  end
  if value == "I" then
    return "Gap Response Status: Invalid Unit Specified In Request (I)"
  end
  if value == "U" then
    return "Gap Response Status: Unit Is Currently Unavailable (U)"
  end

  return "Gap Response Status: Unknown("..value..")"
end

-- Dissect: Gap Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.gap_response_status, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_titaniumoptions_complex_pitch_v2_1_61.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_titaniumoptions_complex_pitch_v2_1_61.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_titaniumoptions_complex_pitch_v2_1_61.gth_trading_status.display = function(value)
  if value == "H" then
    return "Gth Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Gth Trading Status: Quote Only (Q)"
  end
  if value == "T" then
    return "Gth Trading Status: Trading (T)"
  end

  return "Gth Trading Status: Unknown("..value..")"
end

-- Dissect: Gth Trading Status
cboe_titaniumoptions_complex_pitch_v2_1_61.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price = {}

-- Size: Indicative Price
cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price.size = 8

-- Display: Indicative Price
cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price.translate(raw)
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Instrument Count
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_count = {}

-- Size: Instrument Count
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_count.size = 4

-- Display: Instrument Count
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_count.display = function(value)
  return "Instrument Count: "..value
end

-- Dissect: Instrument Count
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.instrument_count, range, value, display)

  return offset + length, value
end

-- Instrument Definition Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_status = {}

-- Size: Instrument Definition Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_status.size = 1

-- Display: Instrument Definition Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_status.display = function(value)
  if value == "A" then
    return "Instrument Definition Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Instrument Definition Response Status: Out Of Range Sequence Must Be 0 (O)"
  end
  if value == "S" then
    return "Instrument Definition Response Status: Spin Already In Progress (S)"
  end

  return "Instrument Definition Response Status: Unknown("..value..")"
end

-- Dissect: Instrument Definition Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.instrument_definition_response_status, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count = {}

-- Size: Leg Count
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count.size = 1

-- Display: Leg Count
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio = {}

-- Size: Leg Ratio
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_security_type = {}

-- Size: Leg Security Type
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Option Instrument (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity Instrument (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol = {}

-- Size: Leg Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumoptions_complex_pitch_v2_1_61.length = {}

-- Size: Length
cboe_titaniumoptions_complex_pitch_v2_1_61.length.size = 2

-- Display: Length
cboe_titaniumoptions_complex_pitch_v2_1_61.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumoptions_complex_pitch_v2_1_61.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_status = {}

-- Size: Login Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_status.size = 1

-- Display: Login Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized Invalid Username Password (N)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumoptions_complex_pitch_v2_1_61.message_length = {}

-- Size: Message Length
cboe_titaniumoptions_complex_pitch_v2_1_61.message_length.size = 1

-- Display: Message Length
cboe_titaniumoptions_complex_pitch_v2_1_61.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumoptions_complex_pitch_v2_1_61.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumoptions_complex_pitch_v2_1_61.message_type = {}

-- Size: Message Type
cboe_titaniumoptions_complex_pitch_v2_1_61.message_type.size = 1

-- Display: Message Type
cboe_titaniumoptions_complex_pitch_v2_1_61.message_type.display = function(value)
  if value == 0xB1 then
    return "Message Type: Time Reference Message (0xB1)"
  end
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0xBC then
    return "Message Type: Transaction Begin Message (0xBC)"
  end
  if value == 0xBD then
    return "Message Type: Transaction End Message (0xBD)"
  end
  if value == 0x9A then
    return "Message Type: Complex Instrument Definition Expanded Message (0x9A)"
  end
  if value == 0x9F then
    return "Message Type: Exchange Designated Complex Instrument Definition Message (0x9F)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x21 then
    return "Message Type: Add Order Long Message (0x21)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x2F then
    return "Message Type: Add Order Expanded Message (0x2F)"
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
  if value == 0x2A then
    return "Message Type: Trade Long Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Trade Short Message (0x2B)"
  end
  if value == 0xAD then
    return "Message Type: Auction Notification Message (0xAD)"
  end
  if value == 0xAE then
    return "Message Type: Auction Cancel Message (0xAE)"
  end
  if value == 0xAF then
    return "Message Type: Auction Trade Message (0xAF)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0xD1 then
    return "Message Type: Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end
  if value == 0x01 then
    return "Message Type: Grp Login Message (0x01)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x03 then
    return "Message Type: Gap Request Message (0x03)"
  end
  if value == 0x04 then
    return "Message Type: Gap Response Message (0x04)"
  end
  if value == 0x80 then
    return "Message Type: Spin Image Available Message (0x80)"
  end
  if value == 0x81 then
    return "Message Type: Spin Request Message (0x81)"
  end
  if value == 0x82 then
    return "Message Type: Spin Response Message (0x82)"
  end
  if value == 0x83 then
    return "Message Type: Spin Finished Message (0x83)"
  end
  if value == 0x84 then
    return "Message Type: Instrument Definition Request Message (0x84)"
  end
  if value == 0x85 then
    return "Message Type: Instrument Definition Response Message (0x85)"
  end
  if value == 0x86 then
    return "Message Type: Instrument Definition Finished Message (0x86)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_titaniumoptions_complex_pitch_v2_1_61.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_titaniumoptions_complex_pitch_v2_1_61.midnight_reference = {}

-- Size: Midnight Reference
cboe_titaniumoptions_complex_pitch_v2_1_61.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_titaniumoptions_complex_pitch_v2_1_61.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_titaniumoptions_complex_pitch_v2_1_61.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.opening_condition = {}

-- Size: Opening Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.opening_condition.size = 1

-- Display: Opening Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_titaniumoptions_complex_pitch_v2_1_61.order_count = {}

-- Size: Order Count
cboe_titaniumoptions_complex_pitch_v2_1_61.order_count.size = 4

-- Display: Order Count
cboe_titaniumoptions_complex_pitch_v2_1_61.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_titaniumoptions_complex_pitch_v2_1_61.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.order_count, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_titaniumoptions_complex_pitch_v2_1_61.order_id = {}

-- Size: Order Id
cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size = 8

-- Display: Order Id
cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.order_id, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.osi_symbol = {}

-- Size: Osi Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_titaniumoptions_complex_pitch_v2_1_61.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id = {}

-- Size: Participant Id
cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id.size = 4

-- Display: Participant Id
cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Password
cboe_titaniumoptions_complex_pitch_v2_1_61.password = {}

-- Size: Password
cboe_titaniumoptions_complex_pitch_v2_1_61.password.size = 10

-- Display: Password
cboe_titaniumoptions_complex_pitch_v2_1_61.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_titaniumoptions_complex_pitch_v2_1_61.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.password, range, value, display)

  return offset + length, value
end

-- Price Binary Signed Long Price 8
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8 = {}

-- Size: Price Binary Signed Long Price 8
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size = 8

-- Display: Price Binary Signed Long Price 8
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.display = function(value)
  return "Price Binary Signed Long Price 8: "..value
end

-- Translate: Price Binary Signed Long Price 8
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Binary Signed Long Price 8
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.translate(raw)
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.price_binary_signed_long_price_8, range, value, display)

  return offset + length, value
end

-- Price Binary Signed Short Price 2
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2 = {}

-- Size: Price Binary Signed Short Price 2
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.size = 2

-- Display: Price Binary Signed Short Price 2
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.display = function(value)
  return "Price Binary Signed Short Price 2: "..value
end

-- Translate: Price Binary Signed Short Price 2
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price Binary Signed Short Price 2
cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.translate(raw)
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.price_binary_signed_short_price_2, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long = {}

-- Size: Quantity Long
cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.size = 4

-- Display: Quantity Long
cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short = {}

-- Size: Quantity Short
cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.size = 2

-- Display: Quantity Short
cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price = {}

-- Size: Reference Price
cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price.size = 8

-- Display: Reference Price
cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price.translate(raw)
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_titaniumoptions_complex_pitch_v2_1_61.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_titaniumoptions_complex_pitch_v2_1_61.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_titaniumoptions_complex_pitch_v2_1_61.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_titaniumoptions_complex_pitch_v2_1_61.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1 = {}

-- Size: Reserved 1
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.size = 1

-- Display: Reserved 1
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2 = {}

-- Size: Reserved 2
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2.size = 2

-- Display: Reserved 2
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 5
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_5 = {}

-- Size: Reserved 5
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_5.size = 5

-- Display: Reserved 5
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_titaniumoptions_complex_pitch_v2_1_61.sell_contracts = {}

-- Size: Sell Contracts
cboe_titaniumoptions_complex_pitch_v2_1_61.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_titaniumoptions_complex_pitch_v2_1_61.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_titaniumoptions_complex_pitch_v2_1_61.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumoptions_complex_pitch_v2_1_61.sequence = {}

-- Size: Sequence
cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size = 4

-- Display: Sequence
cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_titaniumoptions_complex_pitch_v2_1_61.session_sub_id = {}

-- Size: Session Sub Id
cboe_titaniumoptions_complex_pitch_v2_1_61.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_titaniumoptions_complex_pitch_v2_1_61.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_titaniumoptions_complex_pitch_v2_1_61.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_titaniumoptions_complex_pitch_v2_1_61.side = {}

-- Size: Side
cboe_titaniumoptions_complex_pitch_v2_1_61.side.size = 1

-- Display: Side
cboe_titaniumoptions_complex_pitch_v2_1_61.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_titaniumoptions_complex_pitch_v2_1_61.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.side, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator = {}

-- Size: Side Indicator
cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.size = 1

-- Display: Side Indicator
cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_status = {}

-- Size: Spin Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_status.display = function(value)
  if value == "A" then
    return "Spin Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Spin Response Status: Out Of Range (O)"
  end
  if value == "S" then
    return "Spin Response Status: Spin Already In Progress (S)"
  end

  return "Spin Response Status: Unknown("..value..")"
end

-- Dissect: Spin Response Status
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_condition = {}

-- Size: Symbol Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_titaniumoptions_complex_pitch_v2_1_61.time = {}

-- Size: Time
cboe_titaniumoptions_complex_pitch_v2_1_61.time.size = 4

-- Display: Time
cboe_titaniumoptions_complex_pitch_v2_1_61.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_titaniumoptions_complex_pitch_v2_1_61.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset = {}

-- Size: Time Offset
cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size = 4

-- Display: Time Offset
cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumoptions_complex_pitch_v2_1_61.timestamp = {}

-- Size: Timestamp
cboe_titaniumoptions_complex_pitch_v2_1_61.timestamp.size = 4

-- Display: Timestamp
cboe_titaniumoptions_complex_pitch_v2_1_61.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titaniumoptions_complex_pitch_v2_1_61.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition = {}

-- Size: Trade Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.size = 1

-- Display: Trade Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_date = {}

-- Size: Trade Date
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_date.size = 4

-- Display: Trade Date
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status = {}

-- Size: Trading Status
cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status.size = 1

-- Display: Trading Status
cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "L" then
    return "Trading Status: Curb Trading (L)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "T" then
    return "Trading Status: Rth Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_titaniumoptions_complex_pitch_v2_1_61.underlying = {}

-- Size: Underlying
cboe_titaniumoptions_complex_pitch_v2_1_61.underlying.size = 8

-- Display: Underlying
cboe_titaniumoptions_complex_pitch_v2_1_61.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_titaniumoptions_complex_pitch_v2_1_61.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titaniumoptions_complex_pitch_v2_1_61.unit = {}

-- Size: Unit
cboe_titaniumoptions_complex_pitch_v2_1_61.unit.size = 1

-- Display: Unit
cboe_titaniumoptions_complex_pitch_v2_1_61.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumoptions_complex_pitch_v2_1_61.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_titaniumoptions_complex_pitch_v2_1_61.username = {}

-- Size: Username
cboe_titaniumoptions_complex_pitch_v2_1_61.username.size = 4

-- Display: Username
cboe_titaniumoptions_complex_pitch_v2_1_61.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_titaniumoptions_complex_pitch_v2_1_61.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumoptions_complex_pitch_v2_1_61.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumoptions_complex_pitch_v2_1_61.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumOptions Complex Pitch 2.1.61
-----------------------------------------------------------------------

-- Instrument Definition Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_message = {}

-- Size: Instrument Definition Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_count.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_status.size

-- Display: Instrument Definition Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  -- Instrument Count: Binary
  index, instrument_count = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_count.dissect(buffer, index, packet, parent)

  -- Instrument Definition Response Status: Alphanumeric
  index, instrument_definition_response_status = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.instrument_definition_response_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_request_message = {}

-- Size: Instrument Definition Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_request_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size

-- Display: Instrument Definition Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.instrument_definition_request_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_finished_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size

-- Display: Spin Finished Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_message = {}

-- Size: Spin Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_count.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_status.size

-- Display: Spin Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_titaniumoptions_complex_pitch_v2_1_61.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_request_message = {}

-- Size: Spin Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_request_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size

-- Display: Spin Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_image_available_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size

-- Display: Spin Image Available Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_titaniumoptions_complex_pitch_v2_1_61.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Gap Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_message = {}

-- Size: Gap Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.unit.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.count.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_status.size

-- Display: Gap Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit: Binary
  index, unit = cboe_titaniumoptions_complex_pitch_v2_1_61.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_titaniumoptions_complex_pitch_v2_1_61.count.dissect(buffer, index, packet, parent)

  -- Gap Response Status: Alphanumeric
  index, gap_response_status = cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.gap_response_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Gap Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_request_message = {}

-- Size: Gap Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_request_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.unit.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.count.size

-- Display: Gap Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit: Binary
  index, unit = cboe_titaniumoptions_complex_pitch_v2_1_61.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_titaniumoptions_complex_pitch_v2_1_61.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Request Message
cboe_titaniumoptions_complex_pitch_v2_1_61.gap_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.gap_request_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.gap_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.gap_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.gap_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_message = {}

-- Size: Login Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_status.size

-- Display: Login Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.login_response_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Grp Login Message
cboe_titaniumoptions_complex_pitch_v2_1_61.grp_login_message = {}

-- Size: Grp Login Message
cboe_titaniumoptions_complex_pitch_v2_1_61.grp_login_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.session_sub_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.username.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.filler.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.password.size

-- Display: Grp Login Message
cboe_titaniumoptions_complex_pitch_v2_1_61.grp_login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Grp Login Message
cboe_titaniumoptions_complex_pitch_v2_1_61.grp_login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_titaniumoptions_complex_pitch_v2_1_61.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_titaniumoptions_complex_pitch_v2_1_61.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_titaniumoptions_complex_pitch_v2_1_61.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_titaniumoptions_complex_pitch_v2_1_61.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Grp Login Message
cboe_titaniumoptions_complex_pitch_v2_1_61.grp_login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.grp_login_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.grp_login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.grp_login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.grp_login_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_titaniumoptions_complex_pitch_v2_1_61.end_of_session_message = {}

-- Size: End Of Session Message
cboe_titaniumoptions_complex_pitch_v2_1_61.end_of_session_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.timestamp.size

-- Display: End Of Session Message
cboe_titaniumoptions_complex_pitch_v2_1_61.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_titaniumoptions_complex_pitch_v2_1_61.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_titaniumoptions_complex_pitch_v2_1_61.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_summary_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.size

-- Display: Auction Summary Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Expanded: Printable ASCII
  index, complex_instrument_id_expanded = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_titaniumoptions_complex_pitch_v2_1_61.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_titaniumoptions_complex_pitch_v2_1_61.options_auction_update_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.buy_contracts.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.sell_contracts.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.opening_condition.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_titaniumoptions_complex_pitch_v2_1_61.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_titaniumoptions_complex_pitch_v2_1_61.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Expanded: Printable ASCII
  index, complex_instrument_id_expanded = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_titaniumoptions_complex_pitch_v2_1_61.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_titaniumoptions_complex_pitch_v2_1_61.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_titaniumoptions_complex_pitch_v2_1_61.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Signed Long Price
  index, indicative_price = cboe_titaniumoptions_complex_pitch_v2_1_61.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Signed Long Price
  index, auction_only_price = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_titaniumoptions_complex_pitch_v2_1_61.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Signed Long Price
  index, composite_market_bid_price = cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Signed Long Price
  index, composite_market_offer_price = cboe_titaniumoptions_complex_pitch_v2_1_61.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_titaniumoptions_complex_pitch_v2_1_61.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status_message = {}

-- Size: Trading Status Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.complex_symbol_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.gth_trading_status.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Trading Status Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Symbol Id: Printable ASCII
  index, complex_symbol_id = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_symbol_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_titaniumoptions_complex_pitch_v2_1_61.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_trade_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.size

-- Display: Auction Trade Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_cancel_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.size

-- Display: Auction Cancel Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_notification_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.side.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.auction_end_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.client_id.size

-- Display: Auction Notification Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titaniumoptions_complex_pitch_v2_1_61.side.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_titaniumoptions_complex_pitch_v2_1_61.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_titaniumoptions_complex_pitch_v2_1_61.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_short_message = {}

-- Size: Trade Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_short_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.size

-- Display: Trade Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Short Price 2: Binary Signed Short Price
  index, price_binary_signed_short_price_2 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_long_message = {}

-- Size: Trade Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_long_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.size

-- Display: Trade Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_titaniumoptions_complex_pitch_v2_1_61.delete_order_message = {}

-- Size: Delete Order Message
cboe_titaniumoptions_complex_pitch_v2_1_61.delete_order_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size

-- Display: Delete Order Message
cboe_titaniumoptions_complex_pitch_v2_1_61.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_titaniumoptions_complex_pitch_v2_1_61.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_titaniumoptions_complex_pitch_v2_1_61.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_short_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Modify Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Short Price 2: Binary Signed Short Price
  index, price_binary_signed_short_price_2 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_long_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Modify Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_short_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_long_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_long.size

-- Display: Reduce Size Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Long: Binary
  index, canceled_quantity_long = cboe_titaniumoptions_complex_pitch_v2_1_61.canceled_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.remaining_quantity.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.size

-- Display: Order Executed At Price Size Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_titaniumoptions_complex_pitch_v2_1_61.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_message = {}

-- Size: Order Executed Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.size

-- Display: Order Executed Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_titaniumoptions_complex_pitch_v2_1_61.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titaniumoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_expanded_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.client_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_5.size

-- Display: Add Order Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Expanded: Printable ASCII
  index, complex_instrument_id_expanded = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id_expanded.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_titaniumoptions_complex_pitch_v2_1_61.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_titaniumoptions_complex_pitch_v2_1_61.customer_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_titaniumoptions_complex_pitch_v2_1_61.client_id.dissect(buffer, index, packet, parent)

  -- Reserved 5: Reserved
  index, reserved_5 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_short_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Add Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Short Price 2: Binary Signed Short Price
  index, price_binary_signed_short_price_2 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_short_price_2.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_long_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Add Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titaniumoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titaniumoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Binary Signed Long Price 8: Binary Signed Long Price
  index, price_binary_signed_long_price_8 = cboe_titaniumoptions_complex_pitch_v2_1_61.price_binary_signed_long_price_8.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_mapping_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.feed_symbol.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.osi_symbol.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_condition.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.underlying.size

-- Display: Symbol Mapping Message
cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_titaniumoptions_complex_pitch_v2_1_61.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_titaniumoptions_complex_pitch_v2_1_61.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_titaniumoptions_complex_pitch_v2_1_61.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Edci Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_leg = {}

-- Size: Edci Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_leg.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio.size

-- Display: Edci Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Edci Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_leg.fields = function(buffer, offset, packet, parent, edci_leg_index)
  local index = offset

  -- Implicit Edci Leg Index
  if edci_leg_index ~= nil and show.edci_leg_index then
    local iteration = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.edci_leg_index, edci_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Edci Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.edci_leg.dissect = function(buffer, offset, packet, parent, edci_leg_index)
  if show.edci_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.edci_leg, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.edci_leg.fields(buffer, offset, packet, parent, edci_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.edci_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.edci_leg.fields(buffer, offset, packet, parent, edci_leg_index)
  end
end

-- Exchange Designated Complex Instrument Definition Message
cboe_titaniumoptions_complex_pitch_v2_1_61.exchange_designated_complex_instrument_definition_message = {}

-- Calculate size of: Exchange Designated Complex Instrument Definition Message
cboe_titaniumoptions_complex_pitch_v2_1_61.exchange_designated_complex_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.edci_type.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.edci_subtype.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count.size

  -- Calculate field size from count
  local edci_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + edci_leg_count * 12

  return index
end

-- Display: Exchange Designated Complex Instrument Definition Message
cboe_titaniumoptions_complex_pitch_v2_1_61.exchange_designated_complex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Designated Complex Instrument Definition Message
cboe_titaniumoptions_complex_pitch_v2_1_61.exchange_designated_complex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Edci Type: Printable ASCII
  index, edci_type = cboe_titaniumoptions_complex_pitch_v2_1_61.edci_type.dissect(buffer, index, packet, parent)

  -- Edci Subtype: Printable ASCII
  index, edci_subtype = cboe_titaniumoptions_complex_pitch_v2_1_61.edci_subtype.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_titaniumoptions_complex_pitch_v2_1_61.reserved_2.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Edci Leg
  for edci_leg_index = 1, leg_count do
    index, edci_leg = cboe_titaniumoptions_complex_pitch_v2_1_61.edci_leg.dissect(buffer, index, packet, parent, edci_leg_index)
  end

  return index
end

-- Dissect: Exchange Designated Complex Instrument Definition Message
cboe_titaniumoptions_complex_pitch_v2_1_61.exchange_designated_complex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.exchange_designated_complex_instrument_definition_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.exchange_designated_complex_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.exchange_designated_complex_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.exchange_designated_complex_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.leg = {}

-- Size: Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.leg.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.leg_security_type.size

-- Display: Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.leg.fields = function(buffer, offset, packet, parent, leg_index)
  local index = offset

  -- Implicit Leg Index
  if leg_index ~= nil and show.leg_index then
    local iteration = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg_index, leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg
cboe_titaniumoptions_complex_pitch_v2_1_61.leg.dissect = function(buffer, offset, packet, parent, leg_index)
  if show.leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.leg, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.leg.fields(buffer, offset, packet, parent, leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.leg.fields(buffer, offset, packet, parent, leg_index)
  end
end

-- Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_type.size

  index = index + cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count.size

  -- Calculate field size from count
  local leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_titaniumoptions_complex_pitch_v2_1_61.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Leg
  for leg_index = 1, leg_count do
    index, leg = cboe_titaniumoptions_complex_pitch_v2_1_61.leg.dissect(buffer, index, packet, parent, leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.complex_instrument_definition_expanded_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_end_message = {}

-- Size: Transaction End Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_end_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size

-- Display: Transaction End Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.transaction_end_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_begin_message = {}

-- Size: Transaction Begin Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_begin_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size

-- Display: Transaction Begin Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_titaniumoptions_complex_pitch_v2_1_61.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_titaniumoptions_complex_pitch_v2_1_61.unit_clear_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size

-- Display: Unit Clear Message
cboe_titaniumoptions_complex_pitch_v2_1_61.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_titaniumoptions_complex_pitch_v2_1_61.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_titaniumoptions_complex_pitch_v2_1_61.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_message = {}

-- Size: Time Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.time.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.epoch_time.size

-- Display: Time Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_titaniumoptions_complex_pitch_v2_1_61.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_titaniumoptions_complex_pitch_v2_1_61.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.time_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_reference_message = {}

-- Size: Time Reference Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_reference_message.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.midnight_reference.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.time.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.trade_date.size

-- Display: Time Reference Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_titaniumoptions_complex_pitch_v2_1_61.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_titaniumoptions_complex_pitch_v2_1_61.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Time Offset
  index, time_offset = cboe_titaniumoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_titaniumoptions_complex_pitch_v2_1_61.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_titaniumoptions_complex_pitch_v2_1_61.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumoptions_complex_pitch_v2_1_61.payload = {}

-- Dissect: Payload
cboe_titaniumoptions_complex_pitch_v2_1_61.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End Message
  if message_type == 0xBD then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.transaction_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Exchange Designated Complex Instrument Definition Message
  if message_type == 0x9F then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.exchange_designated_complex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Grp Login Message
  if message_type == 0x01 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.grp_login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Request Message
  if message_type == 0x03 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.gap_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Response Message
  if message_type == 0x04 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.gap_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Request Message
  if message_type == 0x84 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Response Message
  if message_type == 0x85 then
    return cboe_titaniumoptions_complex_pitch_v2_1_61.instrument_definition_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Finished Message
  if message_type == 0x86 then
    return offset
  end

  return offset
end

-- Message Header
cboe_titaniumoptions_complex_pitch_v2_1_61.message_header = {}

-- Size: Message Header
cboe_titaniumoptions_complex_pitch_v2_1_61.message_header.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.message_length.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.message_type.size

-- Display: Message Header
cboe_titaniumoptions_complex_pitch_v2_1_61.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumoptions_complex_pitch_v2_1_61.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumoptions_complex_pitch_v2_1_61.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 38 values
  index, message_type = cboe_titaniumoptions_complex_pitch_v2_1_61.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumoptions_complex_pitch_v2_1_61.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumoptions_complex_pitch_v2_1_61.message = {}

-- Display: Message
cboe_titaniumoptions_complex_pitch_v2_1_61.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumoptions_complex_pitch_v2_1_61.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumoptions_complex_pitch_v2_1_61.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 38 branches
  index = cboe_titaniumoptions_complex_pitch_v2_1_61.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumoptions_complex_pitch_v2_1_61.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.message, buffer(offset, 0))
    local current = cboe_titaniumoptions_complex_pitch_v2_1_61.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumoptions_complex_pitch_v2_1_61.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titaniumoptions_complex_pitch_v2_1_61.packet_header = {}

-- Size: Packet Header
cboe_titaniumoptions_complex_pitch_v2_1_61.packet_header.size =
  cboe_titaniumoptions_complex_pitch_v2_1_61.length.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.count.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.unit.size + 
  cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.size

-- Display: Packet Header
cboe_titaniumoptions_complex_pitch_v2_1_61.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumoptions_complex_pitch_v2_1_61.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumoptions_complex_pitch_v2_1_61.length.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_titaniumoptions_complex_pitch_v2_1_61.count.dissect(buffer, index, packet, parent)

  -- Unit: Binary
  index, unit = cboe_titaniumoptions_complex_pitch_v2_1_61.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_titaniumoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumoptions_complex_pitch_v2_1_61.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumoptions_complex_pitch_v2_1_61.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumoptions_complex_pitch_v2_1_61.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumoptions_complex_pitch_v2_1_61.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumoptions_complex_pitch_v2_1_61.packet = {}

-- Dissect Packet
cboe_titaniumoptions_complex_pitch_v2_1_61.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumoptions_complex_pitch_v2_1_61.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_titaniumoptions_complex_pitch_v2_1_61.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumoptions_complex_pitch_v2_1_61.init()
end

-- Dissector for Cboe TitaniumOptions Complex Pitch 2.1.61
function omi_cboe_titaniumoptions_complex_pitch_v2_1_61.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumoptions_complex_pitch_v2_1_61.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumoptions_complex_pitch_v2_1_61, buffer(), omi_cboe_titaniumoptions_complex_pitch_v2_1_61.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumoptions_complex_pitch_v2_1_61.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titaniumoptions_complex_pitch_v2_1_61)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Udp packet
cboe_titaniumoptions_complex_pitch_v2_1_61.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe TitaniumOptions Complex Pitch 2.1.61 (Udp)
local function omi_cboe_titaniumoptions_complex_pitch_v2_1_61_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumoptions_complex_pitch_v2_1_61.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumoptions_complex_pitch_v2_1_61
  omi_cboe_titaniumoptions_complex_pitch_v2_1_61.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumOptions Complex Pitch 2.1.61
omi_cboe_titaniumoptions_complex_pitch_v2_1_61:register_heuristic("udp", omi_cboe_titaniumoptions_complex_pitch_v2_1_61_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.1.61
--   Date: Wednesday, April 1, 2026
--   Specification: US_OPTIONS_COMPLEX_MULTICAST_PITCH_SPECIFICATION.pdf
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
