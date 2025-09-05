-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Options MarketLevel2 Csm 1.0.4 Protocol
local omi_cboe_options_marketlevel2_csm_v1_0_4 = Proto("Cboe.Options.MarketLevel2.Csm.v1.0.4.Lua", "Cboe Options MarketLevel2 Csm 1.0.4")

-- Protocol table
local cboe_options_marketlevel2_csm_v1_0_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Options MarketLevel2 Csm 1.0.4 Fields
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.class_key = ProtoField.new("Class Key", "cboe.options.marketlevel2.csm.v1.0.4.classkey", ftypes.UINT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.contract_size = ProtoField.new("Contract Size", "cboe.options.marketlevel2.csm.v1.0.4.contractsize", ftypes.UINT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code = ProtoField.new("Currency Code", "cboe.options.marketlevel2.csm.v1.0.4.currencycode", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code_length = ProtoField.new("Currency Code Length", "cboe.options.marketlevel2.csm.v1.0.4.currencycodelength", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code_text = ProtoField.new("Currency Code Text", "cboe.options.marketlevel2.csm.v1.0.4.currencycodetext", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.exercise_style = ProtoField.new("Exercise Style", "cboe.options.marketlevel2.csm.v1.0.4.exercisestyle", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.first_msg_seq_num = ProtoField.new("First Msg Seq Num", "cboe.options.marketlevel2.csm.v1.0.4.firstmsgseqnum", ftypes.UINT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_md_entry = ProtoField.new("Incremental Refresh Md Entry", "cboe.options.marketlevel2.csm.v1.0.4.incrementalrefreshmdentry", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cboe.options.marketlevel2.csm.v1.0.4.legratioqty", ftypes.UINT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.leg_security_id = ProtoField.new("Leg Security Id", "cboe.options.marketlevel2.csm.v1.0.4.legsecurityid", ftypes.UINT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.leg_side = ProtoField.new("Leg Side", "cboe.options.marketlevel2.csm.v1.0.4.legside", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.options.marketlevel2.csm.v1.0.4.maturitydate", ftypes.UINT64)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price = ProtoField.new("Max Strike Price", "cboe.options.marketlevel2.csm.v1.0.4.maxstrikeprice", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price_exponent = ProtoField.new("Max Strike Price Exponent", "cboe.options.marketlevel2.csm.v1.0.4.maxstrikepriceexponent", ftypes.INT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price_mantissa = ProtoField.new("Max Strike Price Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.maxstrikepricemantissa", ftypes.INT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px = ProtoField.new("Md Entry Px", "cboe.options.marketlevel2.csm.v1.0.4.mdentrypx", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px_exponent = ProtoField.new("Md Entry Px Exponent", "cboe.options.marketlevel2.csm.v1.0.4.mdentrypxexponent", ftypes.INT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px_mantissa = ProtoField.new("Md Entry Px Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.mdentrypxmantissa", ftypes.INT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_size = ProtoField.new("Md Entry Size", "cboe.options.marketlevel2.csm.v1.0.4.mdentrysize", ftypes.UINT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_type = ProtoField.new("Md Entry Type", "cboe.options.marketlevel2.csm.v1.0.4.mdentrytype", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_price_level = ProtoField.new("Md Price Level", "cboe.options.marketlevel2.csm.v1.0.4.mdpricelevel", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_update_action = ProtoField.new("Md Update Action", "cboe.options.marketlevel2.csm.v1.0.4.mdupdateaction", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_entry = ProtoField.new("Md Volume Entry", "cboe.options.marketlevel2.csm.v1.0.4.mdvolumeentry", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_type = ProtoField.new("Md Volume Type", "cboe.options.marketlevel2.csm.v1.0.4.mdvolumetype", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message = ProtoField.new("Message", "cboe.options.marketlevel2.csm.v1.0.4.message", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_count = ProtoField.new("Message Count", "cboe.options.marketlevel2.csm.v1.0.4.messagecount", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_header = ProtoField.new("Message Header", "cboe.options.marketlevel2.csm.v1.0.4.messageheader", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_length = ProtoField.new("Message Length", "cboe.options.marketlevel2.csm.v1.0.4.messagelength", ftypes.UINT16)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_type = ProtoField.new("Message Type", "cboe.options.marketlevel2.csm.v1.0.4.messagetype", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction = ProtoField.new("Minimum Above Premium Fraction", "cboe.options.marketlevel2.csm.v1.0.4.minimumabovepremiumfraction", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction_exponent = ProtoField.new("Minimum Above Premium Fraction Exponent", "cboe.options.marketlevel2.csm.v1.0.4.minimumabovepremiumfractionexponent", ftypes.INT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction_mantissa = ProtoField.new("Minimum Above Premium Fraction Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.minimumabovepremiumfractionmantissa", ftypes.INT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction = ProtoField.new("Minimum Below Premium Fraction", "cboe.options.marketlevel2.csm.v1.0.4.minimumbelowpremiumfraction", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction_exponent = ProtoField.new("Minimum Below Premium Fraction Exponent", "cboe.options.marketlevel2.csm.v1.0.4.minimumbelowpremiumfractionexponent", ftypes.INT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction_mantissa = ProtoField.new("Minimum Below Premium Fraction Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.minimumbelowpremiumfractionmantissa", ftypes.INT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction = ProtoField.new("Minimum Strike Price Fraction", "cboe.options.marketlevel2.csm.v1.0.4.minimumstrikepricefraction", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction_exponent = ProtoField.new("Minimum Strike Price Fraction Exponent", "cboe.options.marketlevel2.csm.v1.0.4.minimumstrikepricefractionexponent", ftypes.INT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction_mantissa = ProtoField.new("Minimum Strike Price Fraction Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.minimumstrikepricefractionmantissa", ftypes.INT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "cboe.options.marketlevel2.csm.v1.0.4.msgseqnum", ftypes.UINT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.no_entries = ProtoField.new("No Entries", "cboe.options.marketlevel2.csm.v1.0.4.noentries", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.no_legs = ProtoField.new("No Legs", "cboe.options.marketlevel2.csm.v1.0.4.nolegs", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.packet = ProtoField.new("Packet", "cboe.options.marketlevel2.csm.v1.0.4.packet", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.options.marketlevel2.csm.v1.0.4.packetheader", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.packet_length = ProtoField.new("Packet Length", "cboe.options.marketlevel2.csm.v1.0.4.packetlength", ftypes.UINT16)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.payload = ProtoField.new("Payload", "cboe.options.marketlevel2.csm.v1.0.4.payload", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point = ProtoField.new("Premium Break Point", "cboe.options.marketlevel2.csm.v1.0.4.premiumbreakpoint", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point_exponent = ProtoField.new("Premium Break Point Exponent", "cboe.options.marketlevel2.csm.v1.0.4.premiumbreakpointexponent", ftypes.INT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point_mantissa = ProtoField.new("Premium Break Point Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.premiumbreakpointmantissa", ftypes.INT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.price_type = ProtoField.new("Price Type", "cboe.options.marketlevel2.csm.v1.0.4.pricetype", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.put_or_call = ProtoField.new("Put Or Call", "cboe.options.marketlevel2.csm.v1.0.4.putorcall", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.refresh_indicator = ProtoField.new("Refresh Indicator", "cboe.options.marketlevel2.csm.v1.0.4.refreshindicator", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.rpt_seq = ProtoField.new("Rpt Seq", "cboe.options.marketlevel2.csm.v1.0.4.rptseq", ftypes.UINT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_leg = ProtoField.new("Security Definition Leg", "cboe.options.marketlevel2.csm.v1.0.4.securitydefinitionleg", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_exchange = ProtoField.new("Security Exchange", "cboe.options.marketlevel2.csm.v1.0.4.securityexchange", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_id = ProtoField.new("Security Id", "cboe.options.marketlevel2.csm.v1.0.4.securityid", ftypes.UINT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_trading_status = ProtoField.new("Security Trading Status", "cboe.options.marketlevel2.csm.v1.0.4.securitytradingstatus", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_type = ProtoField.new("Security Type", "cboe.options.marketlevel2.csm.v1.0.4.securitytype", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_type_length = ProtoField.new("Security Type Length", "cboe.options.marketlevel2.csm.v1.0.4.securitytypelength", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_type_text = ProtoField.new("Security Type Text", "cboe.options.marketlevel2.csm.v1.0.4.securitytypetext", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.sending_time = ProtoField.new("Sending Time", "cboe.options.marketlevel2.csm.v1.0.4.sendingtime", ftypes.UINT64)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_md_entry = ProtoField.new("Snapshot Full Refresh Md Entry", "cboe.options.marketlevel2.csm.v1.0.4.snapshotfullrefreshmdentry", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price = ProtoField.new("Strike Price", "cboe.options.marketlevel2.csm.v1.0.4.strikeprice", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price_exponent = ProtoField.new("Strike Price Exponent", "cboe.options.marketlevel2.csm.v1.0.4.strikepriceexponent", ftypes.INT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price_mantissa = ProtoField.new("Strike Price Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.strikepricemantissa", ftypes.INT32)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.symbol = ProtoField.new("Symbol", "cboe.options.marketlevel2.csm.v1.0.4.symbol", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.symbol_length = ProtoField.new("Symbol Length", "cboe.options.marketlevel2.csm.v1.0.4.symbollength", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.symbol_text = ProtoField.new("Symbol Text", "cboe.options.marketlevel2.csm.v1.0.4.symboltext", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id = ProtoField.new("Target Location Id", "cboe.options.marketlevel2.csm.v1.0.4.targetlocationid", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id_length = ProtoField.new("Target Location Id Length", "cboe.options.marketlevel2.csm.v1.0.4.targetlocationidlength", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id_text = ProtoField.new("Target Location Id Text", "cboe.options.marketlevel2.csm.v1.0.4.targetlocationidtext", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.template_id = ProtoField.new("Template Id", "cboe.options.marketlevel2.csm.v1.0.4.templateid", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cboe.options.marketlevel2.csm.v1.0.4.underlyingsymbol", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol_length = ProtoField.new("Underlying Symbol Length", "cboe.options.marketlevel2.csm.v1.0.4.underlyingsymbollength", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol_text = ProtoField.new("Underlying Symbol Text", "cboe.options.marketlevel2.csm.v1.0.4.underlyingsymboltext", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type = ProtoField.new("Underlying Type", "cboe.options.marketlevel2.csm.v1.0.4.underlyingtype", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type_length = ProtoField.new("Underlying Type Length", "cboe.options.marketlevel2.csm.v1.0.4.underlyingtypelength", ftypes.UINT8)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type_text = ProtoField.new("Underlying Type Text", "cboe.options.marketlevel2.csm.v1.0.4.underlyingtypetext", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.version = ProtoField.new("Version", "cboe.options.marketlevel2.csm.v1.0.4.version", ftypes.UINT8)

-- Cboe Options MarketLevel2 Csm 1.0.4 messages
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_message = ProtoField.new("Incremental Refresh Message", "cboe.options.marketlevel2.csm.v1.0.4.incrementalrefreshmessage", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_message = ProtoField.new("Security Definition Message", "cboe.options.marketlevel2.csm.v1.0.4.securitydefinitionmessage", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_status_message = ProtoField.new("Security Status Message", "cboe.options.marketlevel2.csm.v1.0.4.securitystatusmessage", ftypes.STRING)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_message = ProtoField.new("Snapshot Full Refresh Message", "cboe.options.marketlevel2.csm.v1.0.4.snapshotfullrefreshmessage", ftypes.STRING)

-- Cboe Options MarketLevel2 Csm 1.0.4 generated fields
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_md_entry_index = ProtoField.new("Incremental Refresh Md Entry Index", "cboe.options.marketlevel2.csm.v1.0.4.incrementalrefreshmdentryindex", ftypes.UINT16)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_entry_index = ProtoField.new("Md Volume Entry Index", "cboe.options.marketlevel2.csm.v1.0.4.mdvolumeentryindex", ftypes.UINT16)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_index = ProtoField.new("Message Index", "cboe.options.marketlevel2.csm.v1.0.4.messageindex", ftypes.UINT16)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_leg_index = ProtoField.new("Security Definition Leg Index", "cboe.options.marketlevel2.csm.v1.0.4.securitydefinitionlegindex", ftypes.UINT16)
omi_cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_md_entry_index = ProtoField.new("Snapshot Full Refresh Md Entry Index", "cboe.options.marketlevel2.csm.v1.0.4.snapshotfullrefreshmdentryindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Options MarketLevel2 Csm 1.0.4 Element Dissection Options
show.currency_code = true
show.incremental_refresh_md_entry = true
show.incremental_refresh_message = true
show.max_strike_price = true
show.md_entry_px = true
show.md_volume_entry = true
show.message = true
show.message_header = true
show.minimum_above_premium_fraction = true
show.minimum_below_premium_fraction = true
show.minimum_strike_price_fraction = true
show.packet = true
show.packet_header = true
show.premium_break_point = true
show.security_definition_leg = true
show.security_definition_message = true
show.security_status_message = true
show.security_type = true
show.snapshot_full_refresh_md_entry = true
show.snapshot_full_refresh_message = true
show.strike_price = true
show.symbol = true
show.target_location_id = true
show.underlying_symbol = true
show.underlying_type = true
show.payload = false

-- Register Cboe Options MarketLevel2 Csm 1.0.4 Show Options
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_currency_code = Pref.bool("Show Currency Code", show.currency_code, "Parse and add Currency Code to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_md_entry = Pref.bool("Show Incremental Refresh Md Entry", show.incremental_refresh_md_entry, "Parse and add Incremental Refresh Md Entry to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_message = Pref.bool("Show Incremental Refresh Message", show.incremental_refresh_message, "Parse and add Incremental Refresh Message to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_max_strike_price = Pref.bool("Show Max Strike Price", show.max_strike_price, "Parse and add Max Strike Price to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_entry_px = Pref.bool("Show Md Entry Px", show.md_entry_px, "Parse and add Md Entry Px to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_volume_entry = Pref.bool("Show Md Volume Entry", show.md_volume_entry, "Parse and add Md Volume Entry to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_above_premium_fraction = Pref.bool("Show Minimum Above Premium Fraction", show.minimum_above_premium_fraction, "Parse and add Minimum Above Premium Fraction to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_below_premium_fraction = Pref.bool("Show Minimum Below Premium Fraction", show.minimum_below_premium_fraction, "Parse and add Minimum Below Premium Fraction to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_strike_price_fraction = Pref.bool("Show Minimum Strike Price Fraction", show.minimum_strike_price_fraction, "Parse and add Minimum Strike Price Fraction to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_premium_break_point = Pref.bool("Show Premium Break Point", show.premium_break_point, "Parse and add Premium Break Point to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_leg = Pref.bool("Show Security Definition Leg", show.security_definition_leg, "Parse and add Security Definition Leg to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_message = Pref.bool("Show Security Definition Message", show.security_definition_message, "Parse and add Security Definition Message to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_type = Pref.bool("Show Security Type", show.security_type, "Parse and add Security Type to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_md_entry = Pref.bool("Show Snapshot Full Refresh Md Entry", show.snapshot_full_refresh_md_entry, "Parse and add Snapshot Full Refresh Md Entry to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_message = Pref.bool("Show Snapshot Full Refresh Message", show.snapshot_full_refresh_message, "Parse and add Snapshot Full Refresh Message to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_strike_price = Pref.bool("Show Strike Price", show.strike_price, "Parse and add Strike Price to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_symbol = Pref.bool("Show Symbol", show.symbol, "Parse and add Symbol to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_target_location_id = Pref.bool("Show Target Location Id", show.target_location_id, "Parse and add Target Location Id to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_symbol = Pref.bool("Show Underlying Symbol", show.underlying_symbol, "Parse and add Underlying Symbol to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_type = Pref.bool("Show Underlying Type", show.underlying_type, "Parse and add Underlying Type to protocol tree")
omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cboe_options_marketlevel2_csm_v1_0_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.currency_code ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_currency_code then
    show.currency_code = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_currency_code
    changed = true
  end
  if show.incremental_refresh_md_entry ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_md_entry then
    show.incremental_refresh_md_entry = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_md_entry
    changed = true
  end
  if show.incremental_refresh_message ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_message then
    show.incremental_refresh_message = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_message
    changed = true
  end
  if show.max_strike_price ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_max_strike_price then
    show.max_strike_price = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_max_strike_price
    changed = true
  end
  if show.md_entry_px ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_entry_px then
    show.md_entry_px = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_entry_px
    changed = true
  end
  if show.md_volume_entry ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_volume_entry then
    show.md_volume_entry = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_volume_entry
    changed = true
  end
  if show.message ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message then
    show.message = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message_header then
    show.message_header = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message_header
    changed = true
  end
  if show.minimum_above_premium_fraction ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_above_premium_fraction then
    show.minimum_above_premium_fraction = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_above_premium_fraction
    changed = true
  end
  if show.minimum_below_premium_fraction ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_below_premium_fraction then
    show.minimum_below_premium_fraction = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_below_premium_fraction
    changed = true
  end
  if show.minimum_strike_price_fraction ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_strike_price_fraction then
    show.minimum_strike_price_fraction = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_strike_price_fraction
    changed = true
  end
  if show.packet ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet then
    show.packet = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet_header then
    show.packet_header = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet_header
    changed = true
  end
  if show.premium_break_point ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_premium_break_point then
    show.premium_break_point = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_premium_break_point
    changed = true
  end
  if show.security_definition_leg ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_leg then
    show.security_definition_leg = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_leg
    changed = true
  end
  if show.security_definition_message ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_message then
    show.security_definition_message = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_message
    changed = true
  end
  if show.security_status_message ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_status_message then
    show.security_status_message = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_status_message
    changed = true
  end
  if show.security_type ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_type then
    show.security_type = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_type
    changed = true
  end
  if show.snapshot_full_refresh_md_entry ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_md_entry then
    show.snapshot_full_refresh_md_entry = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_md_entry
    changed = true
  end
  if show.snapshot_full_refresh_message ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_message then
    show.snapshot_full_refresh_message = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_message
    changed = true
  end
  if show.strike_price ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_strike_price then
    show.strike_price = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_strike_price
    changed = true
  end
  if show.symbol ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_symbol then
    show.symbol = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_symbol
    changed = true
  end
  if show.target_location_id ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_target_location_id then
    show.target_location_id = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_target_location_id
    changed = true
  end
  if show.underlying_symbol ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_symbol then
    show.underlying_symbol = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_symbol
    changed = true
  end
  if show.underlying_type ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_type then
    show.underlying_type = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_type
    changed = true
  end
  if show.payload ~= omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_payload then
    show.payload = omi_cboe_options_marketlevel2_csm_v1_0_4.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Options MarketLevel2 Csm 1.0.4
-----------------------------------------------------------------------

-- Security Trading Status
cboe_options_marketlevel2_csm_v1_0_4.security_trading_status = {}

-- Size: Security Trading Status
cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.size = 1

-- Display: Security Trading Status
cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.display = function(value)
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
cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Rpt Seq
cboe_options_marketlevel2_csm_v1_0_4.rpt_seq = {}

-- Size: Rpt Seq
cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.size = 4

-- Display: Rpt Seq
cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.display = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Security Id
cboe_options_marketlevel2_csm_v1_0_4.security_id = {}

-- Size: Security Id
cboe_options_marketlevel2_csm_v1_0_4.security_id.size = 4

-- Display: Security Id
cboe_options_marketlevel2_csm_v1_0_4.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cboe_options_marketlevel2_csm_v1_0_4.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_id, range, value, display)

  return offset + length, value
end

-- Class Key
cboe_options_marketlevel2_csm_v1_0_4.class_key = {}

-- Size: Class Key
cboe_options_marketlevel2_csm_v1_0_4.class_key.size = 4

-- Display: Class Key
cboe_options_marketlevel2_csm_v1_0_4.class_key.display = function(value)
  return "Class Key: "..value
end

-- Dissect: Class Key
cboe_options_marketlevel2_csm_v1_0_4.class_key.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.class_key.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.class_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.class_key, range, value, display)

  return offset + length, value
end

-- Security Status Message
cboe_options_marketlevel2_csm_v1_0_4.security_status_message = {}

-- Calculate size of: Security Status Message
cboe_options_marketlevel2_csm_v1_0_4.security_status_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.class_key.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_id.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.size

  return index
end

-- Display: Security Status Message
cboe_options_marketlevel2_csm_v1_0_4.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
cboe_options_marketlevel2_csm_v1_0_4.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketlevel2_csm_v1_0_4.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketlevel2_csm_v1_0_4.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
cboe_options_marketlevel2_csm_v1_0_4.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_status_message, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Size
cboe_options_marketlevel2_csm_v1_0_4.md_entry_size = {}

-- Size: Md Entry Size
cboe_options_marketlevel2_csm_v1_0_4.md_entry_size.size = 4

-- Display: Md Entry Size
cboe_options_marketlevel2_csm_v1_0_4.md_entry_size.display = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cboe_options_marketlevel2_csm_v1_0_4.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Volume Type
cboe_options_marketlevel2_csm_v1_0_4.md_volume_type = {}

-- Size: Md Volume Type
cboe_options_marketlevel2_csm_v1_0_4.md_volume_type.size = 1

-- Display: Md Volume Type
cboe_options_marketlevel2_csm_v1_0_4.md_volume_type.display = function(value)
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
cboe_options_marketlevel2_csm_v1_0_4.md_volume_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.md_volume_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.md_volume_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_type, range, value, display)

  return offset + length, value
end

-- Md Volume Entry
cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry = {}

-- Calculate size of: Md Volume Entry
cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_volume_type.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_entry_size.size

  return index
end

-- Display: Md Volume Entry
cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Volume Entry
cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry.fields = function(buffer, offset, packet, parent, md_volume_entry_index)
  local index = offset

  -- Implicit Md Volume Entry Index
  if md_volume_entry_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_entry_index, md_volume_entry_index)
    iteration:set_generated()
  end

  -- Md Volume Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, md_volume_type = cboe_options_marketlevel2_csm_v1_0_4.md_volume_type.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_size = cboe_options_marketlevel2_csm_v1_0_4.md_entry_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Volume Entry
cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry.dissect = function(buffer, offset, packet, parent, md_volume_entry_index)
  if show.md_volume_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_entry, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry.fields(buffer, offset, packet, parent, md_volume_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry.fields(buffer, offset, packet, parent, md_volume_entry_index)
  end
end

-- No Legs
cboe_options_marketlevel2_csm_v1_0_4.no_legs = {}

-- Size: No Legs
cboe_options_marketlevel2_csm_v1_0_4.no_legs.size = 1

-- Display: No Legs
cboe_options_marketlevel2_csm_v1_0_4.no_legs.display = function(value)
  return "No Legs: "..value
end

-- Dissect: No Legs
cboe_options_marketlevel2_csm_v1_0_4.no_legs.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.no_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.no_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.no_legs, range, value, display)

  return offset + length, value
end

-- Md Entry Px Mantissa
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_mantissa = {}

-- Size: Md Entry Px Mantissa
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_mantissa.size = 4

-- Display: Md Entry Px Mantissa
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_mantissa.display = function(value)
  return "Md Entry Px Mantissa: "..value
end

-- Dissect: Md Entry Px Mantissa
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px_mantissa, range, value, display)

  return offset + length, value
end

-- Md Entry Px Exponent
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_exponent = {}

-- Size: Md Entry Px Exponent
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_exponent.size = 1

-- Display: Md Entry Px Exponent
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_exponent.display = function(value)
  return "Md Entry Px Exponent: "..value
end

-- Dissect: Md Entry Px Exponent
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px_exponent, range, value, display)

  return offset + length, value
end

-- Md Entry Px
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px = {}

-- Calculate size of: Md Entry Px
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_exponent.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_mantissa.size

  return index
end

-- Display: Md Entry Px
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entry Px
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Exponent: 1 Byte Signed Fixed Width Integer
  index, md_entry_px_exponent = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_exponent.dissect(buffer, index, packet, parent)

  -- Md Entry Px Mantissa: 4 Byte Signed Fixed Width Integer
  index, md_entry_px_mantissa = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entry Px
cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.dissect = function(buffer, offset, packet, parent)
  if show.md_entry_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.fields(buffer, offset, packet, parent)
  end
end

-- Md Price Level
cboe_options_marketlevel2_csm_v1_0_4.md_price_level = {}

-- Size: Md Price Level
cboe_options_marketlevel2_csm_v1_0_4.md_price_level.size = 1

-- Display: Md Price Level
cboe_options_marketlevel2_csm_v1_0_4.md_price_level.display = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
cboe_options_marketlevel2_csm_v1_0_4.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.md_price_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Md Entry Type
cboe_options_marketlevel2_csm_v1_0_4.md_entry_type = {}

-- Size: Md Entry Type
cboe_options_marketlevel2_csm_v1_0_4.md_entry_type.size = 1

-- Display: Md Entry Type
cboe_options_marketlevel2_csm_v1_0_4.md_entry_type.display = function(value)
  if value == "0" then
    return "Md Entry Type: Buy Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type: Sell Ask (1)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
cboe_options_marketlevel2_csm_v1_0_4.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.md_entry_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Update Action
cboe_options_marketlevel2_csm_v1_0_4.md_update_action = {}

-- Size: Md Update Action
cboe_options_marketlevel2_csm_v1_0_4.md_update_action.size = 1

-- Display: Md Update Action
cboe_options_marketlevel2_csm_v1_0_4.md_update_action.display = function(value)
  if value == 0 then
    return "Md Update Action: Insert (0)"
  end
  if value == 1 then
    return "Md Update Action: Change (1)"
  end
  if value == 2 then
    return "Md Update Action: Delete (2)"
  end
  if value == 5 then
    return "Md Update Action: Overlay (5)"
  end

  return "Md Update Action: Unknown("..value..")"
end

-- Dissect: Md Update Action
cboe_options_marketlevel2_csm_v1_0_4.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.md_update_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Incremental Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry = {}

-- Calculate size of: Incremental Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_update_action.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_entry_type.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_price_level.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.no_legs.size

  -- Calculate field size from count
  local md_volume_entry_count = buffer(offset + index - 10, 1):uint()
  index = index + md_volume_entry_count * 5

  return index
end

-- Display: Incremental Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry.fields = function(buffer, offset, packet, parent, incremental_refresh_md_entry_index)
  local index = offset

  -- Implicit Incremental Refresh Md Entry Index
  if incremental_refresh_md_entry_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_md_entry_index, incremental_refresh_md_entry_index)
    iteration:set_generated()
  end

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, md_update_action = cboe_options_marketlevel2_csm_v1_0_4.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 2 values
  index, md_entry_type = cboe_options_marketlevel2_csm_v1_0_4.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = cboe_options_marketlevel2_csm_v1_0_4.md_price_level.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = cboe_options_marketlevel2_csm_v1_0_4.no_legs.dissect(buffer, index, packet, parent)

  -- Dependency element: No Entries
  local no_entries = buffer(offset - 1, 1):uint()

  -- Repeating: Md Volume Entry
  for md_volume_entry_index = 1, no_entries do
    index, md_volume_entry = cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry.dissect(buffer, index, packet, parent, md_volume_entry_index)
  end

  return index
end

-- Dissect: Incremental Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.incremental_refresh_md_entry then
    local length = cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_md_entry, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry.fields(buffer, offset, packet, parent)
end

-- No Entries
cboe_options_marketlevel2_csm_v1_0_4.no_entries = {}

-- Size: No Entries
cboe_options_marketlevel2_csm_v1_0_4.no_entries.size = 1

-- Display: No Entries
cboe_options_marketlevel2_csm_v1_0_4.no_entries.display = function(value)
  return "No Entries: "..value
end

-- Dissect: No Entries
cboe_options_marketlevel2_csm_v1_0_4.no_entries.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.no_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.no_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.no_entries, range, value, display)

  return offset + length, value
end

-- Price Type
cboe_options_marketlevel2_csm_v1_0_4.price_type = {}

-- Size: Price Type
cboe_options_marketlevel2_csm_v1_0_4.price_type.size = 1

-- Display: Price Type
cboe_options_marketlevel2_csm_v1_0_4.price_type.display = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
cboe_options_marketlevel2_csm_v1_0_4.price_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.price_type, range, value, display)

  return offset + length, value
end

-- Incremental Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message = {}

-- Calculate size of: Incremental Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.class_key.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_id.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.price_type.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.no_entries.size

  -- Calculate field size from count
  local incremental_refresh_md_entry_count = buffer(offset + index - 1, 1):uint()
  for i = 1, incremental_refresh_md_entry_count do
    index = index + cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry.size(buffer, offset + index)
  end
  return index
end

-- Display: Incremental Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketlevel2_csm_v1_0_4.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketlevel2_csm_v1_0_4.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketlevel2_csm_v1_0_4.price_type.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketlevel2_csm_v1_0_4.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Incremental Refresh Md Entry
  for incremental_refresh_md_entry_index = 1, no_entries do
    index, incremental_refresh_md_entry = cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_md_entry.dissect(buffer, index, packet, parent, incremental_refresh_md_entry_index)
  end

  return index
end

-- Dissect: Incremental Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.incremental_refresh_message then
    local length = cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_message, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message.fields(buffer, offset, packet, parent)
end

-- Snapshot Full Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry = {}

-- Calculate size of: Snapshot Full Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_entry_type.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_price_level.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.no_legs.size

  -- Calculate field size from count
  local md_volume_entry_count = buffer(offset + index - 9, 1):uint()
  index = index + md_volume_entry_count * 5

  return index
end

-- Display: Snapshot Full Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_md_entry_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Md Entry Index
  if snapshot_full_refresh_md_entry_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_md_entry_index, snapshot_full_refresh_md_entry_index)
    iteration:set_generated()
  end

  -- Md Entry Type: 1 Byte Ascii String Enum with 2 values
  index, md_entry_type = cboe_options_marketlevel2_csm_v1_0_4.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = cboe_options_marketlevel2_csm_v1_0_4.md_price_level.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_options_marketlevel2_csm_v1_0_4.md_entry_px.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = cboe_options_marketlevel2_csm_v1_0_4.no_legs.dissect(buffer, index, packet, parent)

  -- Dependency element: No Entries
  local no_entries = buffer(offset - 1, 1):uint()

  -- Repeating: Md Volume Entry
  for md_volume_entry_index = 1, no_entries do
    index, md_volume_entry = cboe_options_marketlevel2_csm_v1_0_4.md_volume_entry.dissect(buffer, index, packet, parent, md_volume_entry_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Md Entry
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_md_entry then
    local length = cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_md_entry, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry.fields(buffer, offset, packet, parent)
end

-- Refresh Indicator
cboe_options_marketlevel2_csm_v1_0_4.refresh_indicator = {}

-- Size: Refresh Indicator
cboe_options_marketlevel2_csm_v1_0_4.refresh_indicator.size = 1

-- Display: Refresh Indicator
cboe_options_marketlevel2_csm_v1_0_4.refresh_indicator.display = function(value)
  if value == "Y" then
    return "Refresh Indicator: Mandatory Refresh (Y)"
  end
  if value == "N" then
    return "Refresh Indicator: Process If Necessary (N)"
  end

  return "Refresh Indicator: Unknown("..value..")"
end

-- Dissect: Refresh Indicator
cboe_options_marketlevel2_csm_v1_0_4.refresh_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.refresh_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.refresh_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.refresh_indicator, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message = {}

-- Calculate size of: Snapshot Full Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.class_key.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_id.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.price_type.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.refresh_indicator.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.no_entries.size

  -- Calculate field size from count
  local snapshot_full_refresh_md_entry_count = buffer(offset + index - 1, 1):uint()
  for i = 1, snapshot_full_refresh_md_entry_count do
    index = index + cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry.size(buffer, offset + index)
  end
  return index
end

-- Display: Snapshot Full Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketlevel2_csm_v1_0_4.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketlevel2_csm_v1_0_4.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cboe_options_marketlevel2_csm_v1_0_4.rpt_seq.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = cboe_options_marketlevel2_csm_v1_0_4.security_trading_status.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketlevel2_csm_v1_0_4.price_type.dissect(buffer, index, packet, parent)

  -- Refresh Indicator: 1 Byte Ascii String Enum with 2 values
  index, refresh_indicator = cboe_options_marketlevel2_csm_v1_0_4.refresh_indicator.dissect(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = cboe_options_marketlevel2_csm_v1_0_4.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Snapshot Full Refresh Md Entry
  for snapshot_full_refresh_md_entry_index = 1, no_entries do
    index, snapshot_full_refresh_md_entry = cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_md_entry.dissect(buffer, index, packet, parent, snapshot_full_refresh_md_entry_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Message
cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_message then
    local length = cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_message, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message.fields(buffer, offset, packet, parent)
end

-- Leg Side
cboe_options_marketlevel2_csm_v1_0_4.leg_side = {}

-- Size: Leg Side
cboe_options_marketlevel2_csm_v1_0_4.leg_side.size = 1

-- Display: Leg Side
cboe_options_marketlevel2_csm_v1_0_4.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: Buy Bid (B)"
  end
  if value == "S" then
    return "Leg Side: Sell Ask (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cboe_options_marketlevel2_csm_v1_0_4.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Security Id
cboe_options_marketlevel2_csm_v1_0_4.leg_security_id = {}

-- Size: Leg Security Id
cboe_options_marketlevel2_csm_v1_0_4.leg_security_id.size = 4

-- Display: Leg Security Id
cboe_options_marketlevel2_csm_v1_0_4.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
cboe_options_marketlevel2_csm_v1_0_4.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
cboe_options_marketlevel2_csm_v1_0_4.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
cboe_options_marketlevel2_csm_v1_0_4.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
cboe_options_marketlevel2_csm_v1_0_4.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cboe_options_marketlevel2_csm_v1_0_4.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Security Definition Leg
cboe_options_marketlevel2_csm_v1_0_4.security_definition_leg = {}

-- Calculate size of: Security Definition Leg
cboe_options_marketlevel2_csm_v1_0_4.security_definition_leg.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.leg_ratio_qty.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.leg_security_id.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.leg_side.size

  return index
end

-- Display: Security Definition Leg
cboe_options_marketlevel2_csm_v1_0_4.security_definition_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Leg
cboe_options_marketlevel2_csm_v1_0_4.security_definition_leg.fields = function(buffer, offset, packet, parent, security_definition_leg_index)
  local index = offset

  -- Implicit Security Definition Leg Index
  if security_definition_leg_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_leg_index, security_definition_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = cboe_options_marketlevel2_csm_v1_0_4.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_security_id = cboe_options_marketlevel2_csm_v1_0_4.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 2 values
  index, leg_side = cboe_options_marketlevel2_csm_v1_0_4.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Leg
cboe_options_marketlevel2_csm_v1_0_4.security_definition_leg.dissect = function(buffer, offset, packet, parent, security_definition_leg_index)
  if show.security_definition_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_leg, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.security_definition_leg.fields(buffer, offset, packet, parent, security_definition_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.security_definition_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.security_definition_leg.fields(buffer, offset, packet, parent, security_definition_leg_index)
  end
end

-- Contract Size
cboe_options_marketlevel2_csm_v1_0_4.contract_size = {}

-- Size: Contract Size
cboe_options_marketlevel2_csm_v1_0_4.contract_size.size = 4

-- Display: Contract Size
cboe_options_marketlevel2_csm_v1_0_4.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
cboe_options_marketlevel2_csm_v1_0_4.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.contract_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Underlying Type Text
cboe_options_marketlevel2_csm_v1_0_4.underlying_type_text = {}

-- Display: Underlying Type Text
cboe_options_marketlevel2_csm_v1_0_4.underlying_type_text.display = function(value)
  return "Underlying Type Text: "..value
end

-- Dissect runtime sized field: Underlying Type Text
cboe_options_marketlevel2_csm_v1_0_4.underlying_type_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.underlying_type_text.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type_text, range, value, display)

  return offset + size
end

-- Underlying Type Length
cboe_options_marketlevel2_csm_v1_0_4.underlying_type_length = {}

-- Size: Underlying Type Length
cboe_options_marketlevel2_csm_v1_0_4.underlying_type_length.size = 1

-- Display: Underlying Type Length
cboe_options_marketlevel2_csm_v1_0_4.underlying_type_length.display = function(value)
  return "Underlying Type Length: "..value
end

-- Dissect: Underlying Type Length
cboe_options_marketlevel2_csm_v1_0_4.underlying_type_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.underlying_type_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.underlying_type_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type_length, range, value, display)

  return offset + length, value
end

-- Underlying Type
cboe_options_marketlevel2_csm_v1_0_4.underlying_type = {}

-- Calculate size of: Underlying Type
cboe_options_marketlevel2_csm_v1_0_4.underlying_type.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.underlying_type_length.size

  -- Parse runtime size of: Underlying Type Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Underlying Type
cboe_options_marketlevel2_csm_v1_0_4.underlying_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Type
cboe_options_marketlevel2_csm_v1_0_4.underlying_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Type Length: 1 Byte Unsigned Fixed Width Integer
  index, underlying_type_length = cboe_options_marketlevel2_csm_v1_0_4.underlying_type_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Underlying Type Text
  index, underlying_type_text = cboe_options_marketlevel2_csm_v1_0_4.underlying_type_text.dissect(buffer, index, packet, parent, underlying_type_length)

  return index
end

-- Dissect: Underlying Type
cboe_options_marketlevel2_csm_v1_0_4.underlying_type.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_type then
    local length = cboe_options_marketlevel2_csm_v1_0_4.underlying_type.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.underlying_type.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.underlying_type.fields(buffer, offset, packet, parent)
end

-- Underlying Symbol Text
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_text = {}

-- Display: Underlying Symbol Text
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_text.display = function(value)
  return "Underlying Symbol Text: "..value
end

-- Dissect runtime sized field: Underlying Symbol Text
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_text.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol_text, range, value, display)

  return offset + size
end

-- Underlying Symbol Length
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_length = {}

-- Size: Underlying Symbol Length
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_length.size = 1

-- Display: Underlying Symbol Length
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_length.display = function(value)
  return "Underlying Symbol Length: "..value
end

-- Dissect: Underlying Symbol Length
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol_length, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol = {}

-- Calculate size of: Underlying Symbol
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_length.size

  -- Parse runtime size of: Underlying Symbol Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Underlying Symbol
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Symbol
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Symbol Length: 1 Byte Unsigned Fixed Width Integer
  index, underlying_symbol_length = cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Underlying Symbol Text
  index, underlying_symbol_text = cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol_text.dissect(buffer, index, packet, parent, underlying_symbol_length)

  return index
end

-- Dissect: Underlying Symbol
cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_symbol then
    local length = cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol.fields(buffer, offset, packet, parent)
end

-- Currency Code Text
cboe_options_marketlevel2_csm_v1_0_4.currency_code_text = {}

-- Display: Currency Code Text
cboe_options_marketlevel2_csm_v1_0_4.currency_code_text.display = function(value)
  return "Currency Code Text: "..value
end

-- Dissect runtime sized field: Currency Code Text
cboe_options_marketlevel2_csm_v1_0_4.currency_code_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.currency_code_text.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code_text, range, value, display)

  return offset + size
end

-- Currency Code Length
cboe_options_marketlevel2_csm_v1_0_4.currency_code_length = {}

-- Size: Currency Code Length
cboe_options_marketlevel2_csm_v1_0_4.currency_code_length.size = 1

-- Display: Currency Code Length
cboe_options_marketlevel2_csm_v1_0_4.currency_code_length.display = function(value)
  return "Currency Code Length: "..value
end

-- Dissect: Currency Code Length
cboe_options_marketlevel2_csm_v1_0_4.currency_code_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.currency_code_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.currency_code_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code_length, range, value, display)

  return offset + length, value
end

-- Currency Code
cboe_options_marketlevel2_csm_v1_0_4.currency_code = {}

-- Calculate size of: Currency Code
cboe_options_marketlevel2_csm_v1_0_4.currency_code.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.currency_code_length.size

  -- Parse runtime size of: Currency Code Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Currency Code
cboe_options_marketlevel2_csm_v1_0_4.currency_code.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Currency Code
cboe_options_marketlevel2_csm_v1_0_4.currency_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Currency Code Length: 1 Byte Unsigned Fixed Width Integer
  index, currency_code_length = cboe_options_marketlevel2_csm_v1_0_4.currency_code_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Currency Code Text
  index, currency_code_text = cboe_options_marketlevel2_csm_v1_0_4.currency_code_text.dissect(buffer, index, packet, parent, currency_code_length)

  return index
end

-- Dissect: Currency Code
cboe_options_marketlevel2_csm_v1_0_4.currency_code.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.currency_code then
    local length = cboe_options_marketlevel2_csm_v1_0_4.currency_code.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.currency_code.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.currency_code.fields(buffer, offset, packet, parent)
end

-- Exercise Style
cboe_options_marketlevel2_csm_v1_0_4.exercise_style = {}

-- Size: Exercise Style
cboe_options_marketlevel2_csm_v1_0_4.exercise_style.size = 1

-- Display: Exercise Style
cboe_options_marketlevel2_csm_v1_0_4.exercise_style.display = function(value)
  if value == 0 then
    return "Exercise Style: American (0)"
  end
  if value == 1 then
    return "Exercise Style: European (1)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
cboe_options_marketlevel2_csm_v1_0_4.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.exercise_style.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Minimum Below Premium Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_mantissa = {}

-- Size: Minimum Below Premium Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_mantissa.size = 4

-- Display: Minimum Below Premium Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_mantissa.display = function(value)
  return "Minimum Below Premium Fraction Mantissa: "..value
end

-- Dissect: Minimum Below Premium Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Minimum Below Premium Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_exponent = {}

-- Size: Minimum Below Premium Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_exponent.size = 1

-- Display: Minimum Below Premium Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_exponent.display = function(value)
  return "Minimum Below Premium Fraction Exponent: "..value
end

-- Dissect: Minimum Below Premium Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Minimum Below Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction = {}

-- Calculate size of: Minimum Below Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_exponent.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_mantissa.size

  return index
end

-- Display: Minimum Below Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Below Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Below Premium Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_below_premium_fraction_exponent = cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_exponent.dissect(buffer, index, packet, parent)

  -- Minimum Below Premium Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_below_premium_fraction_mantissa = cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Below Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction.dissect = function(buffer, offset, packet, parent)
  if show.minimum_below_premium_fraction then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Above Premium Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_mantissa = {}

-- Size: Minimum Above Premium Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_mantissa.size = 4

-- Display: Minimum Above Premium Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_mantissa.display = function(value)
  return "Minimum Above Premium Fraction Mantissa: "..value
end

-- Dissect: Minimum Above Premium Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Minimum Above Premium Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_exponent = {}

-- Size: Minimum Above Premium Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_exponent.size = 1

-- Display: Minimum Above Premium Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_exponent.display = function(value)
  return "Minimum Above Premium Fraction Exponent: "..value
end

-- Dissect: Minimum Above Premium Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Minimum Above Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction = {}

-- Calculate size of: Minimum Above Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_exponent.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_mantissa.size

  return index
end

-- Display: Minimum Above Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Above Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Above Premium Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_above_premium_fraction_exponent = cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_exponent.dissect(buffer, index, packet, parent)

  -- Minimum Above Premium Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_above_premium_fraction_mantissa = cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Above Premium Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction.dissect = function(buffer, offset, packet, parent)
  if show.minimum_above_premium_fraction then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction.fields(buffer, offset, packet, parent)
  end
end

-- Premium Break Point Mantissa
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_mantissa = {}

-- Size: Premium Break Point Mantissa
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_mantissa.size = 4

-- Display: Premium Break Point Mantissa
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_mantissa.display = function(value)
  return "Premium Break Point Mantissa: "..value
end

-- Dissect: Premium Break Point Mantissa
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point_mantissa, range, value, display)

  return offset + length, value
end

-- Premium Break Point Exponent
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_exponent = {}

-- Size: Premium Break Point Exponent
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_exponent.size = 1

-- Display: Premium Break Point Exponent
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_exponent.display = function(value)
  return "Premium Break Point Exponent: "..value
end

-- Dissect: Premium Break Point Exponent
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point_exponent, range, value, display)

  return offset + length, value
end

-- Premium Break Point
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point = {}

-- Calculate size of: Premium Break Point
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_exponent.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_mantissa.size

  return index
end

-- Display: Premium Break Point
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Premium Break Point
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Premium Break Point Exponent: 1 Byte Signed Fixed Width Integer
  index, premium_break_point_exponent = cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_exponent.dissect(buffer, index, packet, parent)

  -- Premium Break Point Mantissa: 4 Byte Signed Fixed Width Integer
  index, premium_break_point_mantissa = cboe_options_marketlevel2_csm_v1_0_4.premium_break_point_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Premium Break Point
cboe_options_marketlevel2_csm_v1_0_4.premium_break_point.dissect = function(buffer, offset, packet, parent)
  if show.premium_break_point then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.premium_break_point.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.premium_break_point.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.premium_break_point.fields(buffer, offset, packet, parent)
  end
end

-- Max Strike Price Mantissa
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_mantissa = {}

-- Size: Max Strike Price Mantissa
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_mantissa.size = 4

-- Display: Max Strike Price Mantissa
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_mantissa.display = function(value)
  return "Max Strike Price Mantissa: "..value
end

-- Dissect: Max Strike Price Mantissa
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price_mantissa, range, value, display)

  return offset + length, value
end

-- Max Strike Price Exponent
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_exponent = {}

-- Size: Max Strike Price Exponent
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_exponent.size = 1

-- Display: Max Strike Price Exponent
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_exponent.display = function(value)
  return "Max Strike Price Exponent: "..value
end

-- Dissect: Max Strike Price Exponent
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price_exponent, range, value, display)

  return offset + length, value
end

-- Max Strike Price
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price = {}

-- Calculate size of: Max Strike Price
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_exponent.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_mantissa.size

  return index
end

-- Display: Max Strike Price
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Max Strike Price
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Max Strike Price Exponent: 1 Byte Signed Fixed Width Integer
  index, max_strike_price_exponent = cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_exponent.dissect(buffer, index, packet, parent)

  -- Max Strike Price Mantissa: 4 Byte Signed Fixed Width Integer
  index, max_strike_price_mantissa = cboe_options_marketlevel2_csm_v1_0_4.max_strike_price_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Strike Price
cboe_options_marketlevel2_csm_v1_0_4.max_strike_price.dissect = function(buffer, offset, packet, parent)
  if show.max_strike_price then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.max_strike_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.max_strike_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.max_strike_price.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Strike Price Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_mantissa = {}

-- Size: Minimum Strike Price Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_mantissa.size = 4

-- Display: Minimum Strike Price Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_mantissa.display = function(value)
  return "Minimum Strike Price Fraction Mantissa: "..value
end

-- Dissect: Minimum Strike Price Fraction Mantissa
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Minimum Strike Price Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_exponent = {}

-- Size: Minimum Strike Price Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_exponent.size = 1

-- Display: Minimum Strike Price Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_exponent.display = function(value)
  return "Minimum Strike Price Fraction Exponent: "..value
end

-- Dissect: Minimum Strike Price Fraction Exponent
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Minimum Strike Price Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction = {}

-- Calculate size of: Minimum Strike Price Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_exponent.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_mantissa.size

  return index
end

-- Display: Minimum Strike Price Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Minimum Strike Price Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Strike Price Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_strike_price_fraction_exponent = cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_exponent.dissect(buffer, index, packet, parent)

  -- Minimum Strike Price Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_strike_price_fraction_mantissa = cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Strike Price Fraction
cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction.dissect = function(buffer, offset, packet, parent)
  if show.minimum_strike_price_fraction then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction.fields(buffer, offset, packet, parent)
  end
end

-- Put Or Call
cboe_options_marketlevel2_csm_v1_0_4.put_or_call = {}

-- Size: Put Or Call
cboe_options_marketlevel2_csm_v1_0_4.put_or_call.size = 1

-- Display: Put Or Call
cboe_options_marketlevel2_csm_v1_0_4.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cboe_options_marketlevel2_csm_v1_0_4.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Strike Price Mantissa
cboe_options_marketlevel2_csm_v1_0_4.strike_price_mantissa = {}

-- Size: Strike Price Mantissa
cboe_options_marketlevel2_csm_v1_0_4.strike_price_mantissa.size = 4

-- Display: Strike Price Mantissa
cboe_options_marketlevel2_csm_v1_0_4.strike_price_mantissa.display = function(value)
  return "Strike Price Mantissa: "..value
end

-- Dissect: Strike Price Mantissa
cboe_options_marketlevel2_csm_v1_0_4.strike_price_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.strike_price_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.strike_price_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price_mantissa, range, value, display)

  return offset + length, value
end

-- Strike Price Exponent
cboe_options_marketlevel2_csm_v1_0_4.strike_price_exponent = {}

-- Size: Strike Price Exponent
cboe_options_marketlevel2_csm_v1_0_4.strike_price_exponent.size = 1

-- Display: Strike Price Exponent
cboe_options_marketlevel2_csm_v1_0_4.strike_price_exponent.display = function(value)
  return "Strike Price Exponent: "..value
end

-- Dissect: Strike Price Exponent
cboe_options_marketlevel2_csm_v1_0_4.strike_price_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.strike_price_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_options_marketlevel2_csm_v1_0_4.strike_price_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price_exponent, range, value, display)

  return offset + length, value
end

-- Strike Price
cboe_options_marketlevel2_csm_v1_0_4.strike_price = {}

-- Calculate size of: Strike Price
cboe_options_marketlevel2_csm_v1_0_4.strike_price.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.strike_price_exponent.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.strike_price_mantissa.size

  return index
end

-- Display: Strike Price
cboe_options_marketlevel2_csm_v1_0_4.strike_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price
cboe_options_marketlevel2_csm_v1_0_4.strike_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strike Price Exponent: 1 Byte Signed Fixed Width Integer
  index, strike_price_exponent = cboe_options_marketlevel2_csm_v1_0_4.strike_price_exponent.dissect(buffer, index, packet, parent)

  -- Strike Price Mantissa: 4 Byte Signed Fixed Width Integer
  index, strike_price_mantissa = cboe_options_marketlevel2_csm_v1_0_4.strike_price_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price
cboe_options_marketlevel2_csm_v1_0_4.strike_price.dissect = function(buffer, offset, packet, parent)
  if show.strike_price then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.strike_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.strike_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.strike_price.fields(buffer, offset, packet, parent)
  end
end

-- Maturity Date
cboe_options_marketlevel2_csm_v1_0_4.maturity_date = {}

-- Size: Maturity Date
cboe_options_marketlevel2_csm_v1_0_4.maturity_date.size = 8

-- Display: Maturity Date
cboe_options_marketlevel2_csm_v1_0_4.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cboe_options_marketlevel2_csm_v1_0_4.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.maturity_date.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cboe_options_marketlevel2_csm_v1_0_4.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Target Location Id Text
cboe_options_marketlevel2_csm_v1_0_4.target_location_id_text = {}

-- Display: Target Location Id Text
cboe_options_marketlevel2_csm_v1_0_4.target_location_id_text.display = function(value)
  return "Target Location Id Text: "..value
end

-- Dissect runtime sized field: Target Location Id Text
cboe_options_marketlevel2_csm_v1_0_4.target_location_id_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.target_location_id_text.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id_text, range, value, display)

  return offset + size
end

-- Target Location Id Length
cboe_options_marketlevel2_csm_v1_0_4.target_location_id_length = {}

-- Size: Target Location Id Length
cboe_options_marketlevel2_csm_v1_0_4.target_location_id_length.size = 1

-- Display: Target Location Id Length
cboe_options_marketlevel2_csm_v1_0_4.target_location_id_length.display = function(value)
  return "Target Location Id Length: "..value
end

-- Dissect: Target Location Id Length
cboe_options_marketlevel2_csm_v1_0_4.target_location_id_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.target_location_id_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.target_location_id_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id_length, range, value, display)

  return offset + length, value
end

-- Target Location Id
cboe_options_marketlevel2_csm_v1_0_4.target_location_id = {}

-- Calculate size of: Target Location Id
cboe_options_marketlevel2_csm_v1_0_4.target_location_id.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.target_location_id_length.size

  -- Parse runtime size of: Target Location Id Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Target Location Id
cboe_options_marketlevel2_csm_v1_0_4.target_location_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Target Location Id
cboe_options_marketlevel2_csm_v1_0_4.target_location_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Target Location Id Length: 1 Byte Unsigned Fixed Width Integer
  index, target_location_id_length = cboe_options_marketlevel2_csm_v1_0_4.target_location_id_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Target Location Id Text
  index, target_location_id_text = cboe_options_marketlevel2_csm_v1_0_4.target_location_id_text.dissect(buffer, index, packet, parent, target_location_id_length)

  return index
end

-- Dissect: Target Location Id
cboe_options_marketlevel2_csm_v1_0_4.target_location_id.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.target_location_id then
    local length = cboe_options_marketlevel2_csm_v1_0_4.target_location_id.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.target_location_id.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.target_location_id.fields(buffer, offset, packet, parent)
end

-- Symbol Text
cboe_options_marketlevel2_csm_v1_0_4.symbol_text = {}

-- Display: Symbol Text
cboe_options_marketlevel2_csm_v1_0_4.symbol_text.display = function(value)
  return "Symbol Text: "..value
end

-- Dissect runtime sized field: Symbol Text
cboe_options_marketlevel2_csm_v1_0_4.symbol_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.symbol_text.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.symbol_text, range, value, display)

  return offset + size
end

-- Symbol Length
cboe_options_marketlevel2_csm_v1_0_4.symbol_length = {}

-- Size: Symbol Length
cboe_options_marketlevel2_csm_v1_0_4.symbol_length.size = 1

-- Display: Symbol Length
cboe_options_marketlevel2_csm_v1_0_4.symbol_length.display = function(value)
  return "Symbol Length: "..value
end

-- Dissect: Symbol Length
cboe_options_marketlevel2_csm_v1_0_4.symbol_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.symbol_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.symbol_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.symbol_length, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_options_marketlevel2_csm_v1_0_4.symbol = {}

-- Calculate size of: Symbol
cboe_options_marketlevel2_csm_v1_0_4.symbol.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.symbol_length.size

  -- Parse runtime size of: Symbol Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Symbol
cboe_options_marketlevel2_csm_v1_0_4.symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol
cboe_options_marketlevel2_csm_v1_0_4.symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Length: 1 Byte Unsigned Fixed Width Integer
  index, symbol_length = cboe_options_marketlevel2_csm_v1_0_4.symbol_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Symbol Text
  index, symbol_text = cboe_options_marketlevel2_csm_v1_0_4.symbol_text.dissect(buffer, index, packet, parent, symbol_length)

  return index
end

-- Dissect: Symbol
cboe_options_marketlevel2_csm_v1_0_4.symbol.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.symbol then
    local length = cboe_options_marketlevel2_csm_v1_0_4.symbol.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.symbol.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.symbol, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.symbol.fields(buffer, offset, packet, parent)
end

-- Security Exchange
cboe_options_marketlevel2_csm_v1_0_4.security_exchange = {}

-- Size: Security Exchange
cboe_options_marketlevel2_csm_v1_0_4.security_exchange.size = 1

-- Display: Security Exchange
cboe_options_marketlevel2_csm_v1_0_4.security_exchange.display = function(value)
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
    return "Security Exchange: Cfecof Not Supported (F)"
  end
  if value == "2" then
    return "Security Exchange: Cboe 2 Options Not Supported (2)"
  end

  return "Security Exchange: Unknown("..value..")"
end

-- Dissect: Security Exchange
cboe_options_marketlevel2_csm_v1_0_4.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.security_exchange.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Security Type Text
cboe_options_marketlevel2_csm_v1_0_4.security_type_text = {}

-- Display: Security Type Text
cboe_options_marketlevel2_csm_v1_0_4.security_type_text.display = function(value)
  return "Security Type Text: "..value
end

-- Dissect runtime sized field: Security Type Text
cboe_options_marketlevel2_csm_v1_0_4.security_type_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.security_type_text.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_type_text, range, value, display)

  return offset + size
end

-- Security Type Length
cboe_options_marketlevel2_csm_v1_0_4.security_type_length = {}

-- Size: Security Type Length
cboe_options_marketlevel2_csm_v1_0_4.security_type_length.size = 1

-- Display: Security Type Length
cboe_options_marketlevel2_csm_v1_0_4.security_type_length.display = function(value)
  return "Security Type Length: "..value
end

-- Dissect: Security Type Length
cboe_options_marketlevel2_csm_v1_0_4.security_type_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.security_type_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.security_type_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_type_length, range, value, display)

  return offset + length, value
end

-- Security Type
cboe_options_marketlevel2_csm_v1_0_4.security_type = {}

-- Calculate size of: Security Type
cboe_options_marketlevel2_csm_v1_0_4.security_type.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_type_length.size

  -- Parse runtime size of: Security Type Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Security Type
cboe_options_marketlevel2_csm_v1_0_4.security_type.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Type
cboe_options_marketlevel2_csm_v1_0_4.security_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Type Length: 1 Byte Unsigned Fixed Width Integer
  index, security_type_length = cboe_options_marketlevel2_csm_v1_0_4.security_type_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Security Type Text
  index, security_type_text = cboe_options_marketlevel2_csm_v1_0_4.security_type_text.dissect(buffer, index, packet, parent, security_type_length)

  return index
end

-- Dissect: Security Type
cboe_options_marketlevel2_csm_v1_0_4.security_type.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_type then
    local length = cboe_options_marketlevel2_csm_v1_0_4.security_type.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.security_type.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_type, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.security_type.fields(buffer, offset, packet, parent)
end

-- Security Definition Message
cboe_options_marketlevel2_csm_v1_0_4.security_definition_message = {}

-- Calculate size of: Security Definition Message
cboe_options_marketlevel2_csm_v1_0_4.security_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_type.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_exchange.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.symbol.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.target_location_id.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.class_key.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.security_id.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.maturity_date.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.price_type.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.strike_price.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.put_or_call.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.max_strike_price.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.premium_break_point.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.exercise_style.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.currency_code.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.underlying_type.size(buffer, offset + index)

  index = index + cboe_options_marketlevel2_csm_v1_0_4.contract_size.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.no_legs.size

  -- Calculate field size from count
  local security_definition_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + security_definition_leg_count * 9

  return index
end

-- Display: Security Definition Message
cboe_options_marketlevel2_csm_v1_0_4.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
cboe_options_marketlevel2_csm_v1_0_4.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Type: Struct of 2 fields
  index, security_type = cboe_options_marketlevel2_csm_v1_0_4.security_type.dissect(buffer, index, packet, parent)

  -- Security Exchange: 1 Byte Ascii String Enum with 5 values
  index, security_exchange = cboe_options_marketlevel2_csm_v1_0_4.security_exchange.dissect(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_options_marketlevel2_csm_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Target Location Id: Struct of 2 fields
  index, target_location_id = cboe_options_marketlevel2_csm_v1_0_4.target_location_id.dissect(buffer, index, packet, parent)

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = cboe_options_marketlevel2_csm_v1_0_4.class_key.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = cboe_options_marketlevel2_csm_v1_0_4.security_id.dissect(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Unsigned Fixed Width Integer
  index, maturity_date = cboe_options_marketlevel2_csm_v1_0_4.maturity_date.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = cboe_options_marketlevel2_csm_v1_0_4.price_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = cboe_options_marketlevel2_csm_v1_0_4.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = cboe_options_marketlevel2_csm_v1_0_4.put_or_call.dissect(buffer, index, packet, parent)

  -- Minimum Strike Price Fraction: Struct of 2 fields
  index, minimum_strike_price_fraction = cboe_options_marketlevel2_csm_v1_0_4.minimum_strike_price_fraction.dissect(buffer, index, packet, parent)

  -- Max Strike Price: Struct of 2 fields
  index, max_strike_price = cboe_options_marketlevel2_csm_v1_0_4.max_strike_price.dissect(buffer, index, packet, parent)

  -- Premium Break Point: Struct of 2 fields
  index, premium_break_point = cboe_options_marketlevel2_csm_v1_0_4.premium_break_point.dissect(buffer, index, packet, parent)

  -- Minimum Above Premium Fraction: Struct of 2 fields
  index, minimum_above_premium_fraction = cboe_options_marketlevel2_csm_v1_0_4.minimum_above_premium_fraction.dissect(buffer, index, packet, parent)

  -- Minimum Below Premium Fraction: Struct of 2 fields
  index, minimum_below_premium_fraction = cboe_options_marketlevel2_csm_v1_0_4.minimum_below_premium_fraction.dissect(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, exercise_style = cboe_options_marketlevel2_csm_v1_0_4.exercise_style.dissect(buffer, index, packet, parent)

  -- Currency Code: Struct of 2 fields
  index, currency_code = cboe_options_marketlevel2_csm_v1_0_4.currency_code.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Struct of 2 fields
  index, underlying_symbol = cboe_options_marketlevel2_csm_v1_0_4.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Type: Struct of 2 fields
  index, underlying_type = cboe_options_marketlevel2_csm_v1_0_4.underlying_type.dissect(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Unsigned Fixed Width Integer
  index, contract_size = cboe_options_marketlevel2_csm_v1_0_4.contract_size.dissect(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = cboe_options_marketlevel2_csm_v1_0_4.no_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Security Definition Leg
  for security_definition_leg_index = 1, no_legs do
    index, security_definition_leg = cboe_options_marketlevel2_csm_v1_0_4.security_definition_leg.dissect(buffer, index, packet, parent, security_definition_leg_index)
  end

  return index
end

-- Dissect: Security Definition Message
cboe_options_marketlevel2_csm_v1_0_4.security_definition_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_message then
    local length = cboe_options_marketlevel2_csm_v1_0_4.security_definition_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.security_definition_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_message, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.security_definition_message.fields(buffer, offset, packet, parent)
end

-- Payload
cboe_options_marketlevel2_csm_v1_0_4.payload = {}

-- Calculate runtime size of: Payload
cboe_options_marketlevel2_csm_v1_0_4.payload.size = function(buffer, offset, template_id)
  -- Size of Security Definition Message
  if template_id == 13 then
    return cboe_options_marketlevel2_csm_v1_0_4.security_definition_message.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Message
  if template_id == 17 then
    return cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message.size(buffer, offset)
  end
  -- Size of Incremental Refresh Message
  if template_id == 18 then
    return cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message.size(buffer, offset)
  end
  -- Size of Security Status Message
  if template_id == 19 then
    return cboe_options_marketlevel2_csm_v1_0_4.security_status_message.size(buffer, offset)
  end
  -- Size of Heartbeat Message
  if template_id == 16 then
    return 0
  end

  return 0
end

-- Display: Payload
cboe_options_marketlevel2_csm_v1_0_4.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_options_marketlevel2_csm_v1_0_4.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Security Definition Message
  if template_id == 13 then
    return cboe_options_marketlevel2_csm_v1_0_4.security_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Message
  if template_id == 17 then
    return cboe_options_marketlevel2_csm_v1_0_4.snapshot_full_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Incremental Refresh Message
  if template_id == 18 then
    return cboe_options_marketlevel2_csm_v1_0_4.incremental_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if template_id == 19 then
    return cboe_options_marketlevel2_csm_v1_0_4.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 16 then
  end

  return offset
end

-- Dissect: Payload
cboe_options_marketlevel2_csm_v1_0_4.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cboe_options_marketlevel2_csm_v1_0_4.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_options_marketlevel2_csm_v1_0_4.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_options_marketlevel2_csm_v1_0_4.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.payload, range, display)

  return cboe_options_marketlevel2_csm_v1_0_4.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Msg Seq Num
cboe_options_marketlevel2_csm_v1_0_4.msg_seq_num = {}

-- Size: Msg Seq Num
cboe_options_marketlevel2_csm_v1_0_4.msg_seq_num.size = 4

-- Display: Msg Seq Num
cboe_options_marketlevel2_csm_v1_0_4.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
cboe_options_marketlevel2_csm_v1_0_4.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_options_marketlevel2_csm_v1_0_4.message_type = {}

-- Size: Message Type
cboe_options_marketlevel2_csm_v1_0_4.message_type.size = 1

-- Display: Message Type
cboe_options_marketlevel2_csm_v1_0_4.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
cboe_options_marketlevel2_csm_v1_0_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_marketlevel2_csm_v1_0_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Template Id
cboe_options_marketlevel2_csm_v1_0_4.template_id = {}

-- Size: Template Id
cboe_options_marketlevel2_csm_v1_0_4.template_id.size = 1

-- Display: Template Id
cboe_options_marketlevel2_csm_v1_0_4.template_id.display = function(value)
  if value == 13 then
    return "Template Id: Security Definition Message (13)"
  end
  if value == 17 then
    return "Template Id: Snapshot Full Refresh Message (17)"
  end
  if value == 18 then
    return "Template Id: Incremental Refresh Message (18)"
  end
  if value == 19 then
    return "Template Id: Security Status Message (19)"
  end
  if value == 16 then
    return "Template Id: Heartbeat Message (16)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cboe_options_marketlevel2_csm_v1_0_4.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_options_marketlevel2_csm_v1_0_4.message_length = {}

-- Size: Message Length
cboe_options_marketlevel2_csm_v1_0_4.message_length.size = 2

-- Display: Message Length
cboe_options_marketlevel2_csm_v1_0_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_options_marketlevel2_csm_v1_0_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_options_marketlevel2_csm_v1_0_4.message_header = {}

-- Calculate size of: Message Header
cboe_options_marketlevel2_csm_v1_0_4.message_header.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.message_length.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.template_id.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.message_type.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.msg_seq_num.size

  return index
end

-- Display: Message Header
cboe_options_marketlevel2_csm_v1_0_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_options_marketlevel2_csm_v1_0_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_options_marketlevel2_csm_v1_0_4.message_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, template_id = cboe_options_marketlevel2_csm_v1_0_4.template_id.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = cboe_options_marketlevel2_csm_v1_0_4.message_type.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = cboe_options_marketlevel2_csm_v1_0_4.msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_options_marketlevel2_csm_v1_0_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_header, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_options_marketlevel2_csm_v1_0_4.message = {}

-- Calculate size of: Message
cboe_options_marketlevel2_csm_v1_0_4.message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.message_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 1):uint()
  index = index + cboe_options_marketlevel2_csm_v1_0_4.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cboe_options_marketlevel2_csm_v1_0_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_options_marketlevel2_csm_v1_0_4.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 4 fields
  index, message_header = cboe_options_marketlevel2_csm_v1_0_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 5 branches
  index = cboe_options_marketlevel2_csm_v1_0_4.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cboe_options_marketlevel2_csm_v1_0_4.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cboe_options_marketlevel2_csm_v1_0_4.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message, range, display)
  end

  return cboe_options_marketlevel2_csm_v1_0_4.message.fields(buffer, offset, packet, parent)
end

-- First Msg Seq Num
cboe_options_marketlevel2_csm_v1_0_4.first_msg_seq_num = {}

-- Size: First Msg Seq Num
cboe_options_marketlevel2_csm_v1_0_4.first_msg_seq_num.size = 4

-- Display: First Msg Seq Num
cboe_options_marketlevel2_csm_v1_0_4.first_msg_seq_num.display = function(value)
  return "First Msg Seq Num: "..value
end

-- Dissect: First Msg Seq Num
cboe_options_marketlevel2_csm_v1_0_4.first_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.first_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.first_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.first_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_options_marketlevel2_csm_v1_0_4.message_count = {}

-- Size: Message Count
cboe_options_marketlevel2_csm_v1_0_4.message_count.size = 1

-- Display: Message Count
cboe_options_marketlevel2_csm_v1_0_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_options_marketlevel2_csm_v1_0_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sending Time
cboe_options_marketlevel2_csm_v1_0_4.sending_time = {}

-- Size: Sending Time
cboe_options_marketlevel2_csm_v1_0_4.sending_time.size = 8

-- Display: Sending Time
cboe_options_marketlevel2_csm_v1_0_4.sending_time.display = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
cboe_options_marketlevel2_csm_v1_0_4.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cboe_options_marketlevel2_csm_v1_0_4.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Packet Length
cboe_options_marketlevel2_csm_v1_0_4.packet_length = {}

-- Size: Packet Length
cboe_options_marketlevel2_csm_v1_0_4.packet_length.size = 2

-- Display: Packet Length
cboe_options_marketlevel2_csm_v1_0_4.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
cboe_options_marketlevel2_csm_v1_0_4.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Version
cboe_options_marketlevel2_csm_v1_0_4.version = {}

-- Size: Version
cboe_options_marketlevel2_csm_v1_0_4.version.size = 1

-- Display: Version
cboe_options_marketlevel2_csm_v1_0_4.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cboe_options_marketlevel2_csm_v1_0_4.version.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_marketlevel2_csm_v1_0_4.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_options_marketlevel2_csm_v1_0_4.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.version, range, value, display)

  return offset + length, value
end

-- Packet Header
cboe_options_marketlevel2_csm_v1_0_4.packet_header = {}

-- Calculate size of: Packet Header
cboe_options_marketlevel2_csm_v1_0_4.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_marketlevel2_csm_v1_0_4.version.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.packet_length.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.sending_time.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.message_count.size

  index = index + cboe_options_marketlevel2_csm_v1_0_4.first_msg_seq_num.size

  return index
end

-- Display: Packet Header
cboe_options_marketlevel2_csm_v1_0_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_options_marketlevel2_csm_v1_0_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = cboe_options_marketlevel2_csm_v1_0_4.version.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = cboe_options_marketlevel2_csm_v1_0_4.packet_length.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cboe_options_marketlevel2_csm_v1_0_4.sending_time.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_options_marketlevel2_csm_v1_0_4.message_count.dissect(buffer, index, packet, parent)

  -- First Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, first_msg_seq_num = cboe_options_marketlevel2_csm_v1_0_4.first_msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_options_marketlevel2_csm_v1_0_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4.fields.packet_header, buffer(offset, 0))
    local index = cboe_options_marketlevel2_csm_v1_0_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_marketlevel2_csm_v1_0_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_marketlevel2_csm_v1_0_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_options_marketlevel2_csm_v1_0_4.packet = {}

-- Dissect Packet
cboe_options_marketlevel2_csm_v1_0_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = cboe_options_marketlevel2_csm_v1_0_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 5, 1):uint()

  -- Repeating: Message
  for message_index = 1, message_count do
    index, message = cboe_options_marketlevel2_csm_v1_0_4.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_options_marketlevel2_csm_v1_0_4.init()
end

-- Dissector for Cboe Options MarketLevel2 Csm 1.0.4
function omi_cboe_options_marketlevel2_csm_v1_0_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_options_marketlevel2_csm_v1_0_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_options_marketlevel2_csm_v1_0_4, buffer(), omi_cboe_options_marketlevel2_csm_v1_0_4.description, "("..buffer:len().." Bytes)")
  return cboe_options_marketlevel2_csm_v1_0_4.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_options_marketlevel2_csm_v1_0_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_options_marketlevel2_csm_v1_0_4.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Options MarketLevel2 Csm 1.0.4
local function omi_cboe_options_marketlevel2_csm_v1_0_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_options_marketlevel2_csm_v1_0_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_options_marketlevel2_csm_v1_0_4
  omi_cboe_options_marketlevel2_csm_v1_0_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Options MarketLevel2 Csm 1.0.4
omi_cboe_options_marketlevel2_csm_v1_0_4:register_heuristic("udp", omi_cboe_options_marketlevel2_csm_v1_0_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.4
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
