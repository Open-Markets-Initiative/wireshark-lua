-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Options MarketDataFeed Csm 1.4.2 Protocol
local omi_cboe_options_marketdatafeed_csm_v1_4_2 = Proto("Cboe.Options.MarketDataFeed.Csm.v1.4.2.Lua", "Cboe Options MarketDataFeed Csm 1.4.2")

-- Protocol table
local cboe_options_marketdatafeed_csm_v1_4_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Options MarketDataFeed Csm 1.4.2 Fields
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "cboe.options.marketdatafeed.csm.v1.4.2.applseqnum", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.class_key = ProtoField.new("Class Key", "cboe.options.marketdatafeed.csm.v1.4.2.classkey", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.contract_size = ProtoField.new("Contract Size", "cboe.options.marketdatafeed.csm.v1.4.2.contractsize", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code = ProtoField.new("Currency Code", "cboe.options.marketdatafeed.csm.v1.4.2.currencycode", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code_length = ProtoField.new("Currency Code Length", "cboe.options.marketdatafeed.csm.v1.4.2.currencycodelength", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code_text = ProtoField.new("Currency Code Text", "cboe.options.marketdatafeed.csm.v1.4.2.currencycodetext", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eop = ProtoField.new("Eop", "cboe.options.marketdatafeed.csm.v1.4.2.eop", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_exponent = ProtoField.new("Eop Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.eopexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_mantissa = ProtoField.new("Eop Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.eopmantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_type = ProtoField.new("Eop Type", "cboe.options.marketdatafeed.csm.v1.4.2.eoptype", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eos = ProtoField.new("Eos", "cboe.options.marketdatafeed.csm.v1.4.2.eos", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.exercise_style = ProtoField.new("Exercise Style", "cboe.options.marketdatafeed.csm.v1.4.2.exercisestyle", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.first_msg_seq_num = ProtoField.new("First Msg Seq Num", "cboe.options.marketdatafeed.csm.v1.4.2.firstmsgseqnum", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_md_entry = ProtoField.new("Index Value Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.indexvaluemdentry", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cboe.options.marketdatafeed.csm.v1.4.2.legratioqty", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_security_id = ProtoField.new("Leg Security Id", "cboe.options.marketdatafeed.csm.v1.4.2.legsecurityid", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_side = ProtoField.new("Leg Side", "cboe.options.marketdatafeed.csm.v1.4.2.legside", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.legal_market = ProtoField.new("Legal Market", "cboe.options.marketdatafeed.csm.v1.4.2.legalmarket", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.options.marketdatafeed.csm.v1.4.2.maturitydate", ftypes.UINT64)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price = ProtoField.new("Max Strike Price", "cboe.options.marketdatafeed.csm.v1.4.2.maxstrikeprice", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price_exponent = ProtoField.new("Max Strike Price Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.maxstrikepriceexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price_mantissa = ProtoField.new("Max Strike Price Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.maxstrikepricemantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_control_type = ProtoField.new("Md Control Type", "cboe.options.marketdatafeed.csm.v1.4.2.mdcontroltype", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry = ProtoField.new("Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.mdentry", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px = ProtoField.new("Md Entry Px", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrypx", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px_exponent = ProtoField.new("Md Entry Px Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrypxexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px_mantissa = ProtoField.new("Md Entry Px Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrypxmantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_size = ProtoField.new("Md Entry Size", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrysize", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_type = ProtoField.new("Md Entry Type", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrytype", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_volume_type = ProtoField.new("Md Volume Type", "cboe.options.marketdatafeed.csm.v1.4.2.mdvolumetype", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message = ProtoField.new("Message", "cboe.options.marketdatafeed.csm.v1.4.2.message", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_count = ProtoField.new("Message Count", "cboe.options.marketdatafeed.csm.v1.4.2.messagecount", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_header = ProtoField.new("Message Header", "cboe.options.marketdatafeed.csm.v1.4.2.messageheader", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_length = ProtoField.new("Message Length", "cboe.options.marketdatafeed.csm.v1.4.2.messagelength", ftypes.UINT16)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_type = ProtoField.new("Message Type", "cboe.options.marketdatafeed.csm.v1.4.2.messagetype", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction = ProtoField.new("Minimum Above Premium Fraction", "cboe.options.marketdatafeed.csm.v1.4.2.minimumabovepremiumfraction", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction_exponent = ProtoField.new("Minimum Above Premium Fraction Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.minimumabovepremiumfractionexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction_mantissa = ProtoField.new("Minimum Above Premium Fraction Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.minimumabovepremiumfractionmantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction = ProtoField.new("Minimum Below Premium Fraction", "cboe.options.marketdatafeed.csm.v1.4.2.minimumbelowpremiumfraction", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction_exponent = ProtoField.new("Minimum Below Premium Fraction Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.minimumbelowpremiumfractionexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction_mantissa = ProtoField.new("Minimum Below Premium Fraction Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.minimumbelowpremiumfractionmantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction = ProtoField.new("Minimum Strike Price Fraction", "cboe.options.marketdatafeed.csm.v1.4.2.minimumstrikepricefraction", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction_exponent = ProtoField.new("Minimum Strike Price Fraction Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.minimumstrikepricefractionexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction_mantissa = ProtoField.new("Minimum Strike Price Fraction Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.minimumstrikepricefractionmantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "cboe.options.marketdatafeed.csm.v1.4.2.msgseqnum", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "cboe.options.marketdatafeed.csm.v1.4.2.netchgprevday", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day_exponent = ProtoField.new("Net Chg Prev Day Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.netchgprevdayexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day_mantissa = ProtoField.new("Net Chg Prev Day Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.netchgprevdaymantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.no_entries = ProtoField.new("No Entries", "cboe.options.marketdatafeed.csm.v1.4.2.noentries", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.no_legs = ProtoField.new("No Legs", "cboe.options.marketdatafeed.csm.v1.4.2.nolegs", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.open_interest = ProtoField.new("Open Interest", "cboe.options.marketdatafeed.csm.v1.4.2.openinterest", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.packet = ProtoField.new("Packet", "cboe.options.marketdatafeed.csm.v1.4.2.packet", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.packet_header = ProtoField.new("Packet Header", "cboe.options.marketdatafeed.csm.v1.4.2.packetheader", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.packet_length = ProtoField.new("Packet Length", "cboe.options.marketdatafeed.csm.v1.4.2.packetlength", ftypes.UINT16)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.payload = ProtoField.new("Payload", "cboe.options.marketdatafeed.csm.v1.4.2.payload", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point = ProtoField.new("Premium Break Point", "cboe.options.marketdatafeed.csm.v1.4.2.premiumbreakpoint", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point_exponent = ProtoField.new("Premium Break Point Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.premiumbreakpointexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point_mantissa = ProtoField.new("Premium Break Point Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.premiumbreakpointmantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px = ProtoField.new("Prev Close Px", "cboe.options.marketdatafeed.csm.v1.4.2.prevclosepx", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px_exponent = ProtoField.new("Prev Close Px Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.prevclosepxexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px_mantissa = ProtoField.new("Prev Close Px Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.prevclosepxmantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.price_type = ProtoField.new("Price Type", "cboe.options.marketdatafeed.csm.v1.4.2.pricetype", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.put_or_call = ProtoField.new("Put Or Call", "cboe.options.marketdatafeed.csm.v1.4.2.putorcall", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_md_entry = ProtoField.new("Recap Update Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.recapupdatemdentry", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_leg = ProtoField.new("Security Definition Leg", "cboe.options.marketdatafeed.csm.v1.4.2.securitydefinitionleg", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_exchange = ProtoField.new("Security Exchange", "cboe.options.marketdatafeed.csm.v1.4.2.securityexchange", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_id = ProtoField.new("Security Id", "cboe.options.marketdatafeed.csm.v1.4.2.securityid", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_trading_status = ProtoField.new("Security Trading Status", "cboe.options.marketdatafeed.csm.v1.4.2.securitytradingstatus", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type = ProtoField.new("Security Type", "cboe.options.marketdatafeed.csm.v1.4.2.securitytype", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type_length = ProtoField.new("Security Type Length", "cboe.options.marketdatafeed.csm.v1.4.2.securitytypelength", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type_text = ProtoField.new("Security Type Text", "cboe.options.marketdatafeed.csm.v1.4.2.securitytypetext", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.sending_time = ProtoField.new("Sending Time", "cboe.options.marketdatafeed.csm.v1.4.2.sendingtime", ftypes.UINT64)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_md_entry = ProtoField.new("Settlement Value Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.settlementvaluemdentry", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price = ProtoField.new("Strike Price", "cboe.options.marketdatafeed.csm.v1.4.2.strikeprice", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price_exponent = ProtoField.new("Strike Price Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.strikepriceexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price_mantissa = ProtoField.new("Strike Price Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.strikepricemantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_md_entry = ProtoField.new("Summary Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.summarymdentry", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol = ProtoField.new("Symbol", "cboe.options.marketdatafeed.csm.v1.4.2.symbol", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol_length = ProtoField.new("Symbol Length", "cboe.options.marketdatafeed.csm.v1.4.2.symbollength", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol_text = ProtoField.new("Symbol Text", "cboe.options.marketdatafeed.csm.v1.4.2.symboltext", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id = ProtoField.new("Target Location Id", "cboe.options.marketdatafeed.csm.v1.4.2.targetlocationid", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id_length = ProtoField.new("Target Location Id Length", "cboe.options.marketdatafeed.csm.v1.4.2.targetlocationidlength", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id_text = ProtoField.new("Target Location Id Text", "cboe.options.marketdatafeed.csm.v1.4.2.targetlocationidtext", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.template_id = ProtoField.new("Template Id", "cboe.options.marketdatafeed.csm.v1.4.2.templateid", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_md_entry = ProtoField.new("Ticker Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.tickermdentry", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.options.marketdatafeed.csm.v1.4.2.tradecondition", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition_length = ProtoField.new("Trade Condition Length", "cboe.options.marketdatafeed.csm.v1.4.2.tradeconditionlength", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition_text = ProtoField.new("Trade Condition Text", "cboe.options.marketdatafeed.csm.v1.4.2.tradeconditiontext", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_volume = ProtoField.new("Trade Volume", "cboe.options.marketdatafeed.csm.v1.4.2.tradevolume", ftypes.UINT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px = ProtoField.new("Underlying Px", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingpx", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px_exponent = ProtoField.new("Underlying Px Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingpxexponent", ftypes.INT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px_mantissa = ProtoField.new("Underlying Px Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingpxmantissa", ftypes.INT32)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingsymbol", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol_length = ProtoField.new("Underlying Symbol Length", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingsymbollength", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol_text = ProtoField.new("Underlying Symbol Text", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingsymboltext", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type = ProtoField.new("Underlying Type", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingtype", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type_length = ProtoField.new("Underlying Type Length", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingtypelength", ftypes.UINT8)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type_text = ProtoField.new("Underlying Type Text", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingtypetext", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.version = ProtoField.new("Version", "cboe.options.marketdatafeed.csm.v1.4.2.version", ftypes.UINT8)

-- Cboe Options MarketDataFeed Csm 1.4.2 messages
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.current_market_refresh_message = ProtoField.new("Current Market Refresh Message", "cboe.options.marketdatafeed.csm.v1.4.2.currentmarketrefreshmessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.current_market_update_message = ProtoField.new("Current Market Update Message", "cboe.options.marketdatafeed.csm.v1.4.2.currentmarketupdatemessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.expected_opening_price_and_size_message = ProtoField.new("Expected Opening Price And Size Message", "cboe.options.marketdatafeed.csm.v1.4.2.expectedopeningpriceandsizemessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_message = ProtoField.new("Index Value Message", "cboe.options.marketdatafeed.csm.v1.4.2.indexvaluemessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.market_data_control_message = ProtoField.new("Market Data Control Message", "cboe.options.marketdatafeed.csm.v1.4.2.marketdatacontrolmessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.market_data_refresh_message = ProtoField.new("Market Data Refresh Message", "cboe.options.marketdatafeed.csm.v1.4.2.marketdatarefreshmessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_message = ProtoField.new("Recap Update Message", "cboe.options.marketdatafeed.csm.v1.4.2.recapupdatemessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_message = ProtoField.new("Security Definition Message", "cboe.options.marketdatafeed.csm.v1.4.2.securitydefinitionmessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_message = ProtoField.new("Settlement Value Message", "cboe.options.marketdatafeed.csm.v1.4.2.settlementvaluemessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_message = ProtoField.new("Summary Message", "cboe.options.marketdatafeed.csm.v1.4.2.summarymessage", ftypes.STRING)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_message = ProtoField.new("Ticker Message", "cboe.options.marketdatafeed.csm.v1.4.2.tickermessage", ftypes.STRING)

-- Cboe Options MarketDataFeed Csm 1.4.2 generated fields
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_md_entry_index = ProtoField.new("Index Value Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.indexvaluemdentryindex", ftypes.UINT16)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_index = ProtoField.new("Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.mdentryindex", ftypes.UINT16)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_index = ProtoField.new("Message Index", "cboe.options.marketdatafeed.csm.v1.4.2.messageindex", ftypes.UINT16)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_md_entry_index = ProtoField.new("Recap Update Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.recapupdatemdentryindex", ftypes.UINT16)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_leg_index = ProtoField.new("Security Definition Leg Index", "cboe.options.marketdatafeed.csm.v1.4.2.securitydefinitionlegindex", ftypes.UINT16)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_md_entry_index = ProtoField.new("Settlement Value Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.settlementvaluemdentryindex", ftypes.UINT16)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_md_entry_index = ProtoField.new("Summary Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.summarymdentryindex", ftypes.UINT16)
omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_md_entry_index = ProtoField.new("Ticker Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.tickermdentryindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Options MarketDataFeed Csm 1.4.2 Element Dissection Options
show.currency_code = true
show.current_market_refresh_message = true
show.current_market_update_message = true
show.eop = true
show.expected_opening_price_and_size_message = true
show.index_value_md_entry = true
show.index_value_message = true
show.market_data_control_message = true
show.market_data_refresh_message = true
show.max_strike_price = true
show.md_entry = true
show.md_entry_px = true
show.message = true
show.message_header = true
show.minimum_above_premium_fraction = true
show.minimum_below_premium_fraction = true
show.minimum_strike_price_fraction = true
show.net_chg_prev_day = true
show.packet = true
show.packet_header = true
show.premium_break_point = true
show.prev_close_px = true
show.recap_update_md_entry = true
show.recap_update_message = true
show.security_definition_leg = true
show.security_definition_message = true
show.security_type = true
show.settlement_value_md_entry = true
show.settlement_value_message = true
show.strike_price = true
show.summary_md_entry = true
show.summary_message = true
show.symbol = true
show.target_location_id = true
show.ticker_md_entry = true
show.ticker_message = true
show.trade_condition = true
show.underlying_px = true
show.underlying_symbol = true
show.underlying_type = true
show.payload = false

-- Register Cboe Options MarketDataFeed Csm 1.4.2 Show Options
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_currency_code = Pref.bool("Show Currency Code", show.currency_code, "Parse and add Currency Code to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_refresh_message = Pref.bool("Show Current Market Refresh Message", show.current_market_refresh_message, "Parse and add Current Market Refresh Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_update_message = Pref.bool("Show Current Market Update Message", show.current_market_update_message, "Parse and add Current Market Update Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_eop = Pref.bool("Show Eop", show.eop, "Parse and add Eop to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_expected_opening_price_and_size_message = Pref.bool("Show Expected Opening Price And Size Message", show.expected_opening_price_and_size_message, "Parse and add Expected Opening Price And Size Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_md_entry = Pref.bool("Show Index Value Md Entry", show.index_value_md_entry, "Parse and add Index Value Md Entry to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_message = Pref.bool("Show Index Value Message", show.index_value_message, "Parse and add Index Value Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_control_message = Pref.bool("Show Market Data Control Message", show.market_data_control_message, "Parse and add Market Data Control Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_refresh_message = Pref.bool("Show Market Data Refresh Message", show.market_data_refresh_message, "Parse and add Market Data Refresh Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_max_strike_price = Pref.bool("Show Max Strike Price", show.max_strike_price, "Parse and add Max Strike Price to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry = Pref.bool("Show Md Entry", show.md_entry, "Parse and add Md Entry to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry_px = Pref.bool("Show Md Entry Px", show.md_entry_px, "Parse and add Md Entry Px to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_above_premium_fraction = Pref.bool("Show Minimum Above Premium Fraction", show.minimum_above_premium_fraction, "Parse and add Minimum Above Premium Fraction to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_below_premium_fraction = Pref.bool("Show Minimum Below Premium Fraction", show.minimum_below_premium_fraction, "Parse and add Minimum Below Premium Fraction to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_strike_price_fraction = Pref.bool("Show Minimum Strike Price Fraction", show.minimum_strike_price_fraction, "Parse and add Minimum Strike Price Fraction to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_net_chg_prev_day = Pref.bool("Show Net Chg Prev Day", show.net_chg_prev_day, "Parse and add Net Chg Prev Day to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_premium_break_point = Pref.bool("Show Premium Break Point", show.premium_break_point, "Parse and add Premium Break Point to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_prev_close_px = Pref.bool("Show Prev Close Px", show.prev_close_px, "Parse and add Prev Close Px to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_md_entry = Pref.bool("Show Recap Update Md Entry", show.recap_update_md_entry, "Parse and add Recap Update Md Entry to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_message = Pref.bool("Show Recap Update Message", show.recap_update_message, "Parse and add Recap Update Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_leg = Pref.bool("Show Security Definition Leg", show.security_definition_leg, "Parse and add Security Definition Leg to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_message = Pref.bool("Show Security Definition Message", show.security_definition_message, "Parse and add Security Definition Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_type = Pref.bool("Show Security Type", show.security_type, "Parse and add Security Type to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_md_entry = Pref.bool("Show Settlement Value Md Entry", show.settlement_value_md_entry, "Parse and add Settlement Value Md Entry to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_message = Pref.bool("Show Settlement Value Message", show.settlement_value_message, "Parse and add Settlement Value Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_strike_price = Pref.bool("Show Strike Price", show.strike_price, "Parse and add Strike Price to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_md_entry = Pref.bool("Show Summary Md Entry", show.summary_md_entry, "Parse and add Summary Md Entry to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_message = Pref.bool("Show Summary Message", show.summary_message, "Parse and add Summary Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_symbol = Pref.bool("Show Symbol", show.symbol, "Parse and add Symbol to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_target_location_id = Pref.bool("Show Target Location Id", show.target_location_id, "Parse and add Target Location Id to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_md_entry = Pref.bool("Show Ticker Md Entry", show.ticker_md_entry, "Parse and add Ticker Md Entry to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_message = Pref.bool("Show Ticker Message", show.ticker_message, "Parse and add Ticker Message to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_trade_condition = Pref.bool("Show Trade Condition", show.trade_condition, "Parse and add Trade Condition to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_px = Pref.bool("Show Underlying Px", show.underlying_px, "Parse and add Underlying Px to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_symbol = Pref.bool("Show Underlying Symbol", show.underlying_symbol, "Parse and add Underlying Symbol to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_type = Pref.bool("Show Underlying Type", show.underlying_type, "Parse and add Underlying Type to protocol tree")
omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.currency_code ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_currency_code then
    show.currency_code = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_currency_code
    changed = true
  end
  if show.current_market_refresh_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_refresh_message then
    show.current_market_refresh_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_refresh_message
    changed = true
  end
  if show.current_market_update_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_update_message then
    show.current_market_update_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_update_message
    changed = true
  end
  if show.eop ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_eop then
    show.eop = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_eop
    changed = true
  end
  if show.expected_opening_price_and_size_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_expected_opening_price_and_size_message then
    show.expected_opening_price_and_size_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_expected_opening_price_and_size_message
    changed = true
  end
  if show.index_value_md_entry ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_md_entry then
    show.index_value_md_entry = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_md_entry
    changed = true
  end
  if show.index_value_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_message then
    show.index_value_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_message
    changed = true
  end
  if show.market_data_control_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_control_message then
    show.market_data_control_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_control_message
    changed = true
  end
  if show.market_data_refresh_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_refresh_message then
    show.market_data_refresh_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_refresh_message
    changed = true
  end
  if show.max_strike_price ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_max_strike_price then
    show.max_strike_price = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_max_strike_price
    changed = true
  end
  if show.md_entry ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry then
    show.md_entry = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry
    changed = true
  end
  if show.md_entry_px ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry_px then
    show.md_entry_px = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry_px
    changed = true
  end
  if show.message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message then
    show.message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message_header then
    show.message_header = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message_header
    changed = true
  end
  if show.minimum_above_premium_fraction ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_above_premium_fraction then
    show.minimum_above_premium_fraction = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_above_premium_fraction
    changed = true
  end
  if show.minimum_below_premium_fraction ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_below_premium_fraction then
    show.minimum_below_premium_fraction = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_below_premium_fraction
    changed = true
  end
  if show.minimum_strike_price_fraction ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_strike_price_fraction then
    show.minimum_strike_price_fraction = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_strike_price_fraction
    changed = true
  end
  if show.net_chg_prev_day ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_net_chg_prev_day then
    show.net_chg_prev_day = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_net_chg_prev_day
    changed = true
  end
  if show.packet ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet then
    show.packet = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet_header then
    show.packet_header = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet_header
    changed = true
  end
  if show.premium_break_point ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_premium_break_point then
    show.premium_break_point = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_premium_break_point
    changed = true
  end
  if show.prev_close_px ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_prev_close_px then
    show.prev_close_px = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_prev_close_px
    changed = true
  end
  if show.recap_update_md_entry ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_md_entry then
    show.recap_update_md_entry = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_md_entry
    changed = true
  end
  if show.recap_update_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_message then
    show.recap_update_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_message
    changed = true
  end
  if show.security_definition_leg ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_leg then
    show.security_definition_leg = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_leg
    changed = true
  end
  if show.security_definition_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_message then
    show.security_definition_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_message
    changed = true
  end
  if show.security_type ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_type then
    show.security_type = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_type
    changed = true
  end
  if show.settlement_value_md_entry ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_md_entry then
    show.settlement_value_md_entry = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_md_entry
    changed = true
  end
  if show.settlement_value_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_message then
    show.settlement_value_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_message
    changed = true
  end
  if show.strike_price ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_strike_price then
    show.strike_price = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_strike_price
    changed = true
  end
  if show.summary_md_entry ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_md_entry then
    show.summary_md_entry = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_md_entry
    changed = true
  end
  if show.summary_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_message then
    show.summary_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_message
    changed = true
  end
  if show.symbol ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_symbol then
    show.symbol = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_symbol
    changed = true
  end
  if show.target_location_id ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_target_location_id then
    show.target_location_id = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_target_location_id
    changed = true
  end
  if show.ticker_md_entry ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_md_entry then
    show.ticker_md_entry = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_md_entry
    changed = true
  end
  if show.ticker_message ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_message then
    show.ticker_message = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_message
    changed = true
  end
  if show.trade_condition ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_trade_condition then
    show.trade_condition = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_trade_condition
    changed = true
  end
  if show.underlying_px ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_px then
    show.underlying_px = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_px
    changed = true
  end
  if show.underlying_symbol ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_symbol then
    show.underlying_symbol = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_symbol
    changed = true
  end
  if show.underlying_type ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_type then
    show.underlying_type = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_type
    changed = true
  end
  if show.payload ~= omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_payload then
    show.payload = omi_cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Options MarketDataFeed Csm 1.4.2
-----------------------------------------------------------------------

-- Md Control Type
cboe_options_marketdatafeed_csm_v1_4_2.md_control_type = {}

-- Size: Md Control Type
cboe_options_marketdatafeed_csm_v1_4_2.md_control_type.size = 1

-- Display: Md Control Type
cboe_options_marketdatafeed_csm_v1_4_2.md_control_type.display = function(value)
  if value == 0 then
    return "Md Control Type: Start Of Summary (0)"
  end
  if value == 1 then
    return "Md Control Type: End Of Summary (1)"
  end
  if value == 2 then
    return "Md Control Type: Start Of Settlement (2)"
  end
  if value == 3 then
    return "Md Control Type: End Of Settlement (3)"
  end

  return "Md Control Type: Unknown("..value..")"
end

-- Dissect: Md Control Type
cboe_options_marketdatafeed_csm_v1_4_2.md_control_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.md_control_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.md_control_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_control_type, range, value, display)

  return offset + length, value
end

-- Market Data Control Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message = {}

-- Calculate size of: Market Data Control Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_control_type.size

  return index
end

-- Display: Market Data Control Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Control Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, md_control_type = cboe_options_marketdatafeed_csm_v1_4_2.md_control_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Control Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message.dissect = function(buffer, offset, packet, parent)
  if show.market_data_control_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.market_data_control_message, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_mantissa = {}

-- Size: Md Entry Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_mantissa.size = 4

-- Display: Md Entry Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_mantissa.display = function(value)
  return "Md Entry Px Mantissa: "..value
end

-- Dissect: Md Entry Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px_mantissa, range, value, display)

  return offset + length, value
end

-- Md Entry Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_exponent = {}

-- Size: Md Entry Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_exponent.size = 1

-- Display: Md Entry Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_exponent.display = function(value)
  return "Md Entry Px Exponent: "..value
end

-- Dissect: Md Entry Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px_exponent, range, value, display)

  return offset + length, value
end

-- Md Entry Px
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px = {}

-- Calculate size of: Md Entry Px
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_mantissa.size

  return index
end

-- Display: Md Entry Px
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entry Px
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Exponent: 1 Byte Signed Fixed Width Integer
  index, md_entry_px_exponent = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_exponent.dissect(buffer, index, packet, parent)

  -- Md Entry Px Mantissa: 4 Byte Signed Fixed Width Integer
  index, md_entry_px_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entry Px
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.dissect = function(buffer, offset, packet, parent)
  if show.md_entry_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Type
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type = {}

-- Size: Md Entry Type
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.size = 1

-- Display: Md Entry Type
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.display = function(value)
  if value == "0" then
    return "Md Entry Type: Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type: Ask (1)"
  end
  if value == "2" then
    return "Md Entry Type: Trade (2)"
  end
  if value == "3" then
    return "Md Entry Type: Index Value (3)"
  end
  if value == "4" then
    return "Md Entry Type: Opening Price (4)"
  end
  if value == "6" then
    return "Md Entry Type: Settlement Value (6)"
  end
  if value == "7" then
    return "Md Entry Type: High (7)"
  end
  if value == "8" then
    return "Md Entry Type: Low (8)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Summary Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.summary_md_entry = {}

-- Calculate size of: Summary Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.summary_md_entry.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.size(buffer, offset + index)

  return index
end

-- Display: Summary Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.summary_md_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Summary Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.summary_md_entry.fields = function(buffer, offset, packet, parent, summary_md_entry_index)
  local index = offset

  -- Implicit Summary Md Entry Index
  if summary_md_entry_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_md_entry_index, summary_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Summary Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.summary_md_entry.dissect = function(buffer, offset, packet, parent, summary_md_entry_index)
  if show.summary_md_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.summary_md_entry.fields(buffer, offset, packet, parent, summary_md_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.summary_md_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.summary_md_entry.fields(buffer, offset, packet, parent, summary_md_entry_index)
  end
end

-- No Entries
cboe_options_marketdatafeed_csm_v1_4_2.no_entries = {}

-- Size: No Entries
cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size = 1

-- Display: No Entries
cboe_options_marketdatafeed_csm_v1_4_2.no_entries.display = function(value)
  return "No Entries: "..value
end

-- Dissect: No Entries
cboe_options_marketdatafeed_csm_v1_4_2.no_entries.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.no_entries, range, value, display)

  return offset + length, value
end

-- Underlying Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_mantissa = {}

-- Size: Underlying Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_mantissa.size = 4

-- Display: Underlying Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_mantissa.display = function(value)
  return "Underlying Px Mantissa: "..value
end

-- Dissect: Underlying Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px_mantissa, range, value, display)

  return offset + length, value
end

-- Underlying Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_exponent = {}

-- Size: Underlying Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_exponent.size = 1

-- Display: Underlying Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_exponent.display = function(value)
  return "Underlying Px Exponent: "..value
end

-- Dissect: Underlying Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px_exponent, range, value, display)

  return offset + length, value
end

-- Underlying Px
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px = {}

-- Calculate size of: Underlying Px
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_mantissa.size

  return index
end

-- Display: Underlying Px
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Px
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Px Exponent: 1 Byte Signed Fixed Width Integer
  index, underlying_px_exponent = cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_exponent.dissect(buffer, index, packet, parent)

  -- Underlying Px Mantissa: 4 Byte Signed Fixed Width Integer
  index, underlying_px_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.underlying_px_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Px
cboe_options_marketdatafeed_csm_v1_4_2.underlying_px.dissect = function(buffer, offset, packet, parent)
  if show.underlying_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.underlying_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.underlying_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.underlying_px.fields(buffer, offset, packet, parent)
  end
end

-- Net Chg Prev Day Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_mantissa = {}

-- Size: Net Chg Prev Day Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_mantissa.size = 4

-- Display: Net Chg Prev Day Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_mantissa.display = function(value)
  return "Net Chg Prev Day Mantissa: "..value
end

-- Dissect: Net Chg Prev Day Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day_mantissa, range, value, display)

  return offset + length, value
end

-- Net Chg Prev Day Exponent
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_exponent = {}

-- Size: Net Chg Prev Day Exponent
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_exponent.size = 1

-- Display: Net Chg Prev Day Exponent
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_exponent.display = function(value)
  return "Net Chg Prev Day Exponent: "..value
end

-- Dissect: Net Chg Prev Day Exponent
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day_exponent, range, value, display)

  return offset + length, value
end

-- Net Chg Prev Day
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day = {}

-- Calculate size of: Net Chg Prev Day
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_mantissa.size

  return index
end

-- Display: Net Chg Prev Day
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Chg Prev Day
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Net Chg Prev Day Exponent: 1 Byte Signed Fixed Width Integer
  index, net_chg_prev_day_exponent = cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_exponent.dissect(buffer, index, packet, parent)

  -- Net Chg Prev Day Mantissa: 4 Byte Signed Fixed Width Integer
  index, net_chg_prev_day_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Chg Prev Day
cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day.dissect = function(buffer, offset, packet, parent)
  if show.net_chg_prev_day then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest
cboe_options_marketdatafeed_csm_v1_4_2.open_interest = {}

-- Size: Open Interest
cboe_options_marketdatafeed_csm_v1_4_2.open_interest.size = 4

-- Display: Open Interest
cboe_options_marketdatafeed_csm_v1_4_2.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_options_marketdatafeed_csm_v1_4_2.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.open_interest.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Trade Volume
cboe_options_marketdatafeed_csm_v1_4_2.trade_volume = {}

-- Size: Trade Volume
cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.size = 4

-- Display: Trade Volume
cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Price Type
cboe_options_marketdatafeed_csm_v1_4_2.price_type = {}

-- Size: Price Type
cboe_options_marketdatafeed_csm_v1_4_2.price_type.size = 1

-- Display: Price Type
cboe_options_marketdatafeed_csm_v1_4_2.price_type.display = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
cboe_options_marketdatafeed_csm_v1_4_2.price_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.price_type, range, value, display)

  return offset + length, value
end

-- Security Id
cboe_options_marketdatafeed_csm_v1_4_2.security_id = {}

-- Size: Security Id
cboe_options_marketdatafeed_csm_v1_4_2.security_id.size = 4

-- Display: Security Id
cboe_options_marketdatafeed_csm_v1_4_2.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Class Key
cboe_options_marketdatafeed_csm_v1_4_2.class_key = {}

-- Size: Class Key
cboe_options_marketdatafeed_csm_v1_4_2.class_key.size = 4

-- Display: Class Key
cboe_options_marketdatafeed_csm_v1_4_2.class_key.display = function(value)
  return "Class Key: "..value
end

-- Dissect: Class Key
cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.class_key.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.class_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.class_key, range, value, display)

  return offset + length, value
end

-- Summary Message
cboe_options_marketdatafeed_csm_v1_4_2.summary_message = {}

-- Calculate size of: Summary Message
cboe_options_marketdatafeed_csm_v1_4_2.summary_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.class_key.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.price_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.open_interest.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.underlying_px.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size

  -- Calculate field size from count
  local summary_md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + summary_md_entry_count * 6

  return index
end

-- Display: Summary Message
cboe_options_marketdatafeed_csm_v1_4_2.summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Summary Message
cboe_options_marketdatafeed_csm_v1_4_2.summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2.price_type.dissect(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.dissect(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Unsigned Fixed Width Integer
  index, open_interest = cboe_options_marketdatafeed_csm_v1_4_2.open_interest.dissect(buffer, index, packet, parent)

  -- Net Chg Prev Day: Struct of 2 fields
  index, net_chg_prev_day = cboe_options_marketdatafeed_csm_v1_4_2.net_chg_prev_day.dissect(buffer, index, packet, parent)

  -- Underlying Px: Struct of 2 fields
  index, underlying_px = cboe_options_marketdatafeed_csm_v1_4_2.underlying_px.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Summary Md Entry
  for summary_md_entry_index = 1, no_entries do
    index, summary_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.summary_md_entry.dissect(buffer, index, packet, parent, summary_md_entry_index)
  end

  return index
end

-- Dissect: Summary Message
cboe_options_marketdatafeed_csm_v1_4_2.summary_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.summary_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.summary_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.summary_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.summary_message.fields(buffer, offset, packet, parent)
end

-- Settlement Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_md_entry = {}

-- Calculate size of: Settlement Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_md_entry.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.size(buffer, offset + index)

  return index
end

-- Display: Settlement Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_md_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_md_entry.fields = function(buffer, offset, packet, parent, settlement_value_md_entry_index)
  local index = offset

  -- Implicit Settlement Value Md Entry Index
  if settlement_value_md_entry_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_md_entry_index, settlement_value_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_md_entry.dissect = function(buffer, offset, packet, parent, settlement_value_md_entry_index)
  if show.settlement_value_md_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_md_entry.fields(buffer, offset, packet, parent, settlement_value_md_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_md_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_md_entry.fields(buffer, offset, packet, parent, settlement_value_md_entry_index)
  end
end

-- Settlement Value Message
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message = {}

-- Calculate size of: Settlement Value Message
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.class_key.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.price_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size

  -- Calculate field size from count
  local settlement_value_md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + settlement_value_md_entry_count * 6

  return index
end

-- Display: Settlement Value Message
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Value Message
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2.price_type.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Settlement Value Md Entry
  for settlement_value_md_entry_index = 1, no_entries do
    index, settlement_value_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_md_entry.dissect(buffer, index, packet, parent, settlement_value_md_entry_index)
  end

  return index
end

-- Dissect: Settlement Value Message
cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.settlement_value_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message.fields(buffer, offset, packet, parent)
end

-- Index Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.index_value_md_entry = {}

-- Calculate size of: Index Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.index_value_md_entry.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.size(buffer, offset + index)

  return index
end

-- Display: Index Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.index_value_md_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.index_value_md_entry.fields = function(buffer, offset, packet, parent, index_value_md_entry_index)
  local index = offset

  -- Implicit Index Value Md Entry Index
  if index_value_md_entry_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_md_entry_index, index_value_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.index_value_md_entry.dissect = function(buffer, offset, packet, parent, index_value_md_entry_index)
  if show.index_value_md_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.index_value_md_entry.fields(buffer, offset, packet, parent, index_value_md_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.index_value_md_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.index_value_md_entry.fields(buffer, offset, packet, parent, index_value_md_entry_index)
  end
end

-- Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2.symbol_text = {}

-- Display: Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2.symbol_text.display = function(value)
  return "Symbol Text: "..value
end

-- Dissect runtime sized field: Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2.symbol_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.symbol_text.display(value, packet, parent, size)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol_text, range, value, display)

  return offset + size, value
end

-- Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2.symbol_length = {}

-- Size: Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2.symbol_length.size = 1

-- Display: Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2.symbol_length.display = function(value)
  return "Symbol Length: "..value
end

-- Dissect: Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2.symbol_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.symbol_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.symbol_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol_length, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_options_marketdatafeed_csm_v1_4_2.symbol = {}

-- Calculate size of: Symbol
cboe_options_marketdatafeed_csm_v1_4_2.symbol.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.symbol_length.size

  -- Parse runtime size of: Symbol Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Symbol
cboe_options_marketdatafeed_csm_v1_4_2.symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol
cboe_options_marketdatafeed_csm_v1_4_2.symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Length: 1 Byte Unsigned Fixed Width Integer
  index, symbol_length = cboe_options_marketdatafeed_csm_v1_4_2.symbol_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Symbol Text
  index, symbol_text = cboe_options_marketdatafeed_csm_v1_4_2.symbol_text.dissect(buffer, index, packet, parent, symbol_length)

  return index
end

-- Dissect: Symbol
cboe_options_marketdatafeed_csm_v1_4_2.symbol.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.symbol then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.symbol.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.symbol.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.symbol.fields(buffer, offset, packet, parent)
end

-- Index Value Message
cboe_options_marketdatafeed_csm_v1_4_2.index_value_message = {}

-- Calculate size of: Index Value Message
cboe_options_marketdatafeed_csm_v1_4_2.index_value_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.symbol.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size

  -- Calculate field size from count
  local index_value_md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + index_value_md_entry_count * 6

  return index
end

-- Display: Index Value Message
cboe_options_marketdatafeed_csm_v1_4_2.index_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Message
cboe_options_marketdatafeed_csm_v1_4_2.index_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_options_marketdatafeed_csm_v1_4_2.symbol.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Index Value Md Entry
  for index_value_md_entry_index = 1, no_entries do
    index, index_value_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.index_value_md_entry.dissect(buffer, index, packet, parent, index_value_md_entry_index)
  end

  return index
end

-- Dissect: Index Value Message
cboe_options_marketdatafeed_csm_v1_4_2.index_value_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.index_value_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.index_value_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.index_value_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.index_value_message.fields(buffer, offset, packet, parent)
end

-- Legal Market
cboe_options_marketdatafeed_csm_v1_4_2.legal_market = {}

-- Size: Legal Market
cboe_options_marketdatafeed_csm_v1_4_2.legal_market.size = 1

-- Display: Legal Market
cboe_options_marketdatafeed_csm_v1_4_2.legal_market.display = function(value)
  if value == 0 then
    return "Legal Market: Not A Legal Market (0)"
  end
  if value == 1 then
    return "Legal Market: Legal Market (1)"
  end

  return "Legal Market: Unknown("..value..")"
end

-- Dissect: Legal Market
cboe_options_marketdatafeed_csm_v1_4_2.legal_market.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.legal_market.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.legal_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.legal_market, range, value, display)

  return offset + length, value
end

-- Eop Type
cboe_options_marketdatafeed_csm_v1_4_2.eop_type = {}

-- Size: Eop Type
cboe_options_marketdatafeed_csm_v1_4_2.eop_type.size = 1

-- Display: Eop Type
cboe_options_marketdatafeed_csm_v1_4_2.eop_type.display = function(value)
  if value == 0 then
    return "Eop Type: Undefined (0)"
  end
  if value == 1 then
    return "Eop Type: Opening Price (1)"
  end
  if value == 2 then
    return "Eop Type: Need More Sellers (2)"
  end
  if value == 3 then
    return "Eop Type: Need More Buyers (3)"
  end
  if value == 4 then
    return "Eop Type: No Opening Trades (4)"
  end
  if value == 5 then
    return "Eop Type: Multiple Opening Prices (5)"
  end
  if value == 6 then
    return "Eop Type: Need Quote To Open (6)"
  end
  if value == 7 then
    return "Eop Type: Price Not In Quote Range (7)"
  end
  if value == 8 then
    return "Eop Type: Need Dpm Quote To Open (8)"
  end
  if value == 9 then
    return "Eop Type: Dpm Quote Invalid (9)"
  end
  if value == 10 then
    return "Eop Type: Price Not In Botr Range (10)"
  end

  return "Eop Type: Unknown("..value..")"
end

-- Dissect: Eop Type
cboe_options_marketdatafeed_csm_v1_4_2.eop_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.eop_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.eop_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_type, range, value, display)

  return offset + length, value
end

-- Eos
cboe_options_marketdatafeed_csm_v1_4_2.eos = {}

-- Size: Eos
cboe_options_marketdatafeed_csm_v1_4_2.eos.size = 4

-- Display: Eos
cboe_options_marketdatafeed_csm_v1_4_2.eos.display = function(value)
  return "Eos: "..value
end

-- Dissect: Eos
cboe_options_marketdatafeed_csm_v1_4_2.eos.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.eos.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.eos.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eos, range, value, display)

  return offset + length, value
end

-- Eop Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.eop_mantissa = {}

-- Size: Eop Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.eop_mantissa.size = 4

-- Display: Eop Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.eop_mantissa.display = function(value)
  return "Eop Mantissa: "..value
end

-- Dissect: Eop Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.eop_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.eop_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.eop_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_mantissa, range, value, display)

  return offset + length, value
end

-- Eop Exponent
cboe_options_marketdatafeed_csm_v1_4_2.eop_exponent = {}

-- Size: Eop Exponent
cboe_options_marketdatafeed_csm_v1_4_2.eop_exponent.size = 1

-- Display: Eop Exponent
cboe_options_marketdatafeed_csm_v1_4_2.eop_exponent.display = function(value)
  return "Eop Exponent: "..value
end

-- Dissect: Eop Exponent
cboe_options_marketdatafeed_csm_v1_4_2.eop_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.eop_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.eop_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_exponent, range, value, display)

  return offset + length, value
end

-- Eop
cboe_options_marketdatafeed_csm_v1_4_2.eop = {}

-- Calculate size of: Eop
cboe_options_marketdatafeed_csm_v1_4_2.eop.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.eop_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.eop_mantissa.size

  return index
end

-- Display: Eop
cboe_options_marketdatafeed_csm_v1_4_2.eop.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eop
cboe_options_marketdatafeed_csm_v1_4_2.eop.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Eop Exponent: 1 Byte Signed Fixed Width Integer
  index, eop_exponent = cboe_options_marketdatafeed_csm_v1_4_2.eop_exponent.dissect(buffer, index, packet, parent)

  -- Eop Mantissa: 4 Byte Signed Fixed Width Integer
  index, eop_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.eop_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eop
cboe_options_marketdatafeed_csm_v1_4_2.eop.dissect = function(buffer, offset, packet, parent)
  if show.eop then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.eop, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.eop.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.eop.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.eop.fields(buffer, offset, packet, parent)
  end
end

-- Expected Opening Price And Size Message
cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message = {}

-- Calculate size of: Expected Opening Price And Size Message
cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.class_key.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.eop.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.eos.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.eop_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.legal_market.size

  return index
end

-- Display: Expected Opening Price And Size Message
cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expected Opening Price And Size Message
cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Eop: Struct of 2 fields
  index, eop = cboe_options_marketdatafeed_csm_v1_4_2.eop.dissect(buffer, index, packet, parent)

  -- Eos: 4 Byte Unsigned Fixed Width Integer
  index, eos = cboe_options_marketdatafeed_csm_v1_4_2.eos.dissect(buffer, index, packet, parent)

  -- Eop Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, eop_type = cboe_options_marketdatafeed_csm_v1_4_2.eop_type.dissect(buffer, index, packet, parent)

  -- Legal Market: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, legal_market = cboe_options_marketdatafeed_csm_v1_4_2.legal_market.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expected Opening Price And Size Message
cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message.dissect = function(buffer, offset, packet, parent)
  if show.expected_opening_price_and_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.expected_opening_price_and_size_message, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Condition Text
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_text = {}

-- Display: Trade Condition Text
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_text.display = function(value)
  return "Trade Condition Text: "..value
end

-- Dissect runtime sized field: Trade Condition Text
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_text.display(value, packet, parent, size)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition_text, range, value, display)

  return offset + size, value
end

-- Trade Condition Length
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_length = {}

-- Size: Trade Condition Length
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_length.size = 1

-- Display: Trade Condition Length
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_length.display = function(value)
  return "Trade Condition Length: "..value
end

-- Dissect: Trade Condition Length
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition_length, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition = {}

-- Calculate size of: Trade Condition
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_length.size

  -- Parse runtime size of: Trade Condition Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Trade Condition
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Condition
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Condition Length: 1 Byte Unsigned Fixed Width Integer
  index, trade_condition_length = cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Trade Condition Text
  index, trade_condition_text = cboe_options_marketdatafeed_csm_v1_4_2.trade_condition_text.dissect(buffer, index, packet, parent, trade_condition_length)

  return index
end

-- Dissect: Trade Condition
cboe_options_marketdatafeed_csm_v1_4_2.trade_condition.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trade_condition then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.trade_condition.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.trade_condition.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.trade_condition.fields(buffer, offset, packet, parent)
end

-- Md Entry Size
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size = {}

-- Size: Md Entry Size
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.size = 4

-- Display: Md Entry Size
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.display = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Ticker Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry = {}

-- Calculate size of: Ticker Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.trade_condition.size(buffer, offset + index)

  return index
end

-- Display: Ticker Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry.fields = function(buffer, offset, packet, parent, ticker_md_entry_index)
  local index = offset

  -- Implicit Ticker Md Entry Index
  if ticker_md_entry_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_md_entry_index, ticker_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_size = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Struct of 2 fields
  index, trade_condition = cboe_options_marketdatafeed_csm_v1_4_2.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ticker Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.ticker_md_entry then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_md_entry, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry.fields(buffer, offset, packet, parent)
end

-- Ticker Message
cboe_options_marketdatafeed_csm_v1_4_2.ticker_message = {}

-- Calculate size of: Ticker Message
cboe_options_marketdatafeed_csm_v1_4_2.ticker_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.class_key.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.price_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size

  -- Calculate field size from count
  local ticker_md_entry_count = buffer(offset + index - 1, 1):uint()
  for i = 1, ticker_md_entry_count do
    index = index + cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry.size(buffer, offset + index)
  end
  return index
end

-- Display: Ticker Message
cboe_options_marketdatafeed_csm_v1_4_2.ticker_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker Message
cboe_options_marketdatafeed_csm_v1_4_2.ticker_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2.price_type.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Ticker Md Entry
  for ticker_md_entry_index = 1, no_entries do
    index, ticker_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.ticker_md_entry.dissect(buffer, index, packet, parent, ticker_md_entry_index)
  end

  return index
end

-- Dissect: Ticker Message
cboe_options_marketdatafeed_csm_v1_4_2.ticker_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.ticker_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.ticker_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.ticker_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.ticker_message.fields(buffer, offset, packet, parent)
end

-- Recap Update Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_md_entry = {}

-- Calculate size of: Recap Update Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_md_entry.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.size

  return index
end

-- Display: Recap Update Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_md_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recap Update Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_md_entry.fields = function(buffer, offset, packet, parent, recap_update_md_entry_index)
  local index = offset

  -- Implicit Recap Update Md Entry Index
  if recap_update_md_entry_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_md_entry_index, recap_update_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_size = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Recap Update Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_md_entry.dissect = function(buffer, offset, packet, parent, recap_update_md_entry_index)
  if show.recap_update_md_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.recap_update_md_entry.fields(buffer, offset, packet, parent, recap_update_md_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.recap_update_md_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.recap_update_md_entry.fields(buffer, offset, packet, parent, recap_update_md_entry_index)
  end
end

-- Prev Close Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_mantissa = {}

-- Size: Prev Close Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_mantissa.size = 4

-- Display: Prev Close Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_mantissa.display = function(value)
  return "Prev Close Px Mantissa: "..value
end

-- Dissect: Prev Close Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px_mantissa, range, value, display)

  return offset + length, value
end

-- Prev Close Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_exponent = {}

-- Size: Prev Close Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_exponent.size = 1

-- Display: Prev Close Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_exponent.display = function(value)
  return "Prev Close Px Exponent: "..value
end

-- Dissect: Prev Close Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px_exponent, range, value, display)

  return offset + length, value
end

-- Prev Close Px
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px = {}

-- Calculate size of: Prev Close Px
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_mantissa.size

  return index
end

-- Display: Prev Close Px
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prev Close Px
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prev Close Px Exponent: 1 Byte Signed Fixed Width Integer
  index, prev_close_px_exponent = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_exponent.dissect(buffer, index, packet, parent)

  -- Prev Close Px Mantissa: 4 Byte Signed Fixed Width Integer
  index, prev_close_px_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prev Close Px
cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.dissect = function(buffer, offset, packet, parent)
  if show.prev_close_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.fields(buffer, offset, packet, parent)
  end
end

-- Recap Update Message
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message = {}

-- Calculate size of: Recap Update Message
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.class_key.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.price_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size

  -- Calculate field size from count
  local recap_update_md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + recap_update_md_entry_count * 10

  return index
end

-- Display: Recap Update Message
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recap Update Message
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2.price_type.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Struct of 2 fields
  index, prev_close_px = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.dissect(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Recap Update Md Entry
  for recap_update_md_entry_index = 1, no_entries do
    index, recap_update_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.recap_update_md_entry.dissect(buffer, index, packet, parent, recap_update_md_entry_index)
  end

  return index
end

-- Dissect: Recap Update Message
cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.recap_update_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message.fields(buffer, offset, packet, parent)
end

-- Md Volume Type
cboe_options_marketdatafeed_csm_v1_4_2.md_volume_type = {}

-- Size: Md Volume Type
cboe_options_marketdatafeed_csm_v1_4_2.md_volume_type.size = 1

-- Display: Md Volume Type
cboe_options_marketdatafeed_csm_v1_4_2.md_volume_type.display = function(value)
  if value == 0 then
    return "Md Volume Type: Total Limit (0)"
  end
  if value == 1 then
    return "Md Volume Type: Customer Limit (1)"
  end
  if value == 2 then
    return "Md Volume Type: Total Contingency All Or None (2)"
  end
  if value == 3 then
    return "Md Volume Type: Customer Contingency All Or None (3)"
  end

  return "Md Volume Type: Unknown("..value..")"
end

-- Dissect: Md Volume Type
cboe_options_marketdatafeed_csm_v1_4_2.md_volume_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.md_volume_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.md_volume_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_volume_type, range, value, display)

  return offset + length, value
end

-- Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.md_entry = {}

-- Calculate size of: Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.md_entry.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.md_volume_type.size

  return index
end

-- Display: Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.md_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.md_entry.fields = function(buffer, offset, packet, parent, md_entry_index)
  local index = offset

  -- Implicit Md Entry Index
  if md_entry_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_index, md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_size = cboe_options_marketdatafeed_csm_v1_4_2.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Volume Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, md_volume_type = cboe_options_marketdatafeed_csm_v1_4_2.md_volume_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entry
cboe_options_marketdatafeed_csm_v1_4_2.md_entry.dissect = function(buffer, offset, packet, parent, md_entry_index)
  if show.md_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.md_entry.fields(buffer, offset, packet, parent, md_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.md_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.md_entry.fields(buffer, offset, packet, parent, md_entry_index)
  end
end

-- Security Trading Status
cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status = {}

-- Size: Security Trading Status
cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.size = 1

-- Display: Security Trading Status
cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.display = function(value)
  if value == 2 then
    return "Security Trading Status: Halted (2)"
  end
  if value == 17 then
    return "Security Trading Status: Open (17)"
  end
  if value == 18 then
    return "Security Trading Status: Closed (18)"
  end
  if value == 21 then
    return "Security Trading Status: Pre Open (21)"
  end
  if value == 22 then
    return "Security Trading Status: Opening Rotation (22)"
  end
  if value == 23 then
    return "Security Trading Status: Fast Market (23)"
  end
  if value == 24 then
    return "Security Trading Status: Strategy Market In Opening Rotation (24)"
  end
  if value == 25 then
    return "Security Trading Status: Strategy Market Quotes Non Firm (25)"
  end
  if value == 26 then
    return "Security Trading Status: Suspended (26)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Current Market Update Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message = {}

-- Calculate size of: Current Market Update Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.class_key.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.price_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size

  -- Calculate field size from count
  local md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entry_count * 11

  return index
end

-- Display: Current Market Update Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Current Market Update Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2.price_type.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entry
  for md_entry_index = 1, no_entries do
    index, md_entry = cboe_options_marketdatafeed_csm_v1_4_2.md_entry.dissect(buffer, index, packet, parent, md_entry_index)
  end

  return index
end

-- Dissect: Current Market Update Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.current_market_update_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.current_market_update_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message.fields(buffer, offset, packet, parent)
end

-- Appl Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num = {}

-- Size: Appl Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num.size = 4

-- Display: Appl Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num.display = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Market Data Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message = {}

-- Calculate size of: Market Data Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.class_key.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.price_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size

  -- Calculate field size from count
  local md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entry_count * 11

  return index
end

-- Display: Market Data Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2.price_type.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, appl_seq_num = cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Struct of 2 fields
  index, prev_close_px = cboe_options_marketdatafeed_csm_v1_4_2.prev_close_px.dissect(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = cboe_options_marketdatafeed_csm_v1_4_2.trade_volume.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entry
  for md_entry_index = 1, no_entries do
    index, md_entry = cboe_options_marketdatafeed_csm_v1_4_2.md_entry.dissect(buffer, index, packet, parent, md_entry_index)
  end

  return index
end

-- Dissect: Market Data Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_data_refresh_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.market_data_refresh_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message.fields(buffer, offset, packet, parent)
end

-- Current Market Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message = {}

-- Calculate size of: Current Market Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.class_key.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.price_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.no_entries.size

  -- Calculate field size from count
  local md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entry_count * 11

  return index
end

-- Display: Current Market Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Current Market Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = cboe_options_marketdatafeed_csm_v1_4_2.security_trading_status.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2.price_type.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, appl_seq_num = cboe_options_marketdatafeed_csm_v1_4_2.appl_seq_num.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entry
  for md_entry_index = 1, no_entries do
    index, md_entry = cboe_options_marketdatafeed_csm_v1_4_2.md_entry.dissect(buffer, index, packet, parent, md_entry_index)
  end

  return index
end

-- Dissect: Current Market Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.current_market_refresh_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.current_market_refresh_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message.fields(buffer, offset, packet, parent)
end

-- Leg Side
cboe_options_marketdatafeed_csm_v1_4_2.leg_side = {}

-- Size: Leg Side
cboe_options_marketdatafeed_csm_v1_4_2.leg_side.size = 1

-- Display: Leg Side
cboe_options_marketdatafeed_csm_v1_4_2.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: Buy Bid (B)"
  end
  if value == "S" then
    return "Leg Side: Sell Ask (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cboe_options_marketdatafeed_csm_v1_4_2.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Security Id
cboe_options_marketdatafeed_csm_v1_4_2.leg_security_id = {}

-- Size: Leg Security Id
cboe_options_marketdatafeed_csm_v1_4_2.leg_security_id.size = 4

-- Display: Leg Security Id
cboe_options_marketdatafeed_csm_v1_4_2.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
cboe_options_marketdatafeed_csm_v1_4_2.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
cboe_options_marketdatafeed_csm_v1_4_2.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
cboe_options_marketdatafeed_csm_v1_4_2.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
cboe_options_marketdatafeed_csm_v1_4_2.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cboe_options_marketdatafeed_csm_v1_4_2.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Security Definition Leg
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_leg = {}

-- Calculate size of: Security Definition Leg
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_leg.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.leg_ratio_qty.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.leg_security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.leg_side.size

  return index
end

-- Display: Security Definition Leg
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Leg
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_leg.fields = function(buffer, offset, packet, parent, security_definition_leg_index)
  local index = offset

  -- Implicit Security Definition Leg Index
  if security_definition_leg_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_leg_index, security_definition_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = cboe_options_marketdatafeed_csm_v1_4_2.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_security_id = cboe_options_marketdatafeed_csm_v1_4_2.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 2 values
  index, leg_side = cboe_options_marketdatafeed_csm_v1_4_2.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Leg
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_leg.dissect = function(buffer, offset, packet, parent, security_definition_leg_index)
  if show.security_definition_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_leg, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.security_definition_leg.fields(buffer, offset, packet, parent, security_definition_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.security_definition_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.security_definition_leg.fields(buffer, offset, packet, parent, security_definition_leg_index)
  end
end

-- No Legs
cboe_options_marketdatafeed_csm_v1_4_2.no_legs = {}

-- Size: No Legs
cboe_options_marketdatafeed_csm_v1_4_2.no_legs.size = 1

-- Display: No Legs
cboe_options_marketdatafeed_csm_v1_4_2.no_legs.display = function(value)
  return "No Legs: "..value
end

-- Dissect: No Legs
cboe_options_marketdatafeed_csm_v1_4_2.no_legs.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.no_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.no_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.no_legs, range, value, display)

  return offset + length, value
end

-- Contract Size
cboe_options_marketdatafeed_csm_v1_4_2.contract_size = {}

-- Size: Contract Size
cboe_options_marketdatafeed_csm_v1_4_2.contract_size.size = 4

-- Display: Contract Size
cboe_options_marketdatafeed_csm_v1_4_2.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_options_marketdatafeed_csm_v1_4_2.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.contract_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Underlying Type Text
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_text = {}

-- Display: Underlying Type Text
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_text.display = function(value)
  return "Underlying Type Text: "..value
end

-- Dissect runtime sized field: Underlying Type Text
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_text.display(value, packet, parent, size)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type_text, range, value, display)

  return offset + size, value
end

-- Underlying Type Length
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_length = {}

-- Size: Underlying Type Length
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_length.size = 1

-- Display: Underlying Type Length
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_length.display = function(value)
  return "Underlying Type Length: "..value
end

-- Dissect: Underlying Type Length
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type_length, range, value, display)

  return offset + length, value
end

-- Underlying Type
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type = {}

-- Calculate size of: Underlying Type
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_length.size

  -- Parse runtime size of: Underlying Type Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Underlying Type
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Type
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Type Length: 1 Byte Unsigned Fixed Width Integer
  index, underlying_type_length = cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Underlying Type Text
  index, underlying_type_text = cboe_options_marketdatafeed_csm_v1_4_2.underlying_type_text.dissect(buffer, index, packet, parent, underlying_type_length)

  return index
end

-- Dissect: Underlying Type
cboe_options_marketdatafeed_csm_v1_4_2.underlying_type.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_type then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.underlying_type.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.underlying_type.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.underlying_type.fields(buffer, offset, packet, parent)
end

-- Underlying Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_text = {}

-- Display: Underlying Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_text.display = function(value)
  return "Underlying Symbol Text: "..value
end

-- Dissect runtime sized field: Underlying Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_text.display(value, packet, parent, size)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol_text, range, value, display)

  return offset + size, value
end

-- Underlying Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_length = {}

-- Size: Underlying Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_length.size = 1

-- Display: Underlying Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_length.display = function(value)
  return "Underlying Symbol Length: "..value
end

-- Dissect: Underlying Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol_length, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol = {}

-- Calculate size of: Underlying Symbol
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_length.size

  -- Parse runtime size of: Underlying Symbol Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Underlying Symbol
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Symbol
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Symbol Length: 1 Byte Unsigned Fixed Width Integer
  index, underlying_symbol_length = cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Underlying Symbol Text
  index, underlying_symbol_text = cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol_text.dissect(buffer, index, packet, parent, underlying_symbol_length)

  return index
end

-- Dissect: Underlying Symbol
cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_symbol then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol.fields(buffer, offset, packet, parent)
end

-- Currency Code Text
cboe_options_marketdatafeed_csm_v1_4_2.currency_code_text = {}

-- Display: Currency Code Text
cboe_options_marketdatafeed_csm_v1_4_2.currency_code_text.display = function(value)
  return "Currency Code Text: "..value
end

-- Dissect runtime sized field: Currency Code Text
cboe_options_marketdatafeed_csm_v1_4_2.currency_code_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.currency_code_text.display(value, packet, parent, size)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code_text, range, value, display)

  return offset + size, value
end

-- Currency Code Length
cboe_options_marketdatafeed_csm_v1_4_2.currency_code_length = {}

-- Size: Currency Code Length
cboe_options_marketdatafeed_csm_v1_4_2.currency_code_length.size = 1

-- Display: Currency Code Length
cboe_options_marketdatafeed_csm_v1_4_2.currency_code_length.display = function(value)
  return "Currency Code Length: "..value
end

-- Dissect: Currency Code Length
cboe_options_marketdatafeed_csm_v1_4_2.currency_code_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.currency_code_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.currency_code_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code_length, range, value, display)

  return offset + length, value
end

-- Currency Code
cboe_options_marketdatafeed_csm_v1_4_2.currency_code = {}

-- Calculate size of: Currency Code
cboe_options_marketdatafeed_csm_v1_4_2.currency_code.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.currency_code_length.size

  -- Parse runtime size of: Currency Code Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Currency Code
cboe_options_marketdatafeed_csm_v1_4_2.currency_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Currency Code
cboe_options_marketdatafeed_csm_v1_4_2.currency_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Currency Code Length: 1 Byte Unsigned Fixed Width Integer
  index, currency_code_length = cboe_options_marketdatafeed_csm_v1_4_2.currency_code_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Currency Code Text
  index, currency_code_text = cboe_options_marketdatafeed_csm_v1_4_2.currency_code_text.dissect(buffer, index, packet, parent, currency_code_length)

  return index
end

-- Dissect: Currency Code
cboe_options_marketdatafeed_csm_v1_4_2.currency_code.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.currency_code then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.currency_code.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.currency_code.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.currency_code.fields(buffer, offset, packet, parent)
end

-- Exercise Style
cboe_options_marketdatafeed_csm_v1_4_2.exercise_style = {}

-- Size: Exercise Style
cboe_options_marketdatafeed_csm_v1_4_2.exercise_style.size = 1

-- Display: Exercise Style
cboe_options_marketdatafeed_csm_v1_4_2.exercise_style.display = function(value)
  if value == 0 then
    return "Exercise Style: American (0)"
  end
  if value == 1 then
    return "Exercise Style: European (1)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
cboe_options_marketdatafeed_csm_v1_4_2.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.exercise_style.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Minimum Below Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_mantissa = {}

-- Size: Minimum Below Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_mantissa.size = 4

-- Display: Minimum Below Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_mantissa.display = function(value)
  return "Minimum Below Premium Fraction Mantissa: "..value
end

-- Dissect: Minimum Below Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Minimum Below Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_exponent = {}

-- Size: Minimum Below Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_exponent.size = 1

-- Display: Minimum Below Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_exponent.display = function(value)
  return "Minimum Below Premium Fraction Exponent: "..value
end

-- Dissect: Minimum Below Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Minimum Below Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction = {}

-- Calculate size of: Minimum Below Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_mantissa.size

  return index
end

-- Display: Minimum Below Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Below Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Below Premium Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_below_premium_fraction_exponent = cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_exponent.dissect(buffer, index, packet, parent)

  -- Minimum Below Premium Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_below_premium_fraction_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Below Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction.dissect = function(buffer, offset, packet, parent)
  if show.minimum_below_premium_fraction then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Above Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_mantissa = {}

-- Size: Minimum Above Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_mantissa.size = 4

-- Display: Minimum Above Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_mantissa.display = function(value)
  return "Minimum Above Premium Fraction Mantissa: "..value
end

-- Dissect: Minimum Above Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Minimum Above Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_exponent = {}

-- Size: Minimum Above Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_exponent.size = 1

-- Display: Minimum Above Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_exponent.display = function(value)
  return "Minimum Above Premium Fraction Exponent: "..value
end

-- Dissect: Minimum Above Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Minimum Above Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction = {}

-- Calculate size of: Minimum Above Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_mantissa.size

  return index
end

-- Display: Minimum Above Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Above Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Above Premium Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_above_premium_fraction_exponent = cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_exponent.dissect(buffer, index, packet, parent)

  -- Minimum Above Premium Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_above_premium_fraction_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Above Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction.dissect = function(buffer, offset, packet, parent)
  if show.minimum_above_premium_fraction then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction.fields(buffer, offset, packet, parent)
  end
end

-- Premium Break Point Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_mantissa = {}

-- Size: Premium Break Point Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_mantissa.size = 4

-- Display: Premium Break Point Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_mantissa.display = function(value)
  return "Premium Break Point Mantissa: "..value
end

-- Dissect: Premium Break Point Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point_mantissa, range, value, display)

  return offset + length, value
end

-- Premium Break Point Exponent
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_exponent = {}

-- Size: Premium Break Point Exponent
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_exponent.size = 1

-- Display: Premium Break Point Exponent
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_exponent.display = function(value)
  return "Premium Break Point Exponent: "..value
end

-- Dissect: Premium Break Point Exponent
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point_exponent, range, value, display)

  return offset + length, value
end

-- Premium Break Point
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point = {}

-- Calculate size of: Premium Break Point
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_mantissa.size

  return index
end

-- Display: Premium Break Point
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Premium Break Point
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Premium Break Point Exponent: 1 Byte Signed Fixed Width Integer
  index, premium_break_point_exponent = cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_exponent.dissect(buffer, index, packet, parent)

  -- Premium Break Point Mantissa: 4 Byte Signed Fixed Width Integer
  index, premium_break_point_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Premium Break Point
cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point.dissect = function(buffer, offset, packet, parent)
  if show.premium_break_point then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point.fields(buffer, offset, packet, parent)
  end
end

-- Max Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_mantissa = {}

-- Size: Max Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_mantissa.size = 4

-- Display: Max Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_mantissa.display = function(value)
  return "Max Strike Price Mantissa: "..value
end

-- Dissect: Max Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price_mantissa, range, value, display)

  return offset + length, value
end

-- Max Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_exponent = {}

-- Size: Max Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_exponent.size = 1

-- Display: Max Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_exponent.display = function(value)
  return "Max Strike Price Exponent: "..value
end

-- Dissect: Max Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price_exponent, range, value, display)

  return offset + length, value
end

-- Max Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price = {}

-- Calculate size of: Max Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_mantissa.size

  return index
end

-- Display: Max Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Max Strike Price Exponent: 1 Byte Signed Fixed Width Integer
  index, max_strike_price_exponent = cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_exponent.dissect(buffer, index, packet, parent)

  -- Max Strike Price Mantissa: 4 Byte Signed Fixed Width Integer
  index, max_strike_price_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price.dissect = function(buffer, offset, packet, parent)
  if show.max_strike_price then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Strike Price Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_mantissa = {}

-- Size: Minimum Strike Price Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_mantissa.size = 4

-- Display: Minimum Strike Price Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_mantissa.display = function(value)
  return "Minimum Strike Price Fraction Mantissa: "..value
end

-- Dissect: Minimum Strike Price Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Minimum Strike Price Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_exponent = {}

-- Size: Minimum Strike Price Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_exponent.size = 1

-- Display: Minimum Strike Price Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_exponent.display = function(value)
  return "Minimum Strike Price Fraction Exponent: "..value
end

-- Dissect: Minimum Strike Price Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Minimum Strike Price Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction = {}

-- Calculate size of: Minimum Strike Price Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_mantissa.size

  return index
end

-- Display: Minimum Strike Price Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Strike Price Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Strike Price Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_strike_price_fraction_exponent = cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_exponent.dissect(buffer, index, packet, parent)

  -- Minimum Strike Price Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_strike_price_fraction_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Strike Price Fraction
cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction.dissect = function(buffer, offset, packet, parent)
  if show.minimum_strike_price_fraction then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction.fields(buffer, offset, packet, parent)
  end
end

-- Put Or Call
cboe_options_marketdatafeed_csm_v1_4_2.put_or_call = {}

-- Size: Put Or Call
cboe_options_marketdatafeed_csm_v1_4_2.put_or_call.size = 1

-- Display: Put Or Call
cboe_options_marketdatafeed_csm_v1_4_2.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cboe_options_marketdatafeed_csm_v1_4_2.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.strike_price_mantissa = {}

-- Size: Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.strike_price_mantissa.size = 4

-- Display: Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.strike_price_mantissa.display = function(value)
  return "Strike Price Mantissa: "..value
end

-- Dissect: Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2.strike_price_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.strike_price_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.strike_price_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price_mantissa, range, value, display)

  return offset + length, value
end

-- Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2.strike_price_exponent = {}

-- Size: Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2.strike_price_exponent.size = 1

-- Display: Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2.strike_price_exponent.display = function(value)
  return "Strike Price Exponent: "..value
end

-- Dissect: Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2.strike_price_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.strike_price_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.strike_price_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price_exponent, range, value, display)

  return offset + length, value
end

-- Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.strike_price = {}

-- Calculate size of: Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.strike_price.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.strike_price_exponent.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.strike_price_mantissa.size

  return index
end

-- Display: Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.strike_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.strike_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strike Price Exponent: 1 Byte Signed Fixed Width Integer
  index, strike_price_exponent = cboe_options_marketdatafeed_csm_v1_4_2.strike_price_exponent.dissect(buffer, index, packet, parent)

  -- Strike Price Mantissa: 4 Byte Signed Fixed Width Integer
  index, strike_price_mantissa = cboe_options_marketdatafeed_csm_v1_4_2.strike_price_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price
cboe_options_marketdatafeed_csm_v1_4_2.strike_price.dissect = function(buffer, offset, packet, parent)
  if show.strike_price then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.strike_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.strike_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.strike_price.fields(buffer, offset, packet, parent)
  end
end

-- Maturity Date
cboe_options_marketdatafeed_csm_v1_4_2.maturity_date = {}

-- Size: Maturity Date
cboe_options_marketdatafeed_csm_v1_4_2.maturity_date.size = 8

-- Display: Maturity Date
cboe_options_marketdatafeed_csm_v1_4_2.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cboe_options_marketdatafeed_csm_v1_4_2.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.maturity_date.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Target Location Id Text
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_text = {}

-- Display: Target Location Id Text
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_text.display = function(value)
  return "Target Location Id Text: "..value
end

-- Dissect runtime sized field: Target Location Id Text
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_text.display(value, packet, parent, size)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id_text, range, value, display)

  return offset + size, value
end

-- Target Location Id Length
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_length = {}

-- Size: Target Location Id Length
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_length.size = 1

-- Display: Target Location Id Length
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_length.display = function(value)
  return "Target Location Id Length: "..value
end

-- Dissect: Target Location Id Length
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id_length, range, value, display)

  return offset + length, value
end

-- Target Location Id
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id = {}

-- Calculate size of: Target Location Id
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_length.size

  -- Parse runtime size of: Target Location Id Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Target Location Id
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Target Location Id
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Target Location Id Length: 1 Byte Unsigned Fixed Width Integer
  index, target_location_id_length = cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Target Location Id Text
  index, target_location_id_text = cboe_options_marketdatafeed_csm_v1_4_2.target_location_id_text.dissect(buffer, index, packet, parent, target_location_id_length)

  return index
end

-- Dissect: Target Location Id
cboe_options_marketdatafeed_csm_v1_4_2.target_location_id.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.target_location_id then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.target_location_id.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.target_location_id.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.target_location_id.fields(buffer, offset, packet, parent)
end

-- Security Exchange
cboe_options_marketdatafeed_csm_v1_4_2.security_exchange = {}

-- Size: Security Exchange
cboe_options_marketdatafeed_csm_v1_4_2.security_exchange.size = 1

-- Display: Security Exchange
cboe_options_marketdatafeed_csm_v1_4_2.security_exchange.display = function(value)
  if value == "C" then
    return "Security Exchange: Cboe (C)"
  end
  if value == "O" then
    return "Security Exchange: One Chicago Not Supported (O)"
  end
  if value == "W" then
    return "Security Exchange: Cbsx Not Supported (W)"
  end
  if value == "F" then
    return "Security Exchange: Cfecof (F)"
  end
  if value == "2" then
    return "Security Exchange: Cboe 2 Options (2)"
  end

  return "Security Exchange: Unknown("..value..")"
end

-- Dissect: Security Exchange
cboe_options_marketdatafeed_csm_v1_4_2.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.security_exchange.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Security Type Text
cboe_options_marketdatafeed_csm_v1_4_2.security_type_text = {}

-- Display: Security Type Text
cboe_options_marketdatafeed_csm_v1_4_2.security_type_text.display = function(value)
  return "Security Type Text: "..value
end

-- Dissect runtime sized field: Security Type Text
cboe_options_marketdatafeed_csm_v1_4_2.security_type_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.security_type_text.display(value, packet, parent, size)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type_text, range, value, display)

  return offset + size, value
end

-- Security Type Length
cboe_options_marketdatafeed_csm_v1_4_2.security_type_length = {}

-- Size: Security Type Length
cboe_options_marketdatafeed_csm_v1_4_2.security_type_length.size = 1

-- Display: Security Type Length
cboe_options_marketdatafeed_csm_v1_4_2.security_type_length.display = function(value)
  return "Security Type Length: "..value
end

-- Dissect: Security Type Length
cboe_options_marketdatafeed_csm_v1_4_2.security_type_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.security_type_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.security_type_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type_length, range, value, display)

  return offset + length, value
end

-- Security Type
cboe_options_marketdatafeed_csm_v1_4_2.security_type = {}

-- Calculate size of: Security Type
cboe_options_marketdatafeed_csm_v1_4_2.security_type.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_type_length.size

  -- Parse runtime size of: Security Type Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Security Type
cboe_options_marketdatafeed_csm_v1_4_2.security_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Type
cboe_options_marketdatafeed_csm_v1_4_2.security_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Type Length: 1 Byte Unsigned Fixed Width Integer
  index, security_type_length = cboe_options_marketdatafeed_csm_v1_4_2.security_type_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Security Type Text
  index, security_type_text = cboe_options_marketdatafeed_csm_v1_4_2.security_type_text.dissect(buffer, index, packet, parent, security_type_length)

  return index
end

-- Dissect: Security Type
cboe_options_marketdatafeed_csm_v1_4_2.security_type.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_type then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.security_type.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.security_type.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.security_type.fields(buffer, offset, packet, parent)
end

-- Security Definition Message
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message = {}

-- Calculate size of: Security Definition Message
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_type.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_exchange.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.symbol.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.target_location_id.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.class_key.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.security_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.maturity_date.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.price_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.strike_price.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.put_or_call.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.exercise_style.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.currency_code.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.underlying_type.size(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.contract_size.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.no_legs.size

  -- Calculate field size from count
  local security_definition_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + security_definition_leg_count * 9

  return index
end

-- Display: Security Definition Message
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Type: Struct of 2 fields
  index, security_type = cboe_options_marketdatafeed_csm_v1_4_2.security_type.dissect(buffer, index, packet, parent)

  -- Security Exchange: 1 Byte Ascii String Enum with 5 values
  index, security_exchange = cboe_options_marketdatafeed_csm_v1_4_2.security_exchange.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_options_marketdatafeed_csm_v1_4_2.symbol.dissect(buffer, index, packet, parent)

  -- Target Location Id: Struct of 2 fields
  index, target_location_id = cboe_options_marketdatafeed_csm_v1_4_2.target_location_id.dissect(buffer, index, packet, parent)

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2.security_id.dissect(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Unsigned Fixed Width Integer
  index, maturity_date = cboe_options_marketdatafeed_csm_v1_4_2.maturity_date.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2.price_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = cboe_options_marketdatafeed_csm_v1_4_2.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = cboe_options_marketdatafeed_csm_v1_4_2.put_or_call.dissect(buffer, index, packet, parent)

  -- Minimum Strike Price Fraction: Struct of 2 fields
  index, minimum_strike_price_fraction = cboe_options_marketdatafeed_csm_v1_4_2.minimum_strike_price_fraction.dissect(buffer, index, packet, parent)

  -- Max Strike Price: Struct of 2 fields
  index, max_strike_price = cboe_options_marketdatafeed_csm_v1_4_2.max_strike_price.dissect(buffer, index, packet, parent)

  -- Premium Break Point: Struct of 2 fields
  index, premium_break_point = cboe_options_marketdatafeed_csm_v1_4_2.premium_break_point.dissect(buffer, index, packet, parent)

  -- Minimum Above Premium Fraction: Struct of 2 fields
  index, minimum_above_premium_fraction = cboe_options_marketdatafeed_csm_v1_4_2.minimum_above_premium_fraction.dissect(buffer, index, packet, parent)

  -- Minimum Below Premium Fraction: Struct of 2 fields
  index, minimum_below_premium_fraction = cboe_options_marketdatafeed_csm_v1_4_2.minimum_below_premium_fraction.dissect(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, exercise_style = cboe_options_marketdatafeed_csm_v1_4_2.exercise_style.dissect(buffer, index, packet, parent)

  -- Currency Code: Struct of 2 fields
  index, currency_code = cboe_options_marketdatafeed_csm_v1_4_2.currency_code.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Struct of 2 fields
  index, underlying_symbol = cboe_options_marketdatafeed_csm_v1_4_2.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Type: Struct of 2 fields
  index, underlying_type = cboe_options_marketdatafeed_csm_v1_4_2.underlying_type.dissect(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Unsigned Fixed Width Integer
  index, contract_size = cboe_options_marketdatafeed_csm_v1_4_2.contract_size.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = cboe_options_marketdatafeed_csm_v1_4_2.no_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Security Definition Leg
  for security_definition_leg_index = 1, no_legs do
    index, security_definition_leg = cboe_options_marketdatafeed_csm_v1_4_2.security_definition_leg.dissect(buffer, index, packet, parent, security_definition_leg_index)
  end

  return index
end

-- Dissect: Security Definition Message
cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message.fields(buffer, offset, packet, parent)
end

-- Payload
cboe_options_marketdatafeed_csm_v1_4_2.payload = {}

-- Calculate runtime size of: Payload
cboe_options_marketdatafeed_csm_v1_4_2.payload.size = function(buffer, offset, template_id)
  -- Size of Security Definition Message
  if template_id == 13 then
    return cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message.size(buffer, offset)
  end
  -- Size of Current Market Refresh Message
  if template_id == 11 then
    return cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message.size(buffer, offset)
  end
  -- Size of Market Data Refresh Message
  if template_id == 20 then
    return cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message.size(buffer, offset)
  end
  -- Size of Current Market Update Message
  if template_id == 12 then
    return cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message.size(buffer, offset)
  end
  -- Size of Recap Update Message
  if template_id == 21 then
    return cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message.size(buffer, offset)
  end
  -- Size of Ticker Message
  if template_id == 14 then
    return cboe_options_marketdatafeed_csm_v1_4_2.ticker_message.size(buffer, offset)
  end
  -- Size of Expected Opening Price And Size Message
  if template_id == 15 then
    return cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message.size(buffer, offset)
  end
  -- Size of Index Value Message
  if template_id == 22 then
    return cboe_options_marketdatafeed_csm_v1_4_2.index_value_message.size(buffer, offset)
  end
  -- Size of Settlement Value Message
  if template_id == 23 then
    return cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message.size(buffer, offset)
  end
  -- Size of Summary Message
  if template_id == 24 then
    return cboe_options_marketdatafeed_csm_v1_4_2.summary_message.size(buffer, offset)
  end
  -- Size of Market Data Control Message
  if template_id == 25 then
    return cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message.size(buffer, offset)
  end
  -- Size of Heartbeat Message
  if template_id == 16 then
    return 0
  end

  return 0
end

-- Display: Payload
cboe_options_marketdatafeed_csm_v1_4_2.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_options_marketdatafeed_csm_v1_4_2.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Security Definition Message
  if template_id == 13 then
    return cboe_options_marketdatafeed_csm_v1_4_2.security_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Current Market Refresh Message
  if template_id == 11 then
    return cboe_options_marketdatafeed_csm_v1_4_2.current_market_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Data Refresh Message
  if template_id == 20 then
    return cboe_options_marketdatafeed_csm_v1_4_2.market_data_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Current Market Update Message
  if template_id == 12 then
    return cboe_options_marketdatafeed_csm_v1_4_2.current_market_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Recap Update Message
  if template_id == 21 then
    return cboe_options_marketdatafeed_csm_v1_4_2.recap_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ticker Message
  if template_id == 14 then
    return cboe_options_marketdatafeed_csm_v1_4_2.ticker_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expected Opening Price And Size Message
  if template_id == 15 then
    return cboe_options_marketdatafeed_csm_v1_4_2.expected_opening_price_and_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Value Message
  if template_id == 22 then
    return cboe_options_marketdatafeed_csm_v1_4_2.index_value_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Value Message
  if template_id == 23 then
    return cboe_options_marketdatafeed_csm_v1_4_2.settlement_value_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Summary Message
  if template_id == 24 then
    return cboe_options_marketdatafeed_csm_v1_4_2.summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Data Control Message
  if template_id == 25 then
    return cboe_options_marketdatafeed_csm_v1_4_2.market_data_control_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 16 then
  end

  return offset
end

-- Dissect: Payload
cboe_options_marketdatafeed_csm_v1_4_2.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cboe_options_marketdatafeed_csm_v1_4_2.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_options_marketdatafeed_csm_v1_4_2.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_options_marketdatafeed_csm_v1_4_2.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.payload, range, display)

  return cboe_options_marketdatafeed_csm_v1_4_2.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.msg_seq_num = {}

-- Size: Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.msg_seq_num.size = 4

-- Display: Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_options_marketdatafeed_csm_v1_4_2.message_type = {}

-- Size: Message Type
cboe_options_marketdatafeed_csm_v1_4_2.message_type.size = 1

-- Display: Message Type
cboe_options_marketdatafeed_csm_v1_4_2.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
cboe_options_marketdatafeed_csm_v1_4_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Template Id
cboe_options_marketdatafeed_csm_v1_4_2.template_id = {}

-- Size: Template Id
cboe_options_marketdatafeed_csm_v1_4_2.template_id.size = 1

-- Display: Template Id
cboe_options_marketdatafeed_csm_v1_4_2.template_id.display = function(value)
  if value == 13 then
    return "Template Id: Security Definition Message (13)"
  end
  if value == 11 then
    return "Template Id: Current Market Refresh Message (11)"
  end
  if value == 20 then
    return "Template Id: Market Data Refresh Message (20)"
  end
  if value == 12 then
    return "Template Id: Current Market Update Message (12)"
  end
  if value == 21 then
    return "Template Id: Recap Update Message (21)"
  end
  if value == 14 then
    return "Template Id: Ticker Message (14)"
  end
  if value == 15 then
    return "Template Id: Expected Opening Price And Size Message (15)"
  end
  if value == 22 then
    return "Template Id: Index Value Message (22)"
  end
  if value == 23 then
    return "Template Id: Settlement Value Message (23)"
  end
  if value == 24 then
    return "Template Id: Summary Message (24)"
  end
  if value == 25 then
    return "Template Id: Market Data Control Message (25)"
  end
  if value == 16 then
    return "Template Id: Heartbeat Message (16)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cboe_options_marketdatafeed_csm_v1_4_2.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_options_marketdatafeed_csm_v1_4_2.message_length = {}

-- Size: Message Length
cboe_options_marketdatafeed_csm_v1_4_2.message_length.size = 2

-- Display: Message Length
cboe_options_marketdatafeed_csm_v1_4_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_options_marketdatafeed_csm_v1_4_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_options_marketdatafeed_csm_v1_4_2.message_header = {}

-- Calculate size of: Message Header
cboe_options_marketdatafeed_csm_v1_4_2.message_header.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.message_length.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.template_id.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.message_type.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.msg_seq_num.size

  return index
end

-- Display: Message Header
cboe_options_marketdatafeed_csm_v1_4_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_options_marketdatafeed_csm_v1_4_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_options_marketdatafeed_csm_v1_4_2.message_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, template_id = cboe_options_marketdatafeed_csm_v1_4_2.template_id.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = cboe_options_marketdatafeed_csm_v1_4_2.message_type.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = cboe_options_marketdatafeed_csm_v1_4_2.msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_options_marketdatafeed_csm_v1_4_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_header, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_options_marketdatafeed_csm_v1_4_2.message = {}

-- Calculate size of: Message
cboe_options_marketdatafeed_csm_v1_4_2.message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.message_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 1):uint()
  index = index + cboe_options_marketdatafeed_csm_v1_4_2.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cboe_options_marketdatafeed_csm_v1_4_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_options_marketdatafeed_csm_v1_4_2.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 4 fields
  index, message_header = cboe_options_marketdatafeed_csm_v1_4_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 12 branches
  index = cboe_options_marketdatafeed_csm_v1_4_2.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cboe_options_marketdatafeed_csm_v1_4_2.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2.message.fields(buffer, offset, packet, parent)
end

-- First Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.first_msg_seq_num = {}

-- Size: First Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.first_msg_seq_num.size = 4

-- Display: First Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.first_msg_seq_num.display = function(value)
  return "First Msg Seq Num: "..value
end

-- Dissect: First Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2.first_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.first_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.first_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.first_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_options_marketdatafeed_csm_v1_4_2.message_count = {}

-- Size: Message Count
cboe_options_marketdatafeed_csm_v1_4_2.message_count.size = 1

-- Display: Message Count
cboe_options_marketdatafeed_csm_v1_4_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_options_marketdatafeed_csm_v1_4_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sending Time
cboe_options_marketdatafeed_csm_v1_4_2.sending_time = {}

-- Size: Sending Time
cboe_options_marketdatafeed_csm_v1_4_2.sending_time.size = 8

-- Display: Sending Time
cboe_options_marketdatafeed_csm_v1_4_2.sending_time.display = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
cboe_options_marketdatafeed_csm_v1_4_2.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Packet Length
cboe_options_marketdatafeed_csm_v1_4_2.packet_length = {}

-- Size: Packet Length
cboe_options_marketdatafeed_csm_v1_4_2.packet_length.size = 2

-- Display: Packet Length
cboe_options_marketdatafeed_csm_v1_4_2.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
cboe_options_marketdatafeed_csm_v1_4_2.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Version
cboe_options_marketdatafeed_csm_v1_4_2.version = {}

-- Size: Version
cboe_options_marketdatafeed_csm_v1_4_2.version.size = 1

-- Display: Version
cboe_options_marketdatafeed_csm_v1_4_2.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cboe_options_marketdatafeed_csm_v1_4_2.version.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.version, range, value, display)

  return offset + length, value
end

-- Packet Header
cboe_options_marketdatafeed_csm_v1_4_2.packet_header = {}

-- Calculate size of: Packet Header
cboe_options_marketdatafeed_csm_v1_4_2.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.version.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.packet_length.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.sending_time.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.message_count.size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2.first_msg_seq_num.size

  return index
end

-- Display: Packet Header
cboe_options_marketdatafeed_csm_v1_4_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_options_marketdatafeed_csm_v1_4_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = cboe_options_marketdatafeed_csm_v1_4_2.version.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = cboe_options_marketdatafeed_csm_v1_4_2.packet_length.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cboe_options_marketdatafeed_csm_v1_4_2.sending_time.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_options_marketdatafeed_csm_v1_4_2.message_count.dissect(buffer, index, packet, parent)

  -- First Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, first_msg_seq_num = cboe_options_marketdatafeed_csm_v1_4_2.first_msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_options_marketdatafeed_csm_v1_4_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2.fields.packet_header, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_options_marketdatafeed_csm_v1_4_2.packet = {}

-- Dissect Packet
cboe_options_marketdatafeed_csm_v1_4_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = cboe_options_marketdatafeed_csm_v1_4_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 5, 1):uint()

  -- Repeating: Message
  for message_index = 1, message_count do
    index, message = cboe_options_marketdatafeed_csm_v1_4_2.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_options_marketdatafeed_csm_v1_4_2.init()
end

-- Dissector for Cboe Options MarketDataFeed Csm 1.4.2
function omi_cboe_options_marketdatafeed_csm_v1_4_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_options_marketdatafeed_csm_v1_4_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_options_marketdatafeed_csm_v1_4_2, buffer(), omi_cboe_options_marketdatafeed_csm_v1_4_2.description, "("..buffer:len().." Bytes)")
  return cboe_options_marketdatafeed_csm_v1_4_2.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_options_marketdatafeed_csm_v1_4_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_options_marketdatafeed_csm_v1_4_2.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Options MarketDataFeed Csm 1.4.2
local function omi_cboe_options_marketdatafeed_csm_v1_4_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_options_marketdatafeed_csm_v1_4_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_options_marketdatafeed_csm_v1_4_2
  omi_cboe_options_marketdatafeed_csm_v1_4_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Options MarketDataFeed Csm 1.4.2
omi_cboe_options_marketdatafeed_csm_v1_4_2:register_heuristic("udp", omi_cboe_options_marketdatafeed_csm_v1_4_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.4.2
--   Date: Tuesday, May 8, 2018
--   Specification: cboestreamingbookdepthv1.0.pdf
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
