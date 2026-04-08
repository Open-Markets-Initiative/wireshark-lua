-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Titanium Options ComplexTop Pitch 1.1.54 Protocol
local omi_cboe_titanium_options_complextop_pitch_v1_1_54 = Proto("Cboe.Titanium.Options.ComplexTop.Pitch.v1.1.54.Lua", "Cboe Titanium Options ComplexTop Pitch 1.1.54")

-- Protocol table
local cboe_titanium_options_complextop_pitch_v1_1_54 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Titanium Options ComplexTop Pitch 1.1.54 Fields
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_customer_quantity_long = ProtoField.new("Ask Customer Quantity Long", "cboe.titanium.options.complextop.pitch.v1.1.54.askcustomerquantitylong", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_customer_quantity_short = ProtoField.new("Ask Customer Quantity Short", "cboe.titanium.options.complextop.pitch.v1.1.54.askcustomerquantityshort", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_price_long = ProtoField.new("Ask Price Long", "cboe.titanium.options.complextop.pitch.v1.1.54.askpricelong", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_price_short = ProtoField.new("Ask Price Short", "cboe.titanium.options.complextop.pitch.v1.1.54.askpriceshort", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_quantity_long = ProtoField.new("Ask Quantity Long", "cboe.titanium.options.complextop.pitch.v1.1.54.askquantitylong", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_quantity_short = ProtoField.new("Ask Quantity Short", "cboe.titanium.options.complextop.pitch.v1.1.54.askquantityshort", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.titanium.options.complextop.pitch.v1.1.54.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.auction_type = ProtoField.new("Auction Type", "cboe.titanium.options.complextop.pitch.v1.1.54.auctiontype", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_customer_quantity_long = ProtoField.new("Bid Customer Quantity Long", "cboe.titanium.options.complextop.pitch.v1.1.54.bidcustomerquantitylong", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_customer_quantity_short = ProtoField.new("Bid Customer Quantity Short", "cboe.titanium.options.complextop.pitch.v1.1.54.bidcustomerquantityshort", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_price_long = ProtoField.new("Bid Price Long", "cboe.titanium.options.complextop.pitch.v1.1.54.bidpricelong", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_price_short = ProtoField.new("Bid Price Short", "cboe.titanium.options.complextop.pitch.v1.1.54.bidpriceshort", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_quantity_long = ProtoField.new("Bid Quantity Long", "cboe.titanium.options.complextop.pitch.v1.1.54.bidquantitylong", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_quantity_short = ProtoField.new("Bid Quantity Short", "cboe.titanium.options.complextop.pitch.v1.1.54.bidquantityshort", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.titanium.options.complextop.pitch.v1.1.54.buycontracts", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.titanium.options.complextop.pitch.v1.1.54.complexinstrumentid", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_id_expanded = ProtoField.new("Complex Instrument Id Expanded", "cboe.titanium.options.complextop.pitch.v1.1.54.complexinstrumentidexpanded", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.titanium.options.complextop.pitch.v1.1.54.complexinstrumenttype", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.titanium.options.complextop.pitch.v1.1.54.complexinstrumentunderlying", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.titanium.options.complextop.pitch.v1.1.54.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.titanium.options.complextop.pitch.v1.1.54.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.count = ProtoField.new("Count", "cboe.titanium.options.complextop.pitch.v1.1.54.count", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.customer_quantity_long = ProtoField.new("Customer Quantity Long", "cboe.titanium.options.complextop.pitch.v1.1.54.customerquantitylong", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.customer_quantity_short = ProtoField.new("Customer Quantity Short", "cboe.titanium.options.complextop.pitch.v1.1.54.customerquantityshort", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.edci_leg = ProtoField.new("Edci Leg", "cboe.titanium.options.complextop.pitch.v1.1.54.edcileg", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.edci_subtype = ProtoField.new("Edci Subtype", "cboe.titanium.options.complextop.pitch.v1.1.54.edcisubtype", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.edci_type = ProtoField.new("Edci Type", "cboe.titanium.options.complextop.pitch.v1.1.54.edcitype", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.titanium.options.complextop.pitch.v1.1.54.epochtime", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.execution_id = ProtoField.new("Execution Id", "cboe.titanium.options.complextop.pitch.v1.1.54.executionid", ftypes.UINT64)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.titanium.options.complextop.pitch.v1.1.54.feedsymbol", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.filler = ProtoField.new("Filler", "cboe.titanium.options.complextop.pitch.v1.1.54.filler", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.gap_response_status = ProtoField.new("Gap Response Status", "cboe.titanium.options.complextop.pitch.v1.1.54.gapresponsestatus", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.titanium.options.complextop.pitch.v1.1.54.gthtradingstatus", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.titanium.options.complextop.pitch.v1.1.54.indicativeprice", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.instrument_count = ProtoField.new("Instrument Count", "cboe.titanium.options.complextop.pitch.v1.1.54.instrumentcount", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.instrument_definition_response_status = ProtoField.new("Instrument Definition Response Status", "cboe.titanium.options.complextop.pitch.v1.1.54.instrumentdefinitionresponsestatus", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg = ProtoField.new("Leg", "cboe.titanium.options.complextop.pitch.v1.1.54.leg", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_count = ProtoField.new("Leg Count", "cboe.titanium.options.complextop.pitch.v1.1.54.legcount", ftypes.UINT8)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.titanium.options.complextop.pitch.v1.1.54.legratio", ftypes.INT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.titanium.options.complextop.pitch.v1.1.54.legsecuritytype", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.titanium.options.complextop.pitch.v1.1.54.legsymbol", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.length = ProtoField.new("Length", "cboe.titanium.options.complextop.pitch.v1.1.54.length", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.titanium.options.complextop.pitch.v1.1.54.loginresponsestatus", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message = ProtoField.new("Message", "cboe.titanium.options.complextop.pitch.v1.1.54.message", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message_header = ProtoField.new("Message Header", "cboe.titanium.options.complextop.pitch.v1.1.54.messageheader", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message_length = ProtoField.new("Message Length", "cboe.titanium.options.complextop.pitch.v1.1.54.messagelength", ftypes.UINT8)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message_type = ProtoField.new("Message Type", "cboe.titanium.options.complextop.pitch.v1.1.54.messagetype", ftypes.UINT8)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.titanium.options.complextop.pitch.v1.1.54.midnightreference", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.titanium.options.complextop.pitch.v1.1.54.openingcondition", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.order_count = ProtoField.new("Order Count", "cboe.titanium.options.complextop.pitch.v1.1.54.ordercount", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.titanium.options.complextop.pitch.v1.1.54.osisymbol", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.packet = ProtoField.new("Packet", "cboe.titanium.options.complextop.pitch.v1.1.54.packet", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.packet_header = ProtoField.new("Packet Header", "cboe.titanium.options.complextop.pitch.v1.1.54.packetheader", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.password = ProtoField.new("Password", "cboe.titanium.options.complextop.pitch.v1.1.54.password", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.price_long = ProtoField.new("Price Long", "cboe.titanium.options.complextop.pitch.v1.1.54.pricelong", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.price_short = ProtoField.new("Price Short", "cboe.titanium.options.complextop.pitch.v1.1.54.priceshort", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.titanium.options.complextop.pitch.v1.1.54.quantitylong", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.titanium.options.complextop.pitch.v1.1.54.quantityshort", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.reference_price = ProtoField.new("Reference Price", "cboe.titanium.options.complextop.pitch.v1.1.54.referenceprice", ftypes.DOUBLE)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titanium.options.complextop.pitch.v1.1.54.reserved1", ftypes.BYTES)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.titanium.options.complextop.pitch.v1.1.54.reserved2", ftypes.BYTES)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.titanium.options.complextop.pitch.v1.1.54.sellcontracts", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.sequence = ProtoField.new("Sequence", "cboe.titanium.options.complextop.pitch.v1.1.54.sequence", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.titanium.options.complextop.pitch.v1.1.54.sessionsubid", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.side = ProtoField.new("Side", "cboe.titanium.options.complextop.pitch.v1.1.54.side", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_response_status = ProtoField.new("Spin Response Status", "cboe.titanium.options.complextop.pitch.v1.1.54.spinresponsestatus", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.titanium.options.complextop.pitch.v1.1.54.symbolcondition", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.time = ProtoField.new("Time", "cboe.titanium.options.complextop.pitch.v1.1.54.time", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.time_offset = ProtoField.new("Time Offset", "cboe.titanium.options.complextop.pitch.v1.1.54.timeoffset", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.timestamp = ProtoField.new("Timestamp", "cboe.titanium.options.complextop.pitch.v1.1.54.timestamp", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.total_volume = ProtoField.new("Total Volume", "cboe.titanium.options.complextop.pitch.v1.1.54.totalvolume", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.titanium.options.complextop.pitch.v1.1.54.tradecondition", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.trade_date = ProtoField.new("Trade Date", "cboe.titanium.options.complextop.pitch.v1.1.54.tradedate", ftypes.UINT32)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.trading_status = ProtoField.new("Trading Status", "cboe.titanium.options.complextop.pitch.v1.1.54.tradingstatus", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.underlying = ProtoField.new("Underlying", "cboe.titanium.options.complextop.pitch.v1.1.54.underlying", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.unit = ProtoField.new("Unit", "cboe.titanium.options.complextop.pitch.v1.1.54.unit", ftypes.UINT8)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.username = ProtoField.new("Username", "cboe.titanium.options.complextop.pitch.v1.1.54.username", ftypes.STRING)

-- Cboe Titanium Options Pitch ComplexTop 1.1.54 Application Messages
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.titanium.options.complextop.pitch.v1.1.54.auctionsummarymessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.titanium.options.complextop.pitch.v1.1.54.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.titanium.options.complextop.pitch.v1.1.54.endofsessionmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.exchange_designated_complex_instrument_definition_message = ProtoField.new("Exchange Designated Complex Instrument Definition Message", "cboe.titanium.options.complextop.pitch.v1.1.54.exchangedesignatedcomplexinstrumentdefinitionmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.gap_request_message = ProtoField.new("Gap Request Message", "cboe.titanium.options.complextop.pitch.v1.1.54.gaprequestmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.gap_response_message = ProtoField.new("Gap Response Message", "cboe.titanium.options.complextop.pitch.v1.1.54.gapresponsemessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.grp_login_message = ProtoField.new("Grp Login Message", "cboe.titanium.options.complextop.pitch.v1.1.54.grploginmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.instrument_definition_request_message = ProtoField.new("Instrument Definition Request Message", "cboe.titanium.options.complextop.pitch.v1.1.54.instrumentdefinitionrequestmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.instrument_definition_response_message = ProtoField.new("Instrument Definition Response Message", "cboe.titanium.options.complextop.pitch.v1.1.54.instrumentdefinitionresponsemessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.titanium.options.complextop.pitch.v1.1.54.loginresponsemessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.titanium.options.complextop.pitch.v1.1.54.optionsauctionupdatemessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.single_side_update_expanded_long_message = ProtoField.new("Single Side Update Expanded Long Message", "cboe.titanium.options.complextop.pitch.v1.1.54.singlesideupdateexpandedlongmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.single_side_update_expanded_short_message = ProtoField.new("Single Side Update Expanded Short Message", "cboe.titanium.options.complextop.pitch.v1.1.54.singlesideupdateexpandedshortmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_finished_message = ProtoField.new("Spin Finished Message", "cboe.titanium.options.complextop.pitch.v1.1.54.spinfinishedmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_image_available_message = ProtoField.new("Spin Image Available Message", "cboe.titanium.options.complextop.pitch.v1.1.54.spinimageavailablemessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_request_message = ProtoField.new("Spin Request Message", "cboe.titanium.options.complextop.pitch.v1.1.54.spinrequestmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_response_message = ProtoField.new("Spin Response Message", "cboe.titanium.options.complextop.pitch.v1.1.54.spinresponsemessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.titanium.options.complextop.pitch.v1.1.54.symbolmappingmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.time_message = ProtoField.new("Time Message", "cboe.titanium.options.complextop.pitch.v1.1.54.timemessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.titanium.options.complextop.pitch.v1.1.54.timereferencemessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.top_trade_message = ProtoField.new("Top Trade Message", "cboe.titanium.options.complextop.pitch.v1.1.54.toptrademessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.titanium.options.complextop.pitch.v1.1.54.tradingstatusmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.two_side_update_expanded_long_message = ProtoField.new("Two Side Update Expanded Long Message", "cboe.titanium.options.complextop.pitch.v1.1.54.twosideupdateexpandedlongmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.two_side_update_expanded_short_message = ProtoField.new("Two Side Update Expanded Short Message", "cboe.titanium.options.complextop.pitch.v1.1.54.twosideupdateexpandedshortmessage", ftypes.STRING)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.titanium.options.complextop.pitch.v1.1.54.unitclearmessage", ftypes.STRING)

-- Cboe Titanium Options ComplexTop Pitch 1.1.54 generated fields
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.edci_leg_index = ProtoField.new("Edci Leg Index", "cboe.titanium.options.complextop.pitch.v1.1.54.edcilegindex", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_index = ProtoField.new("Leg Index", "cboe.titanium.options.complextop.pitch.v1.1.54.legindex", ftypes.UINT16)
omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message_index = ProtoField.new("Message Index", "cboe.titanium.options.complextop.pitch.v1.1.54.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Titanium Options ComplexTop Pitch 1.1.54 Element Dissection Options
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

-- Register Cboe Titanium Options ComplexTop Pitch 1.1.54 Show Options
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_edci_leg = Pref.bool("Show Edci Leg", show.edci_leg, "Parse and add Edci Leg to protocol tree")
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_leg = Pref.bool("Show Leg", show.leg, "Parse and add Leg to protocol tree")
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_leg_index = Pref.bool("Show Leg Index", show.leg_index, "Show generated leg index in protocol tree")
omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_edci_leg_index = Pref.bool("Show Edci Leg Index", show.edci_leg_index, "Show generated edci leg index in protocol tree")

-- Handle changed preferences
function omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_application_messages then
    show.application_messages = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_application_messages
  end
  if show.edci_leg ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_edci_leg then
    show.edci_leg = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_edci_leg
  end
  if show.leg ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_leg then
    show.leg = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_leg
  end
  if show.message ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_message then
    show.message = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_message_header then
    show.message_header = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_packet then
    show.packet = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_packet_header then
    show.packet_header = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_message_index then
    show.message_index = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_message_index
  end
  if show.leg_index ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_leg_index then
    show.leg_index = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_leg_index
  end
  if show.edci_leg_index ~= omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_edci_leg_index then
    show.edci_leg_index = omi_cboe_titanium_options_complextop_pitch_v1_1_54.prefs.show_edci_leg_index
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
-- Cboe Titanium Options ComplexTop Pitch 1.1.54 Fields
-----------------------------------------------------------------------

-- Ask Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_long = {}

-- Size: Ask Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_long.size = 4

-- Display: Ask Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_long.display = function(value)
  return "Ask Customer Quantity Long: "..value
end

-- Dissect: Ask Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_short = {}

-- Size: Ask Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_short.size = 2

-- Display: Ask Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_short.display = function(value)
  return "Ask Customer Quantity Short: "..value
end

-- Dissect: Ask Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Ask Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long = {}

-- Size: Ask Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long.size = 8

-- Display: Ask Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Ask Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short = {}

-- Size: Ask Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short.size = 2

-- Display: Ask Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_long = {}

-- Size: Ask Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_long.size = 4

-- Display: Ask Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_long.display = function(value)
  return "Ask Quantity Long: "..value
end

-- Dissect: Ask Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_short = {}

-- Size: Ask Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_short.size = 2

-- Display: Ask Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_short.display = function(value)
  return "Ask Quantity Short: "..value
end

-- Dissect: Ask Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price = {}

-- Size: Auction Only Price
cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_titanium_options_complextop_pitch_v1_1_54.auction_type = {}

-- Size: Auction Type
cboe_titanium_options_complextop_pitch_v1_1_54.auction_type.size = 1

-- Display: Auction Type
cboe_titanium_options_complextop_pitch_v1_1_54.auction_type.display = function(value)
  if value == "G" then
    return "Auction Type: Gth Opening (G)"
  end
  if value == "O" then
    return "Auction Type: Rth Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Halt Re Opening (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_titanium_options_complextop_pitch_v1_1_54.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_long = {}

-- Size: Bid Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_long.size = 4

-- Display: Bid Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_long.display = function(value)
  return "Bid Customer Quantity Long: "..value
end

-- Dissect: Bid Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_short = {}

-- Size: Bid Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_short.size = 2

-- Display: Bid Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_short.display = function(value)
  return "Bid Customer Quantity Short: "..value
end

-- Dissect: Bid Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long = {}

-- Size: Bid Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long.size = 8

-- Display: Bid Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Bid Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short = {}

-- Size: Bid Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short.size = 2

-- Display: Bid Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_long = {}

-- Size: Bid Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_long.size = 4

-- Display: Bid Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_long.display = function(value)
  return "Bid Quantity Long: "..value
end

-- Dissect: Bid Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_short = {}

-- Size: Bid Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_short.size = 2

-- Display: Bid Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_short.display = function(value)
  return "Bid Quantity Short: "..value
end

-- Dissect: Bid Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_titanium_options_complextop_pitch_v1_1_54.buy_contracts = {}

-- Size: Buy Contracts
cboe_titanium_options_complextop_pitch_v1_1_54.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_titanium_options_complextop_pitch_v1_1_54.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_titanium_options_complextop_pitch_v1_1_54.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Expanded
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded = {}

-- Size: Complex Instrument Id Expanded
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded.size = 8

-- Display: Complex Instrument Id Expanded
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded.display = function(value)
  return "Complex Instrument Id Expanded: "..value
end

-- Dissect: Complex Instrument Id Expanded
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_id_expanded, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Count
cboe_titanium_options_complextop_pitch_v1_1_54.count = {}

-- Size: Count
cboe_titanium_options_complextop_pitch_v1_1_54.count.size = 2

-- Display: Count
cboe_titanium_options_complextop_pitch_v1_1_54.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titanium_options_complextop_pitch_v1_1_54.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_long = {}

-- Size: Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_long.size = 4

-- Display: Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_long.display = function(value)
  return "Customer Quantity Long: "..value
end

-- Dissect: Customer Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_short = {}

-- Size: Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_short.size = 2

-- Display: Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_short.display = function(value)
  return "Customer Quantity Short: "..value
end

-- Dissect: Customer Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Edci Subtype
cboe_titanium_options_complextop_pitch_v1_1_54.edci_subtype = {}

-- Size: Edci Subtype
cboe_titanium_options_complextop_pitch_v1_1_54.edci_subtype.size = 20

-- Display: Edci Subtype
cboe_titanium_options_complextop_pitch_v1_1_54.edci_subtype.display = function(value)
  return "Edci Subtype: "..value
end

-- Dissect: Edci Subtype
cboe_titanium_options_complextop_pitch_v1_1_54.edci_subtype.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.edci_subtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.edci_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.edci_subtype, range, value, display)

  return offset + length, value
end

-- Edci Type
cboe_titanium_options_complextop_pitch_v1_1_54.edci_type = {}

-- Size: Edci Type
cboe_titanium_options_complextop_pitch_v1_1_54.edci_type.size = 20

-- Display: Edci Type
cboe_titanium_options_complextop_pitch_v1_1_54.edci_type.display = function(value)
  return "Edci Type: "..value
end

-- Dissect: Edci Type
cboe_titanium_options_complextop_pitch_v1_1_54.edci_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.edci_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.edci_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.edci_type, range, value, display)

  return offset + length, value
end

-- Epoch Time
cboe_titanium_options_complextop_pitch_v1_1_54.epoch_time = {}

-- Size: Epoch Time
cboe_titanium_options_complextop_pitch_v1_1_54.epoch_time.size = 4

-- Display: Epoch Time
cboe_titanium_options_complextop_pitch_v1_1_54.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_titanium_options_complextop_pitch_v1_1_54.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_titanium_options_complextop_pitch_v1_1_54.execution_id = {}

-- Size: Execution Id
cboe_titanium_options_complextop_pitch_v1_1_54.execution_id.size = 8

-- Display: Execution Id
cboe_titanium_options_complextop_pitch_v1_1_54.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_titanium_options_complextop_pitch_v1_1_54.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.feed_symbol = {}

-- Size: Feed Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Filler
cboe_titanium_options_complextop_pitch_v1_1_54.filler = {}

-- Size: Filler
cboe_titanium_options_complextop_pitch_v1_1_54.filler.size = 2

-- Display: Filler
cboe_titanium_options_complextop_pitch_v1_1_54.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_titanium_options_complextop_pitch_v1_1_54.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.filler, range, value, display)

  return offset + length, value
end

-- Gap Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_status = {}

-- Size: Gap Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_status.size = 1

-- Display: Gap Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_status.display = function(value)
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
cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.gap_response_status, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_titanium_options_complextop_pitch_v1_1_54.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_titanium_options_complextop_pitch_v1_1_54.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_titanium_options_complextop_pitch_v1_1_54.gth_trading_status.display = function(value)
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
cboe_titanium_options_complextop_pitch_v1_1_54.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price = {}

-- Size: Indicative Price
cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price.size = 8

-- Display: Indicative Price
cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Instrument Count
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_count = {}

-- Size: Instrument Count
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_count.size = 4

-- Display: Instrument Count
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_count.display = function(value)
  return "Instrument Count: "..value
end

-- Dissect: Instrument Count
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.instrument_count, range, value, display)

  return offset + length, value
end

-- Instrument Definition Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_status = {}

-- Size: Instrument Definition Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_status.size = 1

-- Display: Instrument Definition Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_status.display = function(value)
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
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.instrument_definition_response_status, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_titanium_options_complextop_pitch_v1_1_54.leg_count = {}

-- Size: Leg Count
cboe_titanium_options_complextop_pitch_v1_1_54.leg_count.size = 1

-- Display: Leg Count
cboe_titanium_options_complextop_pitch_v1_1_54.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_titanium_options_complextop_pitch_v1_1_54.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio = {}

-- Size: Leg Ratio
cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_titanium_options_complextop_pitch_v1_1_54.leg_security_type = {}

-- Size: Leg Security Type
cboe_titanium_options_complextop_pitch_v1_1_54.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_titanium_options_complextop_pitch_v1_1_54.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Option Instrument (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity Instrument (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_titanium_options_complextop_pitch_v1_1_54.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol = {}

-- Size: Leg Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_titanium_options_complextop_pitch_v1_1_54.length = {}

-- Size: Length
cboe_titanium_options_complextop_pitch_v1_1_54.length.size = 2

-- Display: Length
cboe_titanium_options_complextop_pitch_v1_1_54.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titanium_options_complextop_pitch_v1_1_54.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.login_response_status = {}

-- Size: Login Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.login_response_status.size = 1

-- Display: Login Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.login_response_status.display = function(value)
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
cboe_titanium_options_complextop_pitch_v1_1_54.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titanium_options_complextop_pitch_v1_1_54.message_length = {}

-- Size: Message Length
cboe_titanium_options_complextop_pitch_v1_1_54.message_length.size = 1

-- Display: Message Length
cboe_titanium_options_complextop_pitch_v1_1_54.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titanium_options_complextop_pitch_v1_1_54.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titanium_options_complextop_pitch_v1_1_54.message_type = {}

-- Size: Message Type
cboe_titanium_options_complextop_pitch_v1_1_54.message_type.size = 1

-- Display: Message Type
cboe_titanium_options_complextop_pitch_v1_1_54.message_type.display = function(value)
  if value == 0xB1 then
    return "Message Type: Time Reference Message (0xB1)"
  end
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
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
  if value == 0xD4 then
    return "Message Type: Single Side Update Expanded Short Message (0xD4)"
  end
  if value == 0xD5 then
    return "Message Type: Single Side Update Expanded Long Message (0xD5)"
  end
  if value == 0xD6 then
    return "Message Type: Two Side Update Expanded Short Message (0xD6)"
  end
  if value == 0xD7 then
    return "Message Type: Two Side Update Expanded Long Message (0xD7)"
  end
  if value == 0xB8 then
    return "Message Type: Top Trade Message (0xB8)"
  end
  if value == 0xD1 then
    return "Message Type: Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
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
cboe_titanium_options_complextop_pitch_v1_1_54.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message_type, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_titanium_options_complextop_pitch_v1_1_54.midnight_reference = {}

-- Size: Midnight Reference
cboe_titanium_options_complextop_pitch_v1_1_54.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_titanium_options_complextop_pitch_v1_1_54.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_titanium_options_complextop_pitch_v1_1_54.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_titanium_options_complextop_pitch_v1_1_54.opening_condition = {}

-- Size: Opening Condition
cboe_titanium_options_complextop_pitch_v1_1_54.opening_condition.size = 1

-- Display: Opening Condition
cboe_titanium_options_complextop_pitch_v1_1_54.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_titanium_options_complextop_pitch_v1_1_54.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Order Count
cboe_titanium_options_complextop_pitch_v1_1_54.order_count = {}

-- Size: Order Count
cboe_titanium_options_complextop_pitch_v1_1_54.order_count.size = 4

-- Display: Order Count
cboe_titanium_options_complextop_pitch_v1_1_54.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
cboe_titanium_options_complextop_pitch_v1_1_54.order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.order_count, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.osi_symbol = {}

-- Size: Osi Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_titanium_options_complextop_pitch_v1_1_54.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Password
cboe_titanium_options_complextop_pitch_v1_1_54.password = {}

-- Size: Password
cboe_titanium_options_complextop_pitch_v1_1_54.password.size = 10

-- Display: Password
cboe_titanium_options_complextop_pitch_v1_1_54.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_titanium_options_complextop_pitch_v1_1_54.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.price_long = {}

-- Size: Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.price_long.size = 8

-- Display: Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_titanium_options_complextop_pitch_v1_1_54.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.price_long.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.price_short = {}

-- Size: Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.price_short.size = 2

-- Display: Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_titanium_options_complextop_pitch_v1_1_54.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.price_short.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long = {}

-- Size: Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.size = 4

-- Display: Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.quantity_short = {}

-- Size: Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.quantity_short.size = 2

-- Display: Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_titanium_options_complextop_pitch_v1_1_54.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_titanium_options_complextop_pitch_v1_1_54.reference_price = {}

-- Size: Reference Price
cboe_titanium_options_complextop_pitch_v1_1_54.reference_price.size = 8

-- Display: Reference Price
cboe_titanium_options_complextop_pitch_v1_1_54.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_titanium_options_complextop_pitch_v1_1_54.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_titanium_options_complextop_pitch_v1_1_54.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titanium_options_complextop_pitch_v1_1_54.reference_price.translate(raw)
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1 = {}

-- Size: Reserved 1
cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1.size = 1

-- Display: Reserved 1
cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2 = {}

-- Size: Reserved 2
cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2.size = 2

-- Display: Reserved 2
cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_titanium_options_complextop_pitch_v1_1_54.sell_contracts = {}

-- Size: Sell Contracts
cboe_titanium_options_complextop_pitch_v1_1_54.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_titanium_options_complextop_pitch_v1_1_54.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_titanium_options_complextop_pitch_v1_1_54.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titanium_options_complextop_pitch_v1_1_54.sequence = {}

-- Size: Sequence
cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size = 4

-- Display: Sequence
cboe_titanium_options_complextop_pitch_v1_1_54.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_titanium_options_complextop_pitch_v1_1_54.session_sub_id = {}

-- Size: Session Sub Id
cboe_titanium_options_complextop_pitch_v1_1_54.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_titanium_options_complextop_pitch_v1_1_54.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_titanium_options_complextop_pitch_v1_1_54.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_titanium_options_complextop_pitch_v1_1_54.side = {}

-- Size: Side
cboe_titanium_options_complextop_pitch_v1_1_54.side.size = 1

-- Display: Side
cboe_titanium_options_complextop_pitch_v1_1_54.side.display = function(value)
  if value == "B" then
    return "Side: Bid Side (B)"
  end
  if value == "S" then
    return "Side: Ask Side (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_titanium_options_complextop_pitch_v1_1_54.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.side, range, value, display)

  return offset + length, value
end

-- Spin Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_status = {}

-- Size: Spin Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_status.size = 1

-- Display: Spin Response Status
cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_status.display = function(value)
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
cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_response_status, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_titanium_options_complextop_pitch_v1_1_54.symbol_condition = {}

-- Size: Symbol Condition
cboe_titanium_options_complextop_pitch_v1_1_54.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_titanium_options_complextop_pitch_v1_1_54.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_titanium_options_complextop_pitch_v1_1_54.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_titanium_options_complextop_pitch_v1_1_54.time = {}

-- Size: Time
cboe_titanium_options_complextop_pitch_v1_1_54.time.size = 4

-- Display: Time
cboe_titanium_options_complextop_pitch_v1_1_54.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_titanium_options_complextop_pitch_v1_1_54.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_titanium_options_complextop_pitch_v1_1_54.time_offset = {}

-- Size: Time Offset
cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size = 4

-- Display: Time Offset
cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titanium_options_complextop_pitch_v1_1_54.timestamp = {}

-- Size: Timestamp
cboe_titanium_options_complextop_pitch_v1_1_54.timestamp.size = 4

-- Display: Timestamp
cboe_titanium_options_complextop_pitch_v1_1_54.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titanium_options_complextop_pitch_v1_1_54.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_titanium_options_complextop_pitch_v1_1_54.total_volume = {}

-- Size: Total Volume
cboe_titanium_options_complextop_pitch_v1_1_54.total_volume.size = 4

-- Display: Total Volume
cboe_titanium_options_complextop_pitch_v1_1_54.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_titanium_options_complextop_pitch_v1_1_54.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_titanium_options_complextop_pitch_v1_1_54.trade_condition = {}

-- Size: Trade Condition
cboe_titanium_options_complextop_pitch_v1_1_54.trade_condition.size = 1

-- Display: Trade Condition
cboe_titanium_options_complextop_pitch_v1_1_54.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
cboe_titanium_options_complextop_pitch_v1_1_54.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_titanium_options_complextop_pitch_v1_1_54.trade_date = {}

-- Size: Trade Date
cboe_titanium_options_complextop_pitch_v1_1_54.trade_date.size = 4

-- Display: Trade Date
cboe_titanium_options_complextop_pitch_v1_1_54.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_titanium_options_complextop_pitch_v1_1_54.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_titanium_options_complextop_pitch_v1_1_54.trading_status = {}

-- Size: Trading Status
cboe_titanium_options_complextop_pitch_v1_1_54.trading_status.size = 1

-- Display: Trading Status
cboe_titanium_options_complextop_pitch_v1_1_54.trading_status.display = function(value)
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
cboe_titanium_options_complextop_pitch_v1_1_54.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_titanium_options_complextop_pitch_v1_1_54.underlying = {}

-- Size: Underlying
cboe_titanium_options_complextop_pitch_v1_1_54.underlying.size = 8

-- Display: Underlying
cboe_titanium_options_complextop_pitch_v1_1_54.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_titanium_options_complextop_pitch_v1_1_54.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titanium_options_complextop_pitch_v1_1_54.unit = {}

-- Size: Unit
cboe_titanium_options_complextop_pitch_v1_1_54.unit.size = 1

-- Display: Unit
cboe_titanium_options_complextop_pitch_v1_1_54.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titanium_options_complextop_pitch_v1_1_54.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_titanium_options_complextop_pitch_v1_1_54.username = {}

-- Size: Username
cboe_titanium_options_complextop_pitch_v1_1_54.username.size = 4

-- Display: Username
cboe_titanium_options_complextop_pitch_v1_1_54.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_titanium_options_complextop_pitch_v1_1_54.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_options_complextop_pitch_v1_1_54.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_options_complextop_pitch_v1_1_54.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe Titanium Options ComplexTop Pitch 1.1.54
-----------------------------------------------------------------------

-- Instrument Definition Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_message = {}

-- Size: Instrument Definition Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.instrument_count.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_status.size

-- Display: Instrument Definition Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  -- Instrument Count: Binary
  index, instrument_count = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_count.dissect(buffer, index, packet, parent)

  -- Instrument Definition Response Status: Alphanumeric
  index, instrument_definition_response_status = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.instrument_definition_response_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_request_message = {}

-- Size: Instrument Definition Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_request_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size

-- Display: Instrument Definition Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.instrument_definition_request_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Finished Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_finished_message = {}

-- Size: Spin Finished Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_finished_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size

-- Display: Spin Finished Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_finished_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Finished Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_finished_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Finished Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_finished_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_finished_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.spin_finished_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.spin_finished_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.spin_finished_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_message = {}

-- Size: Spin Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.order_count.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_status.size

-- Display: Spin Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  -- Order Count: Binary
  index, order_count = cboe_titanium_options_complextop_pitch_v1_1_54.order_count.dissect(buffer, index, packet, parent)

  -- Spin Response Status: Alphanumeric
  index, spin_response_status = cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_response_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_request_message = {}

-- Size: Spin Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_request_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size

-- Display: Spin Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_request_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Image Available Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_image_available_message = {}

-- Size: Spin Image Available Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_image_available_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size

-- Display: Spin Image Available Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_image_available_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Image Available Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_image_available_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence: Binary
  index, sequence = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Image Available Message
cboe_titanium_options_complextop_pitch_v1_1_54.spin_image_available_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.spin_image_available_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.spin_image_available_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.spin_image_available_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.spin_image_available_message.fields(buffer, offset, packet, parent)
  end
end

-- Gap Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_message = {}

-- Size: Gap Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.unit.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.count.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_status.size

-- Display: Gap Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit: Binary
  index, unit = cboe_titanium_options_complextop_pitch_v1_1_54.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_titanium_options_complextop_pitch_v1_1_54.count.dissect(buffer, index, packet, parent)

  -- Gap Response Status: Alphanumeric
  index, gap_response_status = cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.gap_response_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Gap Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_request_message = {}

-- Size: Gap Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_request_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.unit.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.count.size

-- Display: Gap Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit: Binary
  index, unit = cboe_titanium_options_complextop_pitch_v1_1_54.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_titanium_options_complextop_pitch_v1_1_54.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Request Message
cboe_titanium_options_complextop_pitch_v1_1_54.gap_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.gap_request_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.gap_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.gap_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.gap_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.login_response_message = {}

-- Size: Login Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.login_response_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.login_response_status.size

-- Display: Login Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_titanium_options_complextop_pitch_v1_1_54.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_titanium_options_complextop_pitch_v1_1_54.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.login_response_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Grp Login Message
cboe_titanium_options_complextop_pitch_v1_1_54.grp_login_message = {}

-- Size: Grp Login Message
cboe_titanium_options_complextop_pitch_v1_1_54.grp_login_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.session_sub_id.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.username.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.filler.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.password.size

-- Display: Grp Login Message
cboe_titanium_options_complextop_pitch_v1_1_54.grp_login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Grp Login Message
cboe_titanium_options_complextop_pitch_v1_1_54.grp_login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_titanium_options_complextop_pitch_v1_1_54.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_titanium_options_complextop_pitch_v1_1_54.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_titanium_options_complextop_pitch_v1_1_54.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_titanium_options_complextop_pitch_v1_1_54.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Grp Login Message
cboe_titanium_options_complextop_pitch_v1_1_54.grp_login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.grp_login_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.grp_login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.grp_login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.grp_login_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_titanium_options_complextop_pitch_v1_1_54.end_of_session_message = {}

-- Size: End Of Session Message
cboe_titanium_options_complextop_pitch_v1_1_54.end_of_session_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.timestamp.size

-- Display: End Of Session Message
cboe_titanium_options_complextop_pitch_v1_1_54.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_titanium_options_complextop_pitch_v1_1_54.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titanium_options_complextop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_titanium_options_complextop_pitch_v1_1_54.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_titanium_options_complextop_pitch_v1_1_54.trading_status_message = {}

-- Size: Trading Status Message
cboe_titanium_options_complextop_pitch_v1_1_54.trading_status_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.trading_status.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.gth_trading_status.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1.size

-- Display: Trading Status Message
cboe_titanium_options_complextop_pitch_v1_1_54.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_titanium_options_complextop_pitch_v1_1_54.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_titanium_options_complextop_pitch_v1_1_54.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_titanium_options_complextop_pitch_v1_1_54.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_titanium_options_complextop_pitch_v1_1_54.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_titanium_options_complextop_pitch_v1_1_54.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_titanium_options_complextop_pitch_v1_1_54.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_titanium_options_complextop_pitch_v1_1_54.auction_summary_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.auction_type.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.price_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.size

-- Display: Auction Summary Message
cboe_titanium_options_complextop_pitch_v1_1_54.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_titanium_options_complextop_pitch_v1_1_54.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Expanded: Printable ASCII
  index, complex_instrument_id_expanded = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titanium_options_complextop_pitch_v1_1_54.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titanium_options_complextop_pitch_v1_1_54.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_titanium_options_complextop_pitch_v1_1_54.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_titanium_options_complextop_pitch_v1_1_54.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_titanium_options_complextop_pitch_v1_1_54.options_auction_update_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.auction_type.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.reference_price.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.buy_contracts.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.sell_contracts.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.opening_condition.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_titanium_options_complextop_pitch_v1_1_54.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_titanium_options_complextop_pitch_v1_1_54.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Expanded: Printable ASCII
  index, complex_instrument_id_expanded = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id_expanded.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titanium_options_complextop_pitch_v1_1_54.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_titanium_options_complextop_pitch_v1_1_54.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_titanium_options_complextop_pitch_v1_1_54.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_titanium_options_complextop_pitch_v1_1_54.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Signed Long Price
  index, indicative_price = cboe_titanium_options_complextop_pitch_v1_1_54.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Signed Long Price
  index, auction_only_price = cboe_titanium_options_complextop_pitch_v1_1_54.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_titanium_options_complextop_pitch_v1_1_54.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Signed Long Price
  index, composite_market_bid_price = cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Signed Long Price
  index, composite_market_offer_price = cboe_titanium_options_complextop_pitch_v1_1_54.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_titanium_options_complextop_pitch_v1_1_54.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Trade Message
cboe_titanium_options_complextop_pitch_v1_1_54.top_trade_message = {}

-- Size: Top Trade Message
cboe_titanium_options_complextop_pitch_v1_1_54.top_trade_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.price_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.execution_id.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.total_volume.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.trade_condition.size

-- Display: Top Trade Message
cboe_titanium_options_complextop_pitch_v1_1_54.top_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Trade Message
cboe_titanium_options_complextop_pitch_v1_1_54.top_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titanium_options_complextop_pitch_v1_1_54.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titanium_options_complextop_pitch_v1_1_54.execution_id.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_titanium_options_complextop_pitch_v1_1_54.total_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titanium_options_complextop_pitch_v1_1_54.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Trade Message
cboe_titanium_options_complextop_pitch_v1_1_54.top_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.top_trade_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.top_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.top_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.top_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Two Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_long_message = {}

-- Size: Two Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_long_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bit_fields.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_long.size

-- Display: Two Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Bit Fields
  index, bit_fields = cboe_titanium_options_complextop_pitch_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Binary Long Price
  index, bid_price_long = cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Binary
  index, bid_quantity_long = cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Long: Binary
  index, bid_customer_quantity_long = cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Binary Long Price
  index, ask_price_long = cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Binary
  index, ask_quantity_long = cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Long: Binary
  index, ask_customer_quantity_long = cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.two_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Two Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_short_message = {}

-- Size: Two Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_short_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bit_fields.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_short.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_short.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_short.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_short.size

-- Display: Two Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Bit Fields
  index, bit_fields = cboe_titanium_options_complextop_pitch_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Binary Short Price
  index, bid_price_short = cboe_titanium_options_complextop_pitch_v1_1_54.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Binary
  index, bid_quantity_short = cboe_titanium_options_complextop_pitch_v1_1_54.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Short: Binary
  index, bid_customer_quantity_short = cboe_titanium_options_complextop_pitch_v1_1_54.bid_customer_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Binary Short Price
  index, ask_price_short = cboe_titanium_options_complextop_pitch_v1_1_54.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Binary
  index, ask_quantity_short = cboe_titanium_options_complextop_pitch_v1_1_54.ask_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Short: Binary
  index, ask_customer_quantity_short = cboe_titanium_options_complextop_pitch_v1_1_54.ask_customer_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.two_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_long_message = {}

-- Size: Single Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_long_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.side.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bit_fields.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.price_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_long.size

-- Display: Single Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titanium_options_complextop_pitch_v1_1_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields
  index, bit_fields = cboe_titanium_options_complextop_pitch_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_titanium_options_complextop_pitch_v1_1_54.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_titanium_options_complextop_pitch_v1_1_54.quantity_long.dissect(buffer, index, packet, parent)

  -- Customer Quantity Long: Binary
  index, customer_quantity_long = cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Long Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.single_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_short_message = {}

-- Size: Single Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_short_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.side.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.bit_fields.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.price_short.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.quantity_short.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_short.size

-- Display: Single Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titanium_options_complextop_pitch_v1_1_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields
  index, bit_fields = cboe_titanium_options_complextop_pitch_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_titanium_options_complextop_pitch_v1_1_54.price_short.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_titanium_options_complextop_pitch_v1_1_54.quantity_short.dissect(buffer, index, packet, parent)

  -- Customer Quantity Short: Binary
  index, customer_quantity_short = cboe_titanium_options_complextop_pitch_v1_1_54.customer_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Short Message
cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.single_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_titanium_options_complextop_pitch_v1_1_54.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_titanium_options_complextop_pitch_v1_1_54.symbol_mapping_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.feed_symbol.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.osi_symbol.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.symbol_condition.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.underlying.size

-- Display: Symbol Mapping Message
cboe_titanium_options_complextop_pitch_v1_1_54.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_titanium_options_complextop_pitch_v1_1_54.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_titanium_options_complextop_pitch_v1_1_54.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_titanium_options_complextop_pitch_v1_1_54.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_titanium_options_complextop_pitch_v1_1_54.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_titanium_options_complextop_pitch_v1_1_54.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_titanium_options_complextop_pitch_v1_1_54.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Edci Leg
cboe_titanium_options_complextop_pitch_v1_1_54.edci_leg = {}

-- Size: Edci Leg
cboe_titanium_options_complextop_pitch_v1_1_54.edci_leg.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio.size

-- Display: Edci Leg
cboe_titanium_options_complextop_pitch_v1_1_54.edci_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Edci Leg
cboe_titanium_options_complextop_pitch_v1_1_54.edci_leg.fields = function(buffer, offset, packet, parent, edci_leg_index)
  local index = offset

  -- Implicit Edci Leg Index
  if edci_leg_index ~= nil and show.edci_leg_index then
    local iteration = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.edci_leg_index, edci_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Edci Leg
cboe_titanium_options_complextop_pitch_v1_1_54.edci_leg.dissect = function(buffer, offset, packet, parent, edci_leg_index)
  if show.edci_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.edci_leg, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.edci_leg.fields(buffer, offset, packet, parent, edci_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.edci_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.edci_leg.fields(buffer, offset, packet, parent, edci_leg_index)
  end
end

-- Exchange Designated Complex Instrument Definition Message
cboe_titanium_options_complextop_pitch_v1_1_54.exchange_designated_complex_instrument_definition_message = {}

-- Calculate size of: Exchange Designated Complex Instrument Definition Message
cboe_titanium_options_complextop_pitch_v1_1_54.exchange_designated_complex_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.edci_type.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.edci_subtype.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.leg_count.size

  -- Calculate field size from count
  local edci_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + edci_leg_count * 12

  return index
end

-- Display: Exchange Designated Complex Instrument Definition Message
cboe_titanium_options_complextop_pitch_v1_1_54.exchange_designated_complex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Designated Complex Instrument Definition Message
cboe_titanium_options_complextop_pitch_v1_1_54.exchange_designated_complex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Edci Type: Printable ASCII
  index, edci_type = cboe_titanium_options_complextop_pitch_v1_1_54.edci_type.dissect(buffer, index, packet, parent)

  -- Edci Subtype: Printable ASCII
  index, edci_subtype = cboe_titanium_options_complextop_pitch_v1_1_54.edci_subtype.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_titanium_options_complextop_pitch_v1_1_54.reserved_2.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_titanium_options_complextop_pitch_v1_1_54.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Edci Leg
  for edci_leg_index = 1, leg_count do
    index, edci_leg = cboe_titanium_options_complextop_pitch_v1_1_54.edci_leg.dissect(buffer, index, packet, parent, edci_leg_index)
  end

  return index
end

-- Dissect: Exchange Designated Complex Instrument Definition Message
cboe_titanium_options_complextop_pitch_v1_1_54.exchange_designated_complex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.exchange_designated_complex_instrument_definition_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.exchange_designated_complex_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.exchange_designated_complex_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.exchange_designated_complex_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg
cboe_titanium_options_complextop_pitch_v1_1_54.leg = {}

-- Size: Leg
cboe_titanium_options_complextop_pitch_v1_1_54.leg.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.leg_security_type.size

-- Display: Leg
cboe_titanium_options_complextop_pitch_v1_1_54.leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg
cboe_titanium_options_complextop_pitch_v1_1_54.leg.fields = function(buffer, offset, packet, parent, leg_index)
  local index = offset

  -- Implicit Leg Index
  if leg_index ~= nil and show.leg_index then
    local iteration = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg_index, leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_titanium_options_complextop_pitch_v1_1_54.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_titanium_options_complextop_pitch_v1_1_54.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_titanium_options_complextop_pitch_v1_1_54.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg
cboe_titanium_options_complextop_pitch_v1_1_54.leg.dissect = function(buffer, offset, packet, parent, leg_index)
  if show.leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.leg, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.leg.fields(buffer, offset, packet, parent, leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.leg.fields(buffer, offset, packet, parent, leg_index)
  end
end

-- Complex Instrument Definition Expanded Message
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_type.size

  index = index + cboe_titanium_options_complextop_pitch_v1_1_54.leg_count.size

  -- Calculate field size from count
  local leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: Printable ASCII
  index, complex_instrument_id = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_titanium_options_complextop_pitch_v1_1_54.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Leg
  for leg_index = 1, leg_count do
    index, leg = cboe_titanium_options_complextop_pitch_v1_1_54.leg.dissect(buffer, index, packet, parent, leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.complex_instrument_definition_expanded_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_definition_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_titanium_options_complextop_pitch_v1_1_54.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_titanium_options_complextop_pitch_v1_1_54.unit_clear_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size

-- Display: Unit Clear Message
cboe_titanium_options_complextop_pitch_v1_1_54.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_titanium_options_complextop_pitch_v1_1_54.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_titanium_options_complextop_pitch_v1_1_54.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_message = {}

-- Size: Time Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.time.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.epoch_time.size

-- Display: Time Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_titanium_options_complextop_pitch_v1_1_54.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: Binary
  index, epoch_time = cboe_titanium_options_complextop_pitch_v1_1_54.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.time_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_reference_message = {}

-- Size: Time Reference Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_reference_message.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.midnight_reference.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.time.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.trade_date.size

-- Display: Time Reference Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: Binary
  index, midnight_reference = cboe_titanium_options_complextop_pitch_v1_1_54.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = cboe_titanium_options_complextop_pitch_v1_1_54.time.dissect(buffer, index, packet, parent)

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_options_complextop_pitch_v1_1_54.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: Binary Date
  index, trade_date = cboe_titanium_options_complextop_pitch_v1_1_54.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_titanium_options_complextop_pitch_v1_1_54.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titanium_options_complextop_pitch_v1_1_54.payload = {}

-- Dissect: Payload
cboe_titanium_options_complextop_pitch_v1_1_54.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_titanium_options_complextop_pitch_v1_1_54.complex_instrument_definition_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Exchange Designated Complex Instrument Definition Message
  if message_type == 0x9F then
    return cboe_titanium_options_complextop_pitch_v1_1_54.exchange_designated_complex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_titanium_options_complextop_pitch_v1_1_54.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Short Message
  if message_type == 0xD4 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Long Message
  if message_type == 0xD5 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.single_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Short Message
  if message_type == 0xD6 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Long Message
  if message_type == 0xD7 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.two_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Trade Message
  if message_type == 0xB8 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.top_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_titanium_options_complextop_pitch_v1_1_54.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Grp Login Message
  if message_type == 0x01 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.grp_login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Request Message
  if message_type == 0x03 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.gap_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Response Message
  if message_type == 0x04 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.gap_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Image Available Message
  if message_type == 0x80 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.spin_image_available_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == 0x81 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == 0x82 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Finished Message
  if message_type == 0x83 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.spin_finished_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Request Message
  if message_type == 0x84 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Response Message
  if message_type == 0x85 then
    return cboe_titanium_options_complextop_pitch_v1_1_54.instrument_definition_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Definition Finished Message
  if message_type == 0x86 then
    return offset
  end

  return offset
end

-- Message Header
cboe_titanium_options_complextop_pitch_v1_1_54.message_header = {}

-- Size: Message Header
cboe_titanium_options_complextop_pitch_v1_1_54.message_header.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.message_length.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.message_type.size

-- Display: Message Header
cboe_titanium_options_complextop_pitch_v1_1_54.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titanium_options_complextop_pitch_v1_1_54.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titanium_options_complextop_pitch_v1_1_54.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 26 values
  index, message_type = cboe_titanium_options_complextop_pitch_v1_1_54.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titanium_options_complextop_pitch_v1_1_54.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message_header, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titanium_options_complextop_pitch_v1_1_54.message = {}

-- Display: Message
cboe_titanium_options_complextop_pitch_v1_1_54.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titanium_options_complextop_pitch_v1_1_54.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titanium_options_complextop_pitch_v1_1_54.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 26 branches
  index = cboe_titanium_options_complextop_pitch_v1_1_54.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titanium_options_complextop_pitch_v1_1_54.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.message, buffer(offset, 0))
    local current = cboe_titanium_options_complextop_pitch_v1_1_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titanium_options_complextop_pitch_v1_1_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titanium_options_complextop_pitch_v1_1_54.packet_header = {}

-- Size: Packet Header
cboe_titanium_options_complextop_pitch_v1_1_54.packet_header.size =
  cboe_titanium_options_complextop_pitch_v1_1_54.length.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.count.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.unit.size + 
  cboe_titanium_options_complextop_pitch_v1_1_54.sequence.size

-- Display: Packet Header
cboe_titanium_options_complextop_pitch_v1_1_54.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titanium_options_complextop_pitch_v1_1_54.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titanium_options_complextop_pitch_v1_1_54.length.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_titanium_options_complextop_pitch_v1_1_54.count.dissect(buffer, index, packet, parent)

  -- Unit: Binary
  index, unit = cboe_titanium_options_complextop_pitch_v1_1_54.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_titanium_options_complextop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titanium_options_complextop_pitch_v1_1_54.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54.fields.packet_header, buffer(offset, 0))
    local index = cboe_titanium_options_complextop_pitch_v1_1_54.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_options_complextop_pitch_v1_1_54.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_options_complextop_pitch_v1_1_54.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titanium_options_complextop_pitch_v1_1_54.packet = {}

-- Dissect Packet
cboe_titanium_options_complextop_pitch_v1_1_54.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titanium_options_complextop_pitch_v1_1_54.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_titanium_options_complextop_pitch_v1_1_54.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titanium_options_complextop_pitch_v1_1_54.init()
end

-- Dissector for Cboe Titanium Options ComplexTop Pitch 1.1.54
function omi_cboe_titanium_options_complextop_pitch_v1_1_54.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titanium_options_complextop_pitch_v1_1_54.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titanium_options_complextop_pitch_v1_1_54, buffer(), omi_cboe_titanium_options_complextop_pitch_v1_1_54.description, "("..buffer:len().." Bytes)")
  return cboe_titanium_options_complextop_pitch_v1_1_54.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titanium_options_complextop_pitch_v1_1_54)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_titanium_options_complextop_pitch_v1_1_54.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Titanium Options ComplexTop Pitch 1.1.54
local function omi_cboe_titanium_options_complextop_pitch_v1_1_54_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titanium_options_complextop_pitch_v1_1_54.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titanium_options_complextop_pitch_v1_1_54
  omi_cboe_titanium_options_complextop_pitch_v1_1_54.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Titanium Options ComplexTop Pitch 1.1.54
omi_cboe_titanium_options_complextop_pitch_v1_1_54:register_heuristic("udp", omi_cboe_titanium_options_complextop_pitch_v1_1_54_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.54
--   Date: Wednesday, April 1, 2026
--   Specification: US_OPTIONS_COMPLEX_MULTICAST_TOP_SPECIFICATION.pdf
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
