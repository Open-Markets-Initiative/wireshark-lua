-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Options MarketDataFeed Csm 1.4.2 Protocol
local cboe_options_marketdatafeed_csm_v1_4_2 = Proto("Cboe.Options.MarketDataFeed.Csm.v1.4.2.Lua", "Cboe Options MarketDataFeed Csm 1.4.2")

-- Component Tables
local show = {}
local format = {}
local cboe_options_marketdatafeed_csm_v1_4_2_display = {}
local cboe_options_marketdatafeed_csm_v1_4_2_dissect = {}
local cboe_options_marketdatafeed_csm_v1_4_2_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Options MarketDataFeed Csm 1.4.2 Fields
cboe_options_marketdatafeed_csm_v1_4_2.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "cboe.options.marketdatafeed.csm.v1.4.2.applseqnum", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.class_key = ProtoField.new("Class Key", "cboe.options.marketdatafeed.csm.v1.4.2.classkey", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.contract_size = ProtoField.new("Contract Size", "cboe.options.marketdatafeed.csm.v1.4.2.contractsize", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code = ProtoField.new("Currency Code", "cboe.options.marketdatafeed.csm.v1.4.2.currencycode", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code_length = ProtoField.new("Currency Code Length", "cboe.options.marketdatafeed.csm.v1.4.2.currencycodelength", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code_text = ProtoField.new("Currency Code Text", "cboe.options.marketdatafeed.csm.v1.4.2.currencycodetext", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.eop = ProtoField.new("Eop", "cboe.options.marketdatafeed.csm.v1.4.2.eop", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_exponent = ProtoField.new("Eop Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.eopexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_mantissa = ProtoField.new("Eop Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.eopmantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_type = ProtoField.new("Eop Type", "cboe.options.marketdatafeed.csm.v1.4.2.eoptype", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.eos = ProtoField.new("Eos", "cboe.options.marketdatafeed.csm.v1.4.2.eos", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.exercise_style = ProtoField.new("Exercise Style", "cboe.options.marketdatafeed.csm.v1.4.2.exercisestyle", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.first_msg_seq_num = ProtoField.new("First Msg Seq Num", "cboe.options.marketdatafeed.csm.v1.4.2.firstmsgseqnum", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_md_entry = ProtoField.new("Index Value Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.indexvaluemdentry", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cboe.options.marketdatafeed.csm.v1.4.2.legratioqty", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_security_id = ProtoField.new("Leg Security Id", "cboe.options.marketdatafeed.csm.v1.4.2.legsecurityid", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_side = ProtoField.new("Leg Side", "cboe.options.marketdatafeed.csm.v1.4.2.legside", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.legal_market = ProtoField.new("Legal Market", "cboe.options.marketdatafeed.csm.v1.4.2.legalmarket", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.options.marketdatafeed.csm.v1.4.2.maturitydate", ftypes.UINT64)
cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price = ProtoField.new("Max Strike Price", "cboe.options.marketdatafeed.csm.v1.4.2.maxstrikeprice", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price_exponent = ProtoField.new("Max Strike Price Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.maxstrikepriceexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price_mantissa = ProtoField.new("Max Strike Price Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.maxstrikepricemantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.md_control_type = ProtoField.new("Md Control Type", "cboe.options.marketdatafeed.csm.v1.4.2.mdcontroltype", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry = ProtoField.new("Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.mdentry", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px = ProtoField.new("Md Entry Px", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrypx", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px_exponent = ProtoField.new("Md Entry Px Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrypxexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px_mantissa = ProtoField.new("Md Entry Px Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrypxmantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_size = ProtoField.new("Md Entry Size", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrysize", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_type = ProtoField.new("Md Entry Type", "cboe.options.marketdatafeed.csm.v1.4.2.mdentrytype", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.md_volume_type = ProtoField.new("Md Volume Type", "cboe.options.marketdatafeed.csm.v1.4.2.mdvolumetype", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.message = ProtoField.new("Message", "cboe.options.marketdatafeed.csm.v1.4.2.message", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.message_count = ProtoField.new("Message Count", "cboe.options.marketdatafeed.csm.v1.4.2.messagecount", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.message_header = ProtoField.new("Message Header", "cboe.options.marketdatafeed.csm.v1.4.2.messageheader", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.message_length = ProtoField.new("Message Length", "cboe.options.marketdatafeed.csm.v1.4.2.messagelength", ftypes.UINT16)
cboe_options_marketdatafeed_csm_v1_4_2.fields.message_type = ProtoField.new("Message Type", "cboe.options.marketdatafeed.csm.v1.4.2.messagetype", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction = ProtoField.new("Minimum Above Premium Fraction", "cboe.options.marketdatafeed.csm.v1.4.2.minimumabovepremiumfraction", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction_exponent = ProtoField.new("Minimum Above Premium Fraction Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.minimumabovepremiumfractionexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction_mantissa = ProtoField.new("Minimum Above Premium Fraction Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.minimumabovepremiumfractionmantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction = ProtoField.new("Minimum Below Premium Fraction", "cboe.options.marketdatafeed.csm.v1.4.2.minimumbelowpremiumfraction", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction_exponent = ProtoField.new("Minimum Below Premium Fraction Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.minimumbelowpremiumfractionexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction_mantissa = ProtoField.new("Minimum Below Premium Fraction Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.minimumbelowpremiumfractionmantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction = ProtoField.new("Minimum Strike Price Fraction", "cboe.options.marketdatafeed.csm.v1.4.2.minimumstrikepricefraction", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction_exponent = ProtoField.new("Minimum Strike Price Fraction Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.minimumstrikepricefractionexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction_mantissa = ProtoField.new("Minimum Strike Price Fraction Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.minimumstrikepricefractionmantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "cboe.options.marketdatafeed.csm.v1.4.2.msgseqnum", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "cboe.options.marketdatafeed.csm.v1.4.2.netchgprevday", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day_exponent = ProtoField.new("Net Chg Prev Day Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.netchgprevdayexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day_mantissa = ProtoField.new("Net Chg Prev Day Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.netchgprevdaymantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.no_entries = ProtoField.new("No Entries", "cboe.options.marketdatafeed.csm.v1.4.2.noentries", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.no_legs = ProtoField.new("No Legs", "cboe.options.marketdatafeed.csm.v1.4.2.nolegs", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.open_interest = ProtoField.new("Open Interest", "cboe.options.marketdatafeed.csm.v1.4.2.openinterest", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.packet = ProtoField.new("Packet", "cboe.options.marketdatafeed.csm.v1.4.2.packet", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.packet_header = ProtoField.new("Packet Header", "cboe.options.marketdatafeed.csm.v1.4.2.packetheader", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.packet_length = ProtoField.new("Packet Length", "cboe.options.marketdatafeed.csm.v1.4.2.packetlength", ftypes.UINT16)
cboe_options_marketdatafeed_csm_v1_4_2.fields.payload = ProtoField.new("Payload", "cboe.options.marketdatafeed.csm.v1.4.2.payload", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point = ProtoField.new("Premium Break Point", "cboe.options.marketdatafeed.csm.v1.4.2.premiumbreakpoint", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point_exponent = ProtoField.new("Premium Break Point Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.premiumbreakpointexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point_mantissa = ProtoField.new("Premium Break Point Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.premiumbreakpointmantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px = ProtoField.new("Prev Close Px", "cboe.options.marketdatafeed.csm.v1.4.2.prevclosepx", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px_exponent = ProtoField.new("Prev Close Px Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.prevclosepxexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px_mantissa = ProtoField.new("Prev Close Px Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.prevclosepxmantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.price_type = ProtoField.new("Price Type", "cboe.options.marketdatafeed.csm.v1.4.2.pricetype", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.put_or_call = ProtoField.new("Put Or Call", "cboe.options.marketdatafeed.csm.v1.4.2.putorcall", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_md_entry = ProtoField.new("Recap Update Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.recapupdatemdentry", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_leg = ProtoField.new("Security Definition Leg", "cboe.options.marketdatafeed.csm.v1.4.2.securitydefinitionleg", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.security_exchange = ProtoField.new("Security Exchange", "cboe.options.marketdatafeed.csm.v1.4.2.securityexchange", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.security_id = ProtoField.new("Security Id", "cboe.options.marketdatafeed.csm.v1.4.2.securityid", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.security_trading_status = ProtoField.new("Security Trading Status", "cboe.options.marketdatafeed.csm.v1.4.2.securitytradingstatus", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type = ProtoField.new("Security Type", "cboe.options.marketdatafeed.csm.v1.4.2.securitytype", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type_length = ProtoField.new("Security Type Length", "cboe.options.marketdatafeed.csm.v1.4.2.securitytypelength", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type_text = ProtoField.new("Security Type Text", "cboe.options.marketdatafeed.csm.v1.4.2.securitytypetext", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.sending_time = ProtoField.new("Sending Time", "cboe.options.marketdatafeed.csm.v1.4.2.sendingtime", ftypes.UINT64)
cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_md_entry = ProtoField.new("Settlement Value Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.settlementvaluemdentry", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price = ProtoField.new("Strike Price", "cboe.options.marketdatafeed.csm.v1.4.2.strikeprice", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price_exponent = ProtoField.new("Strike Price Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.strikepriceexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price_mantissa = ProtoField.new("Strike Price Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.strikepricemantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_md_entry = ProtoField.new("Summary Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.summarymdentry", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol = ProtoField.new("Symbol", "cboe.options.marketdatafeed.csm.v1.4.2.symbol", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol_length = ProtoField.new("Symbol Length", "cboe.options.marketdatafeed.csm.v1.4.2.symbollength", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol_text = ProtoField.new("Symbol Text", "cboe.options.marketdatafeed.csm.v1.4.2.symboltext", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id = ProtoField.new("Target Location Id", "cboe.options.marketdatafeed.csm.v1.4.2.targetlocationid", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id_length = ProtoField.new("Target Location Id Length", "cboe.options.marketdatafeed.csm.v1.4.2.targetlocationidlength", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id_text = ProtoField.new("Target Location Id Text", "cboe.options.marketdatafeed.csm.v1.4.2.targetlocationidtext", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.template_id = ProtoField.new("Template Id", "cboe.options.marketdatafeed.csm.v1.4.2.templateid", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_md_entry = ProtoField.new("Ticker Md Entry", "cboe.options.marketdatafeed.csm.v1.4.2.tickermdentry", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.options.marketdatafeed.csm.v1.4.2.tradecondition", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition_length = ProtoField.new("Trade Condition Length", "cboe.options.marketdatafeed.csm.v1.4.2.tradeconditionlength", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition_text = ProtoField.new("Trade Condition Text", "cboe.options.marketdatafeed.csm.v1.4.2.tradeconditiontext", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_volume = ProtoField.new("Trade Volume", "cboe.options.marketdatafeed.csm.v1.4.2.tradevolume", ftypes.UINT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px = ProtoField.new("Underlying Px", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingpx", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px_exponent = ProtoField.new("Underlying Px Exponent", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingpxexponent", ftypes.INT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px_mantissa = ProtoField.new("Underlying Px Mantissa", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingpxmantissa", ftypes.INT32)
cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingsymbol", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol_length = ProtoField.new("Underlying Symbol Length", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingsymbollength", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol_text = ProtoField.new("Underlying Symbol Text", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingsymboltext", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type = ProtoField.new("Underlying Type", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingtype", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type_length = ProtoField.new("Underlying Type Length", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingtypelength", ftypes.UINT8)
cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type_text = ProtoField.new("Underlying Type Text", "cboe.options.marketdatafeed.csm.v1.4.2.underlyingtypetext", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.version = ProtoField.new("Version", "cboe.options.marketdatafeed.csm.v1.4.2.version", ftypes.UINT8)

-- Cboe Options MarketDataFeed Csm 1.4.2 messages
cboe_options_marketdatafeed_csm_v1_4_2.fields.current_market_refresh_message = ProtoField.new("Current Market Refresh Message", "cboe.options.marketdatafeed.csm.v1.4.2.currentmarketrefreshmessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.current_market_update_message = ProtoField.new("Current Market Update Message", "cboe.options.marketdatafeed.csm.v1.4.2.currentmarketupdatemessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.expected_opening_price_and_size_message = ProtoField.new("Expected Opening Price And Size Message", "cboe.options.marketdatafeed.csm.v1.4.2.expectedopeningpriceandsizemessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_message = ProtoField.new("Index Value Message", "cboe.options.marketdatafeed.csm.v1.4.2.indexvaluemessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.market_data_control_message = ProtoField.new("Market Data Control Message", "cboe.options.marketdatafeed.csm.v1.4.2.marketdatacontrolmessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.market_data_refresh_message = ProtoField.new("Market Data Refresh Message", "cboe.options.marketdatafeed.csm.v1.4.2.marketdatarefreshmessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_message = ProtoField.new("Recap Update Message", "cboe.options.marketdatafeed.csm.v1.4.2.recapupdatemessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_message = ProtoField.new("Security Definition Message", "cboe.options.marketdatafeed.csm.v1.4.2.securitydefinitionmessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_message = ProtoField.new("Settlement Value Message", "cboe.options.marketdatafeed.csm.v1.4.2.settlementvaluemessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_message = ProtoField.new("Summary Message", "cboe.options.marketdatafeed.csm.v1.4.2.summarymessage", ftypes.STRING)
cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_message = ProtoField.new("Ticker Message", "cboe.options.marketdatafeed.csm.v1.4.2.tickermessage", ftypes.STRING)

-- Cboe Options MarketDataFeed Csm 1.4.2 generated fields
cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_md_entry_index = ProtoField.new("Index Value Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.indexvaluemdentryindex", ftypes.UINT16)
cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_index = ProtoField.new("Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.mdentryindex", ftypes.UINT16)
cboe_options_marketdatafeed_csm_v1_4_2.fields.message_index = ProtoField.new("Message Index", "cboe.options.marketdatafeed.csm.v1.4.2.messageindex", ftypes.UINT16)
cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_md_entry_index = ProtoField.new("Recap Update Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.recapupdatemdentryindex", ftypes.UINT16)
cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_leg_index = ProtoField.new("Security Definition Leg Index", "cboe.options.marketdatafeed.csm.v1.4.2.securitydefinitionlegindex", ftypes.UINT16)
cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_md_entry_index = ProtoField.new("Settlement Value Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.settlementvaluemdentryindex", ftypes.UINT16)
cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_md_entry_index = ProtoField.new("Summary Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.summarymdentryindex", ftypes.UINT16)
cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_md_entry_index = ProtoField.new("Ticker Md Entry Index", "cboe.options.marketdatafeed.csm.v1.4.2.tickermdentryindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

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
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_currency_code = Pref.bool("Show Currency Code", show.currency_code, "Parse and add Currency Code to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_refresh_message = Pref.bool("Show Current Market Refresh Message", show.current_market_refresh_message, "Parse and add Current Market Refresh Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_update_message = Pref.bool("Show Current Market Update Message", show.current_market_update_message, "Parse and add Current Market Update Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_eop = Pref.bool("Show Eop", show.eop, "Parse and add Eop to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_expected_opening_price_and_size_message = Pref.bool("Show Expected Opening Price And Size Message", show.expected_opening_price_and_size_message, "Parse and add Expected Opening Price And Size Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_md_entry = Pref.bool("Show Index Value Md Entry", show.index_value_md_entry, "Parse and add Index Value Md Entry to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_message = Pref.bool("Show Index Value Message", show.index_value_message, "Parse and add Index Value Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_control_message = Pref.bool("Show Market Data Control Message", show.market_data_control_message, "Parse and add Market Data Control Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_refresh_message = Pref.bool("Show Market Data Refresh Message", show.market_data_refresh_message, "Parse and add Market Data Refresh Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_max_strike_price = Pref.bool("Show Max Strike Price", show.max_strike_price, "Parse and add Max Strike Price to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry = Pref.bool("Show Md Entry", show.md_entry, "Parse and add Md Entry to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry_px = Pref.bool("Show Md Entry Px", show.md_entry_px, "Parse and add Md Entry Px to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_above_premium_fraction = Pref.bool("Show Minimum Above Premium Fraction", show.minimum_above_premium_fraction, "Parse and add Minimum Above Premium Fraction to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_below_premium_fraction = Pref.bool("Show Minimum Below Premium Fraction", show.minimum_below_premium_fraction, "Parse and add Minimum Below Premium Fraction to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_strike_price_fraction = Pref.bool("Show Minimum Strike Price Fraction", show.minimum_strike_price_fraction, "Parse and add Minimum Strike Price Fraction to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_net_chg_prev_day = Pref.bool("Show Net Chg Prev Day", show.net_chg_prev_day, "Parse and add Net Chg Prev Day to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_premium_break_point = Pref.bool("Show Premium Break Point", show.premium_break_point, "Parse and add Premium Break Point to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_prev_close_px = Pref.bool("Show Prev Close Px", show.prev_close_px, "Parse and add Prev Close Px to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_md_entry = Pref.bool("Show Recap Update Md Entry", show.recap_update_md_entry, "Parse and add Recap Update Md Entry to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_message = Pref.bool("Show Recap Update Message", show.recap_update_message, "Parse and add Recap Update Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_leg = Pref.bool("Show Security Definition Leg", show.security_definition_leg, "Parse and add Security Definition Leg to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_message = Pref.bool("Show Security Definition Message", show.security_definition_message, "Parse and add Security Definition Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_type = Pref.bool("Show Security Type", show.security_type, "Parse and add Security Type to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_md_entry = Pref.bool("Show Settlement Value Md Entry", show.settlement_value_md_entry, "Parse and add Settlement Value Md Entry to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_message = Pref.bool("Show Settlement Value Message", show.settlement_value_message, "Parse and add Settlement Value Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_strike_price = Pref.bool("Show Strike Price", show.strike_price, "Parse and add Strike Price to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_md_entry = Pref.bool("Show Summary Md Entry", show.summary_md_entry, "Parse and add Summary Md Entry to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_message = Pref.bool("Show Summary Message", show.summary_message, "Parse and add Summary Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_symbol = Pref.bool("Show Symbol", show.symbol, "Parse and add Symbol to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_target_location_id = Pref.bool("Show Target Location Id", show.target_location_id, "Parse and add Target Location Id to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_md_entry = Pref.bool("Show Ticker Md Entry", show.ticker_md_entry, "Parse and add Ticker Md Entry to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_message = Pref.bool("Show Ticker Message", show.ticker_message, "Parse and add Ticker Message to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_trade_condition = Pref.bool("Show Trade Condition", show.trade_condition, "Parse and add Trade Condition to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_px = Pref.bool("Show Underlying Px", show.underlying_px, "Parse and add Underlying Px to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_symbol = Pref.bool("Show Underlying Symbol", show.underlying_symbol, "Parse and add Underlying Symbol to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_type = Pref.bool("Show Underlying Type", show.underlying_type, "Parse and add Underlying Type to protocol tree")
cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_options_marketdatafeed_csm_v1_4_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.currency_code ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_currency_code then
    show.currency_code = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_currency_code
    changed = true
  end
  if show.current_market_refresh_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_refresh_message then
    show.current_market_refresh_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_refresh_message
    changed = true
  end
  if show.current_market_update_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_update_message then
    show.current_market_update_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_current_market_update_message
    changed = true
  end
  if show.eop ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_eop then
    show.eop = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_eop
    changed = true
  end
  if show.expected_opening_price_and_size_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_expected_opening_price_and_size_message then
    show.expected_opening_price_and_size_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_expected_opening_price_and_size_message
    changed = true
  end
  if show.index_value_md_entry ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_md_entry then
    show.index_value_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_md_entry
    changed = true
  end
  if show.index_value_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_message then
    show.index_value_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_index_value_message
    changed = true
  end
  if show.market_data_control_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_control_message then
    show.market_data_control_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_control_message
    changed = true
  end
  if show.market_data_refresh_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_refresh_message then
    show.market_data_refresh_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_market_data_refresh_message
    changed = true
  end
  if show.max_strike_price ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_max_strike_price then
    show.max_strike_price = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_max_strike_price
    changed = true
  end
  if show.md_entry ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry then
    show.md_entry = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry
    changed = true
  end
  if show.md_entry_px ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry_px then
    show.md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_md_entry_px
    changed = true
  end
  if show.message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message then
    show.message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message_header then
    show.message_header = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_message_header
    changed = true
  end
  if show.minimum_above_premium_fraction ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_above_premium_fraction then
    show.minimum_above_premium_fraction = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_above_premium_fraction
    changed = true
  end
  if show.minimum_below_premium_fraction ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_below_premium_fraction then
    show.minimum_below_premium_fraction = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_below_premium_fraction
    changed = true
  end
  if show.minimum_strike_price_fraction ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_strike_price_fraction then
    show.minimum_strike_price_fraction = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_minimum_strike_price_fraction
    changed = true
  end
  if show.net_chg_prev_day ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_net_chg_prev_day then
    show.net_chg_prev_day = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_net_chg_prev_day
    changed = true
  end
  if show.packet ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet then
    show.packet = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet_header then
    show.packet_header = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_packet_header
    changed = true
  end
  if show.premium_break_point ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_premium_break_point then
    show.premium_break_point = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_premium_break_point
    changed = true
  end
  if show.prev_close_px ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_prev_close_px then
    show.prev_close_px = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_prev_close_px
    changed = true
  end
  if show.recap_update_md_entry ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_md_entry then
    show.recap_update_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_md_entry
    changed = true
  end
  if show.recap_update_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_message then
    show.recap_update_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_recap_update_message
    changed = true
  end
  if show.security_definition_leg ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_leg then
    show.security_definition_leg = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_leg
    changed = true
  end
  if show.security_definition_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_message then
    show.security_definition_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_definition_message
    changed = true
  end
  if show.security_type ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_type then
    show.security_type = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_security_type
    changed = true
  end
  if show.settlement_value_md_entry ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_md_entry then
    show.settlement_value_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_md_entry
    changed = true
  end
  if show.settlement_value_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_message then
    show.settlement_value_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_settlement_value_message
    changed = true
  end
  if show.strike_price ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_strike_price then
    show.strike_price = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_strike_price
    changed = true
  end
  if show.summary_md_entry ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_md_entry then
    show.summary_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_md_entry
    changed = true
  end
  if show.summary_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_message then
    show.summary_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_summary_message
    changed = true
  end
  if show.symbol ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_symbol then
    show.symbol = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_symbol
    changed = true
  end
  if show.target_location_id ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_target_location_id then
    show.target_location_id = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_target_location_id
    changed = true
  end
  if show.ticker_md_entry ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_md_entry then
    show.ticker_md_entry = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_md_entry
    changed = true
  end
  if show.ticker_message ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_message then
    show.ticker_message = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_ticker_message
    changed = true
  end
  if show.trade_condition ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_trade_condition then
    show.trade_condition = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_trade_condition
    changed = true
  end
  if show.underlying_px ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_px then
    show.underlying_px = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_px
    changed = true
  end
  if show.underlying_symbol ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_symbol then
    show.underlying_symbol = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_symbol
    changed = true
  end
  if show.underlying_type ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_type then
    show.underlying_type = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_underlying_type
    changed = true
  end
  if show.payload ~= cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_payload then
    show.payload = cboe_options_marketdatafeed_csm_v1_4_2.prefs.show_payload
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

-- Size: Md Control Type
cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_control_type = 1

-- Display: Md Control Type
cboe_options_marketdatafeed_csm_v1_4_2_display.md_control_type = function(value)
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
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_control_type = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_control_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.md_control_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.md_control_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Data Control Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.market_data_control_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_control_type

  return index
end

-- Display: Market Data Control Message
cboe_options_marketdatafeed_csm_v1_4_2_display.market_data_control_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Control Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.market_data_control_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Control Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, md_control_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_control_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Control Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.market_data_control_message = function(buffer, offset, packet, parent)
  if show.market_data_control_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.market_data_control_message, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.market_data_control_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.market_data_control_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.market_data_control_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Md Entry Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px_mantissa = 4

-- Display: Md Entry Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_px_mantissa = function(value)
  return "Md Entry Px Mantissa: "..value
end

-- Dissect: Md Entry Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_px_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px_exponent = 1

-- Display: Md Entry Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_px_exponent = function(value)
  return "Md Entry Px Exponent: "..value
end

-- Dissect: Md Entry Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_px_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Entry Px
cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px_mantissa

  return index
end

-- Display: Md Entry Px
cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_px = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entry Px
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Exponent: 1 Byte Signed Fixed Width Integer
  index, md_entry_px_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px_exponent(buffer, index, packet, parent)

  -- Md Entry Px Mantissa: 4 Byte Signed Fixed Width Integer
  index, md_entry_px_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entry Px
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px = function(buffer, offset, packet, parent)
  if show.md_entry_px then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_px, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_px(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px_fields(buffer, offset, packet, element)
  end
end

-- Size: Md Entry Type
cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_type = 1

-- Display: Md Entry Type
cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_type = function(value)
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
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_type = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Summary Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_size_of.summary_md_entry = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px(buffer, offset + index)

  return index
end

-- Display: Summary Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_display.summary_md_entry = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Summary Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.summary_md_entry_fields = function(buffer, offset, packet, parent, summary_md_entry_index)
  local index = offset

  -- Implicit Summary Md Entry Index
  if summary_md_entry_index ~= nil then
    local iteration = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_md_entry_index, summary_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_type(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Summary Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.summary_md_entry = function(buffer, offset, packet, parent)
  if show.summary_md_entry then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.summary_md_entry_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.summary_md_entry(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.summary_md_entry_fields(buffer, offset, packet, element)
  end
end

-- Size: No Entries
cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries = 1

-- Display: No Entries
cboe_options_marketdatafeed_csm_v1_4_2_display.no_entries = function(value)
  return "No Entries: "..value
end

-- Dissect: No Entries
cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_entries = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.no_entries(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.no_entries, range, value, display)

  return offset + length, value
end

-- Size: Underlying Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_px_mantissa = 4

-- Display: Underlying Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_px_mantissa = function(value)
  return "Underlying Px Mantissa: "..value
end

-- Dissect: Underlying Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_px_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_px_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_px_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Underlying Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_px_exponent = 1

-- Display: Underlying Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_px_exponent = function(value)
  return "Underlying Px Exponent: "..value
end

-- Dissect: Underlying Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_px_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_px_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_px_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Px
cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_px = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_px_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_px_mantissa

  return index
end

-- Display: Underlying Px
cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_px = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Px
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_px_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Px Exponent: 1 Byte Signed Fixed Width Integer
  index, underlying_px_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_px_exponent(buffer, index, packet, parent)

  -- Underlying Px Mantissa: 4 Byte Signed Fixed Width Integer
  index, underlying_px_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_px_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Px
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_px = function(buffer, offset, packet, parent)
  if show.underlying_px then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_px, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_px_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_px(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_px_fields(buffer, offset, packet, element)
  end
end

-- Size: Net Chg Prev Day Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.net_chg_prev_day_mantissa = 4

-- Display: Net Chg Prev Day Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.net_chg_prev_day_mantissa = function(value)
  return "Net Chg Prev Day Mantissa: "..value
end

-- Dissect: Net Chg Prev Day Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.net_chg_prev_day_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.net_chg_prev_day_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.net_chg_prev_day_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Net Chg Prev Day Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.net_chg_prev_day_exponent = 1

-- Display: Net Chg Prev Day Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.net_chg_prev_day_exponent = function(value)
  return "Net Chg Prev Day Exponent: "..value
end

-- Dissect: Net Chg Prev Day Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.net_chg_prev_day_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.net_chg_prev_day_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.net_chg_prev_day_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Net Chg Prev Day
cboe_options_marketdatafeed_csm_v1_4_2_size_of.net_chg_prev_day = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.net_chg_prev_day_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.net_chg_prev_day_mantissa

  return index
end

-- Display: Net Chg Prev Day
cboe_options_marketdatafeed_csm_v1_4_2_display.net_chg_prev_day = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Chg Prev Day
cboe_options_marketdatafeed_csm_v1_4_2_dissect.net_chg_prev_day_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Net Chg Prev Day Exponent: 1 Byte Signed Fixed Width Integer
  index, net_chg_prev_day_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.net_chg_prev_day_exponent(buffer, index, packet, parent)

  -- Net Chg Prev Day Mantissa: 4 Byte Signed Fixed Width Integer
  index, net_chg_prev_day_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.net_chg_prev_day_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Chg Prev Day
cboe_options_marketdatafeed_csm_v1_4_2_dissect.net_chg_prev_day = function(buffer, offset, packet, parent)
  if show.net_chg_prev_day then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.net_chg_prev_day, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.net_chg_prev_day_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.net_chg_prev_day(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.net_chg_prev_day_fields(buffer, offset, packet, element)
  end
end

-- Size: Open Interest
cboe_options_marketdatafeed_csm_v1_4_2_size_of.open_interest = 4

-- Display: Open Interest
cboe_options_marketdatafeed_csm_v1_4_2_display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
cboe_options_marketdatafeed_csm_v1_4_2_dissect.open_interest = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.open_interest
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.open_interest(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume
cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_volume = 4

-- Display: Trade Volume
cboe_options_marketdatafeed_csm_v1_4_2_display.trade_volume = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_volume = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.trade_volume(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Size: Price Type
cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type = 1

-- Display: Price Type
cboe_options_marketdatafeed_csm_v1_4_2_display.price_type = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
cboe_options_marketdatafeed_csm_v1_4_2_dissect.price_type = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.price_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.price_type, range, value, display)

  return offset + length, value
end

-- Size: Security Id
cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id = 4

-- Display: Security Id
cboe_options_marketdatafeed_csm_v1_4_2_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.security_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Class Key
cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key = 4

-- Display: Class Key
cboe_options_marketdatafeed_csm_v1_4_2_display.class_key = function(value)
  return "Class Key: "..value
end

-- Dissect: Class Key
cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.class_key(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.class_key, range, value, display)

  return offset + length, value
end

-- Calculate size of: Summary Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.summary_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_volume

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.open_interest

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.net_chg_prev_day(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_px(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries

  -- Calculate field size from count
  local summary_md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + summary_md_entry_count * 6

  return index
end

-- Display: Summary Message
cboe_options_marketdatafeed_csm_v1_4_2_display.summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Summary Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.price_type(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_volume(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Unsigned Fixed Width Integer
  index, open_interest = cboe_options_marketdatafeed_csm_v1_4_2_dissect.open_interest(buffer, index, packet, parent)

  -- Net Chg Prev Day: Struct of 2 fields
  index, net_chg_prev_day = cboe_options_marketdatafeed_csm_v1_4_2_dissect.net_chg_prev_day(buffer, index, packet, parent)

  -- Underlying Px: Struct of 2 fields
  index, underlying_px = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_px(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_entries(buffer, index, packet, parent)

  -- Repeating: Summary Md Entry
  for summary_md_entry_index = 1, no_entries do
    index, summary_md_entry = cboe_options_marketdatafeed_csm_v1_4_2_dissect.summary_md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Summary Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.summary_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.summary_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.summary_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.summary_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.summary_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Settlement Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_size_of.settlement_value_md_entry = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px(buffer, offset + index)

  return index
end

-- Display: Settlement Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_display.settlement_value_md_entry = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.settlement_value_md_entry_fields = function(buffer, offset, packet, parent, settlement_value_md_entry_index)
  local index = offset

  -- Implicit Settlement Value Md Entry Index
  if settlement_value_md_entry_index ~= nil then
    local iteration = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_md_entry_index, settlement_value_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_type(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.settlement_value_md_entry = function(buffer, offset, packet, parent)
  if show.settlement_value_md_entry then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.settlement_value_md_entry_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.settlement_value_md_entry(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.settlement_value_md_entry_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Settlement Value Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.settlement_value_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries

  -- Calculate field size from count
  local settlement_value_md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + settlement_value_md_entry_count * 6

  return index
end

-- Display: Settlement Value Message
cboe_options_marketdatafeed_csm_v1_4_2_display.settlement_value_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Value Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.settlement_value_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.price_type(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_entries(buffer, index, packet, parent)

  -- Repeating: Settlement Value Md Entry
  for settlement_value_md_entry_index = 1, no_entries do
    index, settlement_value_md_entry = cboe_options_marketdatafeed_csm_v1_4_2_dissect.settlement_value_md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Settlement Value Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.settlement_value_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.settlement_value_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.settlement_value_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.settlement_value_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.settlement_value_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.settlement_value_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Index Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_size_of.index_value_md_entry = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px(buffer, offset + index)

  return index
end

-- Display: Index Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_display.index_value_md_entry = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.index_value_md_entry_fields = function(buffer, offset, packet, parent, index_value_md_entry_index)
  local index = offset

  -- Implicit Index Value Md Entry Index
  if index_value_md_entry_index ~= nil then
    local iteration = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_md_entry_index, index_value_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_type(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Value Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.index_value_md_entry = function(buffer, offset, packet, parent)
  if show.index_value_md_entry then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.index_value_md_entry_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.index_value_md_entry(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.index_value_md_entry_fields(buffer, offset, packet, element)
  end
end

-- Display: Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2_display.symbol_text = function(value)
  return "Symbol Text: "..value
end

-- Dissect runtime sized field: Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2_dissect.symbol_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.symbol_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol_text, range, value, display)

  return offset + size
end

-- Size: Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2_size_of.symbol_length = 1

-- Display: Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2_display.symbol_length = function(value)
  return "Symbol Length: "..value
end

-- Dissect: Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2_dissect.symbol_length = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.symbol_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.symbol_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol
cboe_options_marketdatafeed_csm_v1_4_2_size_of.symbol = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.symbol_length

  -- Parse runtime size of: Symbol Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Symbol
cboe_options_marketdatafeed_csm_v1_4_2_display.symbol = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol
cboe_options_marketdatafeed_csm_v1_4_2_dissect.symbol_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Length: 1 Byte Unsigned Fixed Width Integer
  index, symbol_length = cboe_options_marketdatafeed_csm_v1_4_2_dissect.symbol_length(buffer, index, packet, parent)

  -- Runtime Size Of: Symbol Text
  index, symbol_text = cboe_options_marketdatafeed_csm_v1_4_2_dissect.symbol_text(buffer, index, packet, parent, symbol_length)

  return index
end

-- Dissect: Symbol
cboe_options_marketdatafeed_csm_v1_4_2_dissect.symbol = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.symbol then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.symbol(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.symbol(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.symbol, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.symbol_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Index Value Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.index_value_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.symbol(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries

  -- Calculate field size from count
  local index_value_md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + index_value_md_entry_count * 6

  return index
end

-- Display: Index Value Message
cboe_options_marketdatafeed_csm_v1_4_2_display.index_value_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.index_value_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_options_marketdatafeed_csm_v1_4_2_dissect.symbol(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_entries(buffer, index, packet, parent)

  -- Repeating: Index Value Md Entry
  for index_value_md_entry_index = 1, no_entries do
    index, index_value_md_entry = cboe_options_marketdatafeed_csm_v1_4_2_dissect.index_value_md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Index Value Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.index_value_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.index_value_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.index_value_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.index_value_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.index_value_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.index_value_message_fields(buffer, offset, packet, parent)
end

-- Size: Legal Market
cboe_options_marketdatafeed_csm_v1_4_2_size_of.legal_market = 1

-- Display: Legal Market
cboe_options_marketdatafeed_csm_v1_4_2_display.legal_market = function(value)
  if value == 0 then
    return "Legal Market: Not A Legal Market (0)"
  end
  if value == 1 then
    return "Legal Market: Legal Market (1)"
  end

  return "Legal Market: Unknown("..value..")"
end

-- Dissect: Legal Market
cboe_options_marketdatafeed_csm_v1_4_2_dissect.legal_market = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.legal_market
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.legal_market(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.legal_market, range, value, display)

  return offset + length, value
end

-- Size: Eop Type
cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop_type = 1

-- Display: Eop Type
cboe_options_marketdatafeed_csm_v1_4_2_display.eop_type = function(value)
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
cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop_type = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.eop_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_type, range, value, display)

  return offset + length, value
end

-- Size: Eos
cboe_options_marketdatafeed_csm_v1_4_2_size_of.eos = 4

-- Display: Eos
cboe_options_marketdatafeed_csm_v1_4_2_display.eos = function(value)
  return "Eos: "..value
end

-- Dissect: Eos
cboe_options_marketdatafeed_csm_v1_4_2_dissect.eos = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.eos
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.eos(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.eos, range, value, display)

  return offset + length, value
end

-- Size: Eop Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop_mantissa = 4

-- Display: Eop Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.eop_mantissa = function(value)
  return "Eop Mantissa: "..value
end

-- Dissect: Eop Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.eop_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Eop Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop_exponent = 1

-- Display: Eop Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.eop_exponent = function(value)
  return "Eop Exponent: "..value
end

-- Dissect: Eop Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.eop_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.eop_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Eop
cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop_mantissa

  return index
end

-- Display: Eop
cboe_options_marketdatafeed_csm_v1_4_2_display.eop = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eop
cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Eop Exponent: 1 Byte Signed Fixed Width Integer
  index, eop_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop_exponent(buffer, index, packet, parent)

  -- Eop Mantissa: 4 Byte Signed Fixed Width Integer
  index, eop_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Eop
cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop = function(buffer, offset, packet, parent)
  if show.eop then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.eop, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.eop(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Expected Opening Price And Size Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.expected_opening_price_and_size_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.eos

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.eop_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.legal_market

  return index
end

-- Display: Expected Opening Price And Size Message
cboe_options_marketdatafeed_csm_v1_4_2_display.expected_opening_price_and_size_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expected Opening Price And Size Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.expected_opening_price_and_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id(buffer, index, packet, parent)

  -- Eop: Struct of 2 fields
  index, eop = cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop(buffer, index, packet, parent)

  -- Eos: 4 Byte Unsigned Fixed Width Integer
  index, eos = cboe_options_marketdatafeed_csm_v1_4_2_dissect.eos(buffer, index, packet, parent)

  -- Eop Type: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, eop_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.eop_type(buffer, index, packet, parent)

  -- Legal Market: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, legal_market = cboe_options_marketdatafeed_csm_v1_4_2_dissect.legal_market(buffer, index, packet, parent)

  return index
end

-- Dissect: Expected Opening Price And Size Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.expected_opening_price_and_size_message = function(buffer, offset, packet, parent)
  if show.expected_opening_price_and_size_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.expected_opening_price_and_size_message, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.expected_opening_price_and_size_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.expected_opening_price_and_size_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.expected_opening_price_and_size_message_fields(buffer, offset, packet, element)
  end
end

-- Display: Trade Condition Text
cboe_options_marketdatafeed_csm_v1_4_2_display.trade_condition_text = function(value)
  return "Trade Condition Text: "..value
end

-- Dissect runtime sized field: Trade Condition Text
cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_condition_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.trade_condition_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition_text, range, value, display)

  return offset + size
end

-- Size: Trade Condition Length
cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_condition_length = 1

-- Display: Trade Condition Length
cboe_options_marketdatafeed_csm_v1_4_2_display.trade_condition_length = function(value)
  return "Trade Condition Length: "..value
end

-- Dissect: Trade Condition Length
cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_condition_length = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_condition_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.trade_condition_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Condition
cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_condition = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_condition_length

  -- Parse runtime size of: Trade Condition Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Trade Condition
cboe_options_marketdatafeed_csm_v1_4_2_display.trade_condition = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Condition
cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_condition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Condition Length: 1 Byte Unsigned Fixed Width Integer
  index, trade_condition_length = cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_condition_length(buffer, index, packet, parent)

  -- Runtime Size Of: Trade Condition Text
  index, trade_condition_text = cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_condition_text(buffer, index, packet, parent, trade_condition_length)

  return index
end

-- Dissect: Trade Condition
cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_condition = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trade_condition then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_condition(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.trade_condition(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.trade_condition, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_condition_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Size
cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_size = 4

-- Display: Md Entry Size
cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_size = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_size = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ticker Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_size_of.ticker_md_entry = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_condition(buffer, offset + index)

  return index
end

-- Display: Ticker Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_display.ticker_md_entry = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.ticker_md_entry_fields = function(buffer, offset, packet, parent, ticker_md_entry_index)
  local index = offset

  -- Implicit Ticker Md Entry Index
  if ticker_md_entry_index ~= nil then
    local iteration = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_md_entry_index, ticker_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_type(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_size = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_size(buffer, index, packet, parent)

  -- Trade Condition: Struct of 2 fields
  index, trade_condition = cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Ticker Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.ticker_md_entry = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.ticker_md_entry then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.ticker_md_entry(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.ticker_md_entry(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_md_entry, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.ticker_md_entry_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Ticker Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.ticker_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries

  -- Calculate field size from count
  local ticker_md_entry_count = buffer(offset + index - 1, 1):uint()
  for i = 1, ticker_md_entry_count do
    index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.ticker_md_entry(buffer, offset + index)
  end
  return index
end

-- Display: Ticker Message
cboe_options_marketdatafeed_csm_v1_4_2_display.ticker_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ticker Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.ticker_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.price_type(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_entries(buffer, index, packet, parent)

  -- Repeating: Ticker Md Entry
  for ticker_md_entry_index = 1, no_entries do
    index, ticker_md_entry = cboe_options_marketdatafeed_csm_v1_4_2_dissect.ticker_md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Ticker Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.ticker_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.ticker_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.ticker_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.ticker_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.ticker_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.ticker_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Recap Update Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_size_of.recap_update_md_entry = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_size

  return index
end

-- Display: Recap Update Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_display.recap_update_md_entry = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recap Update Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.recap_update_md_entry_fields = function(buffer, offset, packet, parent, recap_update_md_entry_index)
  local index = offset

  -- Implicit Recap Update Md Entry Index
  if recap_update_md_entry_index ~= nil then
    local iteration = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_md_entry_index, recap_update_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_type(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_size = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Recap Update Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.recap_update_md_entry = function(buffer, offset, packet, parent)
  if show.recap_update_md_entry then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.recap_update_md_entry_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.recap_update_md_entry(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.recap_update_md_entry_fields(buffer, offset, packet, element)
  end
end

-- Size: Prev Close Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.prev_close_px_mantissa = 4

-- Display: Prev Close Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.prev_close_px_mantissa = function(value)
  return "Prev Close Px Mantissa: "..value
end

-- Dissect: Prev Close Px Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.prev_close_px_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.prev_close_px_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Prev Close Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.prev_close_px_exponent = 1

-- Display: Prev Close Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.prev_close_px_exponent = function(value)
  return "Prev Close Px Exponent: "..value
end

-- Dissect: Prev Close Px Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.prev_close_px_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.prev_close_px_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Prev Close Px
cboe_options_marketdatafeed_csm_v1_4_2_size_of.prev_close_px = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.prev_close_px_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.prev_close_px_mantissa

  return index
end

-- Display: Prev Close Px
cboe_options_marketdatafeed_csm_v1_4_2_display.prev_close_px = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prev Close Px
cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prev Close Px Exponent: 1 Byte Signed Fixed Width Integer
  index, prev_close_px_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px_exponent(buffer, index, packet, parent)

  -- Prev Close Px Mantissa: 4 Byte Signed Fixed Width Integer
  index, prev_close_px_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Prev Close Px
cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px = function(buffer, offset, packet, parent)
  if show.prev_close_px then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.prev_close_px, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.prev_close_px(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Recap Update Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.recap_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.prev_close_px(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_volume

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries

  -- Calculate field size from count
  local recap_update_md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + recap_update_md_entry_count * 10

  return index
end

-- Display: Recap Update Message
cboe_options_marketdatafeed_csm_v1_4_2_display.recap_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Recap Update Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.recap_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.price_type(buffer, index, packet, parent)

  -- Prev Close Px: Struct of 2 fields
  index, prev_close_px = cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_volume(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_entries(buffer, index, packet, parent)

  -- Repeating: Recap Update Md Entry
  for recap_update_md_entry_index = 1, no_entries do
    index, recap_update_md_entry = cboe_options_marketdatafeed_csm_v1_4_2_dissect.recap_update_md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Recap Update Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.recap_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.recap_update_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.recap_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.recap_update_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.recap_update_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.recap_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Md Volume Type
cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_volume_type = 1

-- Display: Md Volume Type
cboe_options_marketdatafeed_csm_v1_4_2_display.md_volume_type = function(value)
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
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_volume_type = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_volume_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.md_volume_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.md_volume_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_px(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_entry_size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.md_volume_type

  return index
end

-- Display: Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_fields = function(buffer, offset, packet, parent, md_entry_index)
  local index = offset

  -- Implicit Md Entry Index
  if md_entry_index ~= nil then
    local iteration = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry_index, md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 8 values
  index, md_entry_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_type(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_size = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Volume Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, md_volume_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_volume_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entry
cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry = function(buffer, offset, packet, parent)
  if show.md_entry then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.md_entry, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.md_entry(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry_fields(buffer, offset, packet, element)
  end
end

-- Size: Security Trading Status
cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_trading_status = 1

-- Display: Security Trading Status
cboe_options_marketdatafeed_csm_v1_4_2_display.security_trading_status = function(value)
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
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_trading_status
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Current Market Update Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.current_market_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_trading_status

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries

  -- Calculate field size from count
  local md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entry_count * 11

  return index
end

-- Display: Current Market Update Message
cboe_options_marketdatafeed_csm_v1_4_2_display.current_market_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Current Market Update Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.current_market_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_trading_status(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.price_type(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_entries(buffer, index, packet, parent)

  -- Repeating: Md Entry
  for md_entry_index = 1, no_entries do
    index, md_entry = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Current Market Update Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.current_market_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.current_market_update_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.current_market_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.current_market_update_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.current_market_update_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.current_market_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Appl Seq Num
cboe_options_marketdatafeed_csm_v1_4_2_size_of.appl_seq_num = 4

-- Display: Appl Seq Num
cboe_options_marketdatafeed_csm_v1_4_2_display.appl_seq_num = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
cboe_options_marketdatafeed_csm_v1_4_2_dissect.appl_seq_num = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.appl_seq_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.appl_seq_num(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Data Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.market_data_refresh_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_trading_status

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.appl_seq_num

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.prev_close_px(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.trade_volume

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries

  -- Calculate field size from count
  local md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entry_count * 11

  return index
end

-- Display: Market Data Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2_display.market_data_refresh_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.market_data_refresh_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_trading_status(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.price_type(buffer, index, packet, parent)

  -- Appl Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, appl_seq_num = cboe_options_marketdatafeed_csm_v1_4_2_dissect.appl_seq_num(buffer, index, packet, parent)

  -- Prev Close Px: Struct of 2 fields
  index, prev_close_px = cboe_options_marketdatafeed_csm_v1_4_2_dissect.prev_close_px(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = cboe_options_marketdatafeed_csm_v1_4_2_dissect.trade_volume(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_entries(buffer, index, packet, parent)

  -- Repeating: Md Entry
  for md_entry_index = 1, no_entries do
    index, md_entry = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Data Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.market_data_refresh_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_data_refresh_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.market_data_refresh_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.market_data_refresh_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.market_data_refresh_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.market_data_refresh_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Current Market Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.current_market_refresh_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_trading_status

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.appl_seq_num

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_entries

  -- Calculate field size from count
  local md_entry_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entry_count * 11

  return index
end

-- Display: Current Market Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2_display.current_market_refresh_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Current Market Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.current_market_refresh_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_trading_status(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.price_type(buffer, index, packet, parent)

  -- Appl Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, appl_seq_num = cboe_options_marketdatafeed_csm_v1_4_2_dissect.appl_seq_num(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_entries(buffer, index, packet, parent)

  -- Repeating: Md Entry
  for md_entry_index = 1, no_entries do
    index, md_entry = cboe_options_marketdatafeed_csm_v1_4_2_dissect.md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Current Market Refresh Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.current_market_refresh_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.current_market_refresh_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.current_market_refresh_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.current_market_refresh_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.current_market_refresh_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.current_market_refresh_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Side
cboe_options_marketdatafeed_csm_v1_4_2_size_of.leg_side = 1

-- Display: Leg Side
cboe_options_marketdatafeed_csm_v1_4_2_display.leg_side = function(value)
  if value == "B" then
    return "Leg Side: Buy Bid (B)"
  end
  if value == "S" then
    return "Leg Side: Sell Ask (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cboe_options_marketdatafeed_csm_v1_4_2_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.leg_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Id
cboe_options_marketdatafeed_csm_v1_4_2_size_of.leg_security_id = 4

-- Display: Leg Security Id
cboe_options_marketdatafeed_csm_v1_4_2_display.leg_security_id = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
cboe_options_marketdatafeed_csm_v1_4_2_dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.leg_security_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
cboe_options_marketdatafeed_csm_v1_4_2_size_of.leg_ratio_qty = 4

-- Display: Leg Ratio Qty
cboe_options_marketdatafeed_csm_v1_4_2_display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cboe_options_marketdatafeed_csm_v1_4_2_dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Leg
cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_definition_leg = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.leg_ratio_qty

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.leg_security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.leg_side

  return index
end

-- Display: Security Definition Leg
cboe_options_marketdatafeed_csm_v1_4_2_display.security_definition_leg = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Leg
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_definition_leg_fields = function(buffer, offset, packet, parent, security_definition_leg_index)
  local index = offset

  -- Implicit Security Definition Leg Index
  if security_definition_leg_index ~= nil then
    local iteration = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_leg_index, security_definition_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = cboe_options_marketdatafeed_csm_v1_4_2_dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 2 values
  index, leg_side = cboe_options_marketdatafeed_csm_v1_4_2_dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Leg
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_definition_leg = function(buffer, offset, packet, parent)
  if show.security_definition_leg then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_leg, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_definition_leg_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.security_definition_leg(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_definition_leg_fields(buffer, offset, packet, element)
  end
end

-- Size: No Legs
cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_legs = 1

-- Display: No Legs
cboe_options_marketdatafeed_csm_v1_4_2_display.no_legs = function(value)
  return "No Legs: "..value
end

-- Dissect: No Legs
cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_legs = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_legs
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.no_legs(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.no_legs, range, value, display)

  return offset + length, value
end

-- Size: Contract Size
cboe_options_marketdatafeed_csm_v1_4_2_size_of.contract_size = 4

-- Display: Contract Size
cboe_options_marketdatafeed_csm_v1_4_2_display.contract_size = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_options_marketdatafeed_csm_v1_4_2_dissect.contract_size = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.contract_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.contract_size(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Display: Underlying Type Text
cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_type_text = function(value)
  return "Underlying Type Text: "..value
end

-- Dissect runtime sized field: Underlying Type Text
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_type_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_type_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type_text, range, value, display)

  return offset + size
end

-- Size: Underlying Type Length
cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_type_length = 1

-- Display: Underlying Type Length
cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_type_length = function(value)
  return "Underlying Type Length: "..value
end

-- Dissect: Underlying Type Length
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_type_length = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_type_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_type_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Type
cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_type = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_type_length

  -- Parse runtime size of: Underlying Type Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Underlying Type
cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_type = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Type
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_type_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Type Length: 1 Byte Unsigned Fixed Width Integer
  index, underlying_type_length = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_type_length(buffer, index, packet, parent)

  -- Runtime Size Of: Underlying Type Text
  index, underlying_type_text = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_type_text(buffer, index, packet, parent, underlying_type_length)

  return index
end

-- Dissect: Underlying Type
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_type = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_type then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_type(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_type(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_type, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_type_fields(buffer, offset, packet, parent)
end

-- Display: Underlying Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_symbol_text = function(value)
  return "Underlying Symbol Text: "..value
end

-- Dissect runtime sized field: Underlying Symbol Text
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_symbol_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_symbol_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol_text, range, value, display)

  return offset + size
end

-- Size: Underlying Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_symbol_length = 1

-- Display: Underlying Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_symbol_length = function(value)
  return "Underlying Symbol Length: "..value
end

-- Dissect: Underlying Symbol Length
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_symbol_length = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_symbol_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_symbol_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Symbol
cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_symbol = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_symbol_length

  -- Parse runtime size of: Underlying Symbol Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Underlying Symbol
cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_symbol = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Symbol
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_symbol_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Symbol Length: 1 Byte Unsigned Fixed Width Integer
  index, underlying_symbol_length = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_symbol_length(buffer, index, packet, parent)

  -- Runtime Size Of: Underlying Symbol Text
  index, underlying_symbol_text = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_symbol_text(buffer, index, packet, parent, underlying_symbol_length)

  return index
end

-- Dissect: Underlying Symbol
cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_symbol then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_symbol(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.underlying_symbol(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.underlying_symbol, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_symbol_fields(buffer, offset, packet, parent)
end

-- Display: Currency Code Text
cboe_options_marketdatafeed_csm_v1_4_2_display.currency_code_text = function(value)
  return "Currency Code Text: "..value
end

-- Dissect runtime sized field: Currency Code Text
cboe_options_marketdatafeed_csm_v1_4_2_dissect.currency_code_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.currency_code_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code_text, range, value, display)

  return offset + size
end

-- Size: Currency Code Length
cboe_options_marketdatafeed_csm_v1_4_2_size_of.currency_code_length = 1

-- Display: Currency Code Length
cboe_options_marketdatafeed_csm_v1_4_2_display.currency_code_length = function(value)
  return "Currency Code Length: "..value
end

-- Dissect: Currency Code Length
cboe_options_marketdatafeed_csm_v1_4_2_dissect.currency_code_length = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.currency_code_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.currency_code_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Currency Code
cboe_options_marketdatafeed_csm_v1_4_2_size_of.currency_code = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.currency_code_length

  -- Parse runtime size of: Currency Code Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Currency Code
cboe_options_marketdatafeed_csm_v1_4_2_display.currency_code = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Currency Code
cboe_options_marketdatafeed_csm_v1_4_2_dissect.currency_code_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Currency Code Length: 1 Byte Unsigned Fixed Width Integer
  index, currency_code_length = cboe_options_marketdatafeed_csm_v1_4_2_dissect.currency_code_length(buffer, index, packet, parent)

  -- Runtime Size Of: Currency Code Text
  index, currency_code_text = cboe_options_marketdatafeed_csm_v1_4_2_dissect.currency_code_text(buffer, index, packet, parent, currency_code_length)

  return index
end

-- Dissect: Currency Code
cboe_options_marketdatafeed_csm_v1_4_2_dissect.currency_code = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.currency_code then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.currency_code(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.currency_code(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.currency_code, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.currency_code_fields(buffer, offset, packet, parent)
end

-- Size: Exercise Style
cboe_options_marketdatafeed_csm_v1_4_2_size_of.exercise_style = 1

-- Display: Exercise Style
cboe_options_marketdatafeed_csm_v1_4_2_display.exercise_style = function(value)
  if value == 0 then
    return "Exercise Style: American (0)"
  end
  if value == 1 then
    return "Exercise Style: European (1)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
cboe_options_marketdatafeed_csm_v1_4_2_dissect.exercise_style = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.exercise_style
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.exercise_style(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Size: Minimum Below Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_below_premium_fraction_mantissa = 4

-- Display: Minimum Below Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_below_premium_fraction_mantissa = function(value)
  return "Minimum Below Premium Fraction Mantissa: "..value
end

-- Dissect: Minimum Below Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_below_premium_fraction_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_below_premium_fraction_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_below_premium_fraction_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Minimum Below Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_below_premium_fraction_exponent = 1

-- Display: Minimum Below Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_below_premium_fraction_exponent = function(value)
  return "Minimum Below Premium Fraction Exponent: "..value
end

-- Dissect: Minimum Below Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_below_premium_fraction_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_below_premium_fraction_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_below_premium_fraction_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Minimum Below Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_below_premium_fraction = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_below_premium_fraction_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_below_premium_fraction_mantissa

  return index
end

-- Display: Minimum Below Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_below_premium_fraction = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Below Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_below_premium_fraction_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Below Premium Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_below_premium_fraction_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_below_premium_fraction_exponent(buffer, index, packet, parent)

  -- Minimum Below Premium Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_below_premium_fraction_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_below_premium_fraction_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Below Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_below_premium_fraction = function(buffer, offset, packet, parent)
  if show.minimum_below_premium_fraction then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_below_premium_fraction, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_below_premium_fraction_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_below_premium_fraction(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_below_premium_fraction_fields(buffer, offset, packet, element)
  end
end

-- Size: Minimum Above Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_above_premium_fraction_mantissa = 4

-- Display: Minimum Above Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_above_premium_fraction_mantissa = function(value)
  return "Minimum Above Premium Fraction Mantissa: "..value
end

-- Dissect: Minimum Above Premium Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_above_premium_fraction_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_above_premium_fraction_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_above_premium_fraction_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Minimum Above Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_above_premium_fraction_exponent = 1

-- Display: Minimum Above Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_above_premium_fraction_exponent = function(value)
  return "Minimum Above Premium Fraction Exponent: "..value
end

-- Dissect: Minimum Above Premium Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_above_premium_fraction_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_above_premium_fraction_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_above_premium_fraction_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Minimum Above Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_above_premium_fraction = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_above_premium_fraction_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_above_premium_fraction_mantissa

  return index
end

-- Display: Minimum Above Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_above_premium_fraction = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Above Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_above_premium_fraction_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Above Premium Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_above_premium_fraction_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_above_premium_fraction_exponent(buffer, index, packet, parent)

  -- Minimum Above Premium Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_above_premium_fraction_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_above_premium_fraction_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Above Premium Fraction
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_above_premium_fraction = function(buffer, offset, packet, parent)
  if show.minimum_above_premium_fraction then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_above_premium_fraction, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_above_premium_fraction_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_above_premium_fraction(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_above_premium_fraction_fields(buffer, offset, packet, element)
  end
end

-- Size: Premium Break Point Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.premium_break_point_mantissa = 4

-- Display: Premium Break Point Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.premium_break_point_mantissa = function(value)
  return "Premium Break Point Mantissa: "..value
end

-- Dissect: Premium Break Point Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.premium_break_point_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.premium_break_point_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.premium_break_point_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Premium Break Point Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.premium_break_point_exponent = 1

-- Display: Premium Break Point Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.premium_break_point_exponent = function(value)
  return "Premium Break Point Exponent: "..value
end

-- Dissect: Premium Break Point Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.premium_break_point_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.premium_break_point_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.premium_break_point_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Premium Break Point
cboe_options_marketdatafeed_csm_v1_4_2_size_of.premium_break_point = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.premium_break_point_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.premium_break_point_mantissa

  return index
end

-- Display: Premium Break Point
cboe_options_marketdatafeed_csm_v1_4_2_display.premium_break_point = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Premium Break Point
cboe_options_marketdatafeed_csm_v1_4_2_dissect.premium_break_point_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Premium Break Point Exponent: 1 Byte Signed Fixed Width Integer
  index, premium_break_point_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.premium_break_point_exponent(buffer, index, packet, parent)

  -- Premium Break Point Mantissa: 4 Byte Signed Fixed Width Integer
  index, premium_break_point_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.premium_break_point_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Premium Break Point
cboe_options_marketdatafeed_csm_v1_4_2_dissect.premium_break_point = function(buffer, offset, packet, parent)
  if show.premium_break_point then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.premium_break_point, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.premium_break_point_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.premium_break_point(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.premium_break_point_fields(buffer, offset, packet, element)
  end
end

-- Size: Max Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.max_strike_price_mantissa = 4

-- Display: Max Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.max_strike_price_mantissa = function(value)
  return "Max Strike Price Mantissa: "..value
end

-- Dissect: Max Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.max_strike_price_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.max_strike_price_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.max_strike_price_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Max Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.max_strike_price_exponent = 1

-- Display: Max Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.max_strike_price_exponent = function(value)
  return "Max Strike Price Exponent: "..value
end

-- Dissect: Max Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.max_strike_price_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.max_strike_price_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.max_strike_price_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Max Strike Price
cboe_options_marketdatafeed_csm_v1_4_2_size_of.max_strike_price = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.max_strike_price_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.max_strike_price_mantissa

  return index
end

-- Display: Max Strike Price
cboe_options_marketdatafeed_csm_v1_4_2_display.max_strike_price = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Strike Price
cboe_options_marketdatafeed_csm_v1_4_2_dissect.max_strike_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Max Strike Price Exponent: 1 Byte Signed Fixed Width Integer
  index, max_strike_price_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.max_strike_price_exponent(buffer, index, packet, parent)

  -- Max Strike Price Mantissa: 4 Byte Signed Fixed Width Integer
  index, max_strike_price_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.max_strike_price_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Strike Price
cboe_options_marketdatafeed_csm_v1_4_2_dissect.max_strike_price = function(buffer, offset, packet, parent)
  if show.max_strike_price then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.max_strike_price, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.max_strike_price_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.max_strike_price(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.max_strike_price_fields(buffer, offset, packet, element)
  end
end

-- Size: Minimum Strike Price Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_strike_price_fraction_mantissa = 4

-- Display: Minimum Strike Price Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_strike_price_fraction_mantissa = function(value)
  return "Minimum Strike Price Fraction Mantissa: "..value
end

-- Dissect: Minimum Strike Price Fraction Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_strike_price_fraction_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_strike_price_fraction_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_strike_price_fraction_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Minimum Strike Price Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_strike_price_fraction_exponent = 1

-- Display: Minimum Strike Price Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_strike_price_fraction_exponent = function(value)
  return "Minimum Strike Price Fraction Exponent: "..value
end

-- Dissect: Minimum Strike Price Fraction Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_strike_price_fraction_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_strike_price_fraction_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_strike_price_fraction_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Minimum Strike Price Fraction
cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_strike_price_fraction = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_strike_price_fraction_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_strike_price_fraction_mantissa

  return index
end

-- Display: Minimum Strike Price Fraction
cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_strike_price_fraction = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Strike Price Fraction
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_strike_price_fraction_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Strike Price Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_strike_price_fraction_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_strike_price_fraction_exponent(buffer, index, packet, parent)

  -- Minimum Strike Price Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_strike_price_fraction_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_strike_price_fraction_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Strike Price Fraction
cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_strike_price_fraction = function(buffer, offset, packet, parent)
  if show.minimum_strike_price_fraction then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.minimum_strike_price_fraction, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_strike_price_fraction_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.minimum_strike_price_fraction(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_strike_price_fraction_fields(buffer, offset, packet, element)
  end
end

-- Size: Put Or Call
cboe_options_marketdatafeed_csm_v1_4_2_size_of.put_or_call = 1

-- Display: Put Or Call
cboe_options_marketdatafeed_csm_v1_4_2_display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cboe_options_marketdatafeed_csm_v1_4_2_dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_size_of.strike_price_mantissa = 4

-- Display: Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_display.strike_price_mantissa = function(value)
  return "Strike Price Mantissa: "..value
end

-- Dissect: Strike Price Mantissa
cboe_options_marketdatafeed_csm_v1_4_2_dissect.strike_price_mantissa = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.strike_price_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.strike_price_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2_size_of.strike_price_exponent = 1

-- Display: Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2_display.strike_price_exponent = function(value)
  return "Strike Price Exponent: "..value
end

-- Dissect: Strike Price Exponent
cboe_options_marketdatafeed_csm_v1_4_2_dissect.strike_price_exponent = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.strike_price_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.strike_price_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strike Price
cboe_options_marketdatafeed_csm_v1_4_2_size_of.strike_price = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.strike_price_exponent

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.strike_price_mantissa

  return index
end

-- Display: Strike Price
cboe_options_marketdatafeed_csm_v1_4_2_display.strike_price = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price
cboe_options_marketdatafeed_csm_v1_4_2_dissect.strike_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strike Price Exponent: 1 Byte Signed Fixed Width Integer
  index, strike_price_exponent = cboe_options_marketdatafeed_csm_v1_4_2_dissect.strike_price_exponent(buffer, index, packet, parent)

  -- Strike Price Mantissa: 4 Byte Signed Fixed Width Integer
  index, strike_price_mantissa = cboe_options_marketdatafeed_csm_v1_4_2_dissect.strike_price_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price
cboe_options_marketdatafeed_csm_v1_4_2_dissect.strike_price = function(buffer, offset, packet, parent)
  if show.strike_price then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.strike_price, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.strike_price_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.strike_price(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.strike_price_fields(buffer, offset, packet, element)
  end
end

-- Size: Maturity Date
cboe_options_marketdatafeed_csm_v1_4_2_size_of.maturity_date = 8

-- Display: Maturity Date
cboe_options_marketdatafeed_csm_v1_4_2_display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cboe_options_marketdatafeed_csm_v1_4_2_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Display: Target Location Id Text
cboe_options_marketdatafeed_csm_v1_4_2_display.target_location_id_text = function(value)
  return "Target Location Id Text: "..value
end

-- Dissect runtime sized field: Target Location Id Text
cboe_options_marketdatafeed_csm_v1_4_2_dissect.target_location_id_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.target_location_id_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id_text, range, value, display)

  return offset + size
end

-- Size: Target Location Id Length
cboe_options_marketdatafeed_csm_v1_4_2_size_of.target_location_id_length = 1

-- Display: Target Location Id Length
cboe_options_marketdatafeed_csm_v1_4_2_display.target_location_id_length = function(value)
  return "Target Location Id Length: "..value
end

-- Dissect: Target Location Id Length
cboe_options_marketdatafeed_csm_v1_4_2_dissect.target_location_id_length = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.target_location_id_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.target_location_id_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Target Location Id
cboe_options_marketdatafeed_csm_v1_4_2_size_of.target_location_id = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.target_location_id_length

  -- Parse runtime size of: Target Location Id Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Target Location Id
cboe_options_marketdatafeed_csm_v1_4_2_display.target_location_id = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Target Location Id
cboe_options_marketdatafeed_csm_v1_4_2_dissect.target_location_id_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Target Location Id Length: 1 Byte Unsigned Fixed Width Integer
  index, target_location_id_length = cboe_options_marketdatafeed_csm_v1_4_2_dissect.target_location_id_length(buffer, index, packet, parent)

  -- Runtime Size Of: Target Location Id Text
  index, target_location_id_text = cboe_options_marketdatafeed_csm_v1_4_2_dissect.target_location_id_text(buffer, index, packet, parent, target_location_id_length)

  return index
end

-- Dissect: Target Location Id
cboe_options_marketdatafeed_csm_v1_4_2_dissect.target_location_id = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.target_location_id then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.target_location_id(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.target_location_id(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.target_location_id, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.target_location_id_fields(buffer, offset, packet, parent)
end

-- Size: Security Exchange
cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_exchange = 1

-- Display: Security Exchange
cboe_options_marketdatafeed_csm_v1_4_2_display.security_exchange = function(value)
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
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_exchange = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_exchange
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.security_exchange(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Display: Security Type Text
cboe_options_marketdatafeed_csm_v1_4_2_display.security_type_text = function(value)
  return "Security Type Text: "..value
end

-- Dissect runtime sized field: Security Type Text
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_type_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.security_type_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type_text, range, value, display)

  return offset + size
end

-- Size: Security Type Length
cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_type_length = 1

-- Display: Security Type Length
cboe_options_marketdatafeed_csm_v1_4_2_display.security_type_length = function(value)
  return "Security Type Length: "..value
end

-- Dissect: Security Type Length
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_type_length = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_type_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.security_type_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Type
cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_type = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_type_length

  -- Parse runtime size of: Security Type Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Security Type
cboe_options_marketdatafeed_csm_v1_4_2_display.security_type = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Type
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_type_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Type Length: 1 Byte Unsigned Fixed Width Integer
  index, security_type_length = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_type_length(buffer, index, packet, parent)

  -- Runtime Size Of: Security Type Text
  index, security_type_text = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_type_text(buffer, index, packet, parent, security_type_length)

  return index
end

-- Dissect: Security Type
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_type = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_type then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_type(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.security_type(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.security_type, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_type_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Security Definition Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_definition_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_type(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_exchange

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.symbol(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.target_location_id(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.class_key

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.maturity_date

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.price_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.strike_price(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.put_or_call

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_strike_price_fraction(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.max_strike_price(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.premium_break_point(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_above_premium_fraction(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.minimum_below_premium_fraction(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.exercise_style

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.currency_code(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_symbol(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.underlying_type(buffer, offset + index)

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.contract_size

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.no_legs

  -- Calculate field size from count
  local security_definition_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + security_definition_leg_count * 9

  return index
end

-- Display: Security Definition Message
cboe_options_marketdatafeed_csm_v1_4_2_display.security_definition_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Type: Struct of 2 fields
  index, security_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 1 Byte Ascii String Enum with 5 values
  index, security_exchange = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_exchange(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_options_marketdatafeed_csm_v1_4_2_dissect.symbol(buffer, index, packet, parent)

  -- Target Location Id: Struct of 2 fields
  index, target_location_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.target_location_id(buffer, index, packet, parent)

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketdatafeed_csm_v1_4_2_dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_id(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Unsigned Fixed Width Integer
  index, maturity_date = cboe_options_marketdatafeed_csm_v1_4_2_dissect.maturity_date(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.price_type(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = cboe_options_marketdatafeed_csm_v1_4_2_dissect.strike_price(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = cboe_options_marketdatafeed_csm_v1_4_2_dissect.put_or_call(buffer, index, packet, parent)

  -- Minimum Strike Price Fraction: Struct of 2 fields
  index, minimum_strike_price_fraction = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_strike_price_fraction(buffer, index, packet, parent)

  -- Max Strike Price: Struct of 2 fields
  index, max_strike_price = cboe_options_marketdatafeed_csm_v1_4_2_dissect.max_strike_price(buffer, index, packet, parent)

  -- Premium Break Point: Struct of 2 fields
  index, premium_break_point = cboe_options_marketdatafeed_csm_v1_4_2_dissect.premium_break_point(buffer, index, packet, parent)

  -- Minimum Above Premium Fraction: Struct of 2 fields
  index, minimum_above_premium_fraction = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_above_premium_fraction(buffer, index, packet, parent)

  -- Minimum Below Premium Fraction: Struct of 2 fields
  index, minimum_below_premium_fraction = cboe_options_marketdatafeed_csm_v1_4_2_dissect.minimum_below_premium_fraction(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, exercise_style = cboe_options_marketdatafeed_csm_v1_4_2_dissect.exercise_style(buffer, index, packet, parent)

  -- Currency Code: Struct of 2 fields
  index, currency_code = cboe_options_marketdatafeed_csm_v1_4_2_dissect.currency_code(buffer, index, packet, parent)

  -- Underlying Symbol: Struct of 2 fields
  index, underlying_symbol = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Underlying Type: Struct of 2 fields
  index, underlying_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.underlying_type(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Unsigned Fixed Width Integer
  index, contract_size = cboe_options_marketdatafeed_csm_v1_4_2_dissect.contract_size(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = cboe_options_marketdatafeed_csm_v1_4_2_dissect.no_legs(buffer, index, packet, parent)

  -- Repeating: Security Definition Leg
  for security_definition_leg_index = 1, no_legs do
    index, security_definition_leg = cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_definition_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Security Definition Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.security_definition_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.security_definition_message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_definition_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cboe_options_marketdatafeed_csm_v1_4_2_size_of.payload = function(buffer, offset, template_id)
  -- Size of Security Definition Message
  if template_id == 13 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.security_definition_message(buffer, offset)
  end
  -- Size of Current Market Refresh Message
  if template_id == 11 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.current_market_refresh_message(buffer, offset)
  end
  -- Size of Market Data Refresh Message
  if template_id == 20 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.market_data_refresh_message(buffer, offset)
  end
  -- Size of Current Market Update Message
  if template_id == 12 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.current_market_update_message(buffer, offset)
  end
  -- Size of Recap Update Message
  if template_id == 21 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.recap_update_message(buffer, offset)
  end
  -- Size of Ticker Message
  if template_id == 14 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.ticker_message(buffer, offset)
  end
  -- Size of Expected Opening Price And Size Message
  if template_id == 15 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.expected_opening_price_and_size_message(buffer, offset)
  end
  -- Size of Index Value Message
  if template_id == 22 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.index_value_message(buffer, offset)
  end
  -- Size of Settlement Value Message
  if template_id == 23 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.settlement_value_message(buffer, offset)
  end
  -- Size of Summary Message
  if template_id == 24 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.summary_message(buffer, offset)
  end
  -- Size of Market Data Control Message
  if template_id == 25 then
    return cboe_options_marketdatafeed_csm_v1_4_2_size_of.market_data_control_message(buffer, offset)
  end
  -- Size of Heartbeat Message
  if template_id == 16 then
    return 0
  end

  return 0
end

-- Display: Payload
cboe_options_marketdatafeed_csm_v1_4_2_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_options_marketdatafeed_csm_v1_4_2_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Security Definition Message
  if template_id == 13 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.security_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Current Market Refresh Message
  if template_id == 11 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.current_market_refresh_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Data Refresh Message
  if template_id == 20 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.market_data_refresh_message(buffer, offset, packet, parent)
  end
  -- Dissect Current Market Update Message
  if template_id == 12 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.current_market_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Recap Update Message
  if template_id == 21 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.recap_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Ticker Message
  if template_id == 14 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.ticker_message(buffer, offset, packet, parent)
  end
  -- Dissect Expected Opening Price And Size Message
  if template_id == 15 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.expected_opening_price_and_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Index Value Message
  if template_id == 22 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.index_value_message(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Value Message
  if template_id == 23 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.settlement_value_message(buffer, offset, packet, parent)
  end
  -- Dissect Summary Message
  if template_id == 24 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Data Control Message
  if template_id == 25 then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.market_data_control_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 16 then
  end

  return offset
end

-- Dissect: Payload
cboe_options_marketdatafeed_csm_v1_4_2_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_options_marketdatafeed_csm_v1_4_2_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.payload, range, display)

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2_size_of.msg_seq_num = 4

-- Display: Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2_display.msg_seq_num = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2_dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.msg_seq_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Message Type
cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_type = 1

-- Display: Message Type
cboe_options_marketdatafeed_csm_v1_4_2_display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Template Id
cboe_options_marketdatafeed_csm_v1_4_2_size_of.template_id = 1

-- Display: Template Id
cboe_options_marketdatafeed_csm_v1_4_2_display.template_id = function(value)
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
cboe_options_marketdatafeed_csm_v1_4_2_dissect.template_id = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.template_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.template_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_length = 2

-- Display: Message Length
cboe_options_marketdatafeed_csm_v1_4_2_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_length

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.template_id

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_type

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.msg_seq_num

  return index
end

-- Display: Message Header
cboe_options_marketdatafeed_csm_v1_4_2_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_length(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, template_id = cboe_options_marketdatafeed_csm_v1_4_2_dissect.template_id(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_type(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = cboe_options_marketdatafeed_csm_v1_4_2_dissect.msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.message_header, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Message
cboe_options_marketdatafeed_csm_v1_4_2_size_of.message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 1):uint()
  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cboe_options_marketdatafeed_csm_v1_4_2_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 4 fields
  index, message_header = cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 12 branches
  index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cboe_options_marketdatafeed_csm_v1_4_2_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.message, range, display)
  end

  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: First Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2_size_of.first_msg_seq_num = 4

-- Display: First Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2_display.first_msg_seq_num = function(value)
  return "First Msg Seq Num: "..value
end

-- Dissect: First Msg Seq Num
cboe_options_marketdatafeed_csm_v1_4_2_dissect.first_msg_seq_num = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.first_msg_seq_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.first_msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.first_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Message Count
cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_count = 1

-- Display: Message Count
cboe_options_marketdatafeed_csm_v1_4_2_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_count = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.message_count(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
cboe_options_marketdatafeed_csm_v1_4_2_size_of.sending_time = 8

-- Display: Sending Time
cboe_options_marketdatafeed_csm_v1_4_2_display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
cboe_options_marketdatafeed_csm_v1_4_2_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
cboe_options_marketdatafeed_csm_v1_4_2_size_of.packet_length = 2

-- Display: Packet Length
cboe_options_marketdatafeed_csm_v1_4_2_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
cboe_options_marketdatafeed_csm_v1_4_2_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Version
cboe_options_marketdatafeed_csm_v1_4_2_size_of.version = 1

-- Display: Version
cboe_options_marketdatafeed_csm_v1_4_2_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
cboe_options_marketdatafeed_csm_v1_4_2_dissect.version = function(buffer, offset, packet, parent)
  local length = cboe_options_marketdatafeed_csm_v1_4_2_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketdatafeed_csm_v1_4_2_display.version(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_options_marketdatafeed_csm_v1_4_2_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.version

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.packet_length

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.sending_time

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.message_count

  index = index + cboe_options_marketdatafeed_csm_v1_4_2_size_of.first_msg_seq_num

  return index
end

-- Display: Packet Header
cboe_options_marketdatafeed_csm_v1_4_2_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_options_marketdatafeed_csm_v1_4_2_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = cboe_options_marketdatafeed_csm_v1_4_2_dissect.version(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = cboe_options_marketdatafeed_csm_v1_4_2_dissect.packet_length(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cboe_options_marketdatafeed_csm_v1_4_2_dissect.sending_time(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_options_marketdatafeed_csm_v1_4_2_dissect.message_count(buffer, index, packet, parent)

  -- First Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, first_msg_seq_num = cboe_options_marketdatafeed_csm_v1_4_2_dissect.first_msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_options_marketdatafeed_csm_v1_4_2_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_options_marketdatafeed_csm_v1_4_2.fields.packet_header, buffer(offset, 0))
    local index = cboe_options_marketdatafeed_csm_v1_4_2_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_options_marketdatafeed_csm_v1_4_2_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_options_marketdatafeed_csm_v1_4_2_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
cboe_options_marketdatafeed_csm_v1_4_2_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = cboe_options_marketdatafeed_csm_v1_4_2_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 5, 1):uint()

  -- Repeating: Message
  for message_index = 1, message_count do
    index, message = cboe_options_marketdatafeed_csm_v1_4_2_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_options_marketdatafeed_csm_v1_4_2.init()
end

-- Dissector for Cboe Options MarketDataFeed Csm 1.4.2
function cboe_options_marketdatafeed_csm_v1_4_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_options_marketdatafeed_csm_v1_4_2.name

  -- Dissect protocol
  local protocol = parent:add(cboe_options_marketdatafeed_csm_v1_4_2, buffer(), cboe_options_marketdatafeed_csm_v1_4_2.description, "("..buffer:len().." Bytes)")
  return cboe_options_marketdatafeed_csm_v1_4_2_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_options_marketdatafeed_csm_v1_4_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_options_marketdatafeed_csm_v1_4_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Options MarketDataFeed Csm 1.4.2
local function cboe_options_marketdatafeed_csm_v1_4_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_options_marketdatafeed_csm_v1_4_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_options_marketdatafeed_csm_v1_4_2
  cboe_options_marketdatafeed_csm_v1_4_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Options MarketDataFeed Csm 1.4.2
cboe_options_marketdatafeed_csm_v1_4_2:register_heuristic("udp", cboe_options_marketdatafeed_csm_v1_4_2_heuristic)

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
