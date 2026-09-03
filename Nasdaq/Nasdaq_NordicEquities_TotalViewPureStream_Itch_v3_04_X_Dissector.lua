-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X Protocol
local omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x = Proto("Omi.Nasdaq.NordicEquities.TotalViewPureStream.Itch.v3.04.X", "Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X")

-- Protocol table
local nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X Fields
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.add_quantity = ProtoField.new("Add Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.addquantity", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.aggressing_side = ProtoField.new("Aggressing Side", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.aggressingside", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.aod_mic = ProtoField.new("Aod Mic", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.aodmic", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.attribution = ProtoField.new("Attribution", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.attribution", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.bb_buy_back = ProtoField.new("Bb Buy Back", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.bbbuyback", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.best_ask_price = ProtoField.new("Best Ask Price", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.bestaskprice", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.bestaskquantity", ftypes.UINT64)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.best_bid_price = ProtoField.new("Best Bid Price", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.bestbidprice", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.bestbidquantity", ftypes.UINT64)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.br_company_bankruptcy = ProtoField.new("Br Company Bankruptcy", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.brcompanybankruptcy", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.bs_excluding_comb_bonus_split = ProtoField.new("Bs Excluding Comb Bonus Split", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.bsexcludingcombbonussplit", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.buysellindicator", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.canceled_quantity = ProtoField.new("Canceled Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.canceledquantity", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ce_capped_by_esma = ProtoField.new("Ce Capped By Esma", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.cecappedbyesma", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cross_level = ProtoField.new("Cross Level", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.crosslevel", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.crossprice", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.crosstype", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cs_cent_shares = ProtoField.new("Cs Cent Shares", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.cscentshares", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.currency = ProtoField.new("Currency", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.currency", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.da_digital_asset = ProtoField.new("Da Digital Asset", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.dadigitalasset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.em_exceptional_circumstances_related_to_market_maker = ProtoField.new("Em Exceptional Circumstances Related To Market Maker", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.emexceptionalcircumstancesrelatedtomarketmaker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.equilibriumprice", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.event_code = ProtoField.new("Event Code", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.eventcode", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ew_marketwide_exceptional_circumstance = ProtoField.new("Ew Marketwide Exceptional Circumstance", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.ewmarketwideexceptionalcircumstance", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.executed_quantity = ProtoField.new("Executed Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.executedquantity", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.extension = ProtoField.new("Extension", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.extension", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.far_price = ProtoField.new("Far Price", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.farprice", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.fe_foreign_non_eueea_entity = ProtoField.new("Fe Foreign Non Eueea Entity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.feforeignnoneueeaentity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.financial_product = ProtoField.new("Financial Product", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.financialproduct", ftypes.UINT8)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.fn_first_north_company = ProtoField.new("Fn First North Company", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.fnfirstnorthcompany", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.hidden_quantity = ProtoField.new("Hidden Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.hiddenquantity", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.imbalancedirection", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.imbalance_quantity = ProtoField.new("Imbalance Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.imbalancequantity", ftypes.UINT64)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.isin = ProtoField.new("Isin", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.isin", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.kb_knock_out_buy_back = ProtoField.new("Kb Knock Out Buy Back", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.kbknockoutbuyback", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.kn_knockout_buy_back_into_next_trading_day = ProtoField.new("Kn Knockout Buy Back Into Next Trading Day", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.knknockoutbuybackintonexttradingday", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.market_segment_id = ProtoField.new("Market Segment Id", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.marketsegmentid", ftypes.UINT16)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.match_number = ProtoField.new("Match Number", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.matchnumber", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message = ProtoField.new("Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.message", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_count = ProtoField.new("Message Count", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.messagecount", ftypes.UINT16)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_header = ProtoField.new("Message Header", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.messageheader", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_length = ProtoField.new("Message Length", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.messagelength", ftypes.UINT16)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_type = ProtoField.new("Message Type", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.messagetype", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.mic = ProtoField.new("Mic", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.mic", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.mpid = ProtoField.new("Mpid", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.mpid", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.mpid_counterparty = ProtoField.new("Mpid Counterparty", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.mpidcounterparty", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.mpid_owner = ProtoField.new("Mpid Owner", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.mpidowner", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.multiplier_for_calculating_quantity_in_measurement_unit = ProtoField.new("Multiplier For Calculating Quantity In Measurement Unit", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.multiplierforcalculatingquantityinmeasurementunit", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.neworderreferencenumber", ftypes.UINT64)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.nm_new_market_company = ProtoField.new("Nm New Market Company", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.nmnewmarketcompany", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.nordic_mid_mic = ProtoField.new("Nordic Mid Mic", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.nordicmidmic", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.notation_of_qty = ProtoField.new("Notation Of Qty", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notationofqty", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_1 = ProtoField.new("Note Codes Bit Field 1", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notecodesbitfield1", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_2 = ProtoField.new("Note Codes Bit Field 2", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notecodesbitfield2", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_3 = ProtoField.new("Note Codes Bit Field 3", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notecodesbitfield3", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_4 = ProtoField.new("Note Codes Bit Field 4", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notecodesbitfield4", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_5 = ProtoField.new("Note Codes Bit Field 5", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notecodesbitfield5", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_6 = ProtoField.new("Note Codes Bit Field 6", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notecodesbitfield6", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_7 = ProtoField.new("Note Codes Bit Field 7", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notecodesbitfield7", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_8 = ProtoField.new("Note Codes Bit Field 8", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notecodesbitfield8", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.notional_amount = ProtoField.new("Notional Amount", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.notionalamount", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.number_of_lit_executions = ProtoField.new("Number Of Lit Executions", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.numberoflitexecutions", ftypes.UINT16)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.number_of_trades = ProtoField.new("Number Of Trades", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.numberoftrades", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ob_observation_status = ProtoField.new("Ob Observation Status", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.obobservationstatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_book = ProtoField.new("Order Book", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.orderbook", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.paired_quantity = ProtoField.new("Paired Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.pairedquantity", ftypes.UINT64)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.participant_id_buyer = ProtoField.new("Participant Id Buyer", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.participantidbuyer", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.participant_id_seller = ProtoField.new("Participant Id Seller", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.participantidseller", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.pd_price_discrepancy_historical_average_share_classes = ProtoField.new("Pd Price Discrepancy Historical Average Share Classes", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.pdpricediscrepancyhistoricalaverageshareclasses", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.po_company_subject_to_public_offer = ProtoField.new("Po Company Subject To Public Offer", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.pocompanysubjecttopublicoffer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.price = ProtoField.new("Price", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.price", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.price_notation = ProtoField.new("Price Notation", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.pricenotation", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.printable = ProtoField.new("Printable", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.printable", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.pure_stream_mic = ProtoField.new("Pure Stream Mic", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.purestreammic", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.quantity = ProtoField.new("Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.quantity", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reason = ProtoField.new("Reason", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.reason", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_18 = ProtoField.new("Reserved 18", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.reserved18", ftypes.UINT8, nil, base.DEC, 0xFF)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_23 = ProtoField.new("Reserved 23", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.reserved23", ftypes.UINT8, nil, base.DEC, 0x06)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_5 = ProtoField.new("Reserved 5", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.reserved5", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_58 = ProtoField.new("Reserved 58", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.reserved58", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.rl_removal_from_listing_in_process = ProtoField.new("Rl Removal From Listing In Process", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.rlremovalfromlistinginprocess", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.roundlotsize", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.rs_reversed_split = ProtoField.new("Rs Reversed Split", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.rsreversedsplit", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.sequencenumber", ftypes.UINT64)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.session = ProtoField.new("Session", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.session", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sk_soft_knock = ProtoField.new("Sk Soft Knock", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.sksoftknock", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sl_other_surveillance_list_reason = ProtoField.new("Sl Other Surveillance List Reason", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.slothersurveillancelistreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sm_stressed_market = ProtoField.new("Sm Stressed Market", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.smstressedmarket", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.so_sold_out_buy_back = ProtoField.new("So Sold Out Buy Back", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.sosoldoutbuyback", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sp_excluding_participating_in_split = ProtoField.new("Sp Excluding Participating In Split", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.spexcludingparticipatinginsplit", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sr_excluding_comb_split_and_issue_rights = ProtoField.new("Sr Excluding Comb Split And Issue Rights", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.srexcludingcombsplitandissuerights", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ss_excluding_comb_split_redemption_share = ProtoField.new("Ss Excluding Comb Split Redemption Share", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.ssexcludingcombsplitredemptionshare", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.stp_cancel_quantity = ProtoField.new("Stp Cancel Quantity", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.stpcancelquantity", ftypes.UINT32)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.su_suspension = ProtoField.new("Su Suspension", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.sususpension", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.symbol = ProtoField.new("Symbol", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.symbol", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.symbol_state = ProtoField.new("Symbol State", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.symbolstate", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.timestamp", ftypes.UINT64)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.to_a_significant_reverse_takeover_pending = ProtoField.new("To A Significant Reverse Takeover Pending", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.toasignificantreversetakeoverpending", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.trackingnumber", ftypes.UINT16)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.tradeprice", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.trade_type = ProtoField.new("Trade Type", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.tradetype", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.trading_currency = ProtoField.new("Trading Currency", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.tradingcurrency", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ud_under_drawing = ProtoField.new("Ud Under Drawing", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.udunderdrawing", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ul_un_listed = ProtoField.new("Ul Un Listed", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.ulunlisted", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.un_underlying_not_quoted = ProtoField.new("Un Underlying Not Quoted", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.ununderlyingnotquoted", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.wi_when_issued = ProtoField.new("Wi When Issued", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.wiwhenissued", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.xd_excluding_dividend = ProtoField.new("Xd Excluding Dividend", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.xdexcludingdividend", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.xr_excluding_participating_in_rights = ProtoField.new("Xr Excluding Participating In Rights", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.xrexcludingparticipatinginrights", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)

-- Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X Headers
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.packet = ProtoField.new("Packet", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.packet", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.packetheader", ftypes.STRING)

-- Nasdaq NordicEquities TotalViewPureStream 3.04.X Application Messages
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.addordermessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.add_order_mpid_attribution_message = ProtoField.new("Add Order Mpid Attribution Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.addordermpidattributionmessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.brokentrademessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.crosstrademessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.execution_summary_message = ProtoField.new("Execution Summary Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.executionsummarymessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.moii_message = ProtoField.new("Moii Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.moiimessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.noii_message = ProtoField.new("Noii Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.noiimessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_book_directory_message = ProtoField.new("Order Book Directory Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.orderbookdirectorymessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_book_flush_message = ProtoField.new("Order Book Flush Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.orderbookflushmessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_book_trading_action_message = ProtoField.new("Order Book Trading Action Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.orderbooktradingactionmessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.ordercancelmessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.orderdeletemessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.orderexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.orderreplacemessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.systemeventmessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.trademessage", ftypes.STRING)

-- Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X generated fields
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_index = ProtoField.new("Message Index", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.messageindex", ftypes.UINT16)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nordicequities.totalviewpurestream.itch.v3.04.x.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp_format = 2

-- Hours behind UTC (UTC) for midnight calculation
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.utc_offset_hours = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X Show Options
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 0, "Hours behind UTC (UTC) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_headers then
    show.headers = omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_structs then
    show.structs = omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_indexes then
    show.indexes = omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_sequences then
    show.sequences = omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.show_sequences
  end
  if nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp_format ~= omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.timestamp_format then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp_format = omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.timestamp_format
  end
  if nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.utc_offset_hours ~= omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.utc_offset_hours then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.utc_offset_hours = omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.prefs.utc_offset_hours
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
-- Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X Fields
-----------------------------------------------------------------------

-- Add Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_quantity = {}

-- Size: Add Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_quantity.size = 4

-- Display: Add Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_quantity.display = function(value)
  return "Add Quantity: "..value
end

-- Dissect: Add Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.add_quantity, range, value, display)

  return offset + length, value
end

-- Aggressing Side
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aggressing_side = {}

-- Size: Aggressing Side
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aggressing_side.size = 1

-- Display: Aggressing Side
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aggressing_side.display = function(value)
  if value == "B" then
    return "Aggressing Side: Buy (B)"
  end
  if value == "S" then
    return "Aggressing Side: Sell (S)"
  end
  if value == " " then
    return "Aggressing Side: None (<whitespace>)"
  end

  return "Aggressing Side: Unknown("..value..")"
end

-- Dissect: Aggressing Side
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aggressing_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aggressing_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aggressing_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.aggressing_side, range, value, display)

  return offset + length, value
end

-- Aod Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aod_mic = {}

-- Size: Aod Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aod_mic.size = 4

-- Display: Aod Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aod_mic.display = function(value)
  return "Aod Mic: "..value
end

-- Dissect: Aod Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aod_mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aod_mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aod_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.aod_mic, range, value, display)

  return offset + length, value
end

-- Attribution
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.attribution = {}

-- Size: Attribution
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.attribution.size = 4

-- Display: Attribution
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.attribution, range, value, display)

  return offset + length, value
end

-- Best Ask Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price = {}

-- Size: Best Ask Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price.size = 4

-- Display: Best Ask Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Translate: Best Ask Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Ask Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price.translate(raw)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_quantity = {}

-- Size: Best Ask Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_quantity.size = 8

-- Display: Best Ask Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_quantity.display = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Best Bid Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price = {}

-- Size: Best Bid Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price.size = 4

-- Display: Best Bid Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Bid Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price.translate(raw)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_quantity = {}

-- Size: Best Bid Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_quantity.size = 8

-- Display: Best Bid Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_quantity.display = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell Order (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Canceled Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.canceled_quantity = {}

-- Size: Canceled Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.canceled_quantity.size = 4

-- Display: Canceled Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.canceled_quantity.display = function(value)
  return "Canceled Quantity: "..value
end

-- Dissect: Canceled Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.canceled_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.canceled_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.canceled_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.canceled_quantity, range, value, display)

  return offset + length, value
end

-- Cross Level
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_level = {}

-- Size: Cross Level
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_level.size = 1

-- Display: Cross Level
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_level.display = function(value)
  if value == "B" then
    return "Cross Level: Buy (B)"
  end
  if value == "S" then
    return "Cross Level: Sell (S)"
  end
  if value == "M" then
    return "Cross Level: Mid (M)"
  end
  if value == "L" then
    return "Cross Level: Limit (L)"
  end

  return "Cross Level: Unknown("..value..")"
end

-- Dissect: Cross Level
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cross_level, range, value, display)

  return offset + length, value
end

-- Cross Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price = {}

-- Size: Cross Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price.size = 4

-- Display: Cross Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price.display = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price.translate(raw)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type = {}

-- Size: Cross Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.size = 1

-- Display: Cross Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Opening Cross (O)"
  end
  if value == "I" then
    return "Cross Type: Scheduled Intraday Cross (I)"
  end
  if value == "C" then
    return "Cross Type: Closing Cross (C)"
  end
  if value == "H" then
    return "Cross Type: Cross For Halted Securities (H)"
  end
  if value == "A" then
    return "Cross Type: Auction On Demand (A)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.currency = {}

-- Size: Currency
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.currency.size = 3

-- Display: Currency
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.currency, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price = {}

-- Size: Equilibrium Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.size = 4

-- Display: Equilibrium Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Translate: Equilibrium Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Equilibrium Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.translate(raw)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.event_code = {}

-- Size: Event Code
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.event_code.size = 1

-- Display: Event Code
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity = {}

-- Size: Executed Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity.size = 4

-- Display: Executed Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Extension
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.extension = {}

-- Size: Extension
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.extension.size = 1

-- Display: Extension
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.extension.display = function(value)
  if value == "E" then
    return "Extension: Cross Extension (E)"
  end

  return "Extension: Unknown("..value..")"
end

-- Dissect: Extension
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.extension.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.extension.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.extension.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.extension, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price = {}

-- Size: Far Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price.size = 4

-- Display: Far Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price.translate(raw)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.far_price, range, value, display)

  return offset + length, value
end

-- Financial Product
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.financial_product = {}

-- Size: Financial Product
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.financial_product.size = 1

-- Display: Financial Product
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.financial_product.display = function(value)
  if value == 1 then
    return "Financial Product: Stock (1)"
  end
  if value == 2 then
    return "Financial Product: Equity Warrant (2)"
  end
  if value == 3 then
    return "Financial Product: Equity Right (3)"
  end
  if value == 4 then
    return "Financial Product: Bond (4)"
  end
  if value == 6 then
    return "Financial Product: Lottery Bond Series (6)"
  end
  if value == 7 then
    return "Financial Product: Convertible (7)"
  end
  if value == 8 then
    return "Financial Product: Warrant (8)"
  end
  if value == 11 then
    return "Financial Product: Unit Trust Certificate (11)"
  end
  if value == 12 then
    return "Financial Product: Index Fund Unit (12)"
  end

  return "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Hidden Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.hidden_quantity = {}

-- Size: Hidden Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.hidden_quantity.size = 4

-- Display: Hidden Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.hidden_quantity.display = function(value)
  return "Hidden Quantity: "..value
end

-- Dissect: Hidden Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.hidden_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.hidden_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.hidden_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.hidden_quantity, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_direction.display = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy Imbalance (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell Imbalance (S)"
  end
  if value == "N" then
    return "Imbalance Direction: No Imbalance (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient Orders To Calculate (O)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_quantity = {}

-- Size: Imbalance Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_quantity.size = 8

-- Display: Imbalance Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_quantity.display = function(value)
  return "Imbalance Quantity: "..value
end

-- Dissect: Imbalance Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Isin
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.isin = {}

-- Size: Isin
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.isin.size = 12

-- Display: Isin
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.isin.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.isin, range, value, display)

  return offset + length, value
end

-- Market Segment Id
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.market_segment_id = {}

-- Size: Market Segment Id
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.market_segment_id.size = 2

-- Display: Market Segment Id
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number = {}

-- Size: Match Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.size = 4

-- Display: Match Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_count = {}

-- Size: Message Count
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_count.size = 2

-- Display: Message Count
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_length = {}

-- Size: Message Length
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_length.size = 2

-- Display: Message Length
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_type = {}

-- Size: Message Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_type.size = 1

-- Display: Message Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "H" then
    return "Message Type: Order Book Trading Action Message (H)"
  end
  if value == "R" then
    return "Message Type: Order Book Directory Message (R)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "F" then
    return "Message Type: Add Order Mpid Attribution Message (F)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed With Price Message (C)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "D" then
    return "Message Type: Order Delete Message (D)"
  end
  if value == "Y" then
    return "Message Type: Order Book Flush Message (Y)"
  end
  if value == "U" then
    return "Message Type: Order Replace Message (U)"
  end
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "Q" then
    return "Message Type: Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Message (B)"
  end
  if value == "I" then
    return "Message Type: Noii Message (I)"
  end
  if value == "J" then
    return "Message Type: Moii Message (J)"
  end
  if value == "K" then
    return "Message Type: Execution Summary Message (K)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mic = {}

-- Size: Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mic.size = 4

-- Display: Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mic.display = function(value)
  return "Mic: "..value
end

-- Dissect: Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.mic, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid = {}

-- Size: Mpid
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid.size = 4

-- Display: Mpid
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.mpid, range, value, display)

  return offset + length, value
end

-- Mpid Counterparty
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty = {}

-- Size: Mpid Counterparty
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty.size = 4

-- Display: Mpid Counterparty
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty.display = function(value)
  return "Mpid Counterparty: "..value
end

-- Dissect: Mpid Counterparty
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.mpid_counterparty, range, value, display)

  return offset + length, value
end

-- Mpid Owner
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_owner = {}

-- Size: Mpid Owner
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_owner.size = 4

-- Display: Mpid Owner
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_owner.display = function(value)
  return "Mpid Owner: "..value
end

-- Dissect: Mpid Owner
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_owner.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_owner.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_owner.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.mpid_owner, range, value, display)

  return offset + length, value
end

-- Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit = {}

-- Size: Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit.size = 8

-- Display: Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit.display = function(value)
  return "Multiplier For Calculating Quantity In Measurement Unit: "..value
end

-- Translate: Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit.translate(raw)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.multiplier_for_calculating_quantity_in_measurement_unit, range, value, display)

  return offset + length, value
end

-- New Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Nordic Mid Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.nordic_mid_mic = {}

-- Size: Nordic Mid Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.nordic_mid_mic.size = 4

-- Display: Nordic Mid Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.nordic_mid_mic.display = function(value)
  return "Nordic Mid Mic: "..value
end

-- Dissect: Nordic Mid Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.nordic_mid_mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.nordic_mid_mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.nordic_mid_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.nordic_mid_mic, range, value, display)

  return offset + length, value
end

-- Notation Of Qty
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notation_of_qty = {}

-- Size: Notation Of Qty
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notation_of_qty.size = 4

-- Display: Notation Of Qty
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notation_of_qty.display = function(value)
  return "Notation Of Qty: "..value
end

-- Dissect: Notation Of Qty
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notation_of_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notation_of_qty.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notation_of_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.notation_of_qty, range, value, display)

  return offset + length, value
end

-- Notional Amount
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount = {}

-- Size: Notional Amount
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount.size = 8

-- Display: Notional Amount
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Translate: Notional Amount
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Notional Amount
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount.translate(raw)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Number Of Lit Executions
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_lit_executions = {}

-- Size: Number Of Lit Executions
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_lit_executions.size = 2

-- Display: Number Of Lit Executions
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_lit_executions.display = function(value)
  return "Number Of Lit Executions: "..value
end

-- Dissect: Number Of Lit Executions
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_lit_executions.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_lit_executions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_lit_executions.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.number_of_lit_executions, range, value, display)

  return offset + length, value
end

-- Number Of Trades
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_trades = {}

-- Size: Number Of Trades
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_trades.size = 4

-- Display: Number Of Trades
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Order Book
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book = {}

-- Size: Order Book
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size = 4

-- Display: Order Book
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.display = function(value)
  return "Order Book: "..value
end

-- Dissect: Order Book
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_book, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Paired Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity = {}

-- Size: Paired Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity.size = 8

-- Display: Paired Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity.display = function(value)
  return "Paired Quantity: "..value
end

-- Dissect: Paired Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.paired_quantity, range, value, display)

  return offset + length, value
end

-- Participant Id Buyer
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_buyer = {}

-- Size: Participant Id Buyer
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_buyer.size = 4

-- Display: Participant Id Buyer
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_buyer.display = function(value)
  return "Participant Id Buyer: "..value
end

-- Dissect: Participant Id Buyer
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_buyer.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_buyer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_buyer.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.participant_id_buyer, range, value, display)

  return offset + length, value
end

-- Participant Id Seller
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_seller = {}

-- Size: Participant Id Seller
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_seller.size = 4

-- Display: Participant Id Seller
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_seller.display = function(value)
  return "Participant Id Seller: "..value
end

-- Dissect: Participant Id Seller
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_seller.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_seller.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_seller.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.participant_id_seller, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price = {}

-- Size: Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.size = 4

-- Display: Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.translate(raw)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.price, range, value, display)

  return offset + length, value
end

-- Price Notation
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price_notation = {}

-- Size: Price Notation
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price_notation.size = 1

-- Display: Price Notation
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price_notation.display = function(value)
  if value == "M" then
    return "Price Notation: Monetary Value (M)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price_notation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.printable = {}

-- Size: Printable
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.printable.size = 1

-- Display: Printable
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.printable, range, value, display)

  return offset + length, value
end

-- Pure Stream Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.pure_stream_mic = {}

-- Size: Pure Stream Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.pure_stream_mic.size = 4

-- Display: Pure Stream Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.pure_stream_mic.display = function(value)
  return "Pure Stream Mic: "..value
end

-- Dissect: Pure Stream Mic
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.pure_stream_mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.pure_stream_mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.pure_stream_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.pure_stream_mic, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity = {}

-- Size: Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.size = 4

-- Display: Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.reason = {}

-- Size: Reason
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.reason.size = 4

-- Display: Reason
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.reason.display = function(value)
  if value == "TH" then
    return "Reason: Trading Halt (TH)"
  end
  if value == "RH" then
    return "Reason: Regulatory Halt (RH)"
  end
  if value == "MH" then
    return "Reason: Matching Halt (MH)"
  end
  if value == "TS" then
    return "Reason: Technical Stop (TS)"
  end
  if value == "KO" then
    return "Reason: Trading Halt Knock Out (KO)"
  end
  if value == "VHD" then
    return "Reason: Volatility Halt Dynamic (VHD)"
  end
  if value == "VHS" then
    return "Reason: Volatility Halt Static (VHS)"
  end
  if value == "MMM" then
    return "Reason: Market Maker Missing (MMM)"
  end
  if value == "UNQ" then
    return "Reason: Underlying Not Quoted (UNQ)"
  end
  if value == "RES" then
    return "Reason: Resting Mode (RES)"
  end
  if value == "ET" then
    return "Reason: Early Termination (ET)"
  end
  if value == "" then
    return "Reason: Reason Not Available (<whitespace>)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reason, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence_number = {}

-- Size: Sequence Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.session = {}

-- Size: Session
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.session.size = 10

-- Display: Session
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.session.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.session, range, value, display)

  return offset + length, value
end

-- Stp Cancel Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.stp_cancel_quantity = {}

-- Size: Stp Cancel Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.stp_cancel_quantity.size = 4

-- Display: Stp Cancel Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.stp_cancel_quantity.display = function(value)
  return "Stp Cancel Quantity: "..value
end

-- Dissect: Stp Cancel Quantity
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.stp_cancel_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.stp_cancel_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.stp_cancel_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.stp_cancel_quantity, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol = {}

-- Size: Symbol
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol.size = 16

-- Display: Symbol
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol State
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol_state = {}

-- Size: Symbol State
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol_state.size = 1

-- Display: Symbol State
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol_state.display = function(value)
  if value == "C" then
    return "Symbol State: Closed (C)"
  end
  if value == "P" then
    return "Symbol State: Pre Open (P)"
  end
  if value == "O" then
    return "Symbol State: Opening Auction (O)"
  end
  if value == "T" then
    return "Symbol State: Continuous Trading (T)"
  end
  if value == "I" then
    return "Symbol State: Scheduled Intraday Auction (I)"
  end
  if value == "L" then
    return "Symbol State: Closing Auction (L)"
  end
  if value == "S" then
    return "Symbol State: Post Trade (S)"
  end
  if value == "H" then
    return "Symbol State: Halted (H)"
  end
  if value == "Q" then
    return "Symbol State: Auction Period (Q)"
  end
  if value == "A" then
    return "Symbol State: Trading At Closing Price (A)"
  end

  return "Symbol State: Unknown("..value..")"
end

-- Dissect: Symbol State
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.symbol_state, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp = {}

-- Size: Timestamp
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size = 8

-- Display: Timestamp
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number = {}

-- Size: Tracking Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price = {}

-- Size: Trade Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.size = 4

-- Display: Trade Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.translate(raw)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_type = {}

-- Size: Trade Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_type.size = 1

-- Display: Trade Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_type.display = function(value)
  if value == "B" then
    return "Trade Type: Main Book (B)"
  end
  if value == "S" then
    return "Trade Type: Nordic Mid (S)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Currency
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trading_currency = {}

-- Size: Trading Currency
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trading_currency.size = 3

-- Display: Trading Currency
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.trading_currency, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X
-----------------------------------------------------------------------

-- Execution Summary Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.execution_summary_message = {}

-- Size: Execution Summary Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.execution_summary_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aggressing_side.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.hidden_quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.stp_cancel_quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_lit_executions.size

-- Display: Execution Summary Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.execution_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Summary Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.execution_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  -- Aggressing Side: Alpha
  index, aggressing_side = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aggressing_side.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.dissect(buffer, index, packet, parent)

  -- Hidden Quantity: Integer
  index, hidden_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.hidden_quantity.dissect(buffer, index, packet, parent)

  -- Stp Cancel Quantity: Integer
  index, stp_cancel_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.stp_cancel_quantity.dissect(buffer, index, packet, parent)

  -- Far Price: Price
  index, far_price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.far_price.dissect(buffer, index, packet, parent)

  -- Add Quantity: Integer
  index, add_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_quantity.dissect(buffer, index, packet, parent)

  -- Number Of Lit Executions: Integer
  index, number_of_lit_executions = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_lit_executions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.execution_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.execution_summary_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.execution_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.execution_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.execution_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Moii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.moii_message = {}

-- Size: Moii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.moii_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_level.size

-- Display: Moii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.moii_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Moii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.moii_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Paired Quantity: Integer
  index, paired_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price (4)
  index, equilibrium_price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Level: Alpha
  index, cross_level = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Moii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.moii_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.moii_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.moii_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.moii_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.moii_message.fields(buffer, offset, packet, parent)
  end
end

-- Noii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.noii_message = {}

-- Size: Noii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.noii_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_direction.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_quantity.size

-- Display: Noii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.noii_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Noii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.noii_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Paired Quantity: Integer
  index, paired_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.paired_quantity.dissect(buffer, index, packet, parent)

  -- Imbalance Quantity: Integer
  index, imbalance_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price (4)
  index, equilibrium_price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price (4)
  index, best_bid_price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Quantity: Integer
  index, best_bid_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Best Ask Price: Price (4)
  index, best_ask_price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Ask Quantity: Integer
  index, best_ask_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.best_ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Noii Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.noii_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.noii_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.noii_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.noii_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.noii_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.broken_trade_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.size

-- Display: Broken Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_trade_message = {}

-- Size: Cross Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_trade_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_trades.size

-- Display: Cross Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  -- Cross Price: Price (4)
  index, cross_price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_type.dissect(buffer, index, packet, parent)

  -- Number Of Trades: Integer
  index, number_of_trades = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.number_of_trades.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_message = {}

-- Size: Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_type.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_buyer.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_seller.size

-- Display: Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_type.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.dissect(buffer, index, packet, parent)

  -- Trade Price: Price (4)
  index, trade_price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.dissect(buffer, index, packet, parent)

  -- Participant Id Buyer: Alpha-numeric
  index, participant_id_buyer = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_buyer.dissect(buffer, index, packet, parent)

  -- Participant Id Seller: Alpha-numeric
  index, participant_id_seller = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.participant_id_seller.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_replace_message = {}

-- Size: Order Replace Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_replace_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.original_order_reference_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.new_order_reference_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.size

-- Display: Order Replace Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: Integer
  index, original_order_reference_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: Integer
  index, new_order_reference_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Flush Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_flush_message = {}

-- Size: Order Book Flush Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_flush_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size

-- Display: Order Book Flush Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_flush_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Flush Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_flush_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Flush Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_flush_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_book_flush_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_flush_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_flush_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_flush_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_delete_message = {}

-- Size: Order Delete Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_delete_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.size

-- Display: Order Delete Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_cancel_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.canceled_quantity.size

-- Display: Order Cancel Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.dissect(buffer, index, packet, parent)

  -- Canceled Quantity: Integer
  index, canceled_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.canceled_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_with_price_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.printable.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_owner.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty.size

-- Display: Order Executed With Price Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.printable.dissect(buffer, index, packet, parent)

  -- Trade Price: Price (4)
  index, trade_price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_price.dissect(buffer, index, packet, parent)

  -- Mpid Owner: Alpha-numeric
  index, mpid_owner = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_owner.dissect(buffer, index, packet, parent)

  -- Mpid Counterparty: Alpha-numeric
  index, mpid_counterparty = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty.size

-- Display: Order Executed Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.match_number.dissect(buffer, index, packet, parent)

  -- Mpid: Alpha-numeric
  index, mpid = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid.dissect(buffer, index, packet, parent)

  -- Mpid Counterparty: Alpha-numeric
  index, mpid_counterparty = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mpid_counterparty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Mpid Attribution Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_mpid_attribution_message = {}

-- Size: Add Order Mpid Attribution Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_mpid_attribution_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.attribution.size

-- Display: Add Order Mpid Attribution Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Mpid Attribution Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha-numeric
  index, attribution = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Mpid Attribution Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.add_order_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_message = {}

-- Size: Add Order Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.size

-- Display: Add Order Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.quantity.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Note Codes Bit Field 8
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8 = {}

-- Size: Note Codes Bit Field 8
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8.size = 1

-- Display: Note Codes Bit Field 8
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 8
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8.bits = function(range, value, packet, parent)

  -- Reserved 18: 8 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_18, range, value)
end

-- Dissect: Note Codes Bit Field 8
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_8, range, display)

  if show.structs then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 7
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7 = {}

-- Size: Note Codes Bit Field 7
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7.size = 1

-- Display: Note Codes Bit Field 7
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 7
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7.bits = function(range, value, packet, parent)

  -- Reserved 18: 8 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_18, range, value)
end

-- Dissect: Note Codes Bit Field 7
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_7, range, display)

  if show.structs then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 6
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6 = {}

-- Size: Note Codes Bit Field 6
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6.size = 1

-- Display: Note Codes Bit Field 6
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 6
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6.bits = function(range, value, packet, parent)

  -- Reserved 18: 8 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_18, range, value)
end

-- Dissect: Note Codes Bit Field 6
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_6, range, display)

  if show.structs then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 5
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5 = {}

-- Size: Note Codes Bit Field 5
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5.size = 1

-- Display: Note Codes Bit Field 5
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Em Exceptional Circumstances Related To Market Maker flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Em Exceptional Circumstances Related To Market Maker"
  end
  -- Is Un Underlying Not Quoted flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Un Underlying Not Quoted"
  end
  -- Is Da Digital Asset flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Da Digital Asset"
  end
  -- Is Kn Knockout Buy Back Into Next Trading Day flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Kn Knockout Buy Back Into Next Trading Day"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 5
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5.bits = function(range, value, packet, parent)

  -- Em Exceptional Circumstances Related To Market Maker: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.em_exceptional_circumstances_related_to_market_maker, range, value)

  -- Un Underlying Not Quoted: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.un_underlying_not_quoted, range, value)

  -- Da Digital Asset: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.da_digital_asset, range, value)

  -- Kn Knockout Buy Back Into Next Trading Day: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.kn_knockout_buy_back_into_next_trading_day, range, value)

  -- Reserved 58: 4 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_58, range, value)
end

-- Dissect: Note Codes Bit Field 5
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_5, range, display)

  if show.structs then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 4
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4 = {}

-- Size: Note Codes Bit Field 4
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4.size = 1

-- Display: Note Codes Bit Field 4
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bb Buy Back flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Bb Buy Back"
  end
  -- Is Ce Capped By Esma flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Ce Capped By Esma"
  end
  -- Is Reserved 5 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Reserved 5"
  end
  -- Is Pd Price Discrepancy Historical Average Share Classes flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Pd Price Discrepancy Historical Average Share Classes"
  end
  -- Is Sm Stressed Market flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Sm Stressed Market"
  end
  -- Is Ew Marketwide Exceptional Circumstance flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Ew Marketwide Exceptional Circumstance"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 4
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4.bits = function(range, value, packet, parent)

  -- Bb Buy Back: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.bb_buy_back, range, value)

  -- Reserved 23: 2 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_23, range, value)

  -- Ce Capped By Esma: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ce_capped_by_esma, range, value)

  -- Reserved 5: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.reserved_5, range, value)

  -- Pd Price Discrepancy Historical Average Share Classes: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.pd_price_discrepancy_historical_average_share_classes, range, value)

  -- Sm Stressed Market: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sm_stressed_market, range, value)

  -- Ew Marketwide Exceptional Circumstance: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ew_marketwide_exceptional_circumstance, range, value)
end

-- Dissect: Note Codes Bit Field 4
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_4, range, display)

  if show.structs then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 3
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3 = {}

-- Size: Note Codes Bit Field 3
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3.size = 1

-- Display: Note Codes Bit Field 3
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Ss Excluding Comb Split Redemption Share flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Ss Excluding Comb Split Redemption Share"
  end
  -- Is Fn First North Company flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Fn First North Company"
  end
  -- Is Ob Observation Status flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Ob Observation Status"
  end
  -- Is Xd Excluding Dividend flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Xd Excluding Dividend"
  end
  -- Is Fe Foreign Non Eueea Entity flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Fe Foreign Non Eueea Entity"
  end
  -- Is So Sold Out Buy Back flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "So Sold Out Buy Back"
  end
  -- Is Sk Soft Knock flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Sk Soft Knock"
  end
  -- Is Kb Knock Out Buy Back flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Kb Knock Out Buy Back"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 3
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3.bits = function(range, value, packet, parent)

  -- Ss Excluding Comb Split Redemption Share: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ss_excluding_comb_split_redemption_share, range, value)

  -- Fn First North Company: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.fn_first_north_company, range, value)

  -- Ob Observation Status: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ob_observation_status, range, value)

  -- Xd Excluding Dividend: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.xd_excluding_dividend, range, value)

  -- Fe Foreign Non Eueea Entity: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.fe_foreign_non_eueea_entity, range, value)

  -- So Sold Out Buy Back: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.so_sold_out_buy_back, range, value)

  -- Sk Soft Knock: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sk_soft_knock, range, value)

  -- Kb Knock Out Buy Back: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.kb_knock_out_buy_back, range, value)
end

-- Dissect: Note Codes Bit Field 3
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_3, range, display)

  if show.structs then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 2
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2 = {}

-- Size: Note Codes Bit Field 2
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2.size = 1

-- Display: Note Codes Bit Field 2
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Br Company Bankruptcy flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Br Company Bankruptcy"
  end
  -- Is Su Suspension flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Su Suspension"
  end
  -- Is Rl Removal From Listing In Process flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Rl Removal From Listing In Process"
  end
  -- Is Sl Other Surveillance List Reason flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Sl Other Surveillance List Reason"
  end
  -- Is To A Significant Reverse Takeover Pending flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "To A Significant Reverse Takeover Pending"
  end
  -- Is Cs Cent Shares flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Cs Cent Shares"
  end
  -- Is Rs Reversed Split flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Rs Reversed Split"
  end
  -- Is Bs Excluding Comb Bonus Split flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Bs Excluding Comb Bonus Split"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 2
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2.bits = function(range, value, packet, parent)

  -- Br Company Bankruptcy: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.br_company_bankruptcy, range, value)

  -- Su Suspension: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.su_suspension, range, value)

  -- Rl Removal From Listing In Process: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.rl_removal_from_listing_in_process, range, value)

  -- Sl Other Surveillance List Reason: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sl_other_surveillance_list_reason, range, value)

  -- To A Significant Reverse Takeover Pending: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.to_a_significant_reverse_takeover_pending, range, value)

  -- Cs Cent Shares: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.cs_cent_shares, range, value)

  -- Rs Reversed Split: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.rs_reversed_split, range, value)

  -- Bs Excluding Comb Bonus Split: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.bs_excluding_comb_bonus_split, range, value)
end

-- Dissect: Note Codes Bit Field 2
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_2, range, display)

  if show.structs then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 1
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1 = {}

-- Size: Note Codes Bit Field 1
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1.size = 1

-- Display: Note Codes Bit Field 1
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Nm New Market Company flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Nm New Market Company"
  end
  -- Is Xr Excluding Participating In Rights flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Xr Excluding Participating In Rights"
  end
  -- Is Sp Excluding Participating In Split flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Sp Excluding Participating In Split"
  end
  -- Is Po Company Subject To Public Offer flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Po Company Subject To Public Offer"
  end
  -- Is Ud Under Drawing flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Ud Under Drawing"
  end
  -- Is Sr Excluding Comb Split And Issue Rights flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Sr Excluding Comb Split And Issue Rights"
  end
  -- Is Ul Un Listed flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Ul Un Listed"
  end
  -- Is Wi When Issued flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Wi When Issued"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 1
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1.bits = function(range, value, packet, parent)

  -- Nm New Market Company: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.nm_new_market_company, range, value)

  -- Xr Excluding Participating In Rights: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.xr_excluding_participating_in_rights, range, value)

  -- Sp Excluding Participating In Split: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sp_excluding_participating_in_split, range, value)

  -- Po Company Subject To Public Offer: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.po_company_subject_to_public_offer, range, value)

  -- Ud Under Drawing: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ud_under_drawing, range, value)

  -- Sr Excluding Comb Split And Issue Rights: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.sr_excluding_comb_split_and_issue_rights, range, value)

  -- Ul Un Listed: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.ul_un_listed, range, value)

  -- Wi When Issued: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.wi_when_issued, range, value)
end

-- Dissect: Note Codes Bit Field 1
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.note_codes_bit_field_1, range, display)

  if show.structs then
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Book Directory Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_directory_message = {}

-- Size: Order Book Directory Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_directory_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.isin.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.financial_product.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trading_currency.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mic.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.market_segment_id.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.round_lot_size.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.nordic_mid_mic.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aod_mic.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notation_of_qty.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.currency.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price_notation.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.pure_stream_mic.size

-- Display: Order Book Directory Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha-numeric
  index, symbol = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol.dissect(buffer, index, packet, parent)

  -- Isin: Alpha-numeric
  index, isin = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Integer
  index, financial_product = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trading_currency.dissect(buffer, index, packet, parent)

  -- Mic: Alpha
  index, mic = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.mic.dissect(buffer, index, packet, parent)

  -- Market Segment Id: Integer
  index, market_segment_id = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.market_segment_id.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 1: Struct of 8 fields
  index, note_codes_bit_field_1 = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_1.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 2: Struct of 8 fields
  index, note_codes_bit_field_2 = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_2.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 3: Struct of 8 fields
  index, note_codes_bit_field_3 = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_3.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 4: Struct of 7 fields
  index, note_codes_bit_field_4 = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_4.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 5: Struct of 5 fields
  index, note_codes_bit_field_5 = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_5.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 6: Struct of 1 fields
  index, note_codes_bit_field_6 = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_6.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 7: Struct of 1 fields
  index, note_codes_bit_field_7 = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_7.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 8: Struct of 1 fields
  index, note_codes_bit_field_8 = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.note_codes_bit_field_8.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.round_lot_size.dissect(buffer, index, packet, parent)

  -- Nordic Mid Mic: Alpha
  index, nordic_mid_mic = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.nordic_mid_mic.dissect(buffer, index, packet, parent)

  -- Aod Mic: Alpha
  index, aod_mic = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.aod_mic.dissect(buffer, index, packet, parent)

  -- Notation Of Qty: Alpha
  index, notation_of_qty = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notation_of_qty.dissect(buffer, index, packet, parent)

  -- Notional Amount: Price(5)
  index, notional_amount = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.notional_amount.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.currency.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha
  index, price_notation = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.price_notation.dissect(buffer, index, packet, parent)

  -- Multiplier For Calculating Quantity In Measurement Unit: Price(6)
  index, multiplier_for_calculating_quantity_in_measurement_unit = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.multiplier_for_calculating_quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  -- Pure Stream Mic: Alpha
  index, pure_stream_mic = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.pure_stream_mic.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_book_directory_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Trading Action Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_trading_action_message = {}

-- Size: Order Book Trading Action Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_trading_action_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol_state.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.extension.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.reason.size

-- Display: Order Book Trading Action Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Trading Action Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book.dissect(buffer, index, packet, parent)

  -- Symbol State: Alpha-numeric
  index, symbol_state = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.symbol_state.dissect(buffer, index, packet, parent)

  -- Extension: Alpha
  index, extension = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.extension.dissect(buffer, index, packet, parent)

  -- Reason: Alpha-numeric
  index, reason = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Trading Action Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.order_book_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.system_event_message = {}

-- Size: System Event Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.system_event_message.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.event_code.size

-- Display: System Event Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.tracking_number.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha-numeric
  index, event_code = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.payload = {}

-- Dissect: Payload
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Trading Action Message
  if message_type == "H" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory Message
  if message_type == "R" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Mpid Attribution Message
  if message_type == "F" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.add_order_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Flush Message
  if message_type == "Y" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_book_flush_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Noii Message
  if message_type == "I" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.noii_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Moii Message
  if message_type == "J" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.moii_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Summary Message
  if message_type == "K" then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.execution_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_header = {}

-- Size: Message Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_header.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_length.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_type.size

-- Display: Message Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 17 values
  index, message_type = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message = {}

-- Read runtime size of: Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message_sequence_number, UInt64.new(nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 17 branches
  index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.message, buffer(offset, 0))
    local current = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.end_of_session = {}

-- Display: End Of Session
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.heartbeat = {}

-- Display: Heartbeat
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.messages = {}

-- Dissect: Messages
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header = {}

-- Size: Packet Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header.size =
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.session.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence_number.size + 
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_count.size

-- Display: Packet Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet = {}

-- Verify required size of Udp packet
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header.size
end

-- Dissect Packet
nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.init()
end

-- Dissector for Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X
function omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x, buffer(), omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.description, "("..buffer:len().." Bytes)")
  return nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X (Udp)
local function omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x
  omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X
omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x:register_heuristic("udp", omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x_udp_heuristic)

-- Register Nasdaq NordicEquities TotalViewPureStream Itch 3.04.X for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nordicequities_totalviewpurestream_itch_v3_04_x)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.04.X
--   Date: Wednesday, November 12, 2025
--   Specification: Nasdaq Nordic INET Equity TotalView-ITCH PureStream (3.04.X).pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
