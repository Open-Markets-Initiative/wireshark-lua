-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Turquoise Mifid Gtp 24.4 Protocol
local omi_lseg_turquoise_mifid_gtp_v24_4 = Proto("Lseg.Turquoise.Mifid.Gtp.v24.4.Lua", "Lseg Turquoise Mifid Gtp 24.4")

-- Protocol table
local lseg_turquoise_mifid_gtp_v24_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Turquoise Mifid Gtp 24.4 Fields
omi_lseg_turquoise_mifid_gtp_v24_4.fields.agency_cross_indicator = ProtoField.new("Agency Cross Indicator", "lseg.turquoise.mifid.gtp.v24.4.agencycrossindicator", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "lseg.turquoise.mifid.gtp.v24.4.algorithmicindicator", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.allowed_book_types = ProtoField.new("Allowed Book Types", "lseg.turquoise.mifid.gtp.v24.4.allowedbooktypes", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.auction_type = ProtoField.new("Auction Type", "lseg.turquoise.mifid.gtp.v24.4.auctiontype", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.cross_id = ProtoField.new("Cross Id", "lseg.turquoise.mifid.gtp.v24.4.crossid", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.cross_type = ProtoField.new("Cross Type", "lseg.turquoise.mifid.gtp.v24.4.crosstype", ftypes.UINT8)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.currency = ProtoField.new("Currency", "lseg.turquoise.mifid.gtp.v24.4.currency", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.deferral_enrichment_type = ProtoField.new("Deferral Enrichment Type", "lseg.turquoise.mifid.gtp.v24.4.deferralenrichmenttype", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "lseg.turquoise.mifid.gtp.v24.4.duplicativeindicator", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances = ProtoField.new("Dynamic Circuit Breaker Tolerances", "lseg.turquoise.mifid.gtp.v24.4.dynamiccircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.electronic_order_book = ProtoField.new("Electronic Order Book", "lseg.turquoise.mifid.gtp.v24.4.electronicorderbook", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.event_code = ProtoField.new("Event Code", "lseg.turquoise.mifid.gtp.v24.4.eventcode", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument = ProtoField.new("Instrument", "lseg.turquoise.mifid.gtp.v24.4.instrument", ftypes.UINT64)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument_identification_code = ProtoField.new("Instrument Identification Code", "lseg.turquoise.mifid.gtp.v24.4.instrumentidentificationcode", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument_identification_code_type = ProtoField.new("Instrument Identification Code Type", "lseg.turquoise.mifid.gtp.v24.4.instrumentidentificationcodetype", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.isin = ProtoField.new("Isin", "lseg.turquoise.mifid.gtp.v24.4.isin", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.length = ProtoField.new("Length", "lseg.turquoise.mifid.gtp.v24.4.length", ftypes.UINT16)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.market_closing_price_flag = ProtoField.new("Market Closing Price Flag", "lseg.turquoise.mifid.gtp.v24.4.marketclosingpriceflag", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.turquoise.mifid.gtp.v24.4.marketdatagroup", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.market_mechanism = ProtoField.new("Market Mechanism", "lseg.turquoise.mifid.gtp.v24.4.marketmechanism", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.message = ProtoField.new("Message", "lseg.turquoise.mifid.gtp.v24.4.message", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_count = ProtoField.new("Message Count", "lseg.turquoise.mifid.gtp.v24.4.messagecount", ftypes.UINT8)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_header = ProtoField.new("Message Header", "lseg.turquoise.mifid.gtp.v24.4.messageheader", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_length = ProtoField.new("Message Length", "lseg.turquoise.mifid.gtp.v24.4.messagelength", ftypes.UINT8)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_type = ProtoField.new("Message Type", "lseg.turquoise.mifid.gtp.v24.4.messagetype", ftypes.UINT8)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.mi_fid_price = ProtoField.new("Mi Fid Price", "lseg.turquoise.mifid.gtp.v24.4.mifidprice", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.mi_fid_quantity = ProtoField.new("Mi Fid Quantity", "lseg.turquoise.mifid.gtp.v24.4.mifidquantity", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.modification_indicator = ProtoField.new("Modification Indicator", "lseg.turquoise.mifid.gtp.v24.4.modificationindicator", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.negotiation_indicator = ProtoField.new("Negotiation Indicator", "lseg.turquoise.mifid.gtp.v24.4.negotiationindicator", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.new_end_time = ProtoField.new("New End Time", "lseg.turquoise.mifid.gtp.v24.4.newendtime", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.notional_amount = ProtoField.new("Notional Amount", "lseg.turquoise.mifid.gtp.v24.4.notionalamount", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.notional_currency = ProtoField.new("Notional Currency", "lseg.turquoise.mifid.gtp.v24.4.notionalcurrency", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.nt_pre_trade_waiver_flag = ProtoField.new("Nt Pre Trade Waiver Flag", "lseg.turquoise.mifid.gtp.v24.4.ntpretradewaiverflag", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.off_book_automated_indicator = ProtoField.new("Off Book Automated Indicator", "lseg.turquoise.mifid.gtp.v24.4.offbookautomatedindicator", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.order_book_type = ProtoField.new("Order Book Type", "lseg.turquoise.mifid.gtp.v24.4.orderbooktype", ftypes.UINT8)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.packet = ProtoField.new("Packet", "lseg.turquoise.mifid.gtp.v24.4.packet", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.payload = ProtoField.new("Payload", "lseg.turquoise.mifid.gtp.v24.4.payload", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "lseg.turquoise.mifid.gtp.v24.4.posttradedeferralreason", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.price_band_tolerances = ProtoField.new("Price Band Tolerances", "lseg.turquoise.mifid.gtp.v24.4.pricebandtolerances", ftypes.DOUBLE)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.price_formation_indicator = ProtoField.new("Price Formation Indicator", "lseg.turquoise.mifid.gtp.v24.4.priceformationindicator", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.price_major_currency = ProtoField.new("Price Major Currency", "lseg.turquoise.mifid.gtp.v24.4.pricemajorcurrency", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.price_notation = ProtoField.new("Price Notation", "lseg.turquoise.mifid.gtp.v24.4.pricenotation", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.pt_algo_trade = ProtoField.new("Pt Algo Trade", "lseg.turquoise.mifid.gtp.v24.4.ptalgotrade", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.pt_amendment_flag = ProtoField.new("Pt Amendment Flag", "lseg.turquoise.mifid.gtp.v24.4.ptamendmentflag", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.pt_cancellation_flag = ProtoField.new("Pt Cancellation Flag", "lseg.turquoise.mifid.gtp.v24.4.ptcancellationflag", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.pt_ref_price_waiver_flag = ProtoField.new("Pt Ref Price Waiver Flag", "lseg.turquoise.mifid.gtp.v24.4.ptrefpricewaiverflag", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.publication_date_and_time = ProtoField.new("Publication Date And Time", "lseg.turquoise.mifid.gtp.v24.4.publicationdateandtime", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.reference_price_indicator = ProtoField.new("Reference Price Indicator", "lseg.turquoise.mifid.gtp.v24.4.referencepriceindicator", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.reserved_23 = ProtoField.new("Reserved 23", "lseg.turquoise.mifid.gtp.v24.4.reserved23", ftypes.BYTES)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.reserved_28 = ProtoField.new("Reserved 28", "lseg.turquoise.mifid.gtp.v24.4.reserved28", ftypes.BYTES)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.reserved_38 = ProtoField.new("Reserved 38", "lseg.turquoise.mifid.gtp.v24.4.reserved38", ftypes.BYTES)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.turquoise.mifid.gtp.v24.4.reserved4", ftypes.BYTES)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.segment = ProtoField.new("Segment", "lseg.turquoise.mifid.gtp.v24.4.segment", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.turquoise.mifid.gtp.v24.4.sequencenumber", ftypes.UINT32)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.turquoise.mifid.gtp.v24.4.sessionchangereason", ftypes.UINT8)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.source_venue = ProtoField.new("Source Venue", "lseg.turquoise.mifid.gtp.v24.4.sourcevenue", ftypes.UINT16)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.special_dividend_indicator = ProtoField.new("Special Dividend Indicator", "lseg.turquoise.mifid.gtp.v24.4.specialdividendindicator", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.static_circuit_breaker_tolerances = ProtoField.new("Static Circuit Breaker Tolerances", "lseg.turquoise.mifid.gtp.v24.4.staticcircuitbreakertolerances", ftypes.DOUBLE)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.tick_id = ProtoField.new("Tick Id", "lseg.turquoise.mifid.gtp.v24.4.tickid", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.timestamp = ProtoField.new("Timestamp", "lseg.turquoise.mifid.gtp.v24.4.timestamp", ftypes.UINT64)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "lseg.turquoise.mifid.gtp.v24.4.tradequalifier", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.trade_type = ProtoField.new("Trade Type", "lseg.turquoise.mifid.gtp.v24.4.tradetype", ftypes.UINT8)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.trading_date_and_time = ProtoField.new("Trading Date And Time", "lseg.turquoise.mifid.gtp.v24.4.tradingdateandtime", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.trading_mode = ProtoField.new("Trading Mode", "lseg.turquoise.mifid.gtp.v24.4.tradingmode", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.trading_status = ProtoField.new("Trading Status", "lseg.turquoise.mifid.gtp.v24.4.tradingstatus", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.transaction_category = ProtoField.new("Transaction Category", "lseg.turquoise.mifid.gtp.v24.4.transactioncategory", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.transaction_identification_code = ProtoField.new("Transaction Identification Code", "lseg.turquoise.mifid.gtp.v24.4.transactionidentificationcode", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.unit_header = ProtoField.new("Unit Header", "lseg.turquoise.mifid.gtp.v24.4.unitheader", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.unused_2 = ProtoField.new("Unused 2", "lseg.turquoise.mifid.gtp.v24.4.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.unused_5 = ProtoField.new("Unused 5", "lseg.turquoise.mifid.gtp.v24.4.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.venue_instrument_id = ProtoField.new("Venue Instrument Id", "lseg.turquoise.mifid.gtp.v24.4.venueinstrumentid", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.venue_of_execution = ProtoField.new("Venue Of Execution", "lseg.turquoise.mifid.gtp.v24.4.venueofexecution", ftypes.STRING)

-- Lseg Turquoise Mifid Gtp 24.4 messages
omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "lseg.turquoise.mifid.gtp.v24.4.instrumentdirectorymessage", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument_status_message = ProtoField.new("Instrument Status Message", "lseg.turquoise.mifid.gtp.v24.4.instrumentstatusmessage", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.mi_fid_ii_trade_cross_message = ProtoField.new("Mi Fid Ii Trade Cross Message", "lseg.turquoise.mifid.gtp.v24.4.mifidiitradecrossmessage", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.mifid_ii_trade_message = ProtoField.new("Mifid Ii Trade Message", "lseg.turquoise.mifid.gtp.v24.4.mifidiitrademessage", ftypes.STRING)
omi_lseg_turquoise_mifid_gtp_v24_4.fields.system_event_message = ProtoField.new("System Event Message", "lseg.turquoise.mifid.gtp.v24.4.systemeventmessage", ftypes.STRING)

-- Lseg Turquoise Mifid Gtp 24.4 generated fields
omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_index = ProtoField.new("Message Index", "lseg.turquoise.mifid.gtp.v24.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Turquoise Mifid Gtp 24.4 Element Dissection Options
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

-- Register Lseg Turquoise Mifid Gtp 24.4 Show Options
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_allowed_book_types = Pref.bool("Show Allowed Book Types", show.allowed_book_types, "Parse and add Allowed Book Types to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_instrument_status_message = Pref.bool("Show Instrument Status Message", show.instrument_status_message, "Parse and add Instrument Status Message to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_mi_fid_ii_trade_cross_message = Pref.bool("Show Mi Fid Ii Trade Cross Message", show.mi_fid_ii_trade_cross_message, "Parse and add Mi Fid Ii Trade Cross Message to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_mifid_ii_trade_message = Pref.bool("Show Mifid Ii Trade Message", show.mifid_ii_trade_message, "Parse and add Mifid Ii Trade Message to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")
omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_lseg_turquoise_mifid_gtp_v24_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.allowed_book_types ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_allowed_book_types then
    show.allowed_book_types = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_allowed_book_types
    changed = true
  end
  if show.instrument_directory_message ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_instrument_directory_message
    changed = true
  end
  if show.instrument_status_message ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_instrument_status_message then
    show.instrument_status_message = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_instrument_status_message
    changed = true
  end
  if show.message ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_message then
    show.message = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_message_header then
    show.message_header = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_message_header
    changed = true
  end
  if show.mi_fid_ii_trade_cross_message ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_mi_fid_ii_trade_cross_message then
    show.mi_fid_ii_trade_cross_message = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_mi_fid_ii_trade_cross_message
    changed = true
  end
  if show.mifid_ii_trade_message ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_mifid_ii_trade_message then
    show.mifid_ii_trade_message = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_mifid_ii_trade_message
    changed = true
  end
  if show.packet ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_packet then
    show.packet = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_packet
    changed = true
  end
  if show.system_event_message ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_system_event_message then
    show.system_event_message = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_system_event_message
    changed = true
  end
  if show.unit_header ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_unit_header then
    show.unit_header = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_unit_header
    changed = true
  end
  if show.payload ~= omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_payload then
    show.payload = omi_lseg_turquoise_mifid_gtp_v24_4.prefs.show_payload
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
-- Dissect Lseg Turquoise Mifid Gtp 24.4
-----------------------------------------------------------------------

-- Duplicative Indicator
lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator = {}

-- Size: Duplicative Indicator
lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator.size = 1

-- Display: Duplicative Indicator
lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator.display = function(value)
  if value == "-" then
    return "Duplicative Indicator: Unique Trade Report (-)"
  end

  return "Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Duplicative Indicator
lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Deferral Enrichment Type
lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type = {}

-- Size: Deferral Enrichment Type
lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type.size = 1

-- Display: Deferral Enrichment Type
lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type.display = function(value)
  if value == "-" then
    return "Deferral Enrichment Type: Not Applicable (-)"
  end

  return "Deferral Enrichment Type: Unknown("..value..")"
end

-- Dissect: Deferral Enrichment Type
lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.deferral_enrichment_type, range, value, display)

  return offset + length, value
end

-- Post Trade Deferral Reason
lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason = {}

-- Size: Post Trade Deferral Reason
lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason.size = 1

-- Display: Post Trade Deferral Reason
lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason.display = function(value)
  if value == "-" then
    return "Post Trade Deferral Reason: Immediate Publication (-)"
  end

  return "Post Trade Deferral Reason: Unknown("..value..")"
end

-- Dissect: Post Trade Deferral Reason
lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator.size = 1

-- Display: Algorithmic Indicator
lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator.display = function(value)
  if value == "H" then
    return "Algorithmic Indicator: Algorithmic Trade (H)"
  end
  if value == "-" then
    return "Algorithmic Indicator: Not An Algorithmic Trade (-)"
  end

  return "Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Indicator
lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Price Formation Indicator
lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator = {}

-- Size: Price Formation Indicator
lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator.size = 1

-- Display: Price Formation Indicator
lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator.display = function(value)
  if value == "P" then
    return "Price Formation Indicator: Plain Vanilla Trade (P)"
  end

  return "Price Formation Indicator: Unknown("..value..")"
end

-- Dissect: Price Formation Indicator
lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.price_formation_indicator, range, value, display)

  return offset + length, value
end

-- Off Book Automated Indicator
lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator = {}

-- Size: Off Book Automated Indicator
lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator.size = 1

-- Display: Off Book Automated Indicator
lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator.display = function(value)
  if value == "-" then
    return "Off Book Automated Indicator: Unspecified Or Does Not Apply (-)"
  end

  return "Off Book Automated Indicator: Unknown("..value..")"
end

-- Dissect: Off Book Automated Indicator
lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Special Dividend Indicator
lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator = {}

-- Size: Special Dividend Indicator
lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator.size = 1

-- Display: Special Dividend Indicator
lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator.display = function(value)
  if value == "-" then
    return "Special Dividend Indicator: No Special Dividend Trade (-)"
  end

  return "Special Dividend Indicator: Unknown("..value..")"
end

-- Dissect: Special Dividend Indicator
lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.special_dividend_indicator, range, value, display)

  return offset + length, value
end

-- Reference Price Indicator
lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator = {}

-- Size: Reference Price Indicator
lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator.size = 1

-- Display: Reference Price Indicator
lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator.display = function(value)
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
lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Modification Indicator
lseg_turquoise_mifid_gtp_v24_4.modification_indicator = {}

-- Size: Modification Indicator
lseg_turquoise_mifid_gtp_v24_4.modification_indicator.size = 1

-- Display: Modification Indicator
lseg_turquoise_mifid_gtp_v24_4.modification_indicator.display = function(value)
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
lseg_turquoise_mifid_gtp_v24_4.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.modification_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Agency Cross Indicator
lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator = {}

-- Size: Agency Cross Indicator
lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator.size = 1

-- Display: Agency Cross Indicator
lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator.display = function(value)
  if value == "-" then
    return "Agency Cross Indicator: No Agency Cross Trade (-)"
  end

  return "Agency Cross Indicator: Unknown("..value..")"
end

-- Dissect: Agency Cross Indicator
lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.agency_cross_indicator, range, value, display)

  return offset + length, value
end

-- Negotiation Indicator
lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator = {}

-- Size: Negotiation Indicator
lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator.size = 1

-- Display: Negotiation Indicator
lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator.display = function(value)
  if value == "-" then
    return "Negotiation Indicator: Not A Negotiated Trade (-)"
  end

  return "Negotiation Indicator: Unknown("..value..")"
end

-- Dissect: Negotiation Indicator
lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.negotiation_indicator, range, value, display)

  return offset + length, value
end

-- Transaction Category
lseg_turquoise_mifid_gtp_v24_4.transaction_category = {}

-- Size: Transaction Category
lseg_turquoise_mifid_gtp_v24_4.transaction_category.size = 1

-- Display: Transaction Category
lseg_turquoise_mifid_gtp_v24_4.transaction_category.display = function(value)
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end
  if value == "-" then
    return "Transaction Category: None (-)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
lseg_turquoise_mifid_gtp_v24_4.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Trading Mode
lseg_turquoise_mifid_gtp_v24_4.trading_mode = {}

-- Size: Trading Mode
lseg_turquoise_mifid_gtp_v24_4.trading_mode.size = 1

-- Display: Trading Mode
lseg_turquoise_mifid_gtp_v24_4.trading_mode.display = function(value)
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
lseg_turquoise_mifid_gtp_v24_4.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Market Mechanism
lseg_turquoise_mifid_gtp_v24_4.market_mechanism = {}

-- Size: Market Mechanism
lseg_turquoise_mifid_gtp_v24_4.market_mechanism.size = 1

-- Display: Market Mechanism
lseg_turquoise_mifid_gtp_v24_4.market_mechanism.display = function(value)
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
lseg_turquoise_mifid_gtp_v24_4.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Reserved 28
lseg_turquoise_mifid_gtp_v24_4.reserved_28 = {}

-- Size: Reserved 28
lseg_turquoise_mifid_gtp_v24_4.reserved_28.size = 28

-- Display: Reserved 28
lseg_turquoise_mifid_gtp_v24_4.reserved_28.display = function(value)
  return "Reserved 28: "..value
end

-- Dissect: Reserved 28
lseg_turquoise_mifid_gtp_v24_4.reserved_28.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.reserved_28.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid_gtp_v24_4.reserved_28.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.reserved_28, range, value, display)

  return offset + length, value
end

-- Pt Amendment Flag
lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag = {}

-- Size: Pt Amendment Flag
lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag.size = 4

-- Display: Pt Amendment Flag
lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag.display = function(value)
  return "Pt Amendment Flag: "..value
end

-- Dissect: Pt Amendment Flag
lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.pt_amendment_flag, range, value, display)

  return offset + length, value
end

-- Pt Cancellation Flag
lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag = {}

-- Size: Pt Cancellation Flag
lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag.size = 4

-- Display: Pt Cancellation Flag
lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag.display = function(value)
  return "Pt Cancellation Flag: "..value
end

-- Dissect: Pt Cancellation Flag
lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.pt_cancellation_flag, range, value, display)

  return offset + length, value
end

-- Reserved 4
lseg_turquoise_mifid_gtp_v24_4.reserved_4 = {}

-- Size: Reserved 4
lseg_turquoise_mifid_gtp_v24_4.reserved_4.size = 4

-- Display: Reserved 4
lseg_turquoise_mifid_gtp_v24_4.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_turquoise_mifid_gtp_v24_4.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid_gtp_v24_4.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Pt Algo Trade
lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade = {}

-- Size: Pt Algo Trade
lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade.size = 4

-- Display: Pt Algo Trade
lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade.display = function(value)
  return "Pt Algo Trade: "..value
end

-- Dissect: Pt Algo Trade
lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.pt_algo_trade, range, value, display)

  return offset + length, value
end

-- Nt Pre Trade Waiver Flag
lseg_turquoise_mifid_gtp_v24_4.nt_pre_trade_waiver_flag = {}

-- Size: Nt Pre Trade Waiver Flag
lseg_turquoise_mifid_gtp_v24_4.nt_pre_trade_waiver_flag.size = 4

-- Display: Nt Pre Trade Waiver Flag
lseg_turquoise_mifid_gtp_v24_4.nt_pre_trade_waiver_flag.display = function(value)
  return "Nt Pre Trade Waiver Flag: "..value
end

-- Dissect: Nt Pre Trade Waiver Flag
lseg_turquoise_mifid_gtp_v24_4.nt_pre_trade_waiver_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.nt_pre_trade_waiver_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.nt_pre_trade_waiver_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.nt_pre_trade_waiver_flag, range, value, display)

  return offset + length, value
end

-- Publication Date And Time
lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time = {}

-- Size: Publication Date And Time
lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time.size = 27

-- Display: Publication Date And Time
lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time.display = function(value)
  return "Publication Date And Time: "..value
end

-- Dissect: Publication Date And Time
lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.publication_date_and_time, range, value, display)

  return offset + length, value
end

-- Venue Of Execution
lseg_turquoise_mifid_gtp_v24_4.venue_of_execution = {}

-- Size: Venue Of Execution
lseg_turquoise_mifid_gtp_v24_4.venue_of_execution.size = 4

-- Display: Venue Of Execution
lseg_turquoise_mifid_gtp_v24_4.venue_of_execution.display = function(value)
  return "Venue Of Execution: "..value
end

-- Dissect: Venue Of Execution
lseg_turquoise_mifid_gtp_v24_4.venue_of_execution.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.venue_of_execution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.venue_of_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.venue_of_execution, range, value, display)

  return offset + length, value
end

-- Notional Currency
lseg_turquoise_mifid_gtp_v24_4.notional_currency = {}

-- Size: Notional Currency
lseg_turquoise_mifid_gtp_v24_4.notional_currency.size = 3

-- Display: Notional Currency
lseg_turquoise_mifid_gtp_v24_4.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
lseg_turquoise_mifid_gtp_v24_4.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Notional Amount
lseg_turquoise_mifid_gtp_v24_4.notional_amount = {}

-- Size: Notional Amount
lseg_turquoise_mifid_gtp_v24_4.notional_amount.size = 20

-- Display: Notional Amount
lseg_turquoise_mifid_gtp_v24_4.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
lseg_turquoise_mifid_gtp_v24_4.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.notional_amount.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Price Major Currency
lseg_turquoise_mifid_gtp_v24_4.price_major_currency = {}

-- Size: Price Major Currency
lseg_turquoise_mifid_gtp_v24_4.price_major_currency.size = 3

-- Display: Price Major Currency
lseg_turquoise_mifid_gtp_v24_4.price_major_currency.display = function(value)
  return "Price Major Currency: "..value
end

-- Dissect: Price Major Currency
lseg_turquoise_mifid_gtp_v24_4.price_major_currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.price_major_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.price_major_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.price_major_currency, range, value, display)

  return offset + length, value
end

-- Price Notation
lseg_turquoise_mifid_gtp_v24_4.price_notation = {}

-- Size: Price Notation
lseg_turquoise_mifid_gtp_v24_4.price_notation.size = 4

-- Display: Price Notation
lseg_turquoise_mifid_gtp_v24_4.price_notation.display = function(value)
  return "Price Notation: "..value
end

-- Dissect: Price Notation
lseg_turquoise_mifid_gtp_v24_4.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code
lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code = {}

-- Size: Instrument Identification Code
lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code.size = 12

-- Display: Instrument Identification Code
lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code.display = function(value)
  return "Instrument Identification Code: "..value
end

-- Dissect: Instrument Identification Code
lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument_identification_code, range, value, display)

  return offset + length, value
end

-- Instrument Identification Code Type
lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type = {}

-- Size: Instrument Identification Code Type
lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type.size = 4

-- Display: Instrument Identification Code Type
lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type.display = function(value)
  return "Instrument Identification Code Type: "..value
end

-- Dissect: Instrument Identification Code Type
lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument_identification_code_type, range, value, display)

  return offset + length, value
end

-- Trading Date And Time
lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time = {}

-- Size: Trading Date And Time
lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time.size = 27

-- Display: Trading Date And Time
lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time.display = function(value)
  return "Trading Date And Time: "..value
end

-- Dissect: Trading Date And Time
lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.trading_date_and_time, range, value, display)

  return offset + length, value
end

-- Mi Fid Quantity
lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity = {}

-- Size: Mi Fid Quantity
lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity.size = 20

-- Display: Mi Fid Quantity
lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity.display = function(value)
  return "Mi Fid Quantity: "..value
end

-- Dissect: Mi Fid Quantity
lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.mi_fid_quantity, range, value, display)

  return offset + length, value
end

-- Mi Fid Price
lseg_turquoise_mifid_gtp_v24_4.mi_fid_price = {}

-- Size: Mi Fid Price
lseg_turquoise_mifid_gtp_v24_4.mi_fid_price.size = 20

-- Display: Mi Fid Price
lseg_turquoise_mifid_gtp_v24_4.mi_fid_price.display = function(value)
  return "Mi Fid Price: "..value
end

-- Dissect: Mi Fid Price
lseg_turquoise_mifid_gtp_v24_4.mi_fid_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.mi_fid_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.mi_fid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.mi_fid_price, range, value, display)

  return offset + length, value
end

-- Cross Type
lseg_turquoise_mifid_gtp_v24_4.cross_type = {}

-- Size: Cross Type
lseg_turquoise_mifid_gtp_v24_4.cross_type.size = 1

-- Display: Cross Type
lseg_turquoise_mifid_gtp_v24_4.cross_type.display = function(value)
  if value == 6 then
    return "Cross Type: Internal Btf (6)"
  end
  if value == 8 then
    return "Cross Type: Committed Btf (8)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
lseg_turquoise_mifid_gtp_v24_4.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Cross Id
lseg_turquoise_mifid_gtp_v24_4.cross_id = {}

-- Size: Cross Id
lseg_turquoise_mifid_gtp_v24_4.cross_id.size = 20

-- Display: Cross Id
lseg_turquoise_mifid_gtp_v24_4.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
lseg_turquoise_mifid_gtp_v24_4.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.cross_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Transaction Identification Code
lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code = {}

-- Size: Transaction Identification Code
lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code.size = 52

-- Display: Transaction Identification Code
lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code.display = function(value)
  return "Transaction Identification Code: "..value
end

-- Dissect: Transaction Identification Code
lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.transaction_identification_code, range, value, display)

  return offset + length, value
end

-- Instrument
lseg_turquoise_mifid_gtp_v24_4.instrument = {}

-- Size: Instrument
lseg_turquoise_mifid_gtp_v24_4.instrument.size = 8

-- Display: Instrument
lseg_turquoise_mifid_gtp_v24_4.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
lseg_turquoise_mifid_gtp_v24_4.instrument.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.instrument.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_mifid_gtp_v24_4.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument, range, value, display)

  return offset + length, value
end

-- Source Venue
lseg_turquoise_mifid_gtp_v24_4.source_venue = {}

-- Size: Source Venue
lseg_turquoise_mifid_gtp_v24_4.source_venue.size = 2

-- Display: Source Venue
lseg_turquoise_mifid_gtp_v24_4.source_venue.display = function(value)
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
lseg_turquoise_mifid_gtp_v24_4.source_venue.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.source_venue.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.source_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.source_venue, range, value, display)

  return offset + length, value
end

-- Timestamp
lseg_turquoise_mifid_gtp_v24_4.timestamp = {}

-- Size: Timestamp
lseg_turquoise_mifid_gtp_v24_4.timestamp.size = 8

-- Display: Timestamp
lseg_turquoise_mifid_gtp_v24_4.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
lseg_turquoise_mifid_gtp_v24_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_turquoise_mifid_gtp_v24_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Mi Fid Ii Trade Cross Message
lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message = {}

-- Calculate size of: Mi Fid Ii Trade Cross Message
lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_gtp_v24_4.timestamp.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.source_venue.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.instrument.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.cross_id.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.cross_type.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.mi_fid_price.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.price_notation.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.price_major_currency.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.notional_amount.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.notional_currency.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.venue_of_execution.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.reserved_4.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.nt_pre_trade_waiver_flag.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.reserved_4.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.reserved_28.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.market_mechanism.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.trading_mode.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.transaction_category.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.modification_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator.size

  return index
end

-- Display: Mi Fid Ii Trade Cross Message
lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mi Fid Ii Trade Cross Message
lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_mifid_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Transaction Identification Code: 52 Byte Ascii String
  index, transaction_identification_code = lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code.dissect(buffer, index, packet, parent)

  -- Cross Id: 20 Byte Ascii String
  index, cross_id = lseg_turquoise_mifid_gtp_v24_4.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, cross_type = lseg_turquoise_mifid_gtp_v24_4.cross_type.dissect(buffer, index, packet, parent)

  -- Mi Fid Price: 20 Byte Ascii String
  index, mi_fid_price = lseg_turquoise_mifid_gtp_v24_4.mi_fid_price.dissect(buffer, index, packet, parent)

  -- Mi Fid Quantity: 20 Byte Ascii String
  index, mi_fid_quantity = lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity.dissect(buffer, index, packet, parent)

  -- Trading Date And Time: 27 Byte Ascii String
  index, trading_date_and_time = lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code Type: 4 Byte Ascii String
  index, instrument_identification_code_type = lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code: 12 Byte Ascii String
  index, instrument_identification_code = lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code.dissect(buffer, index, packet, parent)

  -- Price Notation: 4 Byte Ascii String
  index, price_notation = lseg_turquoise_mifid_gtp_v24_4.price_notation.dissect(buffer, index, packet, parent)

  -- Price Major Currency: 3 Byte Ascii String
  index, price_major_currency = lseg_turquoise_mifid_gtp_v24_4.price_major_currency.dissect(buffer, index, packet, parent)

  -- Notional Amount: 20 Byte Ascii String
  index, notional_amount = lseg_turquoise_mifid_gtp_v24_4.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = lseg_turquoise_mifid_gtp_v24_4.notional_currency.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: 4 Byte Ascii String
  index, venue_of_execution = lseg_turquoise_mifid_gtp_v24_4.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Publication Date And Time: 27 Byte Ascii String
  index, publication_date_and_time = lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = lseg_turquoise_mifid_gtp_v24_4.reserved_4.dissect(buffer, index, packet, parent)

  -- Nt Pre Trade Waiver Flag: 4 Byte Ascii String
  index, nt_pre_trade_waiver_flag = lseg_turquoise_mifid_gtp_v24_4.nt_pre_trade_waiver_flag.dissect(buffer, index, packet, parent)

  -- Pt Algo Trade: 4 Byte Ascii String
  index, pt_algo_trade = lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = lseg_turquoise_mifid_gtp_v24_4.reserved_4.dissect(buffer, index, packet, parent)

  -- Pt Cancellation Flag: 4 Byte Ascii String
  index, pt_cancellation_flag = lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag.dissect(buffer, index, packet, parent)

  -- Pt Amendment Flag: 4 Byte Ascii String
  index, pt_amendment_flag = lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag.dissect(buffer, index, packet, parent)

  -- Reserved 28: 28 Byte
  index, reserved_28 = lseg_turquoise_mifid_gtp_v24_4.reserved_28.dissect(buffer, index, packet, parent)

  -- Market Mechanism: 1 Byte Ascii String Enum with 3 values
  index, market_mechanism = lseg_turquoise_mifid_gtp_v24_4.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 4 values
  index, trading_mode = lseg_turquoise_mifid_gtp_v24_4.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 2 values
  index, transaction_category = lseg_turquoise_mifid_gtp_v24_4.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Indicator: 1 Byte Ascii String Enum with 1 values
  index, negotiation_indicator = lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Agency Cross Indicator: 1 Byte Ascii String Enum with 1 values
  index, agency_cross_indicator = lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator.dissect(buffer, index, packet, parent)

  -- Modification Indicator: 1 Byte Ascii String Enum with 3 values
  index, modification_indicator = lseg_turquoise_mifid_gtp_v24_4.modification_indicator.dissect(buffer, index, packet, parent)

  -- Reference Price Indicator: 1 Byte Ascii String Enum with 3 values
  index, reference_price_indicator = lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend Indicator: 1 Byte Ascii String Enum with 1 values
  index, special_dividend_indicator = lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Off Book Automated Indicator: 1 Byte Ascii String Enum with 1 values
  index, off_book_automated_indicator = lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Price Formation Indicator: 1 Byte Ascii String Enum with 1 values
  index, price_formation_indicator = lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_indicator = lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 1 Byte Ascii String Enum with 1 values
  index, post_trade_deferral_reason = lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Enrichment Type: 1 Byte Ascii String Enum with 1 values
  index, deferral_enrichment_type = lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: 1 Byte Ascii String Enum with 1 values
  index, duplicative_indicator = lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mi Fid Ii Trade Cross Message
lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message.dissect = function(buffer, offset, packet, parent)
  if show.mi_fid_ii_trade_cross_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.mi_fid_ii_trade_cross_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Qualifier
lseg_turquoise_mifid_gtp_v24_4.trade_qualifier = {}

-- Size: Trade Qualifier
lseg_turquoise_mifid_gtp_v24_4.trade_qualifier.size = 1

-- Display: Trade Qualifier
lseg_turquoise_mifid_gtp_v24_4.trade_qualifier.display = function(value)
  if value == " " then
    return "Trade Qualifier: Not Available (<whitespace>)"
  end
  if value == "T" then
    return "Trade Qualifier: Trade At Last (T)"
  end

  return "Trade Qualifier: Unknown("..value..")"
end

-- Dissect: Trade Qualifier
lseg_turquoise_mifid_gtp_v24_4.trade_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.trade_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.trade_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Market Closing Price Flag
lseg_turquoise_mifid_gtp_v24_4.market_closing_price_flag = {}

-- Size: Market Closing Price Flag
lseg_turquoise_mifid_gtp_v24_4.market_closing_price_flag.size = 4

-- Display: Market Closing Price Flag
lseg_turquoise_mifid_gtp_v24_4.market_closing_price_flag.display = function(value)
  return "Market Closing Price Flag: "..value
end

-- Dissect: Market Closing Price Flag
lseg_turquoise_mifid_gtp_v24_4.market_closing_price_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.market_closing_price_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.market_closing_price_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.market_closing_price_flag, range, value, display)

  return offset + length, value
end

-- Pt Ref Price Waiver Flag
lseg_turquoise_mifid_gtp_v24_4.pt_ref_price_waiver_flag = {}

-- Size: Pt Ref Price Waiver Flag
lseg_turquoise_mifid_gtp_v24_4.pt_ref_price_waiver_flag.size = 4

-- Display: Pt Ref Price Waiver Flag
lseg_turquoise_mifid_gtp_v24_4.pt_ref_price_waiver_flag.display = function(value)
  return "Pt Ref Price Waiver Flag: "..value
end

-- Dissect: Pt Ref Price Waiver Flag
lseg_turquoise_mifid_gtp_v24_4.pt_ref_price_waiver_flag.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.pt_ref_price_waiver_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.pt_ref_price_waiver_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.pt_ref_price_waiver_flag, range, value, display)

  return offset + length, value
end

-- Auction Type
lseg_turquoise_mifid_gtp_v24_4.auction_type = {}

-- Size: Auction Type
lseg_turquoise_mifid_gtp_v24_4.auction_type.size = 1

-- Display: Auction Type
lseg_turquoise_mifid_gtp_v24_4.auction_type.display = function(value)
  return "Auction Type: "..value
end

-- Dissect: Auction Type
lseg_turquoise_mifid_gtp_v24_4.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Trade Type
lseg_turquoise_mifid_gtp_v24_4.trade_type = {}

-- Size: Trade Type
lseg_turquoise_mifid_gtp_v24_4.trade_type.size = 1

-- Display: Trade Type
lseg_turquoise_mifid_gtp_v24_4.trade_type.display = function(value)
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
lseg_turquoise_mifid_gtp_v24_4.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Mifid Ii Trade Message
lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message = {}

-- Calculate size of: Mifid Ii Trade Message
lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_gtp_v24_4.timestamp.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.source_venue.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.instrument.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.trade_type.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.auction_type.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.mi_fid_price.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.price_notation.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.price_major_currency.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.notional_amount.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.notional_currency.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.venue_of_execution.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.pt_ref_price_waiver_flag.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.reserved_4.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.market_closing_price_flag.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.reserved_28.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.trade_qualifier.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.market_mechanism.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.trading_mode.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.transaction_category.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.modification_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator.size

  return index
end

-- Display: Mifid Ii Trade Message
lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Ii Trade Message
lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_mifid_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Transaction Identification Code: 52 Byte Ascii String
  index, transaction_identification_code = lseg_turquoise_mifid_gtp_v24_4.transaction_identification_code.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trade_type = lseg_turquoise_mifid_gtp_v24_4.trade_type.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String
  index, auction_type = lseg_turquoise_mifid_gtp_v24_4.auction_type.dissect(buffer, index, packet, parent)

  -- Mi Fid Price: 20 Byte Ascii String
  index, mi_fid_price = lseg_turquoise_mifid_gtp_v24_4.mi_fid_price.dissect(buffer, index, packet, parent)

  -- Mi Fid Quantity: 20 Byte Ascii String
  index, mi_fid_quantity = lseg_turquoise_mifid_gtp_v24_4.mi_fid_quantity.dissect(buffer, index, packet, parent)

  -- Trading Date And Time: 27 Byte Ascii String
  index, trading_date_and_time = lseg_turquoise_mifid_gtp_v24_4.trading_date_and_time.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code Type: 4 Byte Ascii String
  index, instrument_identification_code_type = lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code_type.dissect(buffer, index, packet, parent)

  -- Instrument Identification Code: 12 Byte Ascii String
  index, instrument_identification_code = lseg_turquoise_mifid_gtp_v24_4.instrument_identification_code.dissect(buffer, index, packet, parent)

  -- Price Notation: 4 Byte Ascii String
  index, price_notation = lseg_turquoise_mifid_gtp_v24_4.price_notation.dissect(buffer, index, packet, parent)

  -- Price Major Currency: 3 Byte Ascii String
  index, price_major_currency = lseg_turquoise_mifid_gtp_v24_4.price_major_currency.dissect(buffer, index, packet, parent)

  -- Notional Amount: 20 Byte Ascii String
  index, notional_amount = lseg_turquoise_mifid_gtp_v24_4.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = lseg_turquoise_mifid_gtp_v24_4.notional_currency.dissect(buffer, index, packet, parent)

  -- Venue Of Execution: 4 Byte Ascii String
  index, venue_of_execution = lseg_turquoise_mifid_gtp_v24_4.venue_of_execution.dissect(buffer, index, packet, parent)

  -- Publication Date And Time: 27 Byte Ascii String
  index, publication_date_and_time = lseg_turquoise_mifid_gtp_v24_4.publication_date_and_time.dissect(buffer, index, packet, parent)

  -- Pt Ref Price Waiver Flag: 4 Byte Ascii String
  index, pt_ref_price_waiver_flag = lseg_turquoise_mifid_gtp_v24_4.pt_ref_price_waiver_flag.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = lseg_turquoise_mifid_gtp_v24_4.reserved_4.dissect(buffer, index, packet, parent)

  -- Market Closing Price Flag: 4 Byte Ascii String
  index, market_closing_price_flag = lseg_turquoise_mifid_gtp_v24_4.market_closing_price_flag.dissect(buffer, index, packet, parent)

  -- Pt Algo Trade: 4 Byte Ascii String
  index, pt_algo_trade = lseg_turquoise_mifid_gtp_v24_4.pt_algo_trade.dissect(buffer, index, packet, parent)

  -- Pt Cancellation Flag: 4 Byte Ascii String
  index, pt_cancellation_flag = lseg_turquoise_mifid_gtp_v24_4.pt_cancellation_flag.dissect(buffer, index, packet, parent)

  -- Pt Amendment Flag: 4 Byte Ascii String
  index, pt_amendment_flag = lseg_turquoise_mifid_gtp_v24_4.pt_amendment_flag.dissect(buffer, index, packet, parent)

  -- Reserved 28: 28 Byte
  index, reserved_28 = lseg_turquoise_mifid_gtp_v24_4.reserved_28.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: 1 Byte Ascii String Enum with 2 values
  index, trade_qualifier = lseg_turquoise_mifid_gtp_v24_4.trade_qualifier.dissect(buffer, index, packet, parent)

  -- Market Mechanism: 1 Byte Ascii String Enum with 3 values
  index, market_mechanism = lseg_turquoise_mifid_gtp_v24_4.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: 1 Byte Ascii String Enum with 4 values
  index, trading_mode = lseg_turquoise_mifid_gtp_v24_4.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: 1 Byte Ascii String Enum with 2 values
  index, transaction_category = lseg_turquoise_mifid_gtp_v24_4.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Indicator: 1 Byte Ascii String Enum with 1 values
  index, negotiation_indicator = lseg_turquoise_mifid_gtp_v24_4.negotiation_indicator.dissect(buffer, index, packet, parent)

  -- Agency Cross Indicator: 1 Byte Ascii String Enum with 1 values
  index, agency_cross_indicator = lseg_turquoise_mifid_gtp_v24_4.agency_cross_indicator.dissect(buffer, index, packet, parent)

  -- Modification Indicator: 1 Byte Ascii String Enum with 3 values
  index, modification_indicator = lseg_turquoise_mifid_gtp_v24_4.modification_indicator.dissect(buffer, index, packet, parent)

  -- Reference Price Indicator: 1 Byte Ascii String Enum with 3 values
  index, reference_price_indicator = lseg_turquoise_mifid_gtp_v24_4.reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend Indicator: 1 Byte Ascii String Enum with 1 values
  index, special_dividend_indicator = lseg_turquoise_mifid_gtp_v24_4.special_dividend_indicator.dissect(buffer, index, packet, parent)

  -- Off Book Automated Indicator: 1 Byte Ascii String Enum with 1 values
  index, off_book_automated_indicator = lseg_turquoise_mifid_gtp_v24_4.off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Price Formation Indicator: 1 Byte Ascii String Enum with 1 values
  index, price_formation_indicator = lseg_turquoise_mifid_gtp_v24_4.price_formation_indicator.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: 1 Byte Ascii String Enum with 2 values
  index, algorithmic_indicator = lseg_turquoise_mifid_gtp_v24_4.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 1 Byte Ascii String Enum with 1 values
  index, post_trade_deferral_reason = lseg_turquoise_mifid_gtp_v24_4.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Enrichment Type: 1 Byte Ascii String Enum with 1 values
  index, deferral_enrichment_type = lseg_turquoise_mifid_gtp_v24_4.deferral_enrichment_type.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: 1 Byte Ascii String Enum with 1 values
  index, duplicative_indicator = lseg_turquoise_mifid_gtp_v24_4.duplicative_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Ii Trade Message
lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.mifid_ii_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.mifid_ii_trade_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Type
lseg_turquoise_mifid_gtp_v24_4.order_book_type = {}

-- Size: Order Book Type
lseg_turquoise_mifid_gtp_v24_4.order_book_type.size = 1

-- Display: Order Book Type
lseg_turquoise_mifid_gtp_v24_4.order_book_type.display = function(value)
  if value == 3 then
    return "Order Book Type: Electronic (3)"
  end

  return "Order Book Type: Unknown("..value..")"
end

-- Dissect: Order Book Type
lseg_turquoise_mifid_gtp_v24_4.order_book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.order_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.order_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.order_book_type, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_turquoise_mifid_gtp_v24_4.new_end_time = {}

-- Size: New End Time
lseg_turquoise_mifid_gtp_v24_4.new_end_time.size = 6

-- Display: New End Time
lseg_turquoise_mifid_gtp_v24_4.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_turquoise_mifid_gtp_v24_4.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.new_end_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_turquoise_mifid_gtp_v24_4.session_change_reason = {}

-- Size: Session Change Reason
lseg_turquoise_mifid_gtp_v24_4.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_turquoise_mifid_gtp_v24_4.session_change_reason.display = function(value)
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
lseg_turquoise_mifid_gtp_v24_4.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_turquoise_mifid_gtp_v24_4.trading_status = {}

-- Size: Trading Status
lseg_turquoise_mifid_gtp_v24_4.trading_status.size = 1

-- Display: Trading Status
lseg_turquoise_mifid_gtp_v24_4.trading_status.display = function(value)
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
lseg_turquoise_mifid_gtp_v24_4.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Status Message
lseg_turquoise_mifid_gtp_v24_4.instrument_status_message = {}

-- Calculate size of: Instrument Status Message
lseg_turquoise_mifid_gtp_v24_4.instrument_status_message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_gtp_v24_4.timestamp.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.instrument.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.source_venue.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.trading_status.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.session_change_reason.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.new_end_time.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.order_book_type.size

  return index
end

-- Display: Instrument Status Message
lseg_turquoise_mifid_gtp_v24_4.instrument_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Status Message
lseg_turquoise_mifid_gtp_v24_4.instrument_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_mifid_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 9 values
  index, trading_status = lseg_turquoise_mifid_gtp_v24_4.trading_status.dissect(buffer, index, packet, parent)

  -- Session Change Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, session_change_reason = lseg_turquoise_mifid_gtp_v24_4.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: 6 Byte Ascii String
  index, new_end_time = lseg_turquoise_mifid_gtp_v24_4.new_end_time.dissect(buffer, index, packet, parent)

  -- Order Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, order_book_type = lseg_turquoise_mifid_gtp_v24_4.order_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Status Message
lseg_turquoise_mifid_gtp_v24_4.instrument_status_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument_status_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid_gtp_v24_4.instrument_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid_gtp_v24_4.instrument_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 38
lseg_turquoise_mifid_gtp_v24_4.reserved_38 = {}

-- Size: Reserved 38
lseg_turquoise_mifid_gtp_v24_4.reserved_38.size = 38

-- Display: Reserved 38
lseg_turquoise_mifid_gtp_v24_4.reserved_38.display = function(value)
  return "Reserved 38: "..value
end

-- Dissect: Reserved 38
lseg_turquoise_mifid_gtp_v24_4.reserved_38.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.reserved_38.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid_gtp_v24_4.reserved_38.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.reserved_38, range, value, display)

  return offset + length, value
end

-- Currency
lseg_turquoise_mifid_gtp_v24_4.currency = {}

-- Size: Currency
lseg_turquoise_mifid_gtp_v24_4.currency.size = 3

-- Display: Currency
lseg_turquoise_mifid_gtp_v24_4.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_turquoise_mifid_gtp_v24_4.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Reserved 23
lseg_turquoise_mifid_gtp_v24_4.reserved_23 = {}

-- Size: Reserved 23
lseg_turquoise_mifid_gtp_v24_4.reserved_23.size = 23

-- Display: Reserved 23
lseg_turquoise_mifid_gtp_v24_4.reserved_23.display = function(value)
  return "Reserved 23: "..value
end

-- Dissect: Reserved 23
lseg_turquoise_mifid_gtp_v24_4.reserved_23.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.reserved_23.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_turquoise_mifid_gtp_v24_4.reserved_23.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.reserved_23, range, value, display)

  return offset + length, value
end

-- Segment
lseg_turquoise_mifid_gtp_v24_4.segment = {}

-- Size: Segment
lseg_turquoise_mifid_gtp_v24_4.segment.size = 6

-- Display: Segment
lseg_turquoise_mifid_gtp_v24_4.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_turquoise_mifid_gtp_v24_4.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.segment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.segment, range, value, display)

  return offset + length, value
end

-- Static Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances = {}

-- Size: Static Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances.size = 8

-- Display: Static Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances.display = function(value)
  return "Static Circuit Breaker Tolerances: "..value
end

-- Translate: Static Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Static Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.static_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances = {}

-- Size: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.size = 8

-- Display: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.display = function(value)
  return "Dynamic Circuit Breaker Tolerances: "..value
end

-- Translate: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Dynamic Circuit Breaker Tolerances
lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.translate(raw)
  local display = lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.dynamic_circuit_breaker_tolerances, range, value, display)

  return offset + length, value
end

-- Price Band Tolerances
lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances = {}

-- Size: Price Band Tolerances
lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances.size = 8

-- Display: Price Band Tolerances
lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances.display = function(value)
  return "Price Band Tolerances: "..value
end

-- Translate: Price Band Tolerances
lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Band Tolerances
lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances.translate(raw)
  local display = lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.price_band_tolerances, range, value, display)

  return offset + length, value
end

-- Tick Id
lseg_turquoise_mifid_gtp_v24_4.tick_id = {}

-- Size: Tick Id
lseg_turquoise_mifid_gtp_v24_4.tick_id.size = 2

-- Display: Tick Id
lseg_turquoise_mifid_gtp_v24_4.tick_id.display = function(value)
  return "Tick Id: "..value
end

-- Dissect: Tick Id
lseg_turquoise_mifid_gtp_v24_4.tick_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.tick_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.tick_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.tick_id, range, value, display)

  return offset + length, value
end

-- Venue Instrument Id
lseg_turquoise_mifid_gtp_v24_4.venue_instrument_id = {}

-- Size: Venue Instrument Id
lseg_turquoise_mifid_gtp_v24_4.venue_instrument_id.size = 11

-- Display: Venue Instrument Id
lseg_turquoise_mifid_gtp_v24_4.venue_instrument_id.display = function(value)
  return "Venue Instrument Id: "..value
end

-- Dissect: Venue Instrument Id
lseg_turquoise_mifid_gtp_v24_4.venue_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.venue_instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.venue_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.venue_instrument_id, range, value, display)

  return offset + length, value
end

-- Allowed Book Types
lseg_turquoise_mifid_gtp_v24_4.allowed_book_types = {}

-- Size: Allowed Book Types
lseg_turquoise_mifid_gtp_v24_4.allowed_book_types.size = 1

-- Display: Allowed Book Types
lseg_turquoise_mifid_gtp_v24_4.allowed_book_types.display = function(buffer, packet, parent)
  local display = ""

  -- Is Electronic Order Book flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Electronic Order Book|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Allowed Book Types
lseg_turquoise_mifid_gtp_v24_4.allowed_book_types.bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.unused_2, buffer(offset, 1))

  -- Electronic Order Book: 1 Bit
  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.electronic_order_book, buffer(offset, 1))

  -- Unused 5: 5 Bit
  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.unused_5, buffer(offset, 1))
end

-- Dissect: Allowed Book Types
lseg_turquoise_mifid_gtp_v24_4.allowed_book_types.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = lseg_turquoise_mifid_gtp_v24_4.allowed_book_types.display(range, packet, parent)
  local element = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.allowed_book_types, range, display)

  if show.allowed_book_types then
    lseg_turquoise_mifid_gtp_v24_4.allowed_book_types.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Isin
lseg_turquoise_mifid_gtp_v24_4.isin = {}

-- Size: Isin
lseg_turquoise_mifid_gtp_v24_4.isin.size = 12

-- Display: Isin
lseg_turquoise_mifid_gtp_v24_4.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_turquoise_mifid_gtp_v24_4.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lseg_turquoise_mifid_gtp_v24_4.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.isin, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message = {}

-- Calculate size of: Instrument Directory Message
lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_gtp_v24_4.timestamp.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.instrument.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.isin.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.allowed_book_types.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.source_venue.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.venue_instrument_id.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.tick_id.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.segment.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.reserved_23.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.currency.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.reserved_38.size

  return index
end

-- Display: Instrument Directory Message
lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument: 8 Byte Unsigned Fixed Width Integer
  index, instrument = lseg_turquoise_mifid_gtp_v24_4.instrument.dissect(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = lseg_turquoise_mifid_gtp_v24_4.isin.dissect(buffer, index, packet, parent)

  -- Allowed Book Types: Struct of 3 fields
  index, allowed_book_types = lseg_turquoise_mifid_gtp_v24_4.allowed_book_types.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  -- Venue Instrument Id: 11 Byte Ascii String
  index, venue_instrument_id = lseg_turquoise_mifid_gtp_v24_4.venue_instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Id: 2 Byte Ascii String
  index, tick_id = lseg_turquoise_mifid_gtp_v24_4.tick_id.dissect(buffer, index, packet, parent)

  -- Price Band Tolerances: 8 Byte Signed Fixed Width Integer
  index, price_band_tolerances = lseg_turquoise_mifid_gtp_v24_4.price_band_tolerances.dissect(buffer, index, packet, parent)

  -- Dynamic Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, dynamic_circuit_breaker_tolerances = lseg_turquoise_mifid_gtp_v24_4.dynamic_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Static Circuit Breaker Tolerances: 8 Byte Signed Fixed Width Integer
  index, static_circuit_breaker_tolerances = lseg_turquoise_mifid_gtp_v24_4.static_circuit_breaker_tolerances.dissect(buffer, index, packet, parent)

  -- Segment: 6 Byte Ascii String
  index, segment = lseg_turquoise_mifid_gtp_v24_4.segment.dissect(buffer, index, packet, parent)

  -- Reserved 23: 23 Byte
  index, reserved_23 = lseg_turquoise_mifid_gtp_v24_4.reserved_23.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = lseg_turquoise_mifid_gtp_v24_4.currency.dissect(buffer, index, packet, parent)

  -- Reserved 38: 38 Byte
  index, reserved_38 = lseg_turquoise_mifid_gtp_v24_4.reserved_38.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.instrument_directory_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
lseg_turquoise_mifid_gtp_v24_4.event_code = {}

-- Size: Event Code
lseg_turquoise_mifid_gtp_v24_4.event_code.size = 1

-- Display: Event Code
lseg_turquoise_mifid_gtp_v24_4.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_turquoise_mifid_gtp_v24_4.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
lseg_turquoise_mifid_gtp_v24_4.system_event_message = {}

-- Calculate size of: System Event Message
lseg_turquoise_mifid_gtp_v24_4.system_event_message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_gtp_v24_4.timestamp.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.event_code.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.source_venue.size

  return index
end

-- Display: System Event Message
lseg_turquoise_mifid_gtp_v24_4.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_turquoise_mifid_gtp_v24_4.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = lseg_turquoise_mifid_gtp_v24_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = lseg_turquoise_mifid_gtp_v24_4.event_code.dissect(buffer, index, packet, parent)

  -- Source Venue: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, source_venue = lseg_turquoise_mifid_gtp_v24_4.source_venue.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_turquoise_mifid_gtp_v24_4.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.system_event_message, buffer(offset, 0))
    local index = lseg_turquoise_mifid_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid_gtp_v24_4.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid_gtp_v24_4.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_turquoise_mifid_gtp_v24_4.payload = {}

-- Calculate runtime size of: Payload
lseg_turquoise_mifid_gtp_v24_4.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_mifid_gtp_v24_4.system_event_message.size(buffer, offset)
  end
  -- Size of Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message.size(buffer, offset)
  end
  -- Size of Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_mifid_gtp_v24_4.instrument_status_message.size(buffer, offset)
  end
  -- Size of Mifid Ii Trade Message
  if message_type == 0x51 then
    return lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message.size(buffer, offset)
  end
  -- Size of Mi Fid Ii Trade Cross Message
  if message_type == 0x56 then
    return lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
lseg_turquoise_mifid_gtp_v24_4.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
lseg_turquoise_mifid_gtp_v24_4.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_turquoise_mifid_gtp_v24_4.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Directory Message
  if message_type == 0x70 then
    return lseg_turquoise_mifid_gtp_v24_4.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Status Message
  if message_type == 0x48 then
    return lseg_turquoise_mifid_gtp_v24_4.instrument_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mifid Ii Trade Message
  if message_type == 0x51 then
    return lseg_turquoise_mifid_gtp_v24_4.mifid_ii_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mi Fid Ii Trade Cross Message
  if message_type == 0x56 then
    return lseg_turquoise_mifid_gtp_v24_4.mi_fid_ii_trade_cross_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
lseg_turquoise_mifid_gtp_v24_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return lseg_turquoise_mifid_gtp_v24_4.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = lseg_turquoise_mifid_gtp_v24_4.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = lseg_turquoise_mifid_gtp_v24_4.payload.display(buffer, packet, parent)
  local element = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.payload, range, display)

  return lseg_turquoise_mifid_gtp_v24_4.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
lseg_turquoise_mifid_gtp_v24_4.message_type = {}

-- Size: Message Type
lseg_turquoise_mifid_gtp_v24_4.message_type.size = 1

-- Display: Message Type
lseg_turquoise_mifid_gtp_v24_4.message_type.display = function(value)
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
lseg_turquoise_mifid_gtp_v24_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_turquoise_mifid_gtp_v24_4.message_length = {}

-- Size: Message Length
lseg_turquoise_mifid_gtp_v24_4.message_length.size = 1

-- Display: Message Length
lseg_turquoise_mifid_gtp_v24_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_turquoise_mifid_gtp_v24_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
lseg_turquoise_mifid_gtp_v24_4.message_header = {}

-- Calculate size of: Message Header
lseg_turquoise_mifid_gtp_v24_4.message_header.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_gtp_v24_4.message_length.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.message_type.size

  return index
end

-- Display: Message Header
lseg_turquoise_mifid_gtp_v24_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_turquoise_mifid_gtp_v24_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_turquoise_mifid_gtp_v24_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, message_type = lseg_turquoise_mifid_gtp_v24_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_turquoise_mifid_gtp_v24_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_header, buffer(offset, 0))
    local index = lseg_turquoise_mifid_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid_gtp_v24_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid_gtp_v24_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_turquoise_mifid_gtp_v24_4.message = {}

-- Calculate size of: Message
lseg_turquoise_mifid_gtp_v24_4.message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_gtp_v24_4.message_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_turquoise_mifid_gtp_v24_4.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_turquoise_mifid_gtp_v24_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_turquoise_mifid_gtp_v24_4.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_turquoise_mifid_gtp_v24_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = lseg_turquoise_mifid_gtp_v24_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_turquoise_mifid_gtp_v24_4.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = lseg_turquoise_mifid_gtp_v24_4.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = lseg_turquoise_mifid_gtp_v24_4.message.display(buffer, packet, parent)
    parent = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.message, range, display)
  end

  return lseg_turquoise_mifid_gtp_v24_4.message.fields(buffer, offset, packet, parent)
end

-- Sequence Number
lseg_turquoise_mifid_gtp_v24_4.sequence_number = {}

-- Size: Sequence Number
lseg_turquoise_mifid_gtp_v24_4.sequence_number.size = 4

-- Display: Sequence Number
lseg_turquoise_mifid_gtp_v24_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_turquoise_mifid_gtp_v24_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_turquoise_mifid_gtp_v24_4.market_data_group = {}

-- Size: Market Data Group
lseg_turquoise_mifid_gtp_v24_4.market_data_group.size = 1

-- Display: Market Data Group
lseg_turquoise_mifid_gtp_v24_4.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_turquoise_mifid_gtp_v24_4.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_turquoise_mifid_gtp_v24_4.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_turquoise_mifid_gtp_v24_4.message_count = {}

-- Size: Message Count
lseg_turquoise_mifid_gtp_v24_4.message_count.size = 1

-- Display: Message Count
lseg_turquoise_mifid_gtp_v24_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_turquoise_mifid_gtp_v24_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Length
lseg_turquoise_mifid_gtp_v24_4.length = {}

-- Size: Length
lseg_turquoise_mifid_gtp_v24_4.length.size = 2

-- Display: Length
lseg_turquoise_mifid_gtp_v24_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_turquoise_mifid_gtp_v24_4.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_turquoise_mifid_gtp_v24_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_turquoise_mifid_gtp_v24_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.length, range, value, display)

  return offset + length, value
end

-- Unit Header
lseg_turquoise_mifid_gtp_v24_4.unit_header = {}

-- Calculate size of: Unit Header
lseg_turquoise_mifid_gtp_v24_4.unit_header.size = function(buffer, offset)
  local index = 0

  index = index + lseg_turquoise_mifid_gtp_v24_4.length.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.message_count.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.market_data_group.size

  index = index + lseg_turquoise_mifid_gtp_v24_4.sequence_number.size

  return index
end

-- Display: Unit Header
lseg_turquoise_mifid_gtp_v24_4.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_turquoise_mifid_gtp_v24_4.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_turquoise_mifid_gtp_v24_4.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_turquoise_mifid_gtp_v24_4.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_turquoise_mifid_gtp_v24_4.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_turquoise_mifid_gtp_v24_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_turquoise_mifid_gtp_v24_4.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4.fields.unit_header, buffer(offset, 0))
    local index = lseg_turquoise_mifid_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_turquoise_mifid_gtp_v24_4.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_turquoise_mifid_gtp_v24_4.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_turquoise_mifid_gtp_v24_4.packet = {}

-- Dissect Packet
lseg_turquoise_mifid_gtp_v24_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_turquoise_mifid_gtp_v24_4.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = lseg_turquoise_mifid_gtp_v24_4.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_turquoise_mifid_gtp_v24_4.init()
end

-- Dissector for Lseg Turquoise Mifid Gtp 24.4
function omi_lseg_turquoise_mifid_gtp_v24_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_turquoise_mifid_gtp_v24_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_turquoise_mifid_gtp_v24_4, buffer(), omi_lseg_turquoise_mifid_gtp_v24_4.description, "("..buffer:len().." Bytes)")
  return lseg_turquoise_mifid_gtp_v24_4.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_lseg_turquoise_mifid_gtp_v24_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
lseg_turquoise_mifid_gtp_v24_4.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg Turquoise Mifid Gtp 24.4
local function omi_lseg_turquoise_mifid_gtp_v24_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_turquoise_mifid_gtp_v24_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_turquoise_mifid_gtp_v24_4
  omi_lseg_turquoise_mifid_gtp_v24_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Turquoise Mifid Gtp 24.4
omi_lseg_turquoise_mifid_gtp_v24_4:register_heuristic("udp", omi_lseg_turquoise_mifid_gtp_v24_4_heuristic)

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
