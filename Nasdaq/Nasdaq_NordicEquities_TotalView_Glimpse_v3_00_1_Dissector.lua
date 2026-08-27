-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NordicEquities TotalView Glimpse 3.00.1 Protocol
local omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1 = Proto("Omi.Nasdaq.NordicEquities.TotalView.Glimpse.v3.00.1", "Nasdaq NordicEquities TotalView Glimpse 3.00.1")

-- Protocol table
local nasdaq_nordicequities_totalview_glimpse_v3_00_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NordicEquities TotalView Glimpse 3.00.1 Fields
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.aod_mic = ProtoField.new("Aod Mic", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.aodmic", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.attribution = ProtoField.new("Attribution", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.attribution", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.bb_buy_back = ProtoField.new("Bb Buy Back", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.bbbuyback", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.br_company_bankruptcy = ProtoField.new("Br Company Bankruptcy", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.brcompanybankruptcy", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.bs_excluding_comb_bonus_split = ProtoField.new("Bs Excluding Comb Bonus Split", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.bsexcludingcombbonussplit", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.buysellindicator", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ce_capped_by_esma = ProtoField.new("Ce Capped By Esma", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.cecappedbyesma", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.clientpackettype", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.cs_cent_shares = ProtoField.new("Cs Cent Shares", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.cscentshares", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.currency = ProtoField.new("Currency", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.currency", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.da_digital_asset = ProtoField.new("Da Digital Asset", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.dadigitalasset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.em_exceptional_circumstances_related_to_market_maker = ProtoField.new("Em Exceptional Circumstances Related To Market Maker", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.emexceptionalcircumstancesrelatedtomarketmaker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.eventcode", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ew_marketwide_exceptional_circumstance = ProtoField.new("Ew Marketwide Exceptional Circumstance", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.ewmarketwideexceptionalcircumstance", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.extension = ProtoField.new("Extension", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.extension", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.fe_foreign_non_eueea_entity = ProtoField.new("Fe Foreign Non Eueea Entity", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.feforeignnoneueeaentity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.financial_product = ProtoField.new("Financial Product", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.financialproduct", ftypes.UINT8)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.fn_first_north_company = ProtoField.new("Fn First North Company", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.fnfirstnorthcompany", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.isin = ProtoField.new("Isin", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.isin", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.kb_knock_out_buy_back = ProtoField.new("Kb Knock Out Buy Back", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.kbknockoutbuyback", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.kn_knockout_buy_back_into_next_trading_day = ProtoField.new("Kn Knockout Buy Back Into Next Trading Day", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.knknockoutbuybackintonexttradingday", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.market_segment_id = ProtoField.new("Market Segment Id", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.marketsegmentid", ftypes.UINT16)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.mic = ProtoField.new("Mic", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.mic", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.multiplier_for_calculating_quantity_in_measurement_unit = ProtoField.new("Multiplier For Calculating Quantity In Measurement Unit", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.multiplierforcalculatingquantityinmeasurementunit", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.nm_new_market_company = ProtoField.new("Nm New Market Company", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.nmnewmarketcompany", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.nordic_mid_mic = ProtoField.new("Nordic Mid Mic", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.nordicmidmic", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.notation_of_qty = ProtoField.new("Notation Of Qty", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notationofqty", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_1 = ProtoField.new("Note Codes Bit Field 1", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notecodesbitfield1", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_2 = ProtoField.new("Note Codes Bit Field 2", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notecodesbitfield2", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_3 = ProtoField.new("Note Codes Bit Field 3", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notecodesbitfield3", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_4 = ProtoField.new("Note Codes Bit Field 4", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notecodesbitfield4", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_5 = ProtoField.new("Note Codes Bit Field 5", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notecodesbitfield5", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_6 = ProtoField.new("Note Codes Bit Field 6", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notecodesbitfield6", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_7 = ProtoField.new("Note Codes Bit Field 7", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notecodesbitfield7", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_8 = ProtoField.new("Note Codes Bit Field 8", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notecodesbitfield8", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.notional_amount = ProtoField.new("Notional Amount", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.notionalamount", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ob_observation_status = ProtoField.new("Ob Observation Status", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.obobservationstatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.order_book = ProtoField.new("Order Book", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.orderbook", ftypes.UINT32)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.packetlength", ftypes.UINT16)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.password = ProtoField.new("Password", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.password", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.pd_price_discrepancy_historical_average_share_classes = ProtoField.new("Pd Price Discrepancy Historical Average Share Classes", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.pdpricediscrepancyhistoricalaverageshareclasses", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.po_company_subject_to_public_offer = ProtoField.new("Po Company Subject To Public Offer", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.pocompanysubjecttopublicoffer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.price = ProtoField.new("Price", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.price", ftypes.DOUBLE)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.price_notation = ProtoField.new("Price Notation", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.pricenotation", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.quantity = ProtoField.new("Quantity", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.quantity", ftypes.UINT32)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reason = ProtoField.new("Reason", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.reason", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.rejectreasoncode", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.requestedsession", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_18 = ProtoField.new("Reserved 18", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.reserved18", ftypes.UINT8, nil, base.DEC, 0xFF)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_23 = ProtoField.new("Reserved 23", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.reserved23", ftypes.UINT8, nil, base.DEC, 0x06)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_5 = ProtoField.new("Reserved 5", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.reserved5", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_58 = ProtoField.new("Reserved 58", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.reserved58", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.rl_removal_from_listing_in_process = ProtoField.new("Rl Removal From Listing In Process", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.rlremovalfromlistinginprocess", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.roundlotsize", ftypes.UINT32)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.rs_reversed_split = ProtoField.new("Rs Reversed Split", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.rsreversedsplit", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.sequencenumber", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.serverpackettype", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.session = ProtoField.new("Session", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.session", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sk_soft_knock = ProtoField.new("Sk Soft Knock", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.sksoftknock", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sl_other_surveillance_list_reason = ProtoField.new("Sl Other Surveillance List Reason", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.slothersurveillancelistreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sm_stressed_market = ProtoField.new("Sm Stressed Market", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.smstressedmarket", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.so_sold_out_buy_back = ProtoField.new("So Sold Out Buy Back", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.sosoldoutbuyback", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sp_excluding_participating_in_split = ProtoField.new("Sp Excluding Participating In Split", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.spexcludingparticipatinginsplit", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sr_excluding_comb_split_and_issue_rights = ProtoField.new("Sr Excluding Comb Split And Issue Rights", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.srexcludingcombsplitandissuerights", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ss_excluding_comb_split_redemption_share = ProtoField.new("Ss Excluding Comb Split Redemption Share", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.ssexcludingcombsplitredemptionshare", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.su_suspension = ProtoField.new("Su Suspension", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.sususpension", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.symbol = ProtoField.new("Symbol", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.symbol", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.symbol_state = ProtoField.new("Symbol State", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.symbolstate", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.text = ProtoField.new("Text", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.text", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.timestamp", ftypes.UINT64)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.to_a_significant_reverse_takeover_pending = ProtoField.new("To A Significant Reverse Takeover Pending", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.toasignificantreversetakeoverpending", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.trading_currency = ProtoField.new("Trading Currency", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.tradingcurrency", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ud_under_drawing = ProtoField.new("Ud Under Drawing", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.udunderdrawing", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ul_un_listed = ProtoField.new("Ul Un Listed", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.ulunlisted", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.un_underlying_not_quoted = ProtoField.new("Un Underlying Not Quoted", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.ununderlyingnotquoted", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.username = ProtoField.new("Username", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.username", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.wi_when_issued = ProtoField.new("Wi When Issued", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.wiwhenissued", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.xd_excluding_dividend = ProtoField.new("Xd Excluding Dividend", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.xdexcludingdividend", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.xr_excluding_participating_in_rights = ProtoField.new("Xr Excluding Participating In Rights", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.xrexcludingparticipatinginrights", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)

-- Nasdaq NordicEquities TotalView Glimpse 3.00.1 Headers
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.client_packet = ProtoField.new("Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.clientpacket", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.clientpacketheader", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.server_packet = ProtoField.new("Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.serverpacket", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.serverpacketheader", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq NordicEquities TotalView 3.00.1 Application Messages
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.addordermessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.add_order_mpid_attribution_message = ProtoField.new("Add Order Mpid Attribution Message", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.addordermpidattributionmessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.end_of_snapshot_message = ProtoField.new("End Of Snapshot Message", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.endofsnapshotmessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.order_book_directory_message = ProtoField.new("Order Book Directory Message", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.orderbookdirectorymessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.order_book_trading_action_message = ProtoField.new("Order Book Trading Action Message", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.orderbooktradingactionmessage", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.systemeventmessage", ftypes.STRING)

-- Nasdaq NordicEquities TotalView 3.00.1 Session Messages
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.debugpacket", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.loginrequestpacket", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq NordicEquities TotalView Glimpse 3.00.1 generated fields
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.nordicequities.totalview.glimpse.v3.00.1.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NordicEquities TotalView Glimpse 3.00.1 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
nasdaq_nordicequities_totalview_glimpse_v3_00_1.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NordicEquities TotalView Glimpse 3.00.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq NordicEquities TotalView Glimpse 3.00.1 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_application_messages
  end
  if show.session_messages ~= omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_structs then
    show.structs = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_sequences then
    show.sequences = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.show_sequences
  end
  if nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp_format ~= omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.timestamp_format then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp_format = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.timestamp_format
  end
  if nasdaq_nordicequities_totalview_glimpse_v3_00_1.utc_offset_hours ~= omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.utc_offset_hours then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.utc_offset_hours = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation = {}
nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_nordicequities_totalview_glimpse_v3_00_1.stream_frame = nil
nasdaq_nordicequities_totalview_glimpse_v3_00_1.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.data = function(packet)
  local key = nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.key(packet)
  local data = nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.flows[key]
  if data == nil then
    data = { sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.current = nil


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
-- Nasdaq NordicEquities TotalView Glimpse 3.00.1 Fields
-----------------------------------------------------------------------

-- Aod Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.aod_mic = {}

-- Size: Aod Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.aod_mic.size = 4

-- Display: Aod Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.aod_mic.display = function(value)
  return "Aod Mic: "..value
end

-- Dissect: Aod Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.aod_mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.aod_mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.aod_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.aod_mic, range, value, display)

  return offset + length, value
end

-- Attribution
nasdaq_nordicequities_totalview_glimpse_v3_00_1.attribution = {}

-- Size: Attribution
nasdaq_nordicequities_totalview_glimpse_v3_00_1.attribution.size = 4

-- Display: Attribution
nasdaq_nordicequities_totalview_glimpse_v3_00_1.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_nordicequities_totalview_glimpse_v3_00_1.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.attribution, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell Order (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Client Packet Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Currency
nasdaq_nordicequities_totalview_glimpse_v3_00_1.currency = {}

-- Size: Currency
nasdaq_nordicequities_totalview_glimpse_v3_00_1.currency.size = 3

-- Display: Currency
nasdaq_nordicequities_totalview_glimpse_v3_00_1.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
nasdaq_nordicequities_totalview_glimpse_v3_00_1.currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nordicequities_totalview_glimpse_v3_00_1.event_code = {}

-- Size: Event Code
nasdaq_nordicequities_totalview_glimpse_v3_00_1.event_code.size = 1

-- Display: Event Code
nasdaq_nordicequities_totalview_glimpse_v3_00_1.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nordicequities_totalview_glimpse_v3_00_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Extension
nasdaq_nordicequities_totalview_glimpse_v3_00_1.extension = {}

-- Size: Extension
nasdaq_nordicequities_totalview_glimpse_v3_00_1.extension.size = 1

-- Display: Extension
nasdaq_nordicequities_totalview_glimpse_v3_00_1.extension.display = function(value)
  if value == "E" then
    return "Extension: Cross Extension (E)"
  end

  return "Extension: Unknown("..value..")"
end

-- Dissect: Extension
nasdaq_nordicequities_totalview_glimpse_v3_00_1.extension.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.extension.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.extension.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.extension, range, value, display)

  return offset + length, value
end

-- Financial Product
nasdaq_nordicequities_totalview_glimpse_v3_00_1.financial_product = {}

-- Size: Financial Product
nasdaq_nordicequities_totalview_glimpse_v3_00_1.financial_product.size = 1

-- Display: Financial Product
nasdaq_nordicequities_totalview_glimpse_v3_00_1.financial_product.display = function(value)
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
nasdaq_nordicequities_totalview_glimpse_v3_00_1.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Isin
nasdaq_nordicequities_totalview_glimpse_v3_00_1.isin = {}

-- Size: Isin
nasdaq_nordicequities_totalview_glimpse_v3_00_1.isin.size = 12

-- Display: Isin
nasdaq_nordicequities_totalview_glimpse_v3_00_1.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
nasdaq_nordicequities_totalview_glimpse_v3_00_1.isin.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.isin, range, value, display)

  return offset + length, value
end

-- Market Segment Id
nasdaq_nordicequities_totalview_glimpse_v3_00_1.market_segment_id = {}

-- Size: Market Segment Id
nasdaq_nordicequities_totalview_glimpse_v3_00_1.market_segment_id.size = 2

-- Display: Market Segment Id
nasdaq_nordicequities_totalview_glimpse_v3_00_1.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
nasdaq_nordicequities_totalview_glimpse_v3_00_1.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.mic = {}

-- Size: Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.mic.size = 4

-- Display: Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.mic.display = function(value)
  return "Mic: "..value
end

-- Dissect: Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.mic, range, value, display)

  return offset + length, value
end

-- Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit = {}

-- Size: Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit.size = 8

-- Display: Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit.display = function(value)
  return "Multiplier For Calculating Quantity In Measurement Unit: "..value
end

-- Translate: Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Multiplier For Calculating Quantity In Measurement Unit
nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit.translate(raw)
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.multiplier_for_calculating_quantity_in_measurement_unit, range, value, display)

  return offset + length, value
end

-- Nordic Mid Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.nordic_mid_mic = {}

-- Size: Nordic Mid Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.nordic_mid_mic.size = 4

-- Display: Nordic Mid Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.nordic_mid_mic.display = function(value)
  return "Nordic Mid Mic: "..value
end

-- Dissect: Nordic Mid Mic
nasdaq_nordicequities_totalview_glimpse_v3_00_1.nordic_mid_mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.nordic_mid_mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.nordic_mid_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.nordic_mid_mic, range, value, display)

  return offset + length, value
end

-- Notation Of Qty
nasdaq_nordicequities_totalview_glimpse_v3_00_1.notation_of_qty = {}

-- Size: Notation Of Qty
nasdaq_nordicequities_totalview_glimpse_v3_00_1.notation_of_qty.size = 4

-- Display: Notation Of Qty
nasdaq_nordicequities_totalview_glimpse_v3_00_1.notation_of_qty.display = function(value)
  return "Notation Of Qty: "..value
end

-- Dissect: Notation Of Qty
nasdaq_nordicequities_totalview_glimpse_v3_00_1.notation_of_qty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.notation_of_qty.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.notation_of_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.notation_of_qty, range, value, display)

  return offset + length, value
end

-- Notional Amount
nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount = {}

-- Size: Notional Amount
nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount.size = 8

-- Display: Notional Amount
nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Translate: Notional Amount
nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Notional Amount
nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount.translate(raw)
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Order Book
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book = {}

-- Size: Order Book
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.size = 4

-- Display: Order Book
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.display = function(value)
  return "Order Book: "..value
end

-- Dissect: Order Book
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.order_book, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length = {}

-- Size: Packet Length
nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_nordicequities_totalview_glimpse_v3_00_1.password = {}

-- Size: Password
nasdaq_nordicequities_totalview_glimpse_v3_00_1.password.size = 10

-- Display: Password
nasdaq_nordicequities_totalview_glimpse_v3_00_1.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nasdaq_nordicequities_totalview_glimpse_v3_00_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.password.size
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

  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nordicequities_totalview_glimpse_v3_00_1.price = {}

-- Size: Price
nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.size = 4

-- Display: Price
nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.translate(raw)
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.price, range, value, display)

  return offset + length, value
end

-- Price Notation
nasdaq_nordicequities_totalview_glimpse_v3_00_1.price_notation = {}

-- Size: Price Notation
nasdaq_nordicequities_totalview_glimpse_v3_00_1.price_notation.size = 1

-- Display: Price Notation
nasdaq_nordicequities_totalview_glimpse_v3_00_1.price_notation.display = function(value)
  if value == "M" then
    return "Price Notation: Monetary Value (M)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
nasdaq_nordicequities_totalview_glimpse_v3_00_1.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.price_notation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity = {}

-- Size: Quantity
nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity.size = 4

-- Display: Quantity
nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nordicequities_totalview_glimpse_v3_00_1.reason = {}

-- Size: Reason
nasdaq_nordicequities_totalview_glimpse_v3_00_1.reason.size = 4

-- Display: Reason
nasdaq_nordicequities_totalview_glimpse_v3_00_1.reason.display = function(value)
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
nasdaq_nordicequities_totalview_glimpse_v3_00_1.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_nordicequities_totalview_glimpse_v3_00_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_nordicequities_totalview_glimpse_v3_00_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_nordicequities_totalview_glimpse_v3_00_1.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_nordicequities_totalview_glimpse_v3_00_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_session = {}

-- Size: Requested Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nordicequities_totalview_glimpse_v3_00_1.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nordicequities_totalview_glimpse_v3_00_1.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nordicequities_totalview_glimpse_v3_00_1.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nordicequities_totalview_glimpse_v3_00_1.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "H" then
    return "Sequenced Message Type: Order Book Trading Action Message (H)"
  end
  if value == "R" then
    return "Sequenced Message Type: Order Book Directory Message (R)"
  end
  if value == "A" then
    return "Sequenced Message Type: Add Order Message (A)"
  end
  if value == "F" then
    return "Sequenced Message Type: Add Order Mpid Attribution Message (F)"
  end
  if value == "G" then
    return "Sequenced Message Type: End Of Snapshot Message (G)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.session = {}

-- Size: Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.session.size = 10

-- Display: Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.session, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol = {}

-- Size: Symbol
nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol.size = 16

-- Display: Symbol
nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol State
nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol_state = {}

-- Size: Symbol State
nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol_state.size = 1

-- Display: Symbol State
nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol_state.display = function(value)
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
nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.symbol_state, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_nordicequities_totalview_glimpse_v3_00_1.text = {}

-- Size: Text
nasdaq_nordicequities_totalview_glimpse_v3_00_1.text.size = 1

-- Display: Text
nasdaq_nordicequities_totalview_glimpse_v3_00_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_nordicequities_totalview_glimpse_v3_00_1.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp = {}

-- Size: Timestamp
nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nordicequities_totalview_glimpse_v3_00_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trading Currency
nasdaq_nordicequities_totalview_glimpse_v3_00_1.trading_currency = {}

-- Size: Trading Currency
nasdaq_nordicequities_totalview_glimpse_v3_00_1.trading_currency.size = 3

-- Display: Trading Currency
nasdaq_nordicequities_totalview_glimpse_v3_00_1.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
nasdaq_nordicequities_totalview_glimpse_v3_00_1.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_nordicequities_totalview_glimpse_v3_00_1.username = {}

-- Size: Username
nasdaq_nordicequities_totalview_glimpse_v3_00_1.username.size = 6

-- Display: Username
nasdaq_nordicequities_totalview_glimpse_v3_00_1.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
nasdaq_nordicequities_totalview_glimpse_v3_00_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.username.size
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

  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NordicEquities TotalView Glimpse 3.00.1
-----------------------------------------------------------------------

-- End Of Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_session = {}

-- Display: End Of Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Snapshot Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_snapshot_message = {}

-- Size: End Of Snapshot Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_snapshot_message.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.size

-- Display: End Of Snapshot Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Snapshot Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: Numeric
  index, sequence_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.current = sequence_number

  if not packet.visited then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: End Of Snapshot Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.end_of_snapshot_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Mpid Attribution Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_mpid_attribution_message = {}

-- Size: Add Order Mpid Attribution Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_mpid_attribution_message.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.attribution.size

-- Display: Add Order Mpid Attribution Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Mpid Attribution Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha-numeric
  index, attribution = nasdaq_nordicequities_totalview_glimpse_v3_00_1.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Mpid Attribution Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.add_order_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_message = {}

-- Size: Add Order Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_message.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.size

-- Display: Add Order Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: Alpha
  index, buy_sell_indicator = nasdaq_nordicequities_totalview_glimpse_v3_00_1.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = nasdaq_nordicequities_totalview_glimpse_v3_00_1.quantity.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nordicequities_totalview_glimpse_v3_00_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Note Codes Bit Field 8
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8 = {}

-- Size: Note Codes Bit Field 8
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8.size = 1

-- Display: Note Codes Bit Field 8
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 8
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8.bits = function(range, value, packet, parent)

  -- Reserved 18: 8 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_18, range, value)
end

-- Dissect: Note Codes Bit Field 8
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_8, range, display)

  if show.structs then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 7
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7 = {}

-- Size: Note Codes Bit Field 7
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7.size = 1

-- Display: Note Codes Bit Field 7
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 7
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7.bits = function(range, value, packet, parent)

  -- Reserved 18: 8 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_18, range, value)
end

-- Dissect: Note Codes Bit Field 7
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_7, range, display)

  if show.structs then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 6
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6 = {}

-- Size: Note Codes Bit Field 6
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6.size = 1

-- Display: Note Codes Bit Field 6
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Note Codes Bit Field 6
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6.bits = function(range, value, packet, parent)

  -- Reserved 18: 8 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_18, range, value)
end

-- Dissect: Note Codes Bit Field 6
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_6, range, display)

  if show.structs then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 5
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5 = {}

-- Size: Note Codes Bit Field 5
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5.size = 1

-- Display: Note Codes Bit Field 5
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5.display = function(range, value, packet, parent)
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
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5.bits = function(range, value, packet, parent)

  -- Em Exceptional Circumstances Related To Market Maker: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.em_exceptional_circumstances_related_to_market_maker, range, value)

  -- Un Underlying Not Quoted: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.un_underlying_not_quoted, range, value)

  -- Da Digital Asset: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.da_digital_asset, range, value)

  -- Kn Knockout Buy Back Into Next Trading Day: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.kn_knockout_buy_back_into_next_trading_day, range, value)

  -- Reserved 58: 4 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_58, range, value)
end

-- Dissect: Note Codes Bit Field 5
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_5, range, display)

  if show.structs then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 4
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4 = {}

-- Size: Note Codes Bit Field 4
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4.size = 1

-- Display: Note Codes Bit Field 4
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4.display = function(range, value, packet, parent)
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
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4.bits = function(range, value, packet, parent)

  -- Bb Buy Back: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.bb_buy_back, range, value)

  -- Reserved 23: 2 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_23, range, value)

  -- Ce Capped By Esma: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ce_capped_by_esma, range, value)

  -- Reserved 5: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.reserved_5, range, value)

  -- Pd Price Discrepancy Historical Average Share Classes: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.pd_price_discrepancy_historical_average_share_classes, range, value)

  -- Sm Stressed Market: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sm_stressed_market, range, value)

  -- Ew Marketwide Exceptional Circumstance: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ew_marketwide_exceptional_circumstance, range, value)
end

-- Dissect: Note Codes Bit Field 4
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_4, range, display)

  if show.structs then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 3
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3 = {}

-- Size: Note Codes Bit Field 3
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3.size = 1

-- Display: Note Codes Bit Field 3
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3.display = function(range, value, packet, parent)
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
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3.bits = function(range, value, packet, parent)

  -- Ss Excluding Comb Split Redemption Share: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ss_excluding_comb_split_redemption_share, range, value)

  -- Fn First North Company: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.fn_first_north_company, range, value)

  -- Ob Observation Status: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ob_observation_status, range, value)

  -- Xd Excluding Dividend: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.xd_excluding_dividend, range, value)

  -- Fe Foreign Non Eueea Entity: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.fe_foreign_non_eueea_entity, range, value)

  -- So Sold Out Buy Back: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.so_sold_out_buy_back, range, value)

  -- Sk Soft Knock: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sk_soft_knock, range, value)

  -- Kb Knock Out Buy Back: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.kb_knock_out_buy_back, range, value)
end

-- Dissect: Note Codes Bit Field 3
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_3, range, display)

  if show.structs then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 2
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2 = {}

-- Size: Note Codes Bit Field 2
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2.size = 1

-- Display: Note Codes Bit Field 2
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2.display = function(range, value, packet, parent)
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
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2.bits = function(range, value, packet, parent)

  -- Br Company Bankruptcy: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.br_company_bankruptcy, range, value)

  -- Su Suspension: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.su_suspension, range, value)

  -- Rl Removal From Listing In Process: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.rl_removal_from_listing_in_process, range, value)

  -- Sl Other Surveillance List Reason: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sl_other_surveillance_list_reason, range, value)

  -- To A Significant Reverse Takeover Pending: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.to_a_significant_reverse_takeover_pending, range, value)

  -- Cs Cent Shares: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.cs_cent_shares, range, value)

  -- Rs Reversed Split: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.rs_reversed_split, range, value)

  -- Bs Excluding Comb Bonus Split: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.bs_excluding_comb_bonus_split, range, value)
end

-- Dissect: Note Codes Bit Field 2
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_2, range, display)

  if show.structs then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Note Codes Bit Field 1
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1 = {}

-- Size: Note Codes Bit Field 1
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1.size = 1

-- Display: Note Codes Bit Field 1
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1.display = function(range, value, packet, parent)
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
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1.bits = function(range, value, packet, parent)

  -- Nm New Market Company: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.nm_new_market_company, range, value)

  -- Xr Excluding Participating In Rights: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.xr_excluding_participating_in_rights, range, value)

  -- Sp Excluding Participating In Split: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sp_excluding_participating_in_split, range, value)

  -- Po Company Subject To Public Offer: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.po_company_subject_to_public_offer, range, value)

  -- Ud Under Drawing: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ud_under_drawing, range, value)

  -- Sr Excluding Comb Split And Issue Rights: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sr_excluding_comb_split_and_issue_rights, range, value)

  -- Ul Un Listed: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.ul_un_listed, range, value)

  -- Wi When Issued: 1 Bit
  parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.wi_when_issued, range, value)
end

-- Dissect: Note Codes Bit Field 1
nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.note_codes_bit_field_1, range, display)

  if show.structs then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Book Directory Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_directory_message = {}

-- Size: Order Book Directory Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_directory_message.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.isin.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.financial_product.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.trading_currency.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.mic.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.market_segment_id.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.round_lot_size.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.nordic_mid_mic.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.aod_mic.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.notation_of_qty.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.currency.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.price_notation.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit.size

-- Display: Order Book Directory Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha-numeric
  index, symbol = nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol.dissect(buffer, index, packet, parent)

  -- Isin: Alpha-numeric
  index, isin = nasdaq_nordicequities_totalview_glimpse_v3_00_1.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Integer
  index, financial_product = nasdaq_nordicequities_totalview_glimpse_v3_00_1.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = nasdaq_nordicequities_totalview_glimpse_v3_00_1.trading_currency.dissect(buffer, index, packet, parent)

  -- Mic: Alpha
  index, mic = nasdaq_nordicequities_totalview_glimpse_v3_00_1.mic.dissect(buffer, index, packet, parent)

  -- Market Segment Id: Integer
  index, market_segment_id = nasdaq_nordicequities_totalview_glimpse_v3_00_1.market_segment_id.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 1: Struct of 8 fields
  index, note_codes_bit_field_1 = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_1.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 2: Struct of 8 fields
  index, note_codes_bit_field_2 = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_2.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 3: Struct of 8 fields
  index, note_codes_bit_field_3 = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_3.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 4: Struct of 7 fields
  index, note_codes_bit_field_4 = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_4.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 5: Struct of 5 fields
  index, note_codes_bit_field_5 = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_5.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 6: Struct of 1 fields
  index, note_codes_bit_field_6 = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_6.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 7: Struct of 1 fields
  index, note_codes_bit_field_7 = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_7.dissect(buffer, index, packet, parent)

  -- Note Codes Bit Field 8: Struct of 1 fields
  index, note_codes_bit_field_8 = nasdaq_nordicequities_totalview_glimpse_v3_00_1.note_codes_bit_field_8.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_nordicequities_totalview_glimpse_v3_00_1.round_lot_size.dissect(buffer, index, packet, parent)

  -- Nordic Mid Mic: Alpha
  index, nordic_mid_mic = nasdaq_nordicequities_totalview_glimpse_v3_00_1.nordic_mid_mic.dissect(buffer, index, packet, parent)

  -- Aod Mic: Alpha
  index, aod_mic = nasdaq_nordicequities_totalview_glimpse_v3_00_1.aod_mic.dissect(buffer, index, packet, parent)

  -- Notation Of Qty: Alpha
  index, notation_of_qty = nasdaq_nordicequities_totalview_glimpse_v3_00_1.notation_of_qty.dissect(buffer, index, packet, parent)

  -- Notional Amount: Price(5)
  index, notional_amount = nasdaq_nordicequities_totalview_glimpse_v3_00_1.notional_amount.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_nordicequities_totalview_glimpse_v3_00_1.currency.dissect(buffer, index, packet, parent)

  -- Price Notation: Alpha
  index, price_notation = nasdaq_nordicequities_totalview_glimpse_v3_00_1.price_notation.dissect(buffer, index, packet, parent)

  -- Multiplier For Calculating Quantity In Measurement Unit: Price(6)
  index, multiplier_for_calculating_quantity_in_measurement_unit = nasdaq_nordicequities_totalview_glimpse_v3_00_1.multiplier_for_calculating_quantity_in_measurement_unit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.order_book_directory_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Trading Action Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_trading_action_message = {}

-- Size: Order Book Trading Action Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_trading_action_message.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol_state.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.extension.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.reason.size

-- Display: Order Book Trading Action Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Trading Action Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Order Book: Integer
  index, order_book = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book.dissect(buffer, index, packet, parent)

  -- Symbol State: Alpha-numeric
  index, symbol_state = nasdaq_nordicequities_totalview_glimpse_v3_00_1.symbol_state.dissect(buffer, index, packet, parent)

  -- Extension: Alpha
  index, extension = nasdaq_nordicequities_totalview_glimpse_v3_00_1.extension.dissect(buffer, index, packet, parent)

  -- Reason: Alpha-numeric
  index, reason = nasdaq_nordicequities_totalview_glimpse_v3_00_1.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Trading Action Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.order_book_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.system_event_message = {}

-- Size: System Event Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.system_event_message.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.event_code.size

-- Display: System Event Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_nordicequities_totalview_glimpse_v3_00_1.timestamp.dissect(buffer, index, packet, parent)

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha-numeric
  index, event_code = nasdaq_nordicequities_totalview_glimpse_v3_00_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory Message
  if sequenced_message_type == "R" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.order_book_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if sequenced_message_type == "A" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Mpid Attribution Message
  if sequenced_message_type == "F" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.add_order_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Snapshot Message
  if sequenced_message_type == "G" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.current)
      end
      local value = flow.sequence.next
      if value ~= nil then
        if memo == nil then
          memo = {}
          flow.sequence.frames[packet.number] = memo
        end
        memo[#memo + 1] = value
        flow.sequence.next = value + 1
        if show.sequences then
          local sequence = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_nordicequities_totalview_glimpse_v3_00_1.stream_frame ~= packet.number or nasdaq_nordicequities_totalview_glimpse_v3_00_1.stream_occurrence >= #memo then
          nasdaq_nordicequities_totalview_glimpse_v3_00_1.stream_frame = packet.number
          nasdaq_nordicequities_totalview_glimpse_v3_00_1.stream_occurrence = 0
        end
        nasdaq_nordicequities_totalview_glimpse_v3_00_1.stream_occurrence = nasdaq_nordicequities_totalview_glimpse_v3_00_1.stream_occurrence + 1
        local value = memo[nasdaq_nordicequities_totalview_glimpse_v3_00_1.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 6 values
  index, sequenced_message_type = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 6 branches
  index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_rejected_packet.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_nordicequities_totalview_glimpse_v3_00_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_accepted_packet.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.session.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nordicequities_totalview_glimpse_v3_00_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: Numeric
  index, sequence_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.current = sequence_number

  if not packet.visited then
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet = {}

-- Size: Debug Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.text.size

-- Display: Debug Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_nordicequities_totalview_glimpse_v3_00_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_payload = {}

-- Dissect: Server Payload
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_type.size

-- Display: Server Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.data(packet)
  if not packet.visited then
    data.sequence_number.frames[packet.number] = data.sequence_number.last
    data.sequence_number.frames[packet.number] = data.sequence_number.last
  end
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.current = data.sequence_number.frames[packet.number]
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.current = data.sequence_number.frames[packet.number]
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Logout Request
nasdaq_nordicequities_totalview_glimpse_v3_00_1.logout_request = {}

-- Display: Logout Request
nasdaq_nordicequities_totalview_glimpse_v3_00_1.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_nordicequities_totalview_glimpse_v3_00_1.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_request_packet.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.username.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.password.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_session.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_nordicequities_totalview_glimpse_v3_00_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_nordicequities_totalview_glimpse_v3_00_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_nordicequities_totalview_glimpse_v3_00_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_payload = {}

-- Dissect: Client Payload
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.size =
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length.size + 
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_type.size

-- Display: Client Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_nordicequities_totalview_glimpse_v3_00_1.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.init()
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.sequence_number.current = nil
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.current = nil
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.conversation.flows = {}
end

-- Connection roles for Nasdaq NordicEquities TotalView Glimpse 3.00.1: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
nasdaq_nordicequities_totalview_glimpse_v3_00_1.role = function(packet)
  if omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
nasdaq_nordicequities_totalview_glimpse_v3_00_1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq NordicEquities TotalView Glimpse 3.00.1
function omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1, buffer(), omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_nordicequities_totalview_glimpse_v3_00_1.role(packet)
  if role == "initiator" then
    return nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet.dissect(buffer, packet, protocol)
  end
  return nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end
  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  -- Client Heartbeat
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request
  if client_packet_type == "O" then
    return true
  end

  return false
end


-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end
  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet
  if server_packet_type == "S" then
    return true
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session
  if server_packet_type == "Z" then
    return true
  end

  return false
end



-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NordicEquities TotalView Glimpse 3.00.1 (Tcp)
local function omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nordicequities_totalview_glimpse_v3_00_1.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1
  omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicEquities TotalView Glimpse 3.00.1 (Tcp)
local function omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_nordicequities_totalview_glimpse_v3_00_1.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1
  omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq NordicEquities TotalView Glimpse 3.00.1 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_nordicequities_totalview_glimpse_v3_00_1.role(packet)
  local first, second = omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1_tcp_initiator_heuristic, omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  nasdaq_nordicequities_totalview_glimpse_v3_00_1.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq NordicEquities TotalView Glimpse 3.00.1
omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1:register_heuristic("tcp", omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1_tcp_heuristic)
-- Register Nasdaq NordicEquities TotalView Glimpse 3.00.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_nordicequities_totalview_glimpse_v3_00_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.00.1
--   Date: Tuesday, December 1, 2015
--   Specification: Nasdaq Nordic INET Equity GLIMPSE (3.00.1).pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
