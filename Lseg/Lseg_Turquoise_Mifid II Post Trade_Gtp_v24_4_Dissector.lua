-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Turquoise Mifid II Post Trade Gtp 24.4 Protocol
local lseg_turquoise_mifid_ii_post_trade_gtp_v24_4 = Proto("Lseg.Turquoise.Mifid II Post Trade.Gtp.v24.4.Lua", "Lseg Turquoise Mifid II Post Trade Gtp 24.4")

-- Component Tables
local show = {}
local format = {}
local lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display = {}
local lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect = {}
local lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Turquoise Mifid II Post Trade Gtp 24.4 Fields
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.agency_cross_indicator = ProtoField.new("Agency Cross Indicator", "lseg.turquoise.mifid ii post trade.gtp.v24.4.agencycrossindicator", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "lseg.turquoise.mifid ii post trade.gtp.v24.4.algorithmicindicator", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.turquoise.mifid ii post trade.gtp.v24.4.allowedbooktypes", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.auction_type = ProtoField.new("Auction Type", "lseg.turquoise.mifid ii post trade.gtp.v24.4.auctiontype", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.cross_id = ProtoField.new("Cross Id", "lseg.turquoise.mifid ii post trade.gtp.v24.4.crossid", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.cross_type = ProtoField.new("Cross Type", "lseg.turquoise.mifid ii post trade.gtp.v24.4.crosstype", ftypes.UINT8)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.turquoise.mifid ii post trade.gtp.v24.4.currency", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.deferral_enrichment_type = ProtoField.new("Deferral Enrichment Type", "lseg.turquoise.mifid ii post trade.gtp.v24.4.deferralenrichmenttype", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "lseg.turquoise.mifid ii post trade.gtp.v24.4.duplicativeindicator", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.turquoise.mifid ii post trade.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.turquoise.mifid ii post trade.gtp.v24.4.electronicorderbook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.turquoise.mifid ii post trade.gtp.v24.4.eventcode", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.turquoise.mifid ii post trade.gtp.v24.4.instrument", ftypes.UINT64)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.turquoise.mifid ii post trade.gtp.v24.4.instrumentdirectorymessage", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument_identification_code = ProtoField.new("Instrument Identification Code", "lseg.turquoise.mifid ii post trade.gtp.v24.4.instrumentidentificationcode", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument_identification_code_type = ProtoField.new("Instrument Identification Code Type", "lseg.turquoise.mifid ii post trade.gtp.v24.4.instrumentidentificationcodetype", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.turquoise.mifid ii post trade.gtp.v24.4.instrumentstatusmessage", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.turquoise.mifid ii post trade.gtp.v24.4.isin", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.turquoise.mifid ii post trade.gtp.v24.4.length", ftypes.UINT16)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.market_closing_price_flag = ProtoField.new("Market Closing Price Flag", "lseg.turquoise.mifid ii post trade.gtp.v24.4.marketclosingpriceflag", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.turquoise.mifid ii post trade.gtp.v24.4.marketdatagroup", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.market_mechanism = ProtoField.new("Market Mechanism", "lseg.turquoise.mifid ii post trade.gtp.v24.4.marketmechanism", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.turquoise.mifid ii post trade.gtp.v24.4.message", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.turquoise.mifid ii post trade.gtp.v24.4.messagecount", ftypes.UINT8)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.turquoise.mifid ii post trade.gtp.v24.4.messageheader", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.turquoise.mifid ii post trade.gtp.v24.4.messagelength", ftypes.UINT8)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.turquoise.mifid ii post trade.gtp.v24.4.messagetype", ftypes.UINT8)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.mi_fid_ii_trade_cross_message = ProtoField.new("Mi Fid Ii Trade Cross Message", "lseg.turquoise.mifid ii post trade.gtp.v24.4.mifidiitradecrossmessage", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.mi_fid_price = ProtoField.new("Mi Fid Price", "lseg.turquoise.mifid ii post trade.gtp.v24.4.mifidprice", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.mi_fid_quantity = ProtoField.new("Mi Fid Quantity", "lseg.turquoise.mifid ii post trade.gtp.v24.4.mifidquantity", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.mifid_ii_trade_message = ProtoField.new("Mifid Ii Trade Message", "lseg.turquoise.mifid ii post trade.gtp.v24.4.mifidiitrademessage", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.modification_indicator = ProtoField.new("Modification Indicator", "lseg.turquoise.mifid ii post trade.gtp.v24.4.modificationindicator", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.negotiation_indicator = ProtoField.new("Negotiation Indicator", "lseg.turquoise.mifid ii post trade.gtp.v24.4.negotiationindicator", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.turquoise.mifid ii post trade.gtp.v24.4.newendtime", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.notional_amount = ProtoField.new("Notional Amount", "lseg.turquoise.mifid ii post trade.gtp.v24.4.notionalamount", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.notional_currency = ProtoField.new("Notional Currency", "lseg.turquoise.mifid ii post trade.gtp.v24.4.notionalcurrency", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.nt_pre_trade_waiver_flag = ProtoField.new("Nt Pre Trade Waiver Flag", "lseg.turquoise.mifid ii post trade.gtp.v24.4.ntpretradewaiverflag", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.off_book_automated_indicator = ProtoField.new("Off Book Automated Indicator", "lseg.turquoise.mifid ii post trade.gtp.v24.4.offbookautomatedindicator", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.turquoise.mifid ii post trade.gtp.v24.4.orderbooktype", ftypes.UINT8)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.turquoise.mifid ii post trade.gtp.v24.4.packet", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.payload = ProtoField.new("Payload", "lseg.turquoise.mifid ii post trade.gtp.v24.4.payload", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "lseg.turquoise.mifid ii post trade.gtp.v24.4.posttradedeferralreason", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.turquoise.mifid ii post trade.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.price_formation_indicator = ProtoField.new("Price Formation Indicator", "lseg.turquoise.mifid ii post trade.gtp.v24.4.priceformationindicator", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.price_major_currency = ProtoField.new("Price Major Currency", "lseg.turquoise.mifid ii post trade.gtp.v24.4.pricemajorcurrency", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.price_notation = ProtoField.new("Price Notation", "lseg.turquoise.mifid ii post trade.gtp.v24.4.pricenotation", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.pt_algo_trade = ProtoField.new("Pt Algo Trade", "lseg.turquoise.mifid ii post trade.gtp.v24.4.ptalgotrade", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.pt_amendment_flag = ProtoField.new("Pt Amendment Flag", "lseg.turquoise.mifid ii post trade.gtp.v24.4.ptamendmentflag", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.pt_cancellation_flag = ProtoField.new("Pt Cancellation Flag", "lseg.turquoise.mifid ii post trade.gtp.v24.4.ptcancellationflag", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.pt_ref_price_waiver_flag = ProtoField.new("Pt Ref Price Waiver Flag", "lseg.turquoise.mifid ii post trade.gtp.v24.4.ptrefpricewaiverflag", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.publication_date_and_time = ProtoField.new("Publication Date And Time", "lseg.turquoise.mifid ii post trade.gtp.v24.4.publicationdateandtime", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reference_price_indicator = ProtoField.new("Reference Price Indicator", "lseg.turquoise.mifid ii post trade.gtp.v24.4.referencepriceindicator", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.turquoise.mifid ii post trade.gtp.v24.4.reserved23", ftypes.BYTES)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reserved_28 = ProtoField.new("Reserved 28", "lseg.turquoise.mifid ii post trade.gtp.v24.4.reserved28", ftypes.BYTES)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reserved_38 = ProtoField.new("Reserved 38", "lseg.turquoise.mifid ii post trade.gtp.v24.4.reserved38", ftypes.BYTES)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.turquoise.mifid ii post trade.gtp.v24.4.reserved4", ftypes.BYTES)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.turquoise.mifid ii post trade.gtp.v24.4.segment", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.turquoise.mifid ii post trade.gtp.v24.4.sequencenumber", ftypes.UINT32)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.turquoise.mifid ii post trade.gtp.v24.4.sessionchangereason", ftypes.UINT8)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.turquoise.mifid ii post trade.gtp.v24.4.sourcevenue", ftypes.UINT16)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.special_dividend_indicator = ProtoField.new("Special Dividend Indicator", "lseg.turquoise.mifid ii post trade.gtp.v24.4.specialdividendindicator", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.turquoise.mifid ii post trade.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.system_event_message = ProtoField.new("System Event Message", "lseg.turquoise.mifid ii post trade.gtp.v24.4.systemeventmessage", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.turquoise.mifid ii post trade.gtp.v24.4.tickid", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.turquoise.mifid ii post trade.gtp.v24.4.timestamp", ftypes.UINT64)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "lseg.turquoise.mifid ii post trade.gtp.v24.4.tradequalifier", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trade_type = ProtoField.new("Trade Type", "lseg.turquoise.mifid ii post trade.gtp.v24.4.tradetype", ftypes.UINT8)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trading_date_and_time = ProtoField.new("Trading Date And Time", "lseg.turquoise.mifid ii post trade.gtp.v24.4.tradingdateandtime", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trading_mode = ProtoField.new("Trading Mode", "lseg.turquoise.mifid ii post trade.gtp.v24.4.tradingmode", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.turquoise.mifid ii post trade.gtp.v24.4.tradingstatus", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.transaction_category = ProtoField.new("Transaction Category", "lseg.turquoise.mifid ii post trade.gtp.v24.4.transactioncategory", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.transaction_identification_code = ProtoField.new("Transaction Identification Code", "lseg.turquoise.mifid ii post trade.gtp.v24.4.transactionidentificationcode", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.turquoise.mifid ii post trade.gtp.v24.4.unitheader", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.unused_2 = ProtoField.new("Unused 2", "lseg.turquoise.mifid ii post trade.gtp.v24.4.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.unused_5 = ProtoField.new("Unused 5", "lseg.turquoise.mifid ii post trade.gtp.v24.4.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.turquoise.mifid ii post trade.gtp.v24.4.venueinstrumentid", ftypes.STRING)
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "lseg.turquoise.mifid ii post trade.gtp.v24.4.venueofexecution", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Lseg Turquoise Mifid II Post Trade Gtp 24.4 Element Dissection Options
show.allowed_book_types = true
show.instrument_directory_message = true
show.instrument_status_message = true
show.message = true
show.message_header = true
show.mi_fid_ii_trade_cross_message = true
show.mifid_ii_trade_message = true
show.packet = true
show.system_event_message = true
show.unit_header = true
show.payload = false

-- Register Lseg Turquoise Mifid II Post Trade Gtp 24.4 Show Options
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_instrument_status_message = Pref.bool("Show Instrument Status Message", show.instrument_status_message, "Parse and add Instrument Status Message to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_mi_fid_ii_trade_cross_message = Pref.bool("Show Mi Fid Ii Trade Cross Message", show.mi_fid_ii_trade_cross_message, "Parse and add Mi Fid Ii Trade Cross Message to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_mifid_ii_trade_message = Pref.bool("Show Mifid Ii Trade Message", show.mifid_ii_trade_message, "Parse and add Mifid Ii Trade Message to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allowed_book_types ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_allowed_book_types then
    show.allowed_book_types = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_allowed_book_types
    changed = true
  end
  if show.instrument_directory_message ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_instrument_directory_message then
    show.instrument_directory_message = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_instrument_directory_message
    changed = true
  end
  if show.instrument_status_message ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_instrument_status_message then
    show.instrument_status_message = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_instrument_status_message
    changed = true
  end
  if show.message ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_message then
    show.message = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_message_header then
    show.message_header = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_message_header
    changed = true
  end
  if show.mi_fid_ii_trade_cross_message ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_mi_fid_ii_trade_cross_message then
    show.mi_fid_ii_trade_cross_message = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_mi_fid_ii_trade_cross_message
    changed = true
  end
  if show.mifid_ii_trade_message ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_mifid_ii_trade_message then
    show.mifid_ii_trade_message = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_mifid_ii_trade_message
    changed = true
  end
  if show.packet ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_packet then
    show.packet = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_packet
    changed = true
  end
  if show.system_event_message ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_system_event_message then
    show.system_event_message = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_system_event_message
    changed = true
  end
  if show.unit_header ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_unit_header then
    show.unit_header = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_unit_header
    changed = true
  end
  if show.payload ~= lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_payload then
    show.payload = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
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
-- Dissect Lseg Turquoise Mifid II Post Trade Gtp 24.4
-----------------------------------------------------------------------

-- Size: Duplicative Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.duplicative_indicator = 1

-- Display: Duplicative Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.duplicative_indicator = function(value)
  if value == "-" then
    return "Duplicative Indicator: Unique Trade Report (-)"
  end

  return "Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Duplicative Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.duplicative_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.duplicative_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Deferral Enrichment Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.deferral_enrichment_type = 1

-- Display: Deferral Enrichment Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.deferral_enrichment_type = function(value)
  if value == "-" then
    return "Deferral Enrichment Type: Not Applicable (-)"
  end

  return "Deferral Enrichment Type: Unknown("..value..")"
end

-- Dissect: Deferral Enrichment Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.deferral_enrichment_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.deferral_enrichment_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.deferral_enrichment_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.deferral_enrichment_type, range, value, display)

  return offset + length, value
end

-- Size: Post Trade Deferral Reason
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.post_trade_deferral_reason = 1

-- Display: Post Trade Deferral Reason
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.post_trade_deferral_reason = function(value)
  if value == "-" then
    return "Post Trade Deferral Reason: Immediate Publication (-)"
  end

  return "Post Trade Deferral Reason: Unknown("..value..")"
end

-- Dissect: Post Trade Deferral Reason
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.post_trade_deferral_reason = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.post_trade_deferral_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.post_trade_deferral_reason(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Size: Algorithmic Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.algorithmic_indicator = 1

-- Display: Algorithmic Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.algorithmic_indicator = function(value)
  if value == "H" then
    return "Algorithmic Indicator: Algorithmic Trade (H)"
  end
  if value == "-" then
    return "Algorithmic Indicator: Not An Algorithmic Trade (-)"
  end

  return "Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.algorithmic_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price Formation Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_formation_indicator = 1

-- Display: Price Formation Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.price_formation_indicator = function(value)
  if value == "P" then
    return "Price Formation Indicator: Plain Vanilla Trade (P)"
  end

  return "Price Formation Indicator: Unknown("..value..")"
end

-- Dissect: Price Formation Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_formation_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_formation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.price_formation_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.price_formation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Off Book Automated Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.off_book_automated_indicator = 1

-- Display: Off Book Automated Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.off_book_automated_indicator = function(value)
  if value == "-" then
    return "Off Book Automated Indicator: Unspecified Or Does Not Apply (-)"
  end

  return "Off Book Automated Indicator: Unknown("..value..")"
end

-- Dissect: Off Book Automated Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.off_book_automated_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.off_book_automated_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.off_book_automated_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Size: Special Dividend Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.special_dividend_indicator = 1

-- Display: Special Dividend Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.special_dividend_indicator = function(value)
  if value == "-" then
    return "Special Dividend Indicator: No Special Dividend Trade (-)"
  end

  return "Special Dividend Indicator: Unknown("..value..")"
end

-- Dissect: Special Dividend Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.special_dividend_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.special_dividend_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.special_dividend_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Size: Reference Price Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reference_price_indicator = 1

-- Display: Reference Price Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reference_price_indicator = function(value)
  if value == "S" then
    return "Reference Price Indicator: Reference Price Trade (S)"
  end
  if value == "1" then
    return "Reference Price Indicator: Market Closing Price Trade (1)"
  end
  if value == "-" then
    return "Reference Price Indicator: Not A Reference Price Trade (-)"
  end

  return "Reference Price Indicator: Unknown("..value..")"
end

-- Dissect: Reference Price Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reference_price_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reference_price_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reference_price_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Size: Modification Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.modification_indicator = 1

-- Display: Modification Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.modification_indicator = function(value)
  if value == "C" then
    return "Modification Indicator: Trade Cancellation (C)"
  end
  if value == "A" then
    return "Modification Indicator: Trade Amendment (A)"
  end
  if value == "-" then
    return "Modification Indicator: New Trade (-)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.modification_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.modification_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.modification_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Agency Cross Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.agency_cross_indicator = 1

-- Display: Agency Cross Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.agency_cross_indicator = function(value)
  if value == "-" then
    return "Agency Cross Indicator: No Agency Cross Trade (-)"
  end

  return "Agency Cross Indicator: Unknown("..value..")"
end

-- Dissect: Agency Cross Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.agency_cross_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.agency_cross_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.agency_cross_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.agency_cross_indicator, range, value, display)

  return offset + length, value
end

-- Size: Negotiation Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.negotiation_indicator = 1

-- Display: Negotiation Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.negotiation_indicator = function(value)
  if value == "-" then
    return "Negotiation Indicator: Not A Negotiated Trade (-)"
  end

  return "Negotiation Indicator: Unknown("..value..")"
end

-- Dissect: Negotiation Indicator
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.negotiation_indicator = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.negotiation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.negotiation_indicator(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Transaction Category
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.transaction_category = 1

-- Display: Transaction Category
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.transaction_category = function(value)
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end
  if value == "-" then
    return "Transaction Category: None (-)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.transaction_category = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.transaction_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.transaction_category(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Trading Mode
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_mode = 1

-- Display: Trading Mode
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trading_mode = function(value)
  if value == "U" then
    return "Trading Mode: Unscheduled Auction (U)"
  end
  if value == "P" then
    return "Trading Mode: On Demand Auction (P)"
  end
  if value == "2" then
    return "Trading Mode: Continuous Trading (2)"
  end
  if value == "3" then
    return "Trading Mode: At Market Close Trading (3)"
  end

  return "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trading_mode = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trading_mode(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Market Mechanism
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_mechanism = 1

-- Display: Market Mechanism
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.market_mechanism = function(value)
  if value == "1" then
    return "Market Mechanism: Central Limit Order Book (1)"
  end
  if value == "3" then
    return "Market Mechanism: Dark Order Book (3)"
  end
  if value == "5" then
    return "Market Mechanism: Periodic Auction (5)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.market_mechanism = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_mechanism
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.market_mechanism(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Size: Reserved 28
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_28 = 28

-- Display: Reserved 28
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reserved_28 = function(value)
  return "Reserved 28: "..value
end

-- Dissect: Reserved 28
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_28 = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_28
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reserved_28(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reserved_28, range, value, display)

  return offset + length, value
end

-- Size: Pt Amendment Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_amendment_flag = 4

-- Display: Pt Amendment Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.pt_amendment_flag = function(value)
  return "Pt Amendment Flag: "..value
end

-- Dissect: Pt Amendment Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_amendment_flag = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_amendment_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.pt_amendment_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.pt_amendment_flag, range, value, display)

  return offset + length, value
end

-- Size: Pt Cancellation Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_cancellation_flag = 4

-- Display: Pt Cancellation Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.pt_cancellation_flag = function(value)
  return "Pt Cancellation Flag: "..value
end

-- Dissect: Pt Cancellation Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_cancellation_flag = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_cancellation_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.pt_cancellation_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.pt_cancellation_flag, range, value, display)

  return offset + length, value
end

-- Size: Reserved 4
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_4 = 4

-- Display: Reserved 4
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Pt Algo Trade
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_algo_trade = 4

-- Display: Pt Algo Trade
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.pt_algo_trade = function(value)
  return "Pt Algo Trade: "..value
end

-- Dissect: Pt Algo Trade
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_algo_trade = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_algo_trade
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.pt_algo_trade(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.pt_algo_trade, range, value, display)

  return offset + length, value
end

-- Size: Nt Pre Trade Waiver Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.nt_pre_trade_waiver_flag = 4

-- Display: Nt Pre Trade Waiver Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.nt_pre_trade_waiver_flag = function(value)
  return "Nt Pre Trade Waiver Flag: "..value
end

-- Dissect: Nt Pre Trade Waiver Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.nt_pre_trade_waiver_flag = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.nt_pre_trade_waiver_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.nt_pre_trade_waiver_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.nt_pre_trade_waiver_flag, range, value, display)

  return offset + length, value
end

-- Size: Publication Date And Time
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.publication_date_and_time = 27

-- Display: Publication Date And Time
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.publication_date_and_time = function(value)
  return "Publication Date And Time: "..value
end

-- Dissect: Publication Date And Time
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.publication_date_and_time = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.publication_date_and_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.publication_date_and_time(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.publication_date_and_time, range, value, display)

  return offset + length, value
end

-- Size: Venue Of Execution
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.venue_of_execution = 4

-- Display: Venue Of Execution
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.venue_of_execution = function(value)
  return "Venue Of Execution: "..value
end

-- Dissect: Venue Of Execution
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.venue_of_execution = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.venue_of_execution
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.venue_of_execution(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.venue_of_execution, range, value, display)

  return offset + length, value
end

-- Size: Notional Currency
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.notional_currency = 3

-- Display: Notional Currency
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.notional_currency = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.notional_currency = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.notional_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.notional_currency(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Size: Notional Amount
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.notional_amount = 20

-- Display: Notional Amount
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.notional_amount = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.notional_amount = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.notional_amount
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.notional_amount(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Size: Price Major Currency
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_major_currency = 3

-- Display: Price Major Currency
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.price_major_currency = function(value)
  return "Price Major Currency: "..value
end

-- Dissect: Price Major Currency
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_major_currency = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_major_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.price_major_currency(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.price_major_currency, range, value, display)

  return offset + length, value
end

-- Size: Price Notation
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_notation = 4

-- Display: Price Notation
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.price_notation = function(value)
  return "Price Notation: "..value
end

-- Dissect: Price Notation
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_notation = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_notation
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.price_notation(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Size: Instrument Identification Code
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_identification_code = 12

-- Display: Instrument Identification Code
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument_identification_code = function(value)
  return "Instrument Identification Code: "..value
end

-- Dissect: Instrument Identification Code
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_identification_code = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_identification_code
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument_identification_code(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument_identification_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument Identification Code Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_identification_code_type = 4

-- Display: Instrument Identification Code Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument_identification_code_type = function(value)
  return "Instrument Identification Code Type: "..value
end

-- Dissect: Instrument Identification Code Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_identification_code_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_identification_code_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument_identification_code_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument_identification_code_type, range, value, display)

  return offset + length, value
end

-- Size: Trading Date And Time
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_date_and_time = 27

-- Display: Trading Date And Time
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trading_date_and_time = function(value)
  return "Trading Date And Time: "..value
end

-- Dissect: Trading Date And Time
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trading_date_and_time = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_date_and_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trading_date_and_time(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trading_date_and_time, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Quantity
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_quantity = 20

-- Display: Mi Fid Quantity
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.mi_fid_quantity = function(value)
  return "Mi Fid Quantity: "..value
end

-- Dissect: Mi Fid Quantity
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_quantity = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_quantity
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.mi_fid_quantity(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.mi_fid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Price
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_price = 20

-- Display: Mi Fid Price
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.mi_fid_price = function(value)
  return "Mi Fid Price: "..value
end

-- Dissect: Mi Fid Price
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_price = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.mi_fid_price(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.mi_fid_price, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.cross_type = 1

-- Display: Cross Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.cross_type = function(value)
  if value == 6 then
    return "Cross Type: Internal Btf (6)"
  end
  if value == 8 then
    return "Cross Type: Committed Btf (8)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Cross Id
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.cross_id = 20

-- Display: Cross Id
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.cross_id = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.cross_id = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.cross_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.cross_id(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Size: Transaction Identification Code
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.transaction_identification_code = 52

-- Display: Transaction Identification Code
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.transaction_identification_code = function(value)
  return "Transaction Identification Code: "..value
end

-- Dissect: Transaction Identification Code
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.transaction_identification_code = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.transaction_identification_code
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.transaction_identification_code(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.transaction_identification_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument = 8

-- Display: Instrument
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Source Venue
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.source_venue = 2

-- Display: Source Venue
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.source_venue = function(value)
  if value == 5 then
    return "Source Venue: Turquoise Lit Order Book (5)"
  end
  if value == 6 then
    return "Source Venue: Turquoise Plato Order Book (6)"
  end
  if value == 12 then
    return "Source Venue: Turquoise Plato Lit Auctions Order Book (12)"
  end
  if value == 14 then
    return "Source Venue: Turquoise Lit Order Book (14)"
  end
  if value == 15 then
    return "Source Venue: Turquoise Plato Order Book (15)"
  end
  if value == 16 then
    return "Source Venue: Turquoise Plato Lit Auctions Order Book (16)"
  end

  return "Source Venue: Unknown("..value..")"
end

-- Dissect: Source Venue
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.source_venue = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.source_venue
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.source_venue(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.timestamp = 8

-- Display: Timestamp
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mi Fid Ii Trade Cross Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_ii_trade_cross_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.transaction_identification_code

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.cross_id

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.cross_type

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_price

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_quantity

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_date_and_time

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_identification_code_type

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_identification_code

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_notation

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_major_currency

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.notional_amount

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.notional_currency

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.venue_of_execution

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.publication_date_and_time

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_4

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.nt_pre_trade_waiver_flag

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_algo_trade

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_4

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_cancellation_flag

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_amendment_flag

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_28

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_mechanism

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_mode

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.transaction_category

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.negotiation_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.agency_cross_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.modification_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reference_price_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.special_dividend_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.off_book_automated_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_formation_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.algorithmic_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.post_trade_deferral_reason

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.deferral_enrichment_type

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.duplicative_indicator

  return index
end

-- Display: Mi Fid Ii Trade Cross Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.mi_fid_ii_trade_cross_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mi Fid Ii Trade Cross Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_ii_trade_cross_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Transaction Identification Code: 52 Byte Ascii String
  index, transaction_identification_code = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.transaction_identification_code(buffer, index, packet, parent)

  -- Cross Id: 20 Byte Ascii String
  index, cross_id = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.cross_id(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, cross_type = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.cross_type(buffer, index, packet, parent)

  -- Mi Fid Price: 20 Byte Ascii String
  index, mi_fid_price = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_price(buffer, index, packet, parent)

  -- Mi Fid Quantity: 20 Byte Ascii String
  index, mi_fid_quantity = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_quantity(buffer, index, packet, parent)

  -- Trading Date And Time: 27 Byte Ascii String
  index, trading_date_and_time = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trading_date_and_time(buffer, index, packet, parent)

  -- Instrument Identification Code Type: 4 Byte Ascii String
  index, instrument_identification_code_type = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_identification_code_type(buffer, index, packet, parent)

  -- Instrument Identification Code: 12 Byte Ascii String
  index, instrument_identification_code = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_identification_code(buffer, index, packet, parent)

  -- Price Notation: 4 Byte Ascii String
  index, price_notation = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_notation(buffer, index, packet, parent)

  -- Price Major Currency: 3 Byte Ascii String
  index, price_major_currency = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_major_currency(buffer, index, packet, parent)

  -- Notional Amount: 20 Byte Ascii String
  index, notional_amount = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.notional_currency(buffer, index, packet, parent)

  -- Venue Of Execution: 4 Byte Ascii String
  index, venue_of_execution = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.venue_of_execution(buffer, index, packet, parent)

  -- Publication Date And Time: 27 Byte Ascii String
  index, publication_date_and_time = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.publication_date_and_time(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_4(buffer, index, packet, parent)

  -- Nt Pre Trade Waiver Flag: 4 Byte Ascii String
  index, nt_pre_trade_waiver_flag = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.nt_pre_trade_waiver_flag(buffer, index, packet, parent)

  -- Pt Algo Trade: 4 Byte Ascii String
  index, pt_algo_trade = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_algo_trade(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_4(buffer, index, packet, parent)

  -- Pt Cancellation Flag: 4 Byte Ascii String
  index, pt_cancellation_flag = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_cancellation_flag(buffer, index, packet, parent)

  -- Pt Amendment Flag: 4 Byte Ascii String
  index, pt_amendment_flag = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_amendment_flag(buffer, index, packet, parent)

  -- Reserved 28: 28 Byte
  index, reserved_28 = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_28(buffer, index, packet, parent)

  -- Market Mechanism: 1 Byte Ascii String Enum with 3 values
  index, market_mechanism = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.market_mechanism(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 4 values
  index, trading_mode = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trading_mode(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 2 values
  index, transaction_category = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.transaction_category(buffer, index, packet, parent)

  -- Negotiation Indicator: 1 Byte Ascii String Enum with 1 values
  index, negotiation_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.negotiation_indicator(buffer, index, packet, parent)

  -- Agency Cross Indicator: 1 Byte Ascii String Enum with 1 values
  index, agency_cross_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.agency_cross_indicator(buffer, index, packet, parent)

  -- Modification Indicator: 1 Byte Ascii String Enum with 3 values
  index, modification_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.modification_indicator(buffer, index, packet, parent)

  -- Reference Price Indicator: 1 Byte Ascii String Enum with 3 values
  index, reference_price_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reference_price_indicator(buffer, index, packet, parent)

  -- Special Dividend Indicator: 1 Byte Ascii String Enum with 1 values
  index, special_dividend_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.special_dividend_indicator(buffer, index, packet, parent)

  -- Off Book Automated Indicator: 1 Byte Ascii String Enum with 1 values
  index, off_book_automated_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.off_book_automated_indicator(buffer, index, packet, parent)

  -- Price Formation Indicator: 1 Byte Ascii String Enum with 1 values
  index, price_formation_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_formation_indicator(buffer, index, packet, parent)

  -- Algorithmic Indicator: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.algorithmic_indicator(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 1 Byte Ascii String Enum with 1 values
  index, post_trade_deferral_reason = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.post_trade_deferral_reason(buffer, index, packet, parent)

  -- Deferral Enrichment Type: 1 Byte Ascii String Enum with 1 values
  index, deferral_enrichment_type = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.deferral_enrichment_type(buffer, index, packet, parent)

  -- Duplicative Indicator: 1 Byte Ascii String Enum with 1 values
  index, duplicative_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.duplicative_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Mi Fid Ii Trade Cross Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_ii_trade_cross_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mi_fid_ii_trade_cross_message then
    local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_ii_trade_cross_message(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.mi_fid_ii_trade_cross_message(buffer, packet, parent)
    parent = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.mi_fid_ii_trade_cross_message, range, display)
  end

  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_ii_trade_cross_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Qualifier
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trade_qualifier = 1

-- Display: Trade Qualifier
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trade_qualifier = function(value)
  if value == " " then
    return "Trade Qualifier: Not Available (<whitespace>)"
  end
  if value == "T" then
    return "Trade Qualifier: Trade At Last (T)"
  end

  return "Trade Qualifier: Unknown("..value..")"
end

-- Dissect: Trade Qualifier
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trade_qualifier = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trade_qualifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trade_qualifier(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Market Closing Price Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_closing_price_flag = 4

-- Display: Market Closing Price Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.market_closing_price_flag = function(value)
  return "Market Closing Price Flag: "..value
end

-- Dissect: Market Closing Price Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.market_closing_price_flag = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_closing_price_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.market_closing_price_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.market_closing_price_flag, range, value, display)

  return offset + length, value
end

-- Size: Pt Ref Price Waiver Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_ref_price_waiver_flag = 4

-- Display: Pt Ref Price Waiver Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.pt_ref_price_waiver_flag = function(value)
  return "Pt Ref Price Waiver Flag: "..value
end

-- Dissect: Pt Ref Price Waiver Flag
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_ref_price_waiver_flag = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_ref_price_waiver_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.pt_ref_price_waiver_flag(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.pt_ref_price_waiver_flag, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.auction_type = 1

-- Display: Auction Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.auction_type = function(value)
  return "Auction Type: "..value
end

-- Dissect: Auction Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trade_type = 1

-- Display: Trade Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trade_type = function(value)
  if value == 0 then
    return "Trade Type: Regular (0)"
  end
  if value == 2 then
    return "Trade Type: Auction Trade (2)"
  end
  if value == 9 then
    return "Trade Type: Trade Cancellation (9)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trade_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trade_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mifid Ii Trade Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mifid_ii_trade_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.transaction_identification_code

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trade_type

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.auction_type

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_price

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_quantity

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_date_and_time

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_identification_code_type

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_identification_code

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_notation

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_major_currency

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.notional_amount

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.notional_currency

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.venue_of_execution

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.publication_date_and_time

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_ref_price_waiver_flag

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_4

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_closing_price_flag

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_algo_trade

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_cancellation_flag

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.pt_amendment_flag

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_28

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trade_qualifier

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_mechanism

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_mode

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.transaction_category

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.negotiation_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.agency_cross_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.modification_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reference_price_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.special_dividend_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.off_book_automated_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_formation_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.algorithmic_indicator

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.post_trade_deferral_reason

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.deferral_enrichment_type

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.duplicative_indicator

  return index
end

-- Display: Mifid Ii Trade Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.mifid_ii_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mifid Ii Trade Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mifid_ii_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Transaction Identification Code: 52 Byte Ascii String
  index, transaction_identification_code = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.transaction_identification_code(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trade_type = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trade_type(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String
  index, auction_type = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.auction_type(buffer, index, packet, parent)

  -- Mi Fid Price: 20 Byte Ascii String
  index, mi_fid_price = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_price(buffer, index, packet, parent)

  -- Mi Fid Quantity: 20 Byte Ascii String
  index, mi_fid_quantity = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_quantity(buffer, index, packet, parent)

  -- Trading Date And Time: 27 Byte Ascii String
  index, trading_date_and_time = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trading_date_and_time(buffer, index, packet, parent)

  -- Instrument Identification Code Type: 4 Byte Ascii String
  index, instrument_identification_code_type = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_identification_code_type(buffer, index, packet, parent)

  -- Instrument Identification Code: 12 Byte Ascii String
  index, instrument_identification_code = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_identification_code(buffer, index, packet, parent)

  -- Price Notation: 4 Byte Ascii String
  index, price_notation = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_notation(buffer, index, packet, parent)

  -- Price Major Currency: 3 Byte Ascii String
  index, price_major_currency = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_major_currency(buffer, index, packet, parent)

  -- Notional Amount: 20 Byte Ascii String
  index, notional_amount = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.notional_currency(buffer, index, packet, parent)

  -- Venue Of Execution: 4 Byte Ascii String
  index, venue_of_execution = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.venue_of_execution(buffer, index, packet, parent)

  -- Publication Date And Time: 27 Byte Ascii String
  index, publication_date_and_time = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.publication_date_and_time(buffer, index, packet, parent)

  -- Pt Ref Price Waiver Flag: 4 Byte Ascii String
  index, pt_ref_price_waiver_flag = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_ref_price_waiver_flag(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_4(buffer, index, packet, parent)

  -- Market Closing Price Flag: 4 Byte Ascii String
  index, market_closing_price_flag = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.market_closing_price_flag(buffer, index, packet, parent)

  -- Pt Algo Trade: 4 Byte Ascii String
  index, pt_algo_trade = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_algo_trade(buffer, index, packet, parent)

  -- Pt Cancellation Flag: 4 Byte Ascii String
  index, pt_cancellation_flag = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_cancellation_flag(buffer, index, packet, parent)

  -- Pt Amendment Flag: 4 Byte Ascii String
  index, pt_amendment_flag = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.pt_amendment_flag(buffer, index, packet, parent)

  -- Reserved 28: 28 Byte
  index, reserved_28 = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_28(buffer, index, packet, parent)

  -- Trade Qualifier: 1 Byte Ascii String Enum with 2 values
  index, trade_qualifier = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trade_qualifier(buffer, index, packet, parent)

  -- Market Mechanism: 1 Byte Ascii String Enum with 3 values
  index, market_mechanism = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.market_mechanism(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 4 values
  index, trading_mode = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trading_mode(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 2 values
  index, transaction_category = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.transaction_category(buffer, index, packet, parent)

  -- Negotiation Indicator: 1 Byte Ascii String Enum with 1 values
  index, negotiation_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.negotiation_indicator(buffer, index, packet, parent)

  -- Agency Cross Indicator: 1 Byte Ascii String Enum with 1 values
  index, agency_cross_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.agency_cross_indicator(buffer, index, packet, parent)

  -- Modification Indicator: 1 Byte Ascii String Enum with 3 values
  index, modification_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.modification_indicator(buffer, index, packet, parent)

  -- Reference Price Indicator: 1 Byte Ascii String Enum with 3 values
  index, reference_price_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reference_price_indicator(buffer, index, packet, parent)

  -- Special Dividend Indicator: 1 Byte Ascii String Enum with 1 values
  index, special_dividend_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.special_dividend_indicator(buffer, index, packet, parent)

  -- Off Book Automated Indicator: 1 Byte Ascii String Enum with 1 values
  index, off_book_automated_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.off_book_automated_indicator(buffer, index, packet, parent)

  -- Price Formation Indicator: 1 Byte Ascii String Enum with 1 values
  index, price_formation_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_formation_indicator(buffer, index, packet, parent)

  -- Algorithmic Indicator: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.algorithmic_indicator(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 1 Byte Ascii String Enum with 1 values
  index, post_trade_deferral_reason = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.post_trade_deferral_reason(buffer, index, packet, parent)

  -- Deferral Enrichment Type: 1 Byte Ascii String Enum with 1 values
  index, deferral_enrichment_type = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.deferral_enrichment_type(buffer, index, packet, parent)

  -- Duplicative Indicator: 1 Byte Ascii String Enum with 1 values
  index, duplicative_indicator = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.duplicative_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Ii Trade Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mifid_ii_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mifid_ii_trade_message then
    local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mifid_ii_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.mifid_ii_trade_message(buffer, packet, parent)
    parent = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.mifid_ii_trade_message, range, display)
  end

  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mifid_ii_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Book Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.order_book_type = 1

-- Display: Order Book Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.order_book_type = function(value)
  if value == 3 then
    return "Order Book Type: Electronic (3)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.order_book_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.order_book_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.order_book_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- Size: New End Time
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.new_end_time = 6

-- Display: New End Time
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.new_end_time = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.new_end_time = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.new_end_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.new_end_time(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Size: Session Change Reason
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.session_change_reason = 1

-- Display: Session Change Reason
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.session_change_reason = function(value)
  if value == 0 then
    return "Session Change Reason: Scheduled Transition (0)"
  end
  if value == 1 then
    return "Session Change Reason: Extended By Market Ops (1)"
  end
  if value == 2 then
    return "Session Change Reason: Shortened By Market Ops (2)"
  end
  if value == 3 then
    return "Session Change Reason: Market Order Imbalance (3)"
  end
  if value == 4 then
    return "Session Change Reason: Price Outside Range (4)"
  end
  if value == 5 then
    return "Session Change Reason: Aesp Circuit Breaker Tripped (5)"
  end
  if value == 9 then
    return "Session Change Reason: Unavailable (9)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.session_change_reason = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.session_change_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.session_change_reason(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_status = 1

-- Display: Trading Status
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trading_status = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "J" then
    return "Trading Status: Halted Matching Partition Suspended (J)"
  end
  if value == "K" then
    return "Trading Status: Halted System Suspended (K)"
  end
  if value == "P" then
    return "Trading Status: Halted Regulatory Halt (P)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading Start Of Trqb Session (T)"
  end
  if value == "t" then
    return "Trading Status: End Of Regular Trading End Of Trqb Session (t)"
  end
  if value == "c" then
    return "Trading Status: Closed (c)"
  end
  if value == "2" then
    return "Trading Status: Suspended (2)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Status Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_status_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.trading_status

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.session_change_reason

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.new_end_time

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.order_book_type

  return index
end

-- Display: Instrument Status Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 9 values
  index, trading_status = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.trading_status(buffer, index, packet, parent)

  -- Session Change Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, session_change_reason = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.session_change_reason(buffer, index, packet, parent)

  -- New End Time: 6 Byte Ascii String
  index, new_end_time = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.new_end_time(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.order_book_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_status_message then
    local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument_status_message(buffer, packet, parent)
    parent = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument_status_message, range, display)
  end

  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 38
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_38 = 38

-- Display: Reserved 38
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reserved_38 = function(value)
  return "Reserved 38: "..value
end

-- Dissect: Reserved 38
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_38 = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_38
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reserved_38(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reserved_38, range, value, display)

  return offset + length, value
end

-- Size: Currency
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.currency = 3

-- Display: Currency
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.currency = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.currency(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Reserved 23
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_23 = 23

-- Display: Reserved 23
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reserved_23 = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_23 = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_23
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.reserved_23(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Size: Segment
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.segment = 6

-- Display: Segment
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.segment = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.segment = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.segment
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.segment(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Size: Static Circuit Breaker Tolerances
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.static_circuit_breaker_tolerances = 8

-- Display: Static Circuit Breaker Tolerances
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.static_circuit_breaker_tolerances = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
translate.static_circuit_breaker_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.static_circuit_breaker_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.static_circuit_breaker_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.static_circuit_breaker_tolerances(raw)
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.static_circuit_breaker_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.dynamic_circuit_breaker_tolerances = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
translate.dynamic_circuit_breaker_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.dynamic_circuit_breaker_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.dynamic_circuit_breaker_tolerances(raw)
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.dynamic_circuit_breaker_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Price Band Tolerances
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_band_tolerances = 8

-- Display: Price Band Tolerances
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.price_band_tolerances = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
translate.price_band_tolerances = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_band_tolerances = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_band_tolerances
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_band_tolerances(raw)
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.price_band_tolerances(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Size: Tick Id
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.tick_id = 2

-- Display: Tick Id
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.tick_id = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.tick_id = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.tick_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.tick_id(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Size: Venue Instrument Id
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.venue_instrument_id = 11

-- Display: Venue Instrument Id
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.venue_instrument_id = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.venue_instrument_id = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.venue_instrument_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.venue_instrument_id(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Allowed Book Types
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.allowed_book_types = 1

-- Display: Allowed Book Types
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.allowed_book_types = function(buffer, packet, parent)
  local display = ""

  -- Is Electronic Order Book flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Electronic Order Book|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Allowed Book Types
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.allowed_book_types_bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.unused_2, buffer(offset, 1))

  -- Electronic Order Book: 1 Bit
  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.electronic_order_book, buffer(offset, 1))

  -- Unused 5: 5 Bit
  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.unused_5, buffer(offset, 1))
end

-- Dissect: Allowed Book Types
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.allowed_book_types = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.allowed_book_types(range, packet, parent)
  local element = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.allowed_book_types_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Isin
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.isin = 12

-- Display: Isin
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.isin = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.isin = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.isin
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.isin(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Directory Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_directory_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.isin

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.allowed_book_types

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.source_venue

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.venue_instrument_id

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.tick_id

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.price_band_tolerances

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.dynamic_circuit_breaker_tolerances

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.static_circuit_breaker_tolerances

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.segment

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_23

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.currency

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.reserved_38

  return index
end

-- Display: Instrument Directory Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.isin(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.allowed_book_types(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  -- Venue Instrument Id: 11 Byte Ascii String
  index, venue_instrument_id = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.venue_instrument_id(buffer, index, packet, parent)

  -- Tick Id: 2 Byte Ascii String
  index, tick_id = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.tick_id(buffer, index, packet, parent)

  -- Price Band Tolerances: 8 Byte Signed Fixed Width Integer
  index, price_band_tolerances = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.price_band_tolerances(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, dynamic_circuit_breaker_tolerances = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.dynamic_circuit_breaker_tolerances(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, static_circuit_breaker_tolerances = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.static_circuit_breaker_tolerances(buffer, index, packet, parent)

  -- Segment: 6 Byte Ascii String
  index, segment = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.segment(buffer, index, packet, parent)

  -- Reserved 23: 23 Byte
  index, reserved_23 = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_23(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.currency(buffer, index, packet, parent)

  -- Reserved 38: 38 Byte
  index, reserved_38 = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.reserved_38(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_directory_message then
    local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.instrument_directory_message(buffer, packet, parent)
    parent = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.instrument_directory_message, range, display)
  end

  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.event_code = 1

-- Display: Event Code
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.event_code = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.event_code = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.event_code(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.timestamp

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.event_code

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.source_venue

  return index
end

-- Display: System Event Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.event_code(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.source_venue(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.system_event_message(buffer, packet, parent)
    parent = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.system_event_message, range, display)
  end

  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.system_event_message(buffer, offset)
  end
  -- Size of Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_directory_message(buffer, offset)
  end
  -- Size of Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.instrument_status_message(buffer, offset)
  end
  -- Size of Mifid Ii Trade Message
  if message_type == 0x51 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mifid_ii_trade_message(buffer, offset)
  end
  -- Size of Mi Fid Ii Trade Cross Message
  if message_type == 0x56 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.mi_fid_ii_trade_cross_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.instrument_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Mifid Ii Trade Message
  if message_type == 0x51 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mifid_ii_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Mi Fid Ii Trade Cross Message
  if message_type == 0x56 then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.mi_fid_ii_trade_cross_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.payload(buffer, packet, parent)
  local element = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.payload, range, display)

  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_type = 1

-- Display: Message Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message_type = function(value)
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x70 then
    return "Message Type: Instrument Directory Message (0x70)"
  end
  if value == 0x48 then
    return "Message Type: Instrument Status Message (0x48)"
  end
  if value == 0x51 then
    return "Message Type: Mifid Ii Trade Message (0x51)"
  end
  if value == 0x56 then
    return "Message Type: Mi Fid Ii Trade Cross Message (0x56)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_type = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message_type(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_length = 1

-- Display: Message Length
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_length = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message_length(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_length

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_type

  return index
end

-- Display: Message Header
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, message_type = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message_header(buffer, packet, parent)
    parent = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message_header, range, display)
  end

  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message(buffer, packet, parent)
    parent = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message, range, display)
  end

  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.sequence_number = 4

-- Display: Sequence Number
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Market Data Group
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_data_group = 1

-- Display: Market Data Group
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.market_data_group = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.market_data_group = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_data_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.market_data_group(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Size: Message Count
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_count = 1

-- Display: Message Count
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_count = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.message_count(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Length
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.length = 2

-- Display: Length
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.length = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.length(value, buffer, offset, packet, parent)

  parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Header
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.unit_header = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.length

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.message_count

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.market_data_group

  index = index + lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.sequence_number

  return index
end

-- Display: Unit Header
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.unit_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Header
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.unit_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.length(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message_count(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.market_data_group(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.unit_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_header then
    local length = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_size_of.unit_header(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_display.unit_header(buffer, packet, parent)
    parent = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.fields.unit_header, range, display)
  end

  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.unit_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.unit_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.init()
end

-- Dissector for Lseg Turquoise Mifid II Post Trade Gtp 24.4
function lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(lseg_turquoise_mifid_ii_post_trade_gtp_v24_4, buffer(), lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, lseg_turquoise_mifid_ii_post_trade_gtp_v24_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg Turquoise Mifid II Post Trade Gtp 24.4
local function lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = lseg_turquoise_mifid_ii_post_trade_gtp_v24_4
  lseg_turquoise_mifid_ii_post_trade_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Turquoise Mifid II Post Trade Gtp 24.4
lseg_turquoise_mifid_ii_post_trade_gtp_v24_4:register_heuristic("udp", lseg_turquoise_mifid_ii_post_trade_gtp_v24_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: London Stock Exchange Group
--   Version: 24.4
--   Date: Wednesday, April 24, 2024
--   Specification: gtp-002-technical-guide-turquoise-issue-24-4.pdf
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
